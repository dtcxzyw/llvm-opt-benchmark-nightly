Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/StackTrace?download=true
inline.NumInlined: 93
inline.NumDeleted: 64
begin_hunk_0_@_ZN5folly10symbolizer17getStackTraceHeapEPmm:bb.a
  br i1 %i.q, label %bb.e, label %_ZN5folly10symbolizer12_GLOBAL__N_121tryFramePointerUnwindEPmm.exit.thread

bb.e:                                             ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_129isFramePointerUnwinderEnabledEv.exit
  %i.r = load atomic i8, ptr @_ZGVZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEvE9available acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEv.exit, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEvE9available) #15
  %.not.i23 = icmp eq i32 %i.t, 0
  br i1 %.not.i23, label %_ZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not1.i = icmp eq ptr @folly_debugging_have_proc_map_query, null
  br i1 %.not1.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = invoke zeroext i1 @folly_debugging_have_proc_map_query()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = phi i1 [ false, %bb.g ], [ %i.u, %bb.h ]
  %i.w = zext i1 %i.v to i8
  store i8 %i.w, ptr @_ZZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEvE9available, align 1, !tbaa !15
  %i.x = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEvE9available) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEvE9available) #15
  br label %_ZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEv.exit

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #16
  unreachable

_ZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEv.exit: ; preds = %bb.e, %bb.f, %bb.i
  %i.aa = load i8, ptr @_ZZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEvE9available, align 1, !tbaa !15, !range !16, !noundef !17
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.k, label %_ZN5folly10symbolizer12_GLOBAL__N_121tryFramePointerUnwindEPmm.exit.thread

bb.k:                                             ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !18
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 4294967295)
  %i.ac = trunc nuw i64 %.sroa.speculated to i32
  invoke void @folly_debugging_backtrace_raw(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.ac)
          to label %_ZN5folly10symbolizer12_GLOBAL__N_121tryFramePointerUnwindEPmm.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #16
  unreachable

_ZN5folly10symbolizer12_GLOBAL__N_121tryFramePointerUnwindEPmm.exit: ; preds = %bb.k
  %i.af = load i32, ptr %i.c, align 4, !tbaa !18  ; 2 uses
  %.not.i.not = icmp eq i32 %i.af, 0
  %i.ag = zext i32 %i.af to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br i1 %.not.i.not, label %_ZN5folly10symbolizer12_GLOBAL__N_121tryFramePointerUnwindEPmm.exit.thread, label %bb.u

_ZN5folly10symbolizer12_GLOBAL__N_121tryFramePointerUnwindEPmm.exit.thread: ; preds = %bb.a, %_ZN5folly10symbolizer12_GLOBAL__N_129isFramePointerUnwinderEnabledEv.exit, %_ZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEv.exit, %_ZN5folly10symbolizer12_GLOBAL__N_121tryFramePointerUnwindEPmm.exit
  %i.ah = call noalias noundef nonnull dereferenceable(1984) ptr @_Znwm(i64 noundef 1984) #17, !noalias !24 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1984) %i.ah, i8 0, i64 1984, i1 false), !noalias !24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 968 ; 6 uses
  %i.aj = icmp eq i64 %1, 0
  br i1 %i.aj, label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit34, label %bb.m

bb.m:                                             ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_121tryFramePointerUnwindEPmm.exit.thread
  %i.ak = invoke i32 @_Ux86_64_getcontext(ptr noundef nonnull align 8 dereferenceable(968) %i.ah)
          to label %.noexc unwind label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit34, label %bb.n

bb.n:                                             ; preds = %.noexc
  %i.am = invoke i32 @_ULx86_64_init_local(ptr noundef nonnull align 8 dereferenceable(1016) %i.ai, ptr noundef nonnull align 8 dereferenceable(968) %i.ah)
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit.loopexit.split-lp

.noexc12:                                         ; preds = %bb.n
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit34, label %bb.o

bb.o:                                             ; preds = %.noexc12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ao = invoke i32 @_ULx86_64_get_reg(ptr noundef nonnull align 8 dereferenceable(1016) %i.ai, i32 noundef 16, ptr noundef nonnull %i.b)
          to label %.noexc24 unwind label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit.loopexit.split-lp

.noexc24:                                         ; preds = %bb.o
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %.noexc13.thread, label %bb.p

bb.p:                                             ; preds = %.noexc24
  %i.aq = invoke i32 @_ULx86_64_is_signal_frame(ptr noundef nonnull align 8 dereferenceable(1016) %i.ai)
          to label %.noexc25 unwind label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit.loopexit.split-lp ; 2 uses

