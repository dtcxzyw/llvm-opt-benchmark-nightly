inline.NumInlined: 298
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0
@.str.4 = private unnamed_addr constant [31 x i8] c"benchReductionAutoVec<uint8_t>\00", align 1
@_ZL28benchmark_uniq_4benchAutoVec = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"benchAutoVec<uint16_t>\00", align 1
@_ZL37benchmark_uniq_5benchReductionAutoVec = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"benchReductionAutoVec<uint16_t>\00", align 1
@_ZL28benchmark_uniq_6benchAutoVec = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"benchAutoVec<uint32_t>\00", align 1
@_ZL37benchmark_uniq_7benchReductionAutoVec = internal unnamed_addr global ptr null, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"benchReductionAutoVec<uint32_t>\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_EpilogueVectorization.cpp, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z12benchAutoVecIhEvRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution", align 1 ; 7 uses
  %2 = alloca %"class.std::uniform_int_distribution", align 1 ; 6 uses
  %3 = alloca %"class.std::uniform_int_distribution", align 1 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 10 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 10 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_ZL11loopAutoVecIhEmPT_S1_S1_i, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 32, !tbaa !10
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 5 uses
  store i64 %i.h, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #12 ; 3 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.j = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #12
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.j, ptr %5, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.k = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #12
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.k, ptr %6, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i8 0, ptr %3, align 1, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 -1, ptr %i.l, align 1, !tbaa !19
  %i.m = and i64 %i.h, 4294967295                 ; 4 uses
  %.not.i6 = icmp eq i64 %i.m, 0
  br i1 %.not.i6, label %.loopexit61.thread, label %.lr.ph.i

.loopexit61.thread:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  br label %.loopexit57

.lr.ph.i:                                         ; preds = %bb.c, %.noexc7
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc7 ], [ 0, %bb.c ] ; 2 uses
  %i.n = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  store i8 %i.n, ptr %i.o, align 1, !tbaa !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i9, label %.lr.ph.i, !llvm.loop !21

.lr.ph.preheader.i9:                              ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i8 0, ptr %2, align 1, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 -1, ptr %i.p, align 1, !tbaa !19
  br label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %.noexc15, %.lr.ph.preheader.i9
  %indvars.iv.i12 = phi i64 [ 0, %.lr.ph.preheader.i9 ], [ %indvars.iv.next.i13, %.noexc15 ] ; 2 uses
  %i.q = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 1 dereferenceable(2) %2)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit

.noexc15:                                         ; preds = %.lr.ph.i11
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i12
  store i8 %i.q, ptr %i.r, align 1, !tbaa !20
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i12, 1 ; 2 uses
  %exitcond.not.i14 = icmp eq i64 %indvars.iv.next.i13, %i.m
  br i1 %exitcond.not.i14, label %.lr.ph.preheader.i18, label %.lr.ph.i11, !llvm.loop !21

.lr.ph.preheader.i18:                             ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store i8 0, ptr %1, align 1, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 -1, ptr %i.s, align 1, !tbaa !19
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.noexc24, %.lr.ph.preheader.i18
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.preheader.i18 ], [ %indvars.iv.next.i22, %.noexc24 ] ; 2 uses
  %i.t = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %.lr.ph.i20
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i21
  store i8 %i.t, ptr %i.u, align 1, !tbaa !20
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %i.m
  br i1 %exitcond.not.i23, label %.loopexit57, label %.lr.ph.i20, !llvm.loop !21

.loopexit57:                                      ; preds = %.noexc24, %.loopexit61.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !23
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit57
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 16, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %.loopexit57, %bb.d
  %i.z = phi i64 [ %i.y, %bb.d ], [ 0, %.loopexit57 ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.f

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.e
  %.not.i.not63 = icmp eq i64 %i.z, 0
  br i1 %.not.i.not63, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL32runBenchForEpilogueVectorizationIhEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit unwind label %bb.f

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29.thread: ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i31

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i28

.loopexit:                                        ; preds = %.lr.ph.i20
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i11
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.f:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge, %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.042.064 = phi i64 [ %i.al, %_ZN9benchmark5State3endEv.exit ], [ %i.z, %_ZN9benchmark5State3endEv.exit.preheader ]
  %i.ad = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %4, i64 %i.ad) #11, !srcloc !47
  %i.ae = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %5, i64 %i.ae) #11, !srcloc !47
  %i.af = load i64, ptr %6, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %6, i64 %i.af) #11, !srcloc !47
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ag = load ptr, ptr %4, align 8, !tbaa !15
  store ptr %i.ag, ptr %i.c, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ah = load ptr, ptr %5, align 8, !tbaa !15
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.ai = load ptr, ptr %6, align 8, !tbaa !15
  store ptr %i.ai, ptr %i.e, align 8, !tbaa !15
  %7 = invoke noundef i64 @_ZL18callThroughOptnoneIRPFmPhS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN9benchmark5State3endEv.exit unwind label %bb.g

_ZN9benchmark5State3endEv.exit:                   ; preds = %.lr.ph
  %i.aj = load i64, ptr @g_sum, align 8, !tbaa !13
  %i.ak = add i64 %i.aj, %7
  store i64 %i.ak, ptr @g_sum, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.al = add nsw i64 %.sroa.042.064, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.al, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !48

bb.g:                                             ; preds = %.lr.ph
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.g, %bb.f
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.ac, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit58, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp59, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.an = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %.not.i26 = icmp eq ptr %i.an, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %i.an) #13
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %.loopexit.split-lp
  %.pr = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.not.i27 = icmp eq ptr %.pr, null
  br i1 %.not.i27, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i28

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i28: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i50 = phi { ptr, i32 } [ %i.ab, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  %i.ao = phi ptr [ %i.j, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #13
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i28, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i50, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i28 ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr52 = load ptr, ptr %4, align 8, !tbaa !15   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %.not.i30 = icmp eq ptr %.pr52, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit32, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i31

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i31: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29
  %.pn.pn.pn.pn.pn.i55 = phi { ptr, i32 } [ %i.aa, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29 ]
  %i.ap = phi ptr [ %i.i, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29.thread ], [ %.pr52, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29 ]
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #13
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit32

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit32: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i31
  %.pn.pn.pn.pn.pn.i56 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29 ], [ %.pn.pn.pn.pn.pn.i55, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i56

_ZL32runBenchForEpilogueVectorizationIhEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.aq = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %.not.i33 = icmp eq ptr %i.aq, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit35, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i34

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i34: ; preds = %_ZL32runBenchForEpilogueVectorizationIhEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #13
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit35

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit35: ; preds = %_ZL32runBenchForEpilogueVectorizationIhEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.ar = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %.not.i36 = icmp eq ptr %i.ar, null
  br i1 %.not.i36, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i37

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i37: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit35
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #13
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit35, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.as = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %.not.i39 = icmp eq ptr %i.as, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit41, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i40

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i40: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38
  call void @_ZdaPv(ptr noundef nonnull %i.as) #13
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit41

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit41: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

declare noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z21benchReductionAutoVecIhEvRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution", align 1 ; 7 uses
  %2 = alloca %"class.std::uniform_int_distribution", align 1 ; 6 uses
  %3 = alloca %"class.std::uniform_int_distribution", align 1 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 10 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 10 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_ZL24loopWithReductionAutoVecIhEmPT_S1_S1_i, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 32, !tbaa !10
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 5 uses
  store i64 %i.h, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #12 ; 3 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.j = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #12
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.j, ptr %5, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.k = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #12
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.k, ptr %6, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i8 0, ptr %3, align 1, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 -1, ptr %i.l, align 1, !tbaa !19
  %i.m = and i64 %i.h, 4294967295                 ; 4 uses
  %.not.i6 = icmp eq i64 %i.m, 0
  br i1 %.not.i6, label %.loopexit61.thread, label %.lr.ph.i

.loopexit61.thread:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  br label %.loopexit57

.lr.ph.i:                                         ; preds = %bb.c, %.noexc7
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc7 ], [ 0, %bb.c ] ; 2 uses
  %i.n = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  store i8 %i.n, ptr %i.o, align 1, !tbaa !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i9, label %.lr.ph.i, !llvm.loop !21

.lr.ph.preheader.i9:                              ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i8 0, ptr %2, align 1, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 -1, ptr %i.p, align 1, !tbaa !19
  br label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %.noexc15, %.lr.ph.preheader.i9
  %indvars.iv.i12 = phi i64 [ 0, %.lr.ph.preheader.i9 ], [ %indvars.iv.next.i13, %.noexc15 ] ; 2 uses
  %i.q = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 1 dereferenceable(2) %2)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit

