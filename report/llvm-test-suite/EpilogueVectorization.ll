Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/EpilogueVectorization?download=true
inline.NumInlined: 298
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z21benchReductionAutoVecIjEvRN9benchmark5StateE:bb.a
  br i1 %exitcond.not.i7, label %.lr.ph.preheader.i11, label %.lr.ph.i4, !llvm.loop !2

.lr.ph.preheader.i11:                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store i32 0, ptr %1, align 4, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 -1, ptr %i.v, align 4, !tbaa !62
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.noexc17, %.lr.ph.preheader.i11
  %indvars.iv.i14 = phi i64 [ 0, %.lr.ph.preheader.i11 ], [ %indvars.iv.next.i15, %.noexc17 ] ; 2 uses
  %i.w = invoke noundef i32 @_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc17 unwind label %.loopexit

.noexc17:                                         ; preds = %.lr.ph.i13
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i14
  store i32 %i.w, ptr %i.x, align 4, !tbaa !10
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.next.i15, %i.p
  br i1 %exitcond.not.i16, label %.loopexit41, label %.lr.ph.i13, !llvm.loop !2

.loopexit41:                                      ; preds = %.noexc17, %.loopexit45.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !46
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.d, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i

bb.d:                                             ; preds = %.loopexit41
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 16, !tbaa !47
  br label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i: ; preds = %bb.d, %.loopexit41
  %i.ac = phi i64 [ %i.ab, %bb.d ], [ 0, %.loopexit41 ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.i.preheader unwind label %bb.g

_ZN9benchmark5State3endEv.exit.i.preheader:       ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
  %.not.i.i.not47 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.not47, label %_ZN9benchmark5State3endEv.exit.i._crit_edge, label %.lr.ph, !prof !48

_ZN9benchmark5State3endEv.exit.i._crit_edge:      ; preds = %_ZN9benchmark5State3endEv.exit.i, %_ZN9benchmark5State3endEv.exit.i.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22

bb.f:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

.loopexit:                                        ; preds = %.lr.ph.i13
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i4
  %lpad.loopexit42 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.g:                                             ; preds = %_ZN9benchmark5State3endEv.exit.i._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.i.preheader, %_ZN9benchmark5State3endEv.exit.i
  %.sroa.035.048 = phi i64 [ %i.ap, %_ZN9benchmark5State3endEv.exit.i ], [ %i.ac, %_ZN9benchmark5State3endEv.exit.i.preheader ]
  %i.ag = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %4, i64 %i.ag) #11, !srcloc !49
  %i.ah = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %5, i64 %i.ah) #11, !srcloc !49
  %i.ai = load i64, ptr %6, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %6, i64 %i.ai) #11, !srcloc !49
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.aj = load ptr, ptr %4, align 8, !tbaa !59
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ak = load ptr, ptr %5, align 8, !tbaa !59
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.al = load ptr, ptr %6, align 8, !tbaa !59
  store ptr %i.al, ptr %i.e, align 8, !tbaa !59
  %i.am = invoke noundef i64 @_ZL18callThroughOptnoneIRPFmPjS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN9benchmark5State3endEv.exit.i unwind label %bb.h

_ZN9benchmark5State3endEv.exit.i:                 ; preds = %.lr.ph
  %i.an = load i64, ptr @g_sum, align 8, !tbaa !17
  %i.ao = add i64 %i.an, %i.am
  store i64 %i.ao, ptr @g_sum, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.ap = add nsw i64 %.sroa.035.048, -1          ; 2 uses
  %.not.i.i.not = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.not, label %_ZN9benchmark5State3endEv.exit.i._crit_edge, label %.lr.ph, !prof !50