.noexc25:                                         ; preds = %bb.p
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.q, label %.noexc13.thread

.noexc13.thread:                                  ; preds = %.noexc24, %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit34

bb.q:                                             ; preds = %.noexc25
  %i.as = icmp eq i32 %i.aq, 0
  %i.at = load i64, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %.neg = sext i1 %i.as to i64
  %i.au = add i64 %i.at, %.neg
  store i64 %i.au, ptr %0, align 8, !tbaa !20
  %.not.i1167 = icmp eq i64 %1, 1
  br i1 %.not.i1167, label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit34, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %bb.t
  %.020.i69.pn = phi ptr [ %.020.i69, %bb.t ], [ %0, %bb.q ]
  %.0.i1068 = phi i64 [ %i.bf, %bb.t ], [ 1, %bb.q ] ; 2 uses
  %.020.i69 = getelementptr inbounds nuw i8, ptr %.020.i69.pn, i64 8 ; 2 uses
  %i.av = invoke i32 @_ULx86_64_step(ptr noundef nonnull align 8 dereferenceable(1016) %i.ai)
          to label %.noexc14 unwind label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit.loopexit ; 2 uses

.noexc14:                                         ; preds = %.lr.ph
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit34, label %bb.r

bb.r:                                             ; preds = %.noexc14
  %i.ax = icmp eq i32 %i.av, 0
  br i1 %i.ax, label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit34, label %_ZNSt8optionalIN5folly10symbolizer12_GLOBAL__N_19FrameInfoEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit

_ZNSt8optionalIN5folly10symbolizer12_GLOBAL__N_19FrameInfoEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ay = invoke i32 @_ULx86_64_get_reg(ptr noundef nonnull align 8 dereferenceable(1016) %i.ai, i32 noundef 16, ptr noundef nonnull %i.a)
          to label %.noexc28 unwind label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit.loopexit

.noexc28:                                         ; preds = %_ZNSt8optionalIN5folly10symbolizer12_GLOBAL__N_19FrameInfoEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.noexc15.thread, label %bb.s

bb.s:                                             ; preds = %.noexc28
  %i.ba = invoke i32 @_ULx86_64_is_signal_frame(ptr noundef nonnull align 8 dereferenceable(1016) %i.ai)
          to label %.noexc29 unwind label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit.loopexit ; 2 uses

.noexc29:                                         ; preds = %bb.s
  %i.bb = icmp sgt i32 %i.ba, -1
  br i1 %i.bb, label %bb.t, label %.noexc15.thread

.noexc15.thread:                                  ; preds = %.noexc28, %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit34

bb.t:                                             ; preds = %.noexc29
  %i.bc = icmp eq i32 %i.ba, 0
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.neg65 = sext i1 %i.bc to i64
  %i.be = add i64 %i.bd, %.neg65
  store i64 %i.be, ptr %.020.i69, align 8, !tbaa !20
  %i.bf = add nuw i64 %.0.i1068, 1                ; 2 uses
  %.not.i11 = icmp eq i64 %i.bf, %1
  br i1 %.not.i11, label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit34, label %.lr.ph, !llvm.loop !0

_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit.loopexit: ; preds = %.lr.ph, %_ZNSt8optionalIN5folly10symbolizer12_GLOBAL__N_19FrameInfoEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit, %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit.loopexit.split-lp: ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit.loopexit.split-lp, %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 1984) #18
  resume { ptr, i32 } %lpad.phi

_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit34: ; preds = %bb.r, %bb.t, %.noexc14, %bb.q, %.noexc13.thread, %.noexc15.thread, %.noexc12, %.noexc, %_ZN5folly10symbolizer12_GLOBAL__N_121tryFramePointerUnwindEPmm.exit.thread
  %.4.i = phi i64 [ -1, %.noexc12 ], [ 0, %_ZN5folly10symbolizer12_GLOBAL__N_121tryFramePointerUnwindEPmm.exit.thread ], [ -1, %.noexc ], [ -1, %.noexc13.thread ], [ -1, %.noexc15.thread ], [ 1, %bb.q ], [ %1, %bb.t ], [ %.0.i1068, %bb.r ], [ -1, %.noexc14 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 1984) #18
  br label %bb.u