.noexc15:                                         ; preds = %.lr.ph.i11
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i12
  store i8 %i.q, ptr %i.r, align 1, !tbaa !20
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i12, 1 ; 2 uses
  %exitcond.not.i14 = icmp eq i64 %indvars.iv.next.i13, %i.m
  br i1 %exitcond.not.i14, label %.lr.ph.preheader.i18, label %.lr.ph.i11, !llvm.loop !21

.lr.ph.preheader.i18:                             ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store i8 0, ptr %1, align 1, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 -1, ptr %i.s, align 1, !tbaa !19
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.noexc24, %.lr.ph.preheader.i18
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.preheader.i18 ], [ %indvars.iv.next.i22, %.noexc24 ] ; 2 uses
  %i.t = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %.lr.ph.i20
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i21
  store i8 %i.t, ptr %i.u, align 1, !tbaa !20
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %i.m
  br i1 %exitcond.not.i23, label %.loopexit57, label %.lr.ph.i20, !llvm.loop !21

.loopexit57:                                      ; preds = %.noexc24, %.loopexit61.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !23
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit57
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 16, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %.loopexit57, %bb.d
  %i.z = phi i64 [ %i.y, %bb.d ], [ 0, %.loopexit57 ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.f

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.e
  %.not.i.not63 = icmp eq i64 %i.z, 0
  br i1 %.not.i.not63, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL32runBenchForEpilogueVectorizationIhEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit unwind label %bb.f

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29.thread: ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i31

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i28

.loopexit:                                        ; preds = %.lr.ph.i20
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i11
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.f:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge, %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.042.064 = phi i64 [ %i.al, %_ZN9benchmark5State3endEv.exit ], [ %i.z, %_ZN9benchmark5State3endEv.exit.preheader ]
  %i.ad = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %4, i64 %i.ad) #11, !srcloc !47
  %i.ae = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %5, i64 %i.ae) #11, !srcloc !47
  %i.af = load i64, ptr %6, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %6, i64 %i.af) #11, !srcloc !47
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ag = load ptr, ptr %4, align 8, !tbaa !15
  store ptr %i.ag, ptr %i.c, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ah = load ptr, ptr %5, align 8, !tbaa !15
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.ai = load ptr, ptr %6, align 8, !tbaa !15
  store ptr %i.ai, ptr %i.e, align 8, !tbaa !15
  %7 = invoke noundef i64 @_ZL18callThroughOptnoneIRPFmPhS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN9benchmark5State3endEv.exit unwind label %bb.g

_ZN9benchmark5State3endEv.exit:                   ; preds = %.lr.ph
  %i.aj = load i64, ptr @g_sum, align 8, !tbaa !13
  %i.ak = add i64 %i.aj, %7
  store i64 %i.ak, ptr @g_sum, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.al = add nsw i64 %.sroa.042.064, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.al, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !48

bb.g:                                             ; preds = %.lr.ph
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.g, %bb.f
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.ac, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit58, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp59, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.an = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %.not.i26 = icmp eq ptr %i.an, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %i.an) #13
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %.loopexit.split-lp
  %.pr = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.not.i27 = icmp eq ptr %.pr, null
  br i1 %.not.i27, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i28

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i28: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i50 = phi { ptr, i32 } [ %i.ab, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  %i.ao = phi ptr [ %i.j, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #13
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i28, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i50, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i28 ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr52 = load ptr, ptr %4, align 8, !tbaa !15   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %.not.i30 = icmp eq ptr %.pr52, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit32, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i31

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i31: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29
  %.pn.pn.pn.pn.pn.i55 = phi { ptr, i32 } [ %i.aa, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29 ]
  %i.ap = phi ptr [ %i.i, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29.thread ], [ %.pr52, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29 ]
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #13
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit32

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit32: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i31
  %.pn.pn.pn.pn.pn.i56 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit29 ], [ %.pn.pn.pn.pn.pn.i55, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i56

_ZL32runBenchForEpilogueVectorizationIhEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.aq = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %.not.i33 = icmp eq ptr %i.aq, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit35, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i34

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i34: ; preds = %_ZL32runBenchForEpilogueVectorizationIhEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #13
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit35

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit35: ; preds = %_ZL32runBenchForEpilogueVectorizationIhEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.ar = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %.not.i36 = icmp eq ptr %i.ar, null
  br i1 %.not.i36, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i37

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i37: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit35
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #13
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit35, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.as = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %.not.i39 = icmp eq ptr %i.as, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit41, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i40

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i40: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38
  call void @_ZdaPv(ptr noundef nonnull %i.as) #13
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit41

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit41: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z12benchAutoVecItEvRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.38", align 2 ; 7 uses
  %2 = alloca %"class.std::uniform_int_distribution.38", align 2 ; 6 uses
  %3 = alloca %"class.std::uniform_int_distribution.38", align 2 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::unique_ptr.28", align 8 ; 9 uses
  %5 = alloca %"class.std::unique_ptr.28", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr.28", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_ZL11loopAutoVecItEmPT_S1_S1_i, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 32, !tbaa !10
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 4 uses
  store i64 %i.h, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.i = shl i64 %i.h, 1
  %.inv.i = icmp sgt i64 %i.h, -1
  %i.j = select i1 %.inv.i, i64 %i.i, i64 -1      ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #12 ; 3 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.l = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #12
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.l, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #12
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.thread ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.m, ptr %6, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i16 0, ptr %3, align 2, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 -1, ptr %i.n, align 2, !tbaa !54
  %i.o = and i64 %i.h, 4294967295                 ; 4 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %.loopexit54.thread, label %.lr.ph.i

.loopexit54.thread:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  br label %.loopexit50

.lr.ph.i:                                         ; preds = %bb.c, %.noexc
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc ], [ 0, %bb.c ] ; 2 uses
  %i.p = invoke noundef zeroext i16 @_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE(ptr noundef nonnull align 2 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 2 dereferenceable(4) %3)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i
  store i16 %i.p, ptr %i.q, align 2, !tbaa !55
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i2, label %.lr.ph.i, !llvm.loop !56

.lr.ph.preheader.i2:                              ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i16 0, ptr %2, align 2, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 -1, ptr %i.r, align 2, !tbaa !54
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.noexc8, %.lr.ph.preheader.i2
  %indvars.iv.i5 = phi i64 [ 0, %.lr.ph.preheader.i2 ], [ %indvars.iv.next.i6, %.noexc8 ] ; 2 uses
  %i.s = invoke noundef zeroext i16 @_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE(ptr noundef nonnull align 2 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 2 dereferenceable(4) %2)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit

.noexc8:                                          ; preds = %.lr.ph.i4
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.i5
  store i16 %i.s, ptr %i.t, align 2, !tbaa !55
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i5, 1 ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %indvars.iv.next.i6, %i.o
  br i1 %exitcond.not.i7, label %.lr.ph.preheader.i11, label %.lr.ph.i4, !llvm.loop !56

.lr.ph.preheader.i11:                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store i16 0, ptr %1, align 2, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 -1, ptr %i.u, align 2, !tbaa !54
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.noexc17, %.lr.ph.preheader.i11
  %indvars.iv.i14 = phi i64 [ 0, %.lr.ph.preheader.i11 ], [ %indvars.iv.next.i15, %.noexc17 ] ; 2 uses
  %i.v = invoke noundef zeroext i16 @_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE(ptr noundef nonnull align 2 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 2 dereferenceable(4) %1)
          to label %.noexc17 unwind label %.loopexit

.noexc17:                                         ; preds = %.lr.ph.i13
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.i14
  store i16 %i.v, ptr %i.w, align 2, !tbaa !55
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.next.i15, %i.o
  br i1 %exitcond.not.i16, label %.loopexit50, label %.lr.ph.i13, !llvm.loop !56

.loopexit50:                                      ; preds = %.noexc17, %.loopexit54.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !23
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.d, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i

bb.d:                                             ; preds = %.loopexit50
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 16, !tbaa !45
  br label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i: ; preds = %bb.d, %.loopexit50
  %i.ab = phi i64 [ %i.aa, %bb.d ], [ 0, %.loopexit50 ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.i.preheader unwind label %bb.e

_ZN9benchmark5State3endEv.exit.i.preheader:       ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
  %.not.i.i.not56 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.not56, label %_ZN9benchmark5State3endEv.exit.i._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit.i._crit_edge:      ; preds = %_ZN9benchmark5State3endEv.exit.i, %_ZN9benchmark5State3endEv.exit.i.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL32runBenchForEpilogueVectorizationItEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit unwind label %bb.e

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22.thread: ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21

.loopexit:                                        ; preds = %.lr.ph.i13
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i4
  %lpad.loopexit51 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %_ZN9benchmark5State3endEv.exit.i._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.i.preheader, %_ZN9benchmark5State3endEv.exit.i
  %.sroa.035.057 = phi i64 [ %i.an, %_ZN9benchmark5State3endEv.exit.i ], [ %i.ab, %_ZN9benchmark5State3endEv.exit.i.preheader ]
  %i.af = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %4, i64 %i.af) #11, !srcloc !47
  %i.ag = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %5, i64 %i.ag) #11, !srcloc !47
  %i.ah = load i64, ptr %6, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %6, i64 %i.ah) #11, !srcloc !47
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ai = load ptr, ptr %4, align 8, !tbaa !49
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.aj = load ptr, ptr %5, align 8, !tbaa !49
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.ak = load ptr, ptr %6, align 8, !tbaa !49
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !49
  %7 = invoke noundef i64 @_ZL18callThroughOptnoneIRPFmPtS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN9benchmark5State3endEv.exit.i unwind label %bb.f

