Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/EpollBackend?download=true
inline.NumInlined: 882
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5folly12EpollBackend17removeSignalEventERNS_14EventBaseEventE:bb.a

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance) #20
  resume { ptr, i32 } %i.ab

_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit: ; preds = %bb.c, %bb.d, %bb.f
  %i.ac = load ptr, ptr @_ZZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance, align 8, !tbaa !122, !nonnull !46, !align !123
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !80
  call fastcc void @_ZN5folly12_GLOBAL__N_114SignalRegistry11setNotifyFdEii(ptr noundef nonnull align 8 dereferenceable(60) %i.ac, i32 noundef %i.af, i32 noundef -1)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit, %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread
  %.0 = phi i32 [ -1, %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread ], [ 0, %_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly12EpollBackend9TimerInfo12freeFunctionEPv(ptr noundef %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5folly12EpollBackend13updateTimerFdEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.itimerspec, align 8         ; 5 uses
  %2 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %3 = alloca %struct.itimerspec, align 8         ; 7 uses
  %4 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit

_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !51
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit, %bb.a
  %.sroa.041.0 = phi i64 [ undef, %bb.a ], [ %i.f, %_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit ] ; 3 uses
  %.sroa.7.0 = phi i8 [ 0, %bb.a ], [ 1, %_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.h = trunc nuw i8 %.sroa.7.0 to i1            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !100, !range !45, !noundef !46
  %i.k = icmp eq i8 %.sroa.7.0, %i.j              ; 2 uses
  %brmerge.not.i = and i1 %i.k, %i.h
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.g, align 8
  %i.l = icmp eq i64 %.sroa.041.0, %.sroa.0.0.copyload.i2.i.i
  %i.m = select i1 %brmerge.not.i, i1 %i.l, i1 %i.k
  br i1 %i.m, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !99
  %i.p = call i32 @timerfd_settime(i32 noundef %i.o, i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) #20
  %.not22.not = icmp eq i32 %i.p, 0
  br i1 %.not22.not, label %.critedge25, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !61
  %.fca.1.gep10 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep10, align 8, !tbaa !61
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.21, i64 noundef 65)
          to label %.critedge unwind label %bb.g  ; 0 uses

.critedge:                                        ; preds = %bb.f
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.critedge25

.critedge25:                                      ; preds = %bb.d, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.l

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.t = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #20
  %i.u = sub nsw i64 %.sroa.041.0, %i.t
  %i.v = sdiv i64 %i.u, 1000
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.v, i64 1000) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.w = udiv i64 %spec.select, 1000000
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store i64 %i.w, ptr %i.x, align 8, !tbaa !152
  %i.y = mul nuw nsw i64 %spec.select, 1000
  %i.z = urem i64 %i.y, 1000000000
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !99
  %i.ad = call i32 @timerfd_settime(i32 noundef %i.ac, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #20
  %.not23.not = icmp eq i32 %i.ad, 0
  br i1 %.not23.not, label %.critedge28, label %bb.i, !prof !81

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.b, align 8, !tbaa !61
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !61
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str, i32 noundef 523, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.21, i64 noundef 65)
          to label %.critedge27 unwind label %bb.k ; 0 uses

.critedge27:                                      ; preds = %bb.j
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge28

.critedge28:                                      ; preds = %bb.h, %.critedge27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.n

bb.l:                                             ; preds = %.critedge28, %.critedge25
  store i64 %.sroa.041.0, ptr %i.g, align 8
  store i8 %.sroa.7.0, ptr %i.i, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.l
  ret void

bb.n:                                             ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.s, %bb.g ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare i32 @timerfd_settime(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5folly9readNoIntEiPvm(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly12_GLOBAL__N_114SignalRegistry11setNotifyFdEii(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 6 uses
  %4 = alloca %struct.sigaction, align 8          ; 7 uses
  %5 = alloca %"struct.folly::(anonymous namespace)::SignalRegistry::SigInfo", align 8 ; 4 uses
  %i.a = atomicrmw xchg ptr %0, i8 1 acquire, align 1
  %.not1.i.i = icmp eq i8 %i.a, 0
  br i1 %.not1.i.i, label %_ZNSt10lock_guardIN5folly13MicroSpinLockEEC2ERS1_.exit, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.preheader.lr.ph.i.i
  %.sroa.4.1.i.i = phi i64 [ 4294967296, %.preheader.lr.ph.i.i ], [ %.sroa.4.2.i.i, %.preheader.i.i.backedge ] ; 3 uses
  %6 = and i64 %.sroa.4.1.i.i, 4096
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.i.i
  %8 = add nuw nsw i64 %.sroa.4.1.i.i, 1
  %.sroa.4.8.insert.ext.i.i = and i64 %8, 8191
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !160
  br label %_ZN5folly6detail7Sleeper4waitEv.exit.i.i

bb.c:                                             ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !tbaa !161
  store i64 500000, ptr %i.b, align 8, !tbaa !162
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.c = invoke i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3)
          to label %.noexc.i.i.i unwind label %bb.f

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.e, label %.critedge.i.i.i.i

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.e = tail call ptr @__errno_location() #22
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.d, label %.critedge.i.i.i.i, !llvm.loop !154

.critedge.i.i.i.i:                                ; preds = %bb.e, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN5folly6detail7Sleeper4waitEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #23
  unreachable

_ZN5folly6detail7Sleeper4waitEv.exit.i.i:         ; preds = %.critedge.i.i.i.i, %bb.b
  %.sroa.4.2.i.i = phi i64 [ %.sroa.4.8.insert.ext.i.i, %bb.b ], [ %.sroa.4.1.i.i, %.critedge.i.i.i.i ]
  %i.j = load atomic i8, ptr %0 monotonic, align 8
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %.preheader.i.i.backedge, label %bb.g

.preheader.i.i.backedge:                          ; preds = %_ZN5folly6detail7Sleeper4waitEv.exit.i.i, %bb.g
  br label %.preheader.i.i

bb.g:                                             ; preds = %_ZN5folly6detail7Sleeper4waitEv.exit.i.i
  %i.l = atomicrmw xchg ptr %0, i8 1 acquire, align 1
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardIN5folly13MicroSpinLockEEC2ERS1_.exit, label %.preheader.i.i.backedge

_ZNSt10lock_guardIN5folly13MicroSpinLockEEC2ERS1_.exit: ; preds = %bb.g, %bb.a
  %i.m = icmp sgt i32 %2, -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i32 %2, ptr %i.n seq_cst, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !102 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  %.not2.i.i.i.i = icmp eq ptr %.val.i.i.i, null  ; 2 uses
  br i1 %i.m, label %bb.h, label %bb.an

bb.h:                                             ; preds = %_ZNSt10lock_guardIN5folly13MicroSpinLockEEC2ERS1_.exit
  br i1 %.not2.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val.i.i.i, %bb.h ] ; 3 uses
  %.083.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !54
  %i.s = icmp slt i32 %i.r, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiN5folly12_GLOBAL__N_114SignalRegistry7SigInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !155

_ZNSt3mapIiN5folly12_GLOBAL__N_114SignalRegistry7SigInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.t, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapIiN5folly12_GLOBAL__N_114SignalRegistry7SigInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !54
  %i.w = icmp slt i32 %1, %i.v
  br i1 %i.w, label %.critedge.i, label %bb.af

.critedge.i:                                      ; preds = %bb.i, %_ZNSt3mapIiN5folly12_GLOBAL__N_114SignalRegistry7SigInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i, %bb.h
  %i.x = phi i1 [ false, %bb.i ], [ true, %_ZNSt3mapIiN5folly12_GLOBAL__N_114SignalRegistry7SigInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i ], [ true, %bb.h ]
  %.08.lcssa.i.i.i18.i = phi ptr [ %.19.i.i.i.i, %bb.i ], [ %.19.i.i.i.i, %_ZNSt3mapIiN5folly12_GLOBAL__N_114SignalRegistry7SigInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i ], [ %i.p, %bb.h ] ; 10 uses
  %i.y = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #24
          to label %.noexc unwind label %bb.am    ; 5 uses

.noexc:                                           ; preds = %.critedge.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i32 %1, ptr %i.z, align 8, !tbaa !167
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.aa, i8 0, i64 160, i1 false)
  br i1 %i.x, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val12.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !50
  %.not.i.i.i = icmp eq i64 %.val12.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54
  %i.ag = icmp slt i32 %i.af, %1
  br i1 %i.ag, label %.thread.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.01113.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !112 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %.01113.i.i.i.i, null
  br i1 %.not14.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i10.i

.lr.ph.i.i.i10.i:                                 ; preds = %bb.l, %.lr.ph.i.i.i10.i
  %.01115.i.i.i.i = phi ptr [ %.011.i.i.i.i, %.lr.ph.i.i.i10.i ], [ %.01113.i.i.i.i, %bb.l ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !54 ; 2 uses
  %i.aj = icmp slt i32 %1, %i.ai                  ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.aj, i64 16, i64 24
  %.in.i.i.i.i = getelementptr i8, ptr %.01115.i.i.i.i, i64 %.in.v.i.i.i.i
  %.011.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %.not.i.i.i11.i = icmp eq ptr %.011.i.i.i.i, null
  br i1 %.not.i.i.i11.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i10.i, !llvm.loop !156

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i10.i
  br i1 %i.aj, label %._crit_edge.thread.i.i.i.i, label %bb.n

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %bb.l
  %.010.lcssa20.i.i.i.i = phi ptr [ %.01115.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.p, %bb.l ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !103
  %i.al = icmp eq ptr %.010.lcssa20.i.i.i.i, %.val9.i.i.i.i
  br i1 %i.al, label %.thread.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.am = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i.i.i.i) #26 ; 2 uses
  %.phi.trans.insert31.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.pre32.i.i.i = load i32, ptr %.phi.trans.insert31.i.i.i, align 4, !tbaa !54
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i
  %i.an = phi i32 [ %.pre32.i.i.i, %bb.m ], [ %i.ai, %._crit_edge.i.i.i.i ]
  %.010.lcssa19.i.i.i.i = phi ptr [ %.010.lcssa20.i.i.i.i, %bb.m ], [ %.01115.i.i.i.i, %._crit_edge.i.i.i.i ]
  %.sroa.01.0.i.i.i.i = phi ptr [ %i.am, %bb.m ], [ %.01115.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.ao = icmp slt i32 %i.an, %1
  br i1 %i.ao, label %.thread.i.i, label %.thread13.i.i

bb.o:                                             ; preds = %.noexc
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i18.i, i64 32
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !54 ; 2 uses
  %i.ar = icmp slt i32 %1, %i.aq
  br i1 %i.ar, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !112 ; 4 uses
  %i.au = icmp eq ptr %i.at, %.08.lcssa.i.i.i18.i
  br i1 %i.au, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i18.i) #26 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !54
  %i.ay = icmp slt i32 %i.ax, %1
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr i8, ptr %i.av, i64 24
  %.val10.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !106
  %i.ba = icmp eq ptr %.val10.i.i.i, null         ; 2 uses
  %spec.select.i.i.i = select i1 %i.ba, ptr null, ptr %.08.lcssa.i.i.i18.i
  %spec.select22.i.i.i = select i1 %i.ba, ptr %i.av, ptr %.08.lcssa.i.i.i18.i
  br label %.thread.i.i

bb.s:                                             ; preds = %bb.q
  %.01113.i16.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !112 ; 2 uses
  %.not14.i17.i.i.i = icmp eq ptr %.01113.i16.i.i.i, null
  br i1 %.not14.i17.i.i.i, label %._crit_edge.thread.i33.i.i.i, label %.lr.ph.i18.i.i.i

.lr.ph.i18.i.i.i:                                 ; preds = %bb.s, %.lr.ph.i18.i.i.i
  %.01115.i19.i.i.i = phi ptr [ %.011.i22.i.i.i, %.lr.ph.i18.i.i.i ], [ %.01113.i16.i.i.i, %bb.s ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01115.i19.i.i.i, i64 32
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !54 ; 2 uses
  %i.bd = icmp slt i32 %1, %i.bc                  ; 2 uses
  %.in.v.i20.i.i.i = select i1 %i.bd, i64 16, i64 24
  %.in.i21.i.i.i = getelementptr i8, ptr %.01115.i19.i.i.i, i64 %.in.v.i20.i.i.i
  %.011.i22.i.i.i = load ptr, ptr %.in.i21.i.i.i, align 8, !tbaa !112 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %.011.i22.i.i.i, null
  br i1 %.not.i23.i.i.i, label %._crit_edge.i24.i.i.i, label %.lr.ph.i18.i.i.i, !llvm.loop !156

._crit_edge.i24.i.i.i:                            ; preds = %.lr.ph.i18.i.i.i
  br i1 %i.bd, label %._crit_edge.thread.i33.i.i.i, label %bb.u

._crit_edge.thread.i33.i.i.i:                     ; preds = %._crit_edge.i24.i.i.i, %bb.s
  %.010.lcssa20.i34.i.i.i = phi ptr [ %.01115.i19.i.i.i, %._crit_edge.i24.i.i.i ], [ %i.p, %bb.s ] ; 4 uses
  %i.be = icmp eq ptr %.010.lcssa20.i34.i.i.i, %i.at
  br i1 %i.be, label %.thread.i.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i33.i.i.i
  %i.bf = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i34.i.i.i) #26 ; 2 uses
  %.phi.trans.insert29.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %.pre30.i.i.i = load i32, ptr %.phi.trans.insert29.i.i.i, align 4, !tbaa !54
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i24.i.i.i
  %i.bg = phi i32 [ %.pre30.i.i.i, %bb.t ], [ %i.bc, %._crit_edge.i24.i.i.i ]
  %.010.lcssa19.i25.i.i.i = phi ptr [ %.010.lcssa20.i34.i.i.i, %bb.t ], [ %.01115.i19.i.i.i, %._crit_edge.i24.i.i.i ]
  %.sroa.01.0.i26.i.i.i = phi ptr [ %i.bf, %bb.t ], [ %.01115.i19.i.i.i, %._crit_edge.i24.i.i.i ]
  %i.bh = icmp slt i32 %i.bg, %1
  br i1 %i.bh, label %.thread.i.i, label %.thread13.i.i

bb.v:                                             ; preds = %bb.o
  %i.bi = icmp slt i32 %i.aq, %1
  br i1 %i.bi, label %bb.w, label %.thread13.i.i

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !112 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %.08.lcssa.i.i.i18.i
  br i1 %i.bl, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i18.i) #26 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !54
  %i.bp = icmp slt i32 %1, %i.bo
  br i1 %i.bp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bq = getelementptr i8, ptr %.08.lcssa.i.i.i18.i, i64 24
  %.val.i.i9.i = load ptr, ptr %i.bq, align 8, !tbaa !106
  %i.br = icmp eq ptr %.val.i.i9.i, null          ; 2 uses
  %spec.select23.i.i.i = select i1 %i.br, ptr null, ptr %i.bm
end_hunk_0