bb.u:                                             ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_121tryFramePointerUnwindEPmm.exit, %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit34
  %.2 = phi i64 [ %.4.i, %_ZNSt10unique_ptrIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxSt14default_deleteIS3_EED2Ev.exit34 ], [ %i.ag, %_ZN5folly10symbolizer12_GLOBAL__N_121tryFramePointerUnwindEPmm.exit ]
  ret i64 %.2
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define noundef i64 @_ZN5folly10symbolizer22getAsyncStackTraceSafeEPmm(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5folly27tryGetCurrentAsyncStackRootEv() #15 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %2 = load atomic ptr, ptr %i.a monotonic, align 8 ; 0 uses
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %i.c = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.d = ptrtoint ptr %i.c to i64
  store i64 %i.d, ptr %0, align 8, !tbaa !20
  %5 = load atomic ptr, ptr %i.a monotonic, align 8
  %.not56 = icmp eq i64 %1, 1
  br i1 %.not56, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %6 = tail call ptr @llvm.frameaddress.p0(i32 0)
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit
  %.038 = phi ptr [ %.sroa.10.1, %_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit ], [ %5, %bb.d ] ; 2 uses
  %.02637 = phi ptr [ %.sroa.8.1, %_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit ], [ %4, %bb.d ]
  %.02736 = phi ptr [ %.sroa.5.1, %_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit ], [ %6, %bb.d ] ; 3 uses
  %.135 = phi i64 [ %i.av, %_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit ], [ 1, %bb.d ] ; 4 uses
  %i.e = icmp ne ptr %.02736, null
  %i.f = icmp ne ptr %.038, null                  ; 2 uses
  %i.g = select i1 %i.e, i1 true, i1 %i.f
  br i1 %i.g, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.135
  %i.i = sub nuw i64 %1, %.135
  %i.j = icmp ugt ptr %.02736, inttoptr (i64 4095 to ptr)
  br i1 %i.j, label %.lr.ph.i, label %_ZN5folly10symbolizer12_GLOBAL__N_115walkNormalStackEPmmPNS1_10StackFrameES4_.exit

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.02136.i = phi i64 [ %i.s, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.02235.i = phi ptr [ %i.k, %bb.f ], [ %.02736, %bb.e ] ; 4 uses
  %i.k = load ptr, ptr %.02235.i, align 8, !tbaa !37 ; 5 uses
  %i.l = icmp ule ptr %i.k, %.02235.i
  %i.m = getelementptr inbounds nuw i8, ptr %.02235.i, i64 1099511627776
  %i.n = icmp uge ptr %i.k, %i.m
  %or.cond.not33.i = select i1 %i.l, i1 true, i1 %i.n
  %i.o = icmp eq ptr %i.k, %.02637
  %or.cond31.i = or i1 %i.o, %or.cond.not33.i
  br i1 %or.cond31.i, label %_ZN5folly10symbolizer12_GLOBAL__N_115walkNormalStackEPmmPNS1_10StackFrameES4_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.02235.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add nuw i64 %.02136.i, 1                 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02136.i
  store i64 %i.r, ptr %i.t, align 8, !tbaa !20
  %i.u = icmp ult i64 %i.s, %i.i
  %i.v = icmp ugt ptr %i.k, inttoptr (i64 4095 to ptr)
  %or.cond4.i = and i1 %i.u, %i.v
  br i1 %or.cond4.i, label %.lr.ph.i, label %_ZN5folly10symbolizer12_GLOBAL__N_115walkNormalStackEPmmPNS1_10StackFrameES4_.exit

_ZN5folly10symbolizer12_GLOBAL__N_115walkNormalStackEPmmPNS1_10StackFrameES4_.exit: ; preds = %.lr.ph.i, %bb.f, %bb.e
  %.021.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.f ], [ %.02136.i, %.lr.ph.i ]
  %i.w = add i64 %.021.lcssa.i, %.135             ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w
  %i.y = sub i64 %1, %i.w                         ; 2 uses
  %i.z = icmp ne i64 %1, %i.w
  %i.aa = and i1 %i.f, %i.z
  br i1 %i.aa, label %.lr.ph.i32, label %_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit

.lr.ph.i32:                                       ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_115walkNormalStackEPmmPNS1_10StackFrameES4_.exit, %.thread.i
  %.01526.i = phi ptr [ %i.ah, %.thread.i ], [ %.038, %_ZN5folly10symbolizer12_GLOBAL__N_115walkNormalStackEPmmPNS1_10StackFrameES4_.exit ] ; 3 uses
  %i.ab = phi i64 [ %i.af, %.thread.i ], [ 0, %_ZN5folly10symbolizer12_GLOBAL__N_115walkNormalStackEPmmPNS1_10StackFrameES4_.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01526.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40, !noalias !41
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = add nuw i64 %i.ab, 1                    ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ab
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !20, !noalias !41
  %i.ah = load ptr, ptr %.01526.i, align 8, !tbaa !42, !noalias !41 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %.lr.ph.i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.01526.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43, !noalias !41 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34, !noalias !41 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !37, !noalias !41 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !44, !noalias !41 ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34, !noalias !41
  %i.au = load atomic ptr, ptr %i.ar monotonic, align 8, !noalias !41
  br label %_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit

.thread.i:                                        ; preds = %.lr.ph.i32
  %exitcond.not = icmp eq i64 %i.af, %i.y
  br i1 %exitcond.not, label %_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit, label %.lr.ph.i32

_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit: ; preds = %.thread.i, %bb.g, %bb.h, %bb.i, %bb.j, %_ZN5folly10symbolizer12_GLOBAL__N_115walkNormalStackEPmmPNS1_10StackFrameES4_.exit
  %.sroa.0.0 = phi i64 [ 0, %_ZN5folly10symbolizer12_GLOBAL__N_115walkNormalStackEPmmPNS1_10StackFrameES4_.exit ], [ %i.af, %bb.g ], [ %i.af, %bb.j ], [ %i.af, %bb.i ], [ %i.af, %bb.h ], [ %i.y, %.thread.i ]
  %.sroa.5.1 = phi ptr [ null, %_ZN5folly10symbolizer12_GLOBAL__N_115walkNormalStackEPmmPNS1_10StackFrameES4_.exit ], [ null, %bb.g ], [ %i.ap, %bb.j ], [ %i.ap, %bb.i ], [ null, %bb.h ], [ null, %.thread.i ]
  %.sroa.8.1 = phi ptr [ null, %_ZN5folly10symbolizer12_GLOBAL__N_115walkNormalStackEPmmPNS1_10StackFrameES4_.exit ], [ null, %bb.g ], [ %i.at, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %.thread.i ]
  %.sroa.10.1 = phi ptr [ null, %_ZN5folly10symbolizer12_GLOBAL__N_115walkNormalStackEPmmPNS1_10StackFrameES4_.exit ], [ null, %bb.g ], [ %i.au, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %.thread.i ]
  %i.av = add i64 %.sroa.0.0, %i.w                ; 3 uses
  %i.aw = icmp ult i64 %i.av, %1
  br i1 %i.aw, label %.lr.ph, label %.critedge, !llvm.loop !27

.critedge:                                        ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit, %.lr.ph, %.thread, %bb.c, %bb.a
  %.029 = phi i64 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %.thread ], [ %i.av, %_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE.exit ], [ %.135, %.lr.ph ]
  ret i64 %.029
}