_ZN9benchmark5State3endEv.exit.i:                 ; preds = %.lr.ph
  %i.al = load i64, ptr @g_sum, align 8, !tbaa !13
  %i.am = add i64 %i.al, %7
  store i64 %i.am, ptr @g_sum, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.an = add nsw i64 %.sroa.035.057, -1          ; 2 uses
  %.not.i.i.not = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.not, label %_ZN9benchmark5State3endEv.exit.i._crit_edge, label %.lr.ph, !prof !48

bb.f:                                             ; preds = %.lr.ph
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.e, %bb.f
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.ao, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit51, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ap = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %.not.i19 = icmp eq ptr %i.ap, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #13
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %.loopexit.split-lp
  %.pr = load ptr, ptr %5, align 8, !tbaa !49     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.not.i20 = icmp eq ptr %.pr, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i43 = phi { ptr, i32 } [ %i.ad, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit ]
  %i.aq = phi ptr [ %i.l, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #13
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i43, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21 ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr45 = load ptr, ptr %4, align 8, !tbaa !49   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %.not.i23 = icmp eq ptr %.pr45, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit25, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22.thread, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22
  %.pn.pn.pn.pn.pn.i48 = phi { ptr, i32 } [ %i.ac, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22 ]
  %i.ar = phi ptr [ %i.k, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22.thread ], [ %.pr45, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22 ]
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #13
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit25

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit25: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24
  %.pn.pn.pn.pn.pn.i49 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22 ], [ %.pn.pn.pn.pn.pn.i48, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i49

_ZL32runBenchForEpilogueVectorizationItEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit: ; preds = %_ZN9benchmark5State3endEv.exit.i._crit_edge
  %i.as = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %.not.i26 = icmp eq ptr %i.as, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit28, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27: ; preds = %_ZL32runBenchForEpilogueVectorizationItEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.as) #13
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit28

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit28: ; preds = %_ZL32runBenchForEpilogueVectorizationItEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.at = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %.not.i29 = icmp eq ptr %i.at, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit31, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit28
  call void @_ZdaPv(ptr noundef nonnull %i.at) #13
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit31

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit31: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit28, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.au = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %.not.i32 = icmp eq ptr %i.au, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit34, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit31
  call void @_ZdaPv(ptr noundef nonnull %i.au) #13
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit34

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit34: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit31, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z21benchReductionAutoVecItEvRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.38", align 2 ; 7 uses
  %2 = alloca %"class.std::uniform_int_distribution.38", align 2 ; 6 uses
  %3 = alloca %"class.std::uniform_int_distribution.38", align 2 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::unique_ptr.28", align 8 ; 9 uses
  %5 = alloca %"class.std::unique_ptr.28", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr.28", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_ZL24loopWithReductionAutoVecItEmPT_S1_S1_i, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 32, !tbaa !10
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 4 uses
  store i64 %i.h, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.i = shl i64 %i.h, 1
  %.inv.i = icmp sgt i64 %i.h, -1
  %i.j = select i1 %.inv.i, i64 %i.i, i64 -1      ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #12 ; 3 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.l = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #12
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.l, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #12
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.thread ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.m, ptr %6, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i16 0, ptr %3, align 2, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 -1, ptr %i.n, align 2, !tbaa !54
  %i.o = and i64 %i.h, 4294967295                 ; 4 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %.loopexit54.thread, label %.lr.ph.i

.loopexit54.thread:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  br label %.loopexit50

.lr.ph.i:                                         ; preds = %bb.c, %.noexc
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc ], [ 0, %bb.c ] ; 2 uses
  %i.p = invoke noundef zeroext i16 @_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE(ptr noundef nonnull align 2 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 2 dereferenceable(4) %3)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i
  store i16 %i.p, ptr %i.q, align 2, !tbaa !55
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i2, label %.lr.ph.i, !llvm.loop !56

.lr.ph.preheader.i2:                              ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i16 0, ptr %2, align 2, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 -1, ptr %i.r, align 2, !tbaa !54
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.noexc8, %.lr.ph.preheader.i2
  %indvars.iv.i5 = phi i64 [ 0, %.lr.ph.preheader.i2 ], [ %indvars.iv.next.i6, %.noexc8 ] ; 2 uses
  %i.s = invoke noundef zeroext i16 @_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE(ptr noundef nonnull align 2 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 2 dereferenceable(4) %2)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit

.noexc8:                                          ; preds = %.lr.ph.i4
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.i5
  store i16 %i.s, ptr %i.t, align 2, !tbaa !55
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i5, 1 ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %indvars.iv.next.i6, %i.o
  br i1 %exitcond.not.i7, label %.lr.ph.preheader.i11, label %.lr.ph.i4, !llvm.loop !56

.lr.ph.preheader.i11:                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store i16 0, ptr %1, align 2, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 -1, ptr %i.u, align 2, !tbaa !54
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.noexc17, %.lr.ph.preheader.i11
  %indvars.iv.i14 = phi i64 [ 0, %.lr.ph.preheader.i11 ], [ %indvars.iv.next.i15, %.noexc17 ] ; 2 uses
  %i.v = invoke noundef zeroext i16 @_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE(ptr noundef nonnull align 2 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 2 dereferenceable(4) %1)
          to label %.noexc17 unwind label %.loopexit