bb.h:                                             ; preds = %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.g, %bb.h
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.aq, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit42, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp43, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ar = load ptr, ptr %6, align 8, !tbaa !59    ; 2 uses
  %.not.i19 = icmp eq ptr %i.ar, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %.loopexit.split-lp, %bb.f
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %.pn.pn.pn.i, %.loopexit.split-lp ], [ %.pn.pn.pn.i, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.as = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %.not.i20 = icmp eq ptr %i.as, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.as) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, %bb.e
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ad, %bb.e ], [ %.pn.pn.pn.pn.i, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit ], [ %.pn.pn.pn.pn.i, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.at = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %.not.i23 = icmp eq ptr %i.at, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit25, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22
  call void @_ZdaPv(ptr noundef nonnull %i.at) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit25

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit25: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit22, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i

_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit: ; preds = %_ZN9benchmark5State3endEv.exit.i._crit_edge
  %i.au = load ptr, ptr %6, align 8, !tbaa !59    ; 2 uses
  %.not.i26 = icmp eq ptr %i.au, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27: ; preds = %_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.au) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28: ; preds = %_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.av = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %.not.i29 = icmp eq ptr %i.av, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28
  call void @_ZdaPv(ptr noundef nonnull %i.av) #13
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.aw = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %.not.i32 = icmp eq ptr %i.aw, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit34, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #13
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

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !23
  %wide.load12 = load <16 x i8>, ptr %i.i, align 1, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load13 = load <16 x i8>, ptr %i.j, align 1, !tbaa !23
  %wide.load14 = load <16 x i8>, ptr %i.k, align 1, !tbaa !23
  %i.l = add <16 x i8> %wide.load13, %wide.load
  %i.m = add <16 x i8> %wide.load14, %wide.load12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <16 x i8> %i.l, ptr %i.n, align 1, !tbaa !23
  store <16 x i8> %i.m, ptr %i.o, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !77

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.q, align 1, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %index16
  %wide.load18 = load <4 x i8>, ptr %i.r, align 1, !tbaa !23
  %i.s = add <4 x i8> %wide.load18, %wide.load17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index16
  store <4 x i8> %i.s, ptr %i.t, align 1, !tbaa !23
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec15, %wide.trip.count
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  %i.w = load i8, ptr %i.v, align 1, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.prol
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23
  %i.z = add i8 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !23
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !75

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
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !23
  %i.ah = add i8 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  %i.an = add i8 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !23
  %i.at = add i8 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !23
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !23
  %i.az = add i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !23
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !76
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
  store ptr %0, ptr %i.a, align 8, !tbaa !67
  store ptr %1, ptr %i.b, align 8, !tbaa !79
  store ptr %2, ptr %i.c, align 8, !tbaa !79
  store ptr %3, ptr %i.d, align 8, !tbaa !79
  store ptr %4, ptr %i.e, align 8, !tbaa !68
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !69, !align !70
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !79, !nonnull !69, !align !70
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !79, !nonnull !69, !align !70
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !79, !nonnull !69, !align !70
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !68, !nonnull !69, !align !70
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = trunc i64 %i.o to i32
  %i.q = call noundef i64 %i.g(ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m, i32 noundef %i.p)
  ret i64 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 1 dereferenceable(2) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<unsigned char>::param_type", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22
  %i.c = zext i8 %i.b to i64
  %i.d = load i8, ptr %2, align 1, !tbaa !21
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
end_hunk_0
begin_hunk_1_@_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3176
  %wide.load9 = load <2 x i64>, ptr %i.k, align 8, !tbaa !17
  %i.l = lshr exact <2 x i64> %i.j, splat (i64 1)
  %i.m = xor <2 x i64> %i.l, %wide.load9
  %i.n = and <2 x i64> %wide.load, splat (i64 1)
  %i.o = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.p = select <2 x i1> %i.o, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.q = xor <2 x i64> %i.m, %i.p
  store <2 x i64> %i.q, ptr %i.d, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, 226
  br i1 %i.r, label %vector.ph11, label %vector.body, !llvm.loop !82