; Function Attrs: nounwind
declare noundef ptr @_ZN5folly27tryGetCurrentAsyncStackRootEv() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress.p0(i32 immarg) #12

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_StackTrace.cpp() #13 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly10symbolizer13getStackTraceEPmm(ptr noundef nonnull @_ZN5folly10symbolizer12_GLOBAL__N_15sAddrE, i64 noundef 0) ; 0 uses
  %i.b = load atomic i8, ptr @_ZGVZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEvE9available acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %__cxx_global_var_init.1.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEvE9available) #15
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %__cxx_global_var_init.1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i.i = icmp eq ptr @folly_debugging_have_proc_map_query, null
  br i1 %.not1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = invoke zeroext i1 @folly_debugging_have_proc_map_query()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi i1 [ false, %bb.c ], [ %i.e, %bb.d ]
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr @_ZZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEvE9available, align 1, !tbaa !15
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEvE9available) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEvE9available) #15
  br label %__cxx_global_var_init.1.exit

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #16
  unreachable

__cxx_global_var_init.1.exit:                     ; preds = %bb.a, %bb.b, %bb.e
  %i.k = load i8, ptr @_ZZN5folly10symbolizer12_GLOBAL__N_123isProcMapQueryAvailableEvE9available, align 1, !tbaa !15, !range !16, !noundef !17
  store i8 %i.k, ptr @_ZN5folly10symbolizer12_GLOBAL__N_117sProcMapQueryInitE, align 1, !tbaa !15
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5folly10symbolizer12_GLOBAL__N_117sProcMapQueryInitE) ; 0 uses
  %i.m = load atomic i8, ptr @_ZGVZN5folly10symbolizer12_GLOBAL__N_129isFramePointerUnwinderEnabledEvE7enabled acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.g, label %__cxx_global_var_init.2.exit, !prof !13

bb.g:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly10symbolizer12_GLOBAL__N_129isFramePointerUnwinderEnabledEvE7enabled) #15
  %.not.i.i1 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i1, label %__cxx_global_var_init.2.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @getenv(ptr noundef nonnull @.str) #15 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %"_ZZN5folly10symbolizer12_GLOBAL__N_129isFramePointerUnwinderEnabledEvENK3$_0clEv.exit.i.i", label %sub_0.i.i.i