.noexc17:                                         ; preds = %.lr.ph.i13
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.i14
  store i16 %i.v, ptr %i.w, align 2, !tbaa !55
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.next.i15, %i.o
  br i1 %exitcond.not.i16, label %.loopexit50, label %.lr.ph.i13, !llvm.loop !56

.loopexit50:                                      ; preds = %.noexc17, %.loopexit54.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !23
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.d, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i

bb.d:                                             ; preds = %.loopexit50
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 16, !tbaa !45
  br label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i: ; preds = %bb.d, %.loopexit50
  %i.ab = phi i64 [ %i.aa, %bb.d ], [ 0, %.loopexit50 ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.i.preheader unwind label %bb.e

_ZN9benchmark5State3endEv.exit.i.preheader:       ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
  %.not.i.i.not56 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.not56, label %_ZN9benchmark5State3endEv.exit.i._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit.i._crit_edge:      ; preds = %_ZN9benchmark5State3endEv.exit.i, %_ZN9benchmark5State3endEv.exit.i.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL32runBenchForEpilogueVectorizationItEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit unwind label %bb.e

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22.thread: ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21

.loopexit:                                        ; preds = %.lr.ph.i13
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i4
  %lpad.loopexit51 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %_ZN9benchmark5State3endEv.exit.i._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.i.preheader, %_ZN9benchmark5State3endEv.exit.i
  %.sroa.035.057 = phi i64 [ %i.an, %_ZN9benchmark5State3endEv.exit.i ], [ %i.ab, %_ZN9benchmark5State3endEv.exit.i.preheader ]
  %i.af = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %4, i64 %i.af) #11, !srcloc !47
  %i.ag = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %5, i64 %i.ag) #11, !srcloc !47
  %i.ah = load i64, ptr %6, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %6, i64 %i.ah) #11, !srcloc !47
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ai = load ptr, ptr %4, align 8, !tbaa !49
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.aj = load ptr, ptr %5, align 8, !tbaa !49
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.ak = load ptr, ptr %6, align 8, !tbaa !49
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !49
  %7 = invoke noundef i64 @_ZL18callThroughOptnoneIRPFmPtS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN9benchmark5State3endEv.exit.i unwind label %bb.f

_ZN9benchmark5State3endEv.exit.i:                 ; preds = %.lr.ph
  %i.al = load i64, ptr @g_sum, align 8, !tbaa !13
  %i.am = add i64 %i.al, %7
  store i64 %i.am, ptr @g_sum, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.an = add nsw i64 %.sroa.035.057, -1          ; 2 uses
  %.not.i.i.not = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.not, label %_ZN9benchmark5State3endEv.exit.i._crit_edge, label %.lr.ph, !prof !48

bb.f:                                             ; preds = %.lr.ph
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.e, %bb.f
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.ao, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit51, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ap = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %.not.i19 = icmp eq ptr %i.ap, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #13
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %.loopexit.split-lp
  %.pr = load ptr, ptr %5, align 8, !tbaa !49     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.not.i20 = icmp eq ptr %.pr, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i43 = phi { ptr, i32 } [ %i.ad, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit ]
  %i.aq = phi ptr [ %i.l, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #13
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i43, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21 ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr45 = load ptr, ptr %4, align 8, !tbaa !49   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %.not.i23 = icmp eq ptr %.pr45, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit25, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22.thread, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22
  %.pn.pn.pn.pn.pn.i48 = phi { ptr, i32 } [ %i.ac, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22 ]
  %i.ar = phi ptr [ %i.k, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22.thread ], [ %.pr45, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22 ]
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #13
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit25

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit25: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24
  %.pn.pn.pn.pn.pn.i49 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit22 ], [ %.pn.pn.pn.pn.pn.i48, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i49

_ZL32runBenchForEpilogueVectorizationItEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit: ; preds = %_ZN9benchmark5State3endEv.exit.i._crit_edge
  %i.as = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %.not.i26 = icmp eq ptr %i.as, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit28, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27: ; preds = %_ZL32runBenchForEpilogueVectorizationItEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.as) #13
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit28

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit28: ; preds = %_ZL32runBenchForEpilogueVectorizationItEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.at = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %.not.i29 = icmp eq ptr %i.at, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit31, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit28
  call void @_ZdaPv(ptr noundef nonnull %i.at) #13
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit31

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit31: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit28, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.au = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %.not.i32 = icmp eq ptr %i.au, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit34, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit31
  call void @_ZdaPv(ptr noundef nonnull %i.au) #13
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit34

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit34: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit31, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z12benchAutoVecIjEvRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.49", align 4 ; 7 uses
  %2 = alloca %"class.std::uniform_int_distribution.49", align 4 ; 6 uses
  %3 = alloca %"class.std::uniform_int_distribution.49", align 4 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::unique_ptr.39", align 8 ; 9 uses
  %5 = alloca %"class.std::unique_ptr.39", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr.39", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_ZL11loopAutoVecIjEmPT_S1_S1_i, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 32, !tbaa !10
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 4 uses
  store i64 %i.h, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.i = icmp ugt i64 %i.h, 4611686018427387903
  %i.j = shl i64 %i.h, 2
  %i.k = select i1 %i.i, i64 -1, i64 %i.j         ; 3 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #12 ; 3 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #12
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.m, ptr %5, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #12
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.thread ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.n, ptr %6, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.o, align 4, !tbaa !61
  %i.p = and i64 %i.h, 4294967295                 ; 4 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %.loopexit54.thread, label %.lr.ph.i

.loopexit54.thread:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  br label %.loopexit50

.lr.ph.i:                                         ; preds = %bb.c, %.noexc
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc ], [ 0, %bb.c ] ; 2 uses
  %i.q = invoke noundef i32 @_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  store i32 %i.q, ptr %i.r, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i2, label %.lr.ph.i, !llvm.loop !62

.lr.ph.preheader.i2:                              ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 -1, ptr %i.s, align 4, !tbaa !61
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.noexc8, %.lr.ph.preheader.i2
  %indvars.iv.i5 = phi i64 [ 0, %.lr.ph.preheader.i2 ], [ %indvars.iv.next.i6, %.noexc8 ] ; 2 uses
  %i.t = invoke noundef i32 @_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit

.noexc8:                                          ; preds = %.lr.ph.i4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i5
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i5, 1 ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %indvars.iv.next.i6, %i.p
  br i1 %exitcond.not.i7, label %.lr.ph.preheader.i11, label %.lr.ph.i4, !llvm.loop !62

.lr.ph.preheader.i11:                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store i32 0, ptr %1, align 4, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 -1, ptr %i.v, align 4, !tbaa !61
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.noexc17, %.lr.ph.preheader.i11
  %indvars.iv.i14 = phi i64 [ 0, %.lr.ph.preheader.i11 ], [ %indvars.iv.next.i15, %.noexc17 ] ; 2 uses
  %i.w = invoke noundef i32 @_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc17 unwind label %.loopexit

.noexc17:                                         ; preds = %.lr.ph.i13
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i14
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.next.i15, %i.p
  br i1 %exitcond.not.i16, label %.loopexit50, label %.lr.ph.i13, !llvm.loop !62

.loopexit50:                                      ; preds = %.noexc17, %.loopexit54.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.d, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i

