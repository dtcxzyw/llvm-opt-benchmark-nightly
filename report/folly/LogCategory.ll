Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/LogCategory?download=true
inline.NumInlined: 666
inline.NumDeleted: 373
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK5folly11LogCategory14processMessageERKNS_10LogMessageE:bb.a

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.ab

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ab:                                            ; preds = %bb.aa, %bb.x, %bb.v
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #25
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.y, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc38, %.loopexit41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.not47 = icmp eq ptr %i.r, %i.s
  br i1 %.not47, label %._crit_edge, label %.lr.ph46

.lr.ph46:                                         ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 23
  br label %bb.ak

._crit_edge:                                      ; preds = %bb.ap, %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.cg = load ptr, ptr %4, align 8, !tbaa !52    ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !53 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cg, %i.ci
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i ], [ %i.cg, %._crit_edge ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.cl, align 8, !tbaa !58
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !59
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !61
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #18, !call_target !66, !inline_history !5
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !61
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #18, !call_target !68, !inline_history !5
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.co, %bb.af ], [ %i.cy, %bb.ag ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.ah, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i, !prof !70

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #18
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ad, %.lr.ph.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.da, %i.ci
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.db = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.cg, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !72
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZNSt5arrayISt10shared_ptrIN5folly10LogHandlerEELm5EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.aj:                                            ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.loopexit

bb.ak:                                            ; preds = %.lr.ph46, %bb.ap
  %.045 = phi i64 [ 0, %.lr.ph46 ], [ %i.du, %bb.ap ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %.023, i64 %.045
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !93 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !61
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull %0)
          to label %bb.ap unwind label %bb.al, !call_target !256

bb.al:                                            ; preds = %bb.ak
  %i.dm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.dn = extractvalue { ptr, i32 } %i.dm, 1
  %i.do = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.dp = icmp eq i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.dq = extractvalue { ptr, i32 } %i.dm, 0
  %i.dr = call ptr @__cxa_begin_catch(ptr %i.dq) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN5folly12exceptionStrERKSt9exception(ptr dead_on_unwind nonnull writable sret(%"class.folly::basic_fbstring") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.dr)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void @_ZN5folly8LoggerDB15internalWarningIJRA27_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA19_S2_NS_14basic_fbstringIcS8_S9_NS_13fbstring_coreIcEEEEEEEvNS_5RangeIPS2_EEiDpOT_(ptr nonnull @.str.6, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 57), i32 noundef 129, ptr noundef nonnull align 1 dereferenceable(27) @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 1 dereferenceable(19) @.str.8, ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  %i.ds = load i8, ptr %i.cf, align 1, !tbaa !50
  %i.dt = icmp ult i8 %i.ds, 64
  br i1 %i.dt, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, %bb.ak
  %i.du = add nuw i64 %.045, 1                    ; 2 uses
  %exitcond51.not = icmp eq i64 %i.du, %i.w
  br i1 %exitcond51.not, label %._crit_edge, label %bb.ak, !llvm.loop !246

bb.aq:                                            ; preds = %bb.am
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.as

bb.ar:                                            ; preds = %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %bb.aq, %bb.ar, %bb.aj
  %.merged = phi { ptr, i32 } [ %.pn, %bb.aj ], [ %i.dv, %bb.aq ], [ %i.dw, %bb.ar ], [ %i.dm, %bb.al ]
  call void @_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZNSt5arrayISt10shared_ptrIN5folly10LogHandlerEELm5EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.aq
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !52     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.j = load ptr, ptr %0, align 8, !tbaa !52     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_M_allocateEm.exit.i, !prof !70

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !96
  store <2 x ptr> %i.s, ptr %.08.i.i.i.i.i, align 8, !tbaa !96
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !69
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !69
  br label %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.aa = icmp eq ptr %i.y, %i.b
  br i1 %i.aa, label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !52    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i ], [ %i.ab, %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ag, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !59
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18, !call_target !66, !inline_history !1
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18, !call_target !68, !inline_history !1
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.aj, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.au, label %bb.m, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i, !prof !70

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.av, %i.ad
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exit

_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.aw = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exitthread-pre-split ], [ %i.ab, %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exit
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !72
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.o:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !53 ; 3 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.bf, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = icmp sgt i64 %i.g, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.p, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cj, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ci, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ch, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bh = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !93
  store ptr %i.bh, ptr %.0811.i.i.i.i.i, align 8, !tbaa !93
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !56 ; 4 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !69
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !69
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !56
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.br = phi ptr [ %i.bl, %bb.q ], [ %i.bl, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bs, align 8, !tbaa !58
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !59
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !61
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #18, !call_target !66, !inline_history !3907
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !61
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #18, !call_target !68, !inline_history !3907
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bv, %bb.x ], [ %i.cf, %bb.y ]
  %i.cg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cg, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !70

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !56
  br label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.cj = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ck = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !3908

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.bc, align 8, !tbaa !97
  %.pre63 = ptrtoint ptr %i.ci to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, %bb.p
  %.pre-phi64 = phi i64 [ %.pre63, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.cl = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.bd, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ci, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.j, %bb.p ]
end_hunk_0