sub_0.i.i.i:                                      ; preds = %bb.h
  %i.q = load i8, ptr %i.p, align 1
  %.not1.i.i.i = icmp eq i8 %i.q, 49
  br i1 %.not1.i.i.i, label %sub_1.i.i.i, label %"_ZZN5folly10symbolizer12_GLOBAL__N_129isFramePointerUnwinderEnabledEvENK3$_0clEv.exit.i.i"

sub_1.i.i.i:                                      ; preds = %sub_0.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 0
  %i.u = zext i1 %i.t to i8
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_129isFramePointerUnwinderEnabledEvENK3$_0clEv.exit.i.i"

"_ZZN5folly10symbolizer12_GLOBAL__N_129isFramePointerUnwinderEnabledEvENK3$_0clEv.exit.i.i": ; preds = %sub_1.i.i.i, %sub_0.i.i.i, %bb.h
  %i.v = phi i8 [ 0, %bb.h ], [ 0, %sub_0.i.i.i ], [ %i.u, %sub_1.i.i.i ]
  store i8 %i.v, ptr @_ZZN5folly10symbolizer12_GLOBAL__N_129isFramePointerUnwinderEnabledEvE7enabled, align 1, !tbaa !15
  %i.w = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZZN5folly10symbolizer12_GLOBAL__N_129isFramePointerUnwinderEnabledEvE7enabled) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly10symbolizer12_GLOBAL__N_129isFramePointerUnwinderEnabledEvE7enabled) #15
  br label %__cxx_global_var_init.2.exit

__cxx_global_var_init.2.exit:                     ; preds = %__cxx_global_var_init.1.exit, %bb.g, %"_ZZN5folly10symbolizer12_GLOBAL__N_129isFramePointerUnwinderEnabledEvENK3$_0clEv.exit.i.i"
  %i.x = load i8, ptr @_ZZN5folly10symbolizer12_GLOBAL__N_129isFramePointerUnwinderEnabledEvE7enabled, align 1, !tbaa !15, !range !16, !noundef !17
  store i8 %i.x, ptr @_ZN5folly10symbolizer12_GLOBAL__N_132sFramePointerUnwinderEnabledInitE, align 1, !tbaa !15
  %i.y = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5folly10symbolizer12_GLOBAL__N_132sFramePointerUnwinderEnabledInitE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !21}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 7, !"openmp", i32 51}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"branch_weights", i32 1, i32 1048575}
!14 = !{!"bool", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!10, !10, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, i1 false, !"_ZSt11make_uniqueIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!23 = distinct !{!23, !22, !"_ZSt11make_uniqueIZN5folly10symbolizer17getStackTraceHeapEPmmE3CtxJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!24 = !{!23}
!25 = distinct !{!25, i1 false, !"_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE"}
!26 = distinct !{!26, !25, !"_ZN5folly10symbolizer12_GLOBAL__N_114walkAsyncStackEPmmPNS_15AsyncStackFrameE: argument 0"}
!27 = distinct !{!27, !21}
!28 = !{!"any pointer", !9, i64 0}
!29 = !{!"p1 _ZTSN5folly15AsyncStackFrameE", !28, i64 0}
!30 = !{!"_ZTSSt13__atomic_baseIPN5folly15AsyncStackFrameEE", !29, i64 0}
!31 = !{!"_ZTSSt6atomicIPN5folly15AsyncStackFrameEE", !30, i64 0}
!32 = !{!"p1 _ZTSN5folly14AsyncStackRootE", !28, i64 0}
!33 = !{!"_ZTSN5folly14AsyncStackRootE", !31, i64 0, !32, i64 8, !28, i64 16, !28, i64 24}
!34 = !{!33, !28, i64 16}
!35 = !{!"p1 _ZTSN5folly10symbolizer12_GLOBAL__N_110StackFrameE", !28, i64 0}
!36 = !{!"_ZTSN5folly10symbolizer12_GLOBAL__N_110StackFrameE", !35, i64 0, !28, i64 8}
!37 = !{!36, !35, i64 0}
!38 = !{!36, !28, i64 8}
!39 = !{!"_ZTSN5folly15AsyncStackFrameE", !29, i64 0, !28, i64 8, !32, i64 16}
!40 = !{!39, !28, i64 8}
!41 = !{!26}
!42 = !{!39, !29, i64 0}
!43 = !{!39, !32, i64 16}
!44 = !{!33, !32, i64 8}
end_hunk_0