bb.d:                                             ; preds = %.loopexit50
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 16, !tbaa !45
  br label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i: ; preds = %bb.d, %.loopexit50
  %i.ac = phi i64 [ %i.ab, %bb.d ], [ 0, %.loopexit50 ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.i.preheader unwind label %bb.e

_ZN9benchmark5State3endEv.exit.i.preheader:       ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
  %.not.i.i.not56 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.not56, label %_ZN9benchmark5State3endEv.exit.i._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit.i._crit_edge:      ; preds = %_ZN9benchmark5State3endEv.exit.i, %_ZN9benchmark5State3endEv.exit.i.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit unwind label %bb.e

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22.thread: ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21

.loopexit:                                        ; preds = %.lr.ph.i13
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i4
  %lpad.loopexit51 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %_ZN9benchmark5State3endEv.exit.i._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.i.preheader, %_ZN9benchmark5State3endEv.exit.i
  %.sroa.035.057 = phi i64 [ %i.ao, %_ZN9benchmark5State3endEv.exit.i ], [ %i.ac, %_ZN9benchmark5State3endEv.exit.i.preheader ]
  %i.ag = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %4, i64 %i.ag) #11, !srcloc !47
  %i.ah = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %5, i64 %i.ah) #11, !srcloc !47
  %i.ai = load i64, ptr %6, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %6, i64 %i.ai) #11, !srcloc !47
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.aj = load ptr, ptr %4, align 8, !tbaa !57
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ak = load ptr, ptr %5, align 8, !tbaa !57
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.al = load ptr, ptr %6, align 8, !tbaa !57
  store ptr %i.al, ptr %i.e, align 8, !tbaa !57
  %7 = invoke noundef i64 @_ZL18callThroughOptnoneIRPFmPjS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN9benchmark5State3endEv.exit.i unwind label %bb.f

_ZN9benchmark5State3endEv.exit.i:                 ; preds = %.lr.ph
  %i.am = load i64, ptr @g_sum, align 8, !tbaa !13
  %i.an = add i64 %i.am, %7
  store i64 %i.an, ptr @g_sum, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.ao = add nsw i64 %.sroa.035.057, -1          ; 2 uses
  %.not.i.i.not = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.not, label %_ZN9benchmark5State3endEv.exit.i._crit_edge, label %.lr.ph, !prof !48

bb.f:                                             ; preds = %.lr.ph
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.e, %bb.f
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.af, %bb.e ], [ %i.ap, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit51, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aq = load ptr, ptr %6, align 8, !tbaa !57    ; 2 uses
  %.not.i19 = icmp eq ptr %i.aq, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %.loopexit.split-lp
  %.pr = load ptr, ptr %5, align 8, !tbaa !57     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.not.i20 = icmp eq ptr %.pr, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i43 = phi { ptr, i32 } [ %i.ae, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit ]
  %i.ar = phi ptr [ %i.m, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i43, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21 ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr45 = load ptr, ptr %4, align 8, !tbaa !57   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %.not.i23 = icmp eq ptr %.pr45, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit25, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22.thread, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22
  %.pn.pn.pn.pn.pn.i48 = phi { ptr, i32 } [ %i.ad, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22 ]
  %i.as = phi ptr [ %i.l, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22.thread ], [ %.pr45, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22 ]
  call void @_ZdaPv(ptr noundef nonnull %i.as) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit25

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit25: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24
  %.pn.pn.pn.pn.pn.i49 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22 ], [ %.pn.pn.pn.pn.pn.i48, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i49

_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit: ; preds = %_ZN9benchmark5State3endEv.exit.i._crit_edge
  %i.at = load ptr, ptr %6, align 8, !tbaa !57    ; 2 uses
  %.not.i26 = icmp eq ptr %i.at, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27: ; preds = %_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.at) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28: ; preds = %_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.au = load ptr, ptr %5, align 8, !tbaa !57    ; 2 uses
  %.not.i29 = icmp eq ptr %i.au, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28
  call void @_ZdaPv(ptr noundef nonnull %i.au) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.av = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %.not.i32 = icmp eq ptr %i.av, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit34, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31
  call void @_ZdaPv(ptr noundef nonnull %i.av) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit34

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit34: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z21benchReductionAutoVecIjEvRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.49", align 4 ; 7 uses
  %2 = alloca %"class.std::uniform_int_distribution.49", align 4 ; 6 uses
  %3 = alloca %"class.std::uniform_int_distribution.49", align 4 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::unique_ptr.39", align 8 ; 9 uses
  %5 = alloca %"class.std::unique_ptr.39", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr.39", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_ZL24loopWithReductionAutoVecIjEmPT_S1_S1_i, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 32, !tbaa !10
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 4 uses
  store i64 %i.h, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.i = icmp ugt i64 %i.h, 4611686018427387903
  %i.j = shl i64 %i.h, 2
  %i.k = select i1 %i.i, i64 -1, i64 %i.j         ; 3 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #12 ; 3 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #12
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.m, ptr %5, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #12
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.thread ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.n, ptr %6, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.o, align 4, !tbaa !61
  %i.p = and i64 %i.h, 4294967295                 ; 4 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %.loopexit54.thread, label %.lr.ph.i

.loopexit54.thread:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  br label %.loopexit50

.lr.ph.i:                                         ; preds = %bb.c, %.noexc
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc ], [ 0, %bb.c ] ; 2 uses
  %i.q = invoke noundef i32 @_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  store i32 %i.q, ptr %i.r, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i2, label %.lr.ph.i, !llvm.loop !62

.lr.ph.preheader.i2:                              ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 -1, ptr %i.s, align 4, !tbaa !61
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.noexc8, %.lr.ph.preheader.i2
  %indvars.iv.i5 = phi i64 [ 0, %.lr.ph.preheader.i2 ], [ %indvars.iv.next.i6, %.noexc8 ] ; 2 uses
  %i.t = invoke noundef i32 @_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit

.noexc8:                                          ; preds = %.lr.ph.i4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i5
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i5, 1 ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %indvars.iv.next.i6, %i.p
  br i1 %exitcond.not.i7, label %.lr.ph.preheader.i11, label %.lr.ph.i4, !llvm.loop !62

.lr.ph.preheader.i11:                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store i32 0, ptr %1, align 4, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 -1, ptr %i.v, align 4, !tbaa !61
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.noexc17, %.lr.ph.preheader.i11
  %indvars.iv.i14 = phi i64 [ 0, %.lr.ph.preheader.i11 ], [ %indvars.iv.next.i15, %.noexc17 ] ; 2 uses
  %i.w = invoke noundef i32 @_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc17 unwind label %.loopexit

.noexc17:                                         ; preds = %.lr.ph.i13
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i14
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.next.i15, %i.p
  br i1 %exitcond.not.i16, label %.loopexit50, label %.lr.ph.i13, !llvm.loop !62

.loopexit50:                                      ; preds = %.noexc17, %.loopexit54.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.d, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i

bb.d:                                             ; preds = %.loopexit50
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 16, !tbaa !45
  br label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i: ; preds = %bb.d, %.loopexit50
  %i.ac = phi i64 [ %i.ab, %bb.d ], [ 0, %.loopexit50 ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.i.preheader unwind label %bb.e

_ZN9benchmark5State3endEv.exit.i.preheader:       ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
  %.not.i.i.not56 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.not56, label %_ZN9benchmark5State3endEv.exit.i._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit.i._crit_edge:      ; preds = %_ZN9benchmark5State3endEv.exit.i, %_ZN9benchmark5State3endEv.exit.i.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit unwind label %bb.e

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22.thread: ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21

.loopexit:                                        ; preds = %.lr.ph.i13
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i4
  %lpad.loopexit51 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %_ZN9benchmark5State3endEv.exit.i._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.i.preheader, %_ZN9benchmark5State3endEv.exit.i
  %.sroa.035.057 = phi i64 [ %i.ao, %_ZN9benchmark5State3endEv.exit.i ], [ %i.ac, %_ZN9benchmark5State3endEv.exit.i.preheader ]
  %i.ag = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %4, i64 %i.ag) #11, !srcloc !47
  %i.ah = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %5, i64 %i.ah) #11, !srcloc !47
  %i.ai = load i64, ptr %6, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %6, i64 %i.ai) #11, !srcloc !47
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.aj = load ptr, ptr %4, align 8, !tbaa !57
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ak = load ptr, ptr %5, align 8, !tbaa !57
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.al = load ptr, ptr %6, align 8, !tbaa !57
  store ptr %i.al, ptr %i.e, align 8, !tbaa !57
  %7 = invoke noundef i64 @_ZL18callThroughOptnoneIRPFmPjS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN9benchmark5State3endEv.exit.i unwind label %bb.f