vector.ph11:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.t = and i64 %vector.recur.extract, -2147483648
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.v = load i64, ptr %i.u, align 8, !tbaa !17   ; 2 uses
  %i.w = and i64 %i.v, 2147483646
  %i.x = or disjoint i64 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.z = load i64, ptr %i.y, align 8, !tbaa !17
  %i.aa = lshr exact i64 %i.x, 1
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = and i64 %i.v, 1
  %.not20.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not20.i, i64 0, i64 2567483615
  %i.ae = xor i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !17
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  %vector.recur.init14 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph11
  %index13 = phi i64 [ 0, %vector.ph11 ], [ %index.next18, %vector.body12 ] ; 3 uses
  %vector.recur15 = phi <2 x i64> [ %vector.recur.init14, %vector.ph11 ], [ %wide.load16, %vector.body12 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1816
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1824
  %wide.load16 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !17 ; 4 uses
  %i.aj = shufflevector <2 x i64> %vector.recur15, <2 x i64> %wide.load16, <2 x i32> <i32 1, i32 2>
  %i.ak = and <2 x i64> %i.aj, splat (i64 -2147483648)
  %i.al = and <2 x i64> %wide.load16, splat (i64 2147483646)
  %i.am = or disjoint <2 x i64> %i.al, %i.ak
  %wide.load17 = load <2 x i64>, ptr %i.af, align 8, !tbaa !17
  %i.an = lshr exact <2 x i64> %i.am, splat (i64 1)
  %i.ao = xor <2 x i64> %i.an, %wide.load17
  %i.ap = and <2 x i64> %wide.load16, splat (i64 1)
  %i.aq = icmp eq <2 x i64> %i.ap, zeroinitializer
  %i.ar = select <2 x i1> %i.aq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.as = xor <2 x i64> %i.ao, %i.ar
  store <2 x i64> %i.as, ptr %i.ag, align 8, !tbaa !17
  %index.next18 = add nuw i64 %index13, 2         ; 2 uses
  %i.at = icmp eq i64 %index.next18, 396
  br i1 %i.at, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, label %vector.body12, !llvm.loop !83

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit: ; preds = %vector.body12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !17
  %i.aw = and i64 %i.av, -2147483648
  %i.ax = load i64, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ay = and i64 %i.ax, 2147483646
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.bc = lshr exact i64 %i.az, 1
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = and i64 %i.ax, 1
  %.not.i = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not.i, i64 0, i64 2567483615
  %i.bg = xor i64 %i.bd, %i.bf
  store i64 %i.bg, ptr %i.au, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, %bb.a
  %i.bh = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !72
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !17 ; 2 uses
  %i.bl = lshr i64 %i.bk, 11
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = xor i64 %i.bm, %i.bk                    ; 2 uses
  %i.bo = shl i64 %i.bn, 7
  %i.bp = and i64 %i.bo, 2636928640
  %i.bq = xor i64 %i.bp, %i.bn                    ; 2 uses
  %i.br = shl i64 %i.bq, 15
  %i.bs = and i64 %i.br, 4022730752
  %i.bt = xor i64 %i.bs, %i.bq                    ; 2 uses
  %i.bu = lshr i64 %i.bt, 18
  %i.bv = xor i64 %i.bu, %i.bt
  ret i64 %i.bv
}

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZL24loopWithReductionAutoVecIhEmPT_S1_S1_i(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #7 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %3, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.067.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.067.epil = phi i64 [ %.067.epil.init, %.lr.ph.epil.preheader ], [ %i.f, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23
  %i.e = zext i8 %i.d to i64
  %i.f = add i64 %.067.epil, %i.e                 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !84

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.06.lcssa = phi i64 [ 0, %bb.a ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ], [ %i.f, %.lr.ph.epil ]
  ret i64 %.06.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %.067 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.as, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !23
  %i.i = zext i8 %i.h to i64
  %i.j = add i64 %.067, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !23
  %i.n = zext i8 %i.m to i64
  %i.o = add i64 %i.j, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !23
  %i.s = zext i8 %i.r to i64
  %i.t = add i64 %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !23
  %i.x = zext i8 %i.w to i64
  %i.y = add i64 %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !23
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !23
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !23
  %i.am = zext i8 %i.al to i64
  %i.an = add i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !23
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

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !57
  %wide.load12 = load <8 x i16>, ptr %i.i, align 2, !tbaa !57
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load13 = load <8 x i16>, ptr %i.j, align 2, !tbaa !57
  %wide.load14 = load <8 x i16>, ptr %i.k, align 2, !tbaa !57
  %i.l = add <8 x i16> %wide.load13, %wide.load
  %i.m = add <8 x i16> %wide.load14, %wide.load12
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <8 x i16> %i.l, ptr %i.n, align 2, !tbaa !57
  store <8 x i16> %i.m, ptr %i.o, align 2, !tbaa !57
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index16
  %wide.load17 = load <4 x i16>, ptr %i.q, align 2, !tbaa !57
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index16
  %wide.load18 = load <4 x i16>, ptr %i.r, align 2, !tbaa !57
  %i.s = add <4 x i16> %wide.load18, %wide.load17
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index16
  store <4 x i16> %i.s, ptr %i.t, align 2, !tbaa !57
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !87

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec15, %wide.trip.count
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.prol
  %i.w = load i16, ptr %i.v, align 2, !tbaa !57
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.prol
  %i.y = load i16, ptr %i.x, align 2, !tbaa !57
  %i.z = add i16 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.prol
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !57
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !88

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
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !57
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !57
  %i.ah = add i16 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !57
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next
  %i.am = load i16, ptr %i.al, align 2, !tbaa !57
  %i.an = add i16 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !57
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !57
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !57
  %i.at = add i16 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  store i16 %i.at, ptr %i.au, align 2, !tbaa !57
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !57
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !57
  %i.az = add i16 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !57
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !89
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i64 @_ZL18callThroughOptnoneIRPFmPtS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !67
  store ptr %1, ptr %i.b, align 8, !tbaa !92
  store ptr %2, ptr %i.c, align 8, !tbaa !92
  store ptr %3, ptr %i.d, align 8, !tbaa !92
  store ptr %4, ptr %i.e, align 8, !tbaa !68
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !69, !align !70
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !92, !nonnull !69, !align !70
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !92, !nonnull !69, !align !70
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !92, !nonnull !69, !align !70
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !68, !nonnull !69, !align !70
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = trunc i64 %i.o to i32
  %i.q = call noundef i64 %i.g(ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m, i32 noundef %i.p)
  ret i64 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE(ptr noundef nonnull align 2 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 2 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<unsigned short>::param_type", align 2 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !56
  %i.c = zext i16 %i.b to i64
  %i.d = load i16, ptr %2, align 2, !tbaa !55
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
end_hunk_1