_ZN9benchmark5State3endEv.exit.i:                 ; preds = %.lr.ph
  %i.am = load i64, ptr @g_sum, align 8, !tbaa !13
  %i.an = add i64 %i.am, %7
  store i64 %i.an, ptr @g_sum, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.ao = add nsw i64 %.sroa.035.057, -1          ; 2 uses
  %.not.i.i.not = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.not, label %_ZN9benchmark5State3endEv.exit.i._crit_edge, label %.lr.ph, !prof !48

bb.f:                                             ; preds = %.lr.ph
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.e, %bb.f
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.af, %bb.e ], [ %i.ap, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit51, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aq = load ptr, ptr %6, align 8, !tbaa !57    ; 2 uses
  %.not.i19 = icmp eq ptr %i.aq, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %.loopexit.split-lp
  %.pr = load ptr, ptr %5, align 8, !tbaa !57     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.not.i20 = icmp eq ptr %.pr, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i43 = phi { ptr, i32 } [ %i.ae, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit ]
  %i.ar = phi ptr [ %i.m, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i43, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21 ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr45 = load ptr, ptr %4, align 8, !tbaa !57   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %.not.i23 = icmp eq ptr %.pr45, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit25, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22.thread, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22
  %.pn.pn.pn.pn.pn.i48 = phi { ptr, i32 } [ %i.ad, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22 ]
  %i.as = phi ptr [ %i.l, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22.thread ], [ %.pr45, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22 ]
  call void @_ZdaPv(ptr noundef nonnull %i.as) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit25

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit25: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24
  %.pn.pn.pn.pn.pn.i49 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22 ], [ %.pn.pn.pn.pn.pn.i48, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i49

_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit: ; preds = %_ZN9benchmark5State3endEv.exit.i._crit_edge
  %i.at = load ptr, ptr %6, align 8, !tbaa !57    ; 2 uses
  %.not.i26 = icmp eq ptr %i.at, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27: ; preds = %_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.at) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28: ; preds = %_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.au = load ptr, ptr %5, align 8, !tbaa !57    ; 2 uses
  %.not.i29 = icmp eq ptr %i.au, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28
  call void @_ZdaPv(ptr noundef nonnull %i.au) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.av = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %.not.i32 = icmp eq ptr %i.av, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit34, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31
  call void @_ZdaPv(ptr noundef nonnull %i.av) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit34

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit34: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

declare void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i64 @_ZL11loopAutoVecIhEmPT_S1_S1_i(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #5 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.e, -32
  %i.f = sub i64 %i.a, %i.c
  %diff.check10 = icmp ugt i64 %i.f, -32
  %conflict.rdx = or i1 %diff.check, %diff.check10
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i32 %3, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !20
  %wide.load12 = load <16 x i8>, ptr %i.i, align 1, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load13 = load <16 x i8>, ptr %i.j, align 1, !tbaa !20
  %wide.load14 = load <16 x i8>, ptr %i.k, align 1, !tbaa !20
  %i.l = add <16 x i8> %wide.load13, %wide.load
  %i.m = add <16 x i8> %wide.load14, %wide.load12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <16 x i8> %i.l, ptr %i.n, align 1, !tbaa !20
  store <16 x i8> %i.m, ptr %i.o, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.q, align 1, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %index16
  %wide.load18 = load <4 x i8>, ptr %i.r, align 1, !tbaa !20
  %i.s = add <4 x i8> %wide.load18, %wide.load17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index16
  store <4 x i8> %i.s, ptr %i.t, align 1, !tbaa !20
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec15, %wide.trip.count
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.prol
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = add i8 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !20
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !68

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret i64 0

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = add i8 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  %i.an = add i8 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !20
  %i.at = add i8 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !20
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20
  %i.az = add i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !20
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !70
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i64 @_ZL18callThroughOptnoneIRPFmPhS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !71
  store ptr %1, ptr %i.b, align 8, !tbaa !73
  store ptr %2, ptr %i.c, align 8, !tbaa !73
  store ptr %3, ptr %i.d, align 8, !tbaa !73
  store ptr %4, ptr %i.e, align 8, !tbaa !75
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !71, !nonnull !76, !align !77
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !73, !nonnull !76, !align !77
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !73, !nonnull !76, !align !77
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !73, !nonnull !76, !align !77
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %i.p = trunc i64 %i.o to i32
  %i.q = call noundef i64 %i.g(ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m, i32 noundef %i.p)
  ret i64 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 1 dereferenceable(2) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<unsigned char>::param_type", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19
  %i.c = zext i8 %i.b to i64
  %i.d = load i8, ptr %2, align 1, !tbaa !17
  %i.e = zext i8 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e                   ; 3 uses
  %i.g = icmp ult i64 %i.f, 4294967295
  br i1 %i.g, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = trunc nuw nsw i64 %i.f to i32            ; 3 uses
  %i.j = add nuw nsw i32 %i.i, 1                  ; 2 uses
  %i.k = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.l = zext nneg i32 %i.j to i64                ; 2 uses
  %i.m = mul i64 %i.k, %i.l                       ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %.not = icmp ult i32 %i.i, %i.n
  br i1 %.not, label %_ZNSt24uniform_int_distributionIhE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = xor i32 %i.i, -1
  %i.p = urem i32 %i.o, %i.j                      ; 2 uses
  %i.q = icmp samesign ugt i32 %i.p, %i.n
  br i1 %i.q, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIhE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.r = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.s = mul i64 %i.r, %i.l                       ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp ugt i32 %i.p, %i.t
  br i1 %i.u, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIhE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, !llvm.loop !78

_ZNSt24uniform_int_distributionIhE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.1.i = phi i64 [ %i.m, %bb.b ], [ %i.m, %bb.c ], [ %i.s, %.lr.ph.i ]
  %i.v = lshr i64 %.1.i, 32
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i8 0, ptr %3, align 1, !tbaa !17
  store i8 -1, ptr %i.h, align 1, !tbaa !19
  %i.w = call noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 1 dereferenceable(2) %3)
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.aa = add i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, %i.f
  %i.ac = icmp ult i64 %i.aa, %i.y
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %.loopexit, !llvm.loop !79

.loopexit:                                        ; preds = %bb.d, %_ZNSt24uniform_int_distributionIhE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
  %.0 = phi i64 [ %i.v, %_ZNSt24uniform_int_distributionIhE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit ], [ %i.aa, %bb.d ]
  %i.ae = load i8, ptr %2, align 1, !tbaa !17
  %i.af = trunc i64 %.0 to i8
  %i.ag = add i8 %i.ae, %i.af
  ret i8 %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 623
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !13
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !13 ; 5 uses
  %i.g = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.h = and <2 x i64> %i.g, splat (i64 -2147483648)
  %i.i = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.j = or disjoint <2 x i64> %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3176
  %wide.load9 = load <2 x i64>, ptr %i.k, align 8, !tbaa !13
  %i.l = lshr exact <2 x i64> %i.j, splat (i64 1)
  %i.m = xor <2 x i64> %i.l, %wide.load9
  %i.n = and <2 x i64> %wide.load, splat (i64 1)
  %i.o = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.p = select <2 x i1> %i.o, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.q = xor <2 x i64> %i.m, %i.p
  store <2 x i64> %i.q, ptr %i.d, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, 226
  br i1 %i.r, label %vector.ph11, label %vector.body, !llvm.loop !82

vector.ph11:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.t = and i64 %vector.recur.extract, -2147483648
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13   ; 2 uses
  %i.w = and i64 %i.v, 2147483646
  %i.x = or disjoint i64 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.z = load i64, ptr %i.y, align 8, !tbaa !13
  %i.aa = lshr exact i64 %i.x, 1
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = and i64 %i.v, 1
  %.not20.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not20.i, i64 0, i64 2567483615
  %i.ae = xor i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !13
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !13
  %vector.recur.init14 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph11
  %index13 = phi i64 [ 0, %vector.ph11 ], [ %index.next18, %vector.body12 ] ; 3 uses
  %vector.recur15 = phi <2 x i64> [ %vector.recur.init14, %vector.ph11 ], [ %wide.load16, %vector.body12 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1816
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1824
  %wide.load16 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !13 ; 4 uses
  %i.aj = shufflevector <2 x i64> %vector.recur15, <2 x i64> %wide.load16, <2 x i32> <i32 1, i32 2>
  %i.ak = and <2 x i64> %i.aj, splat (i64 -2147483648)
  %i.al = and <2 x i64> %wide.load16, splat (i64 2147483646)
  %i.am = or disjoint <2 x i64> %i.al, %i.ak
  %wide.load17 = load <2 x i64>, ptr %i.af, align 8, !tbaa !13
  %i.an = lshr exact <2 x i64> %i.am, splat (i64 1)
  %i.ao = xor <2 x i64> %i.an, %wide.load17
  %i.ap = and <2 x i64> %wide.load16, splat (i64 1)
  %i.aq = icmp eq <2 x i64> %i.ap, zeroinitializer
  %i.ar = select <2 x i1> %i.aq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.as = xor <2 x i64> %i.ao, %i.ar
  store <2 x i64> %i.as, ptr %i.ag, align 8, !tbaa !13
  %index.next18 = add nuw i64 %index13, 2         ; 2 uses
  %i.at = icmp eq i64 %index.next18, 396
  br i1 %i.at, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, label %vector.body12, !llvm.loop !83

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit: ; preds = %vector.body12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !13
  %i.aw = and i64 %i.av, -2147483648
  %i.ax = load i64, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ay = and i64 %i.ax, 2147483646
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !13
  %i.bc = lshr exact i64 %i.az, 1
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = and i64 %i.ax, 1
  %.not.i = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not.i, i64 0, i64 2567483615
  %i.bg = xor i64 %i.bd, %i.bf
  store i64 %i.bg, ptr %i.au, align 8, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, %bb.a
  %i.bh = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bh
end_hunk_0
begin_hunk_1_@_ZL24loopWithReductionAutoVecIhEmPT_S1_S1_i:bb.a

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %.067 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.as, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  %i.i = zext i8 %i.h to i64
  %i.j = add i64 %.067, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20
  %i.n = zext i8 %i.m to i64
  %i.o = add i64 %i.j, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !20
  %i.s = zext i8 %i.r to i64
  %i.t = add i64 %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %i.x = zext i8 %i.w to i64
  %i.y = add i64 %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !20
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !20
  %i.am = zext i8 %i.al to i64
  %i.an = add i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %i.ar = zext i8 %i.aq to i64
  %i.as = add i64 %i.an, %i.ar                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !85
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i64 @_ZL11loopAutoVecItEmPT_S1_S1_i(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #5 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.e, -32
  %i.f = sub i64 %i.a, %i.c
  %diff.check10 = icmp ugt i64 %i.f, -32
  %conflict.rdx = or i1 %diff.check, %diff.check10
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i32 %3, 16
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !55
  %wide.load12 = load <8 x i16>, ptr %i.i, align 2, !tbaa !55
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load13 = load <8 x i16>, ptr %i.j, align 2, !tbaa !55
  %wide.load14 = load <8 x i16>, ptr %i.k, align 2, !tbaa !55
  %i.l = add <8 x i16> %wide.load13, %wide.load
  %i.m = add <8 x i16> %wide.load14, %wide.load12
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <8 x i16> %i.l, ptr %i.n, align 2, !tbaa !55
  store <8 x i16> %i.m, ptr %i.o, align 2, !tbaa !55
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index16
  %wide.load17 = load <4 x i16>, ptr %i.q, align 2, !tbaa !55
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index16
  %wide.load18 = load <4 x i16>, ptr %i.r, align 2, !tbaa !55
  %i.s = add <4 x i16> %wide.load18, %wide.load17
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index16
  store <4 x i16> %i.s, ptr %i.t, align 2, !tbaa !55
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec15, %wide.trip.count
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.prol
  %i.w = load i16, ptr %i.v, align 2, !tbaa !55
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.prol
  %i.y = load i16, ptr %i.x, align 2, !tbaa !55
  %i.z = add i16 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.prol
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !55
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !89

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret i64 0

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !55
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !55
  %i.ah = add i16 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !55
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next
  %i.am = load i16, ptr %i.al, align 2, !tbaa !55
  %i.an = add i16 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !55
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !55
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !55
  %i.at = add i16 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  store i16 %i.at, ptr %i.au, align 2, !tbaa !55
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !55
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !55
  %i.az = add i16 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !55
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !90
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i64 @_ZL18callThroughOptnoneIRPFmPtS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !71
  store ptr %1, ptr %i.b, align 8, !tbaa !91
  store ptr %2, ptr %i.c, align 8, !tbaa !91
  store ptr %3, ptr %i.d, align 8, !tbaa !91
  store ptr %4, ptr %i.e, align 8, !tbaa !75
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !71, !nonnull !76, !align !77
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !91, !nonnull !76, !align !77
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !91, !nonnull !76, !align !77
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !91, !nonnull !76, !align !77
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %i.p = trunc i64 %i.o to i32
  %i.q = call noundef i64 %i.g(ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m, i32 noundef %i.p)
  ret i64 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE(ptr noundef nonnull align 2 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 2 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<unsigned short>::param_type", align 2 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !54
  %i.c = zext i16 %i.b to i64
  %i.d = load i16, ptr %2, align 2, !tbaa !51
  %i.e = zext i16 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e                   ; 3 uses
  %i.g = icmp ult i64 %i.f, 4294967295
  br i1 %i.g, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = trunc nuw nsw i64 %i.f to i32            ; 3 uses
  %i.j = add nuw nsw i32 %i.i, 1                  ; 2 uses
  %i.k = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.l = zext nneg i32 %i.j to i64                ; 2 uses
  %i.m = mul i64 %i.k, %i.l                       ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %.not = icmp ult i32 %i.i, %i.n
  br i1 %.not, label %_ZNSt24uniform_int_distributionItE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = xor i32 %i.i, -1
  %i.p = urem i32 %i.o, %i.j                      ; 2 uses
  %i.q = icmp samesign ugt i32 %i.p, %i.n
  br i1 %i.q, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionItE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.r = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.s = mul i64 %i.r, %i.l                       ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp ugt i32 %i.p, %i.t
  br i1 %i.u, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionItE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, !llvm.loop !93

_ZNSt24uniform_int_distributionItE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.1.i = phi i64 [ %i.m, %bb.b ], [ %i.m, %bb.c ], [ %i.s, %.lr.ph.i ]
  %i.v = lshr i64 %.1.i, 32
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i16 0, ptr %3, align 2, !tbaa !51
  store i16 -1, ptr %i.h, align 2, !tbaa !54
  %i.w = call noundef zeroext i16 @_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE(ptr noundef nonnull align 2 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 2 dereferenceable(4) %3)
  %i.x = zext i16 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.aa = add i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, %i.f
  %i.ac = icmp ult i64 %i.aa, %i.y
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %.loopexit, !llvm.loop !94

.loopexit:                                        ; preds = %bb.d, %_ZNSt24uniform_int_distributionItE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
  %.0 = phi i64 [ %i.v, %_ZNSt24uniform_int_distributionItE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit ], [ %i.aa, %bb.d ]
  %i.ae = load i16, ptr %2, align 2, !tbaa !51
  %i.af = trunc i64 %.0 to i16
  %i.ag = add i16 %i.ae, %i.af
  ret i16 %i.ag
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZL24loopWithReductionAutoVecItEmPT_S1_S1_i(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #7 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi10 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <2 x i16>, ptr %i.b, align 2, !tbaa !55
  %wide.load11 = load <2 x i16>, ptr %i.c, align 2, !tbaa !55
  %i.d = zext <2 x i16> %wide.load to <2 x i64>
  %i.e = zext <2 x i16> %wide.load11 to <2 x i64>
  %i.f = add <2 x i64> %vec.phi, %i.d             ; 2 uses
  %i.g = add <2 x i64> %vec.phi10, %i.e           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.g, %i.f
  %i.i = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader12

.lr.ph.preheader12:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.067.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.06.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %middle.block ], [ %i.m, %.lr.ph ]
  ret i64 %.06.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader12 ] ; 2 uses
  %.067 = phi i64 [ %i.m, %.lr.ph ], [ %.067.ph, %.lr.ph.preheader12 ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !55
  %i.l = zext i16 %i.k to i64
  %i.m = add i64 %.067, %i.l                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !96
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i64 @_ZL11loopAutoVecIjEmPT_S1_S1_i(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #5 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %3, 12
  br i1 %min.iters.check, label %.lr.ph.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.e = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.e, -32
  %i.f = sub i64 %i.a, %i.c
  %diff.check10 = icmp ugt i64 %i.f, -32
  %conflict.rdx = or i1 %diff.check, %diff.check10
  br i1 %conflict.rdx, label %.lr.ph.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !4
  %wide.load11 = load <4 x i32>, ptr %i.h, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load12 = load <4 x i32>, ptr %i.i, align 4, !tbaa !4
  %wide.load13 = load <4 x i32>, ptr %i.j, align 4, !tbaa !4
  %i.k = add <4 x i32> %wide.load12, %wide.load
  %i.l = add <4 x i32> %wide.load13, %wide.load11
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %i.k, ptr %i.m, align 4, !tbaa !4
  store <4 x i32> %i.l, ptr %i.n, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader14

.lr.ph.preheader14:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader14, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader14 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader14 ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.prol
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = add i32 %i.s, %i.q
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.prol
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !98

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader14
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader14 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.v = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret i64 0

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = add i32 %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = add i32 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = add i32 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = add i32 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.2
  store i32 %i.at, ptr %i.au, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !99
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i64 @_ZL18callThroughOptnoneIRPFmPjS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !71
  store ptr %1, ptr %i.b, align 8, !tbaa !100
  store ptr %2, ptr %i.c, align 8, !tbaa !100
  store ptr %3, ptr %i.d, align 8, !tbaa !100
  store ptr %4, ptr %i.e, align 8, !tbaa !75
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !71, !nonnull !76, !align !77
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !100, !nonnull !76, !align !77
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !100, !nonnull !76, !align !77
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !100, !nonnull !76, !align !77
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %i.p = trunc i64 %i.o to i32
  %i.q = call noundef i64 %i.g(ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m, i32 noundef %i.p)
  ret i64 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<unsigned int>::param_type", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61
  %i.c = zext i32 %i.b to i64
  %i.d = load i32, ptr %2, align 4, !tbaa !59
  %i.e = zext i32 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e                   ; 4 uses
  %i.g = icmp ult i64 %i.f, 4294967295
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = trunc nuw i64 %i.f to i32                ; 3 uses
  %i.i = add nuw i32 %i.h, 1                      ; 2 uses
  %i.j = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.k = zext i32 %i.i to i64                     ; 2 uses
  %i.l = mul i64 %i.j, %i.k                       ; 3 uses
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %.not21 = icmp ult i32 %i.h, %i.m
  br i1 %.not21, label %_ZNSt24uniform_int_distributionIjE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = xor i32 %i.h, -1
  %i.o = urem i32 %i.n, %i.i                      ; 2 uses
  %i.p = icmp ugt i32 %i.o, %i.m
  br i1 %i.p, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIjE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.q = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.r = mul i64 %i.q, %i.k                       ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp ugt i32 %i.o, %i.s
  br i1 %i.t, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIjE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, !llvm.loop !102

_ZNSt24uniform_int_distributionIjE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.1.i = phi i64 [ %i.l, %bb.b ], [ %i.l, %bb.c ], [ %i.r, %.lr.ph.i ]
  %i.u = lshr i64 %.1.i, 32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 4294967295
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !tbaa !59
  store i32 -1, ptr %i.v, align 4, !tbaa !61
  %i.w = call noundef i32 @_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw i64 %i.x, 32                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.aa = add i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, %i.f
  %i.ac = icmp ult i64 %i.aa, %i.y
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %.loopexit, !llvm.loop !103

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %_ZNSt24uniform_int_distributionIjE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
  %.0 = phi i64 [ %i.u, %_ZNSt24uniform_int_distributionIjE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit ], [ %i.ae, %bb.f ], [ %i.aa, %bb.e ]
  %i.af = load i32, ptr %2, align 4, !tbaa !59
  %i.ag = trunc i64 %.0 to i32
  %i.ah = add i32 %i.af, %i.ag
  ret i32 %i.ah
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZL24loopWithReductionAutoVecIjEmPT_S1_S1_i(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #7 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi10 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %wide.load = load <2 x i32>, ptr %i.b, align 4, !tbaa !4
  %wide.load11 = load <2 x i32>, ptr %i.c, align 4, !tbaa !4
  %i.d = zext <2 x i32> %wide.load to <2 x i64>
  %i.e = zext <2 x i32> %wide.load11 to <2 x i64>
  %i.f = add <2 x i64> %vec.phi, %i.d             ; 2 uses
  %i.g = add <2 x i64> %vec.phi10, %i.e           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.g, %i.f
  %i.i = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader12

.lr.ph.preheader12:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.067.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.06.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %middle.block ], [ %i.m, %.lr.ph ]
  ret i64 %.06.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader12 ] ; 2 uses
  %.067 = phi i64 [ %i.m, %.lr.ph ], [ %.067.ph, %.lr.ph.preheader12 ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = zext i32 %i.k to i64
  %i.m = add i64 %.067, %i.l                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !105
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_EpilogueVectorization.cpp() #8 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.g = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() ; 0 uses
  store i64 5489, ptr @_ZL3rng, align 8, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ 5489, %bb.a ], [ %i.t, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.u, %bb.c ] ; 4 uses
  %i.h = getelementptr [8 x i8], ptr @_ZL3rng, i64 %.011.i.i.i.i
  %i.i = lshr i64 %store_forwarded, 30
  %i.j = xor i64 %i.i, %store_forwarded
  %i.k = mul nuw nsw i64 %i.j, 1812433253
  %i.l = add nuw i64 %i.k, %.011.i.i.i.i          ; 2 uses
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !13
  %i.n = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.n, 624
  br i1 %exitcond.not.i.i.i.i, label %__cxx_global_var_init.1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr [8 x i8], ptr @_ZL3rng, i64 %i.n
  %i.p = lshr i64 %i.m, 30
  %i.q = xor i64 %i.p, %i.l
  %i.r = mul i64 %i.q, 1812433253
  %i.s = add i64 %i.r, %i.n
  %i.t = and i64 %i.s, 4294967295                 ; 2 uses
end_hunk_1
