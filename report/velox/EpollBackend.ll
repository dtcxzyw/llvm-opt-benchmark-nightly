inline.NumInlined: 881
inline.NumDeleted: 423
begin_hunk_0_@_ZN5folly12EpollBackend18eb_event_base_loopEi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.not90, label %bb.b, label %.loopexit, !llvm.loop !82

bb.am:                                            ; preds = %bb.al, %bb.ac, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aa ], [ %i.dl, %bb.al ], [ %i.cc, %bb.ac ]
  %i.dq = load ptr, ptr %3, align 8, !tbaa !51, !noalias !83 ; 2 uses
  %.not12.i.i.i117 = icmp eq ptr %i.dq, %3
  br i1 %.not12.i.i.i117, label %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly12_GLOBAL__N_19EventInfoENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_8listHookEEEEEmLb0EvED2Ev.exit121, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %bb.am, %.lr.ph.i.i.i118
  %.sroa.06.013.i.i.i119 = phi ptr [ %i.dr, %.lr.ph.i.i.i118 ], [ %i.dq, %bb.am ] ; 2 uses
  %i.dr = load ptr, ptr %.sroa.06.013.i.i.i119, align 8, !tbaa !51 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i.i119, i8 0, i64 16, i1 false)
  %.not.i.i.i120 = icmp eq ptr %i.dr, %3
  br i1 %.not.i.i.i120, label %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly12_GLOBAL__N_19EventInfoENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_8listHookEEEEEmLb0EvED2Ev.exit121, label %.lr.ph.i.i.i118, !llvm.loop !81

_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly12_GLOBAL__N_19EventInfoENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_8listHookEEEEEmLb0EvED2Ev.exit121: ; preds = %.lr.ph.i.i.i118, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %.pn.pn

.loopexit:                                        ; preds = %bb.d, %.critedge106, %.critedge106.thread, %bb.c
  %.3 = phi i32 [ 0, %bb.c ], [ %.2.ph, %.critedge106.thread ], [ 1, %bb.d ], [ 0, %.critedge106 ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @_ZN5folly12EpollBackend23eb_event_base_loopbreakEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(160) initializes((40, 41)) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8, !tbaa !40
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly12EpollBackend12eb_event_addERNS_14EventBaseEventEPK7timeval(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.critedge:
  %3 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %struct.epoll_event, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !74   ; 5 uses
  %i.c = icmp ugt i16 %i.b, 255
  br i1 %i.c, label %bb.a, label %.critedge46, !prof !50

bb.a:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str, i32 noundef 354)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.9, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %bb.b
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #23
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #23
  unreachable

.critedge46:                                      ; preds = %.critedge
  %.not41 = icmp eq ptr %2, null
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge46
  %i.g = or i16 %i.b, 1
  store i16 %i.g, ptr %i.a, align 8, !tbaa !74
  tail call void @_ZN5folly12EpollBackend13addTimerEventERNS_14EventBaseEventEPK7timeval(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull %2)
  br label %bb.l

bb.e:                                             ; preds = %.critedge46
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load i16, ptr %i.h, align 8, !tbaa !64   ; 3 uses
  %i.j = and i16 %i.i, 8
  %.not42 = icmp eq i16 %i.j, 0
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = or i16 %i.b, 2
  store i16 %i.k, ptr %i.a, align 8, !tbaa !74
  tail call void @_ZN5folly12EpollBackend14addSignalEventERNS_14EventBaseEventE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.l = and i16 %i.b, 16
  %.not43 = icmp eq i16 %i.l, 0
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !43
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = or i16 %i.b, 2
  store i16 %i.p, ptr %i.a, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !44
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86   ; 2 uses
  %.not44 = icmp eq ptr %i.u, null
  br i1 %.not44, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  store ptr %i.v, ptr %i.t, align 8, !tbaa !86
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr @_ZN5folly12_GLOBAL__N_19EventInfo12freeFunctionEPv, ptr %i.w, align 8, !tbaa !91
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.u, %bb.i ], [ %i.v, %bb.j ]  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %1, ptr %i.x, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.y = lshr i16 %i.i, 1
  %.lobit.i = and i16 %i.y, 1
  %i.z = and i16 %i.i, 4
  %.16.i = or disjoint i16 %.lobit.i, %i.z
  %.1.i = zext nneg i16 %.16.i to i32
  store i32 %.1.i, ptr %4, align 4, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4
  store ptr %.0, ptr %i.aa, align 4, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !75
  %i.af = call i32 @epoll_ctl(i32 noundef %i.ac, i32 noundef 1, i32 noundef %i.ae, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f, %bb.d
  %.038 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ %i.af, %bb.k ]
  ret i32 %.038
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly12EpollBackend12eb_event_delERNS_14EventBaseEventE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #22
  store i32 22, ptr %i.c, align 4, !tbaa !7
  br label %_ZN5folly12EpollBackend16removeTimerEventERNS_14EventBaseEventE.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !74   ; 6 uses
  %i.f = and i16 %i.e, 1
  %.not20 = icmp eq i16 %i.f, 0
  br i1 %.not20, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i16 %i.e, -2
  store i16 %i.g, ptr %i.d, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86   ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !93   ; 6 uses
  %.not.i = icmp eq ptr %i.k, inttoptr (i64 1 to ptr)
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = tail call ptr @__errno_location() #22
  store i32 22, ptr %i.l, align 4, !tbaa !7
  br label %_ZN5folly12EpollBackend16removeTimerEventERNS_14EventBaseEventE.exit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = icmp eq ptr %i.k, null
  br i1 %i.n, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95
  %i.q = icmp eq ptr %i.p, %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %spec.select.i.i = select i1 %i.q, ptr %i.o, ptr %i.r
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %spec.select.i.i, %bb.h ], [ %i.m, %bb.g ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96   ; 3 uses
  %i.w = icmp eq ptr %i.t, null                   ; 2 uses
  %i.x = icmp eq ptr %i.v, null
  %or.cond.i.i.i = or i1 %i.w, %i.x
  br i1 %or.cond.i.i.i, label %bb.j, label %.preheader.i.i

bb.j:                                             ; preds = %bb.i
  %i.y = select i1 %i.w, ptr %i.v, ptr %i.t       ; 3 uses
  store ptr %i.y, ptr %.0.i.i, align 8, !tbaa !97
  %.not38.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not38.i.i.i, label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.k, ptr %i.y, align 8, !tbaa !93
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i

.preheader.i.i:                                   ; preds = %bb.i, %.preheader.i.i
  %.032.i.i.i = phi ptr [ %i.ac, %.preheader.i.i ], [ %i.v, %bb.i ] ; 3 uses
  %.030.i.i.i.a = phi ptr [ %.032..0.i.i.i, %.preheader.i.i ], [ %i.k, %bb.i ]
  %.029.i.i.i.a = phi ptr [ %i.ad, %.preheader.i.i ], [ %.0.i.i, %bb.i ]
  %.0.i.i.i.a = phi ptr [ %.0..032.i.i.i, %.preheader.i.i ], [ %i.t, %bb.i ] ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.a, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %.032.i.i.i, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !45
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !45
  %i.aa = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i.i.i.i ; 2 uses
  %.032..0.i.i.i = select i1 %i.aa, ptr %.032.i.i.i, ptr %.0.i.i.i.a, !unpredictable !42 ; 6 uses
  %.0..032.i.i.i = select i1 %i.aa, ptr %.0.i.i.i.a, ptr %.032.i.i.i, !unpredictable !42 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !96 ; 2 uses
  store ptr %.032..0.i.i.i, ptr %.029.i.i.i.a, align 8, !tbaa !97
  %i.ad = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !95
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !96
  store ptr %.030.i.i.i.a, ptr %.032..0.i.i.i, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %bb.l, label %.preheader.i.i, !llvm.loop !98

bb.l:                                             ; preds = %.preheader.i.i
  store ptr %.0..032.i.i.i, ptr %i.ad, align 8, !tbaa !97
  store ptr %.032..0.i.i.i, ptr %.0..032.i.i.i, align 8, !tbaa !93
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i

_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8, !tbaa !93
  tail call void @_ZN5folly12EpollBackend13updateTimerFdEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  br label %_ZN5folly12EpollBackend16removeTimerEventERNS_14EventBaseEventE.exit

bb.m:                                             ; preds = %bb.c
  %i.af = and i16 %i.e, 10
  %.not21 = icmp eq i16 %i.af, 0
  br i1 %.not21, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = tail call ptr @__errno_location() #22
  store i32 22, ptr %i.ag, align 4, !tbaa !7
  br label %_ZN5folly12EpollBackend16removeTimerEventERNS_14EventBaseEventE.exit

bb.o:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !64
  %i.aj = and i16 %i.ai, 8
  %.not22 = icmp eq i16 %i.aj, 0
  br i1 %.not22, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = and i16 %i.e, -12
  store i16 %i.ak, ptr %i.d, align 8, !tbaa !74
  %i.al = tail call noundef i32 @_ZN5folly12EpollBackend17removeSignalEventERNS_14EventBaseEventE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %_ZN5folly12EpollBackend16removeTimerEventERNS_14EventBaseEventE.exit

bb.q:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !86 ; 5 uses
  %.not23 = icmp eq ptr %i.an, null
  br i1 %.not23, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !51 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZN5folly12_GLOBAL__N_19EventInfo10resetEventEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54 ; 2 uses
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.an, i8 0, i64 16, i1 false)
  %.pre.pre = load i16, ptr %i.d, align 8, !tbaa !74
  br label %_ZN5folly12_GLOBAL__N_19EventInfo10resetEventEv.exit

_ZN5folly12_GLOBAL__N_19EventInfo10resetEventEv.exit: ; preds = %bb.r, %bb.s
  %.pre = phi i16 [ %i.e, %bb.r ], [ %.pre.pre, %bb.s ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr null, ptr %i.as, align 8, !tbaa !56
  br label %bb.t

bb.t:                                             ; preds = %_ZN5folly12_GLOBAL__N_19EventInfo10resetEventEv.exit, %bb.q
  %i.at = phi i16 [ %.pre, %_ZN5folly12_GLOBAL__N_19EventInfo10resetEventEv.exit ], [ %i.e, %bb.q ] ; 3 uses
  %i.au = and i16 %i.at, 8
  %.not24 = icmp eq i16 %i.au, 0
  br i1 %.not24, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = and i16 %i.at, -9                       ; 2 uses
  store i16 %i.av, ptr %i.d, align 8, !tbaa !74
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aw = phi i16 [ %i.av, %bb.u ], [ %i.at, %bb.t ] ; 3 uses
  %i.ax = and i16 %i.aw, 2
  %.not25 = icmp eq i16 %i.ax, 0
  br i1 %.not25, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = and i16 %i.aw, -3
  store i16 %i.ay, ptr %i.d, align 8, !tbaa !74
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !44
  %i.bb = add i64 %i.ba, -1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !44
  %i.bc = and i16 %i.aw, 16
  %.not26 = icmp eq i16 %i.bc, 0
  br i1 %.not26, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !43
  %i.bf = add i64 %i.be, -1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !43
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !75
  %i.bk = tail call i32 @epoll_ctl(i32 noundef %i.bh, i32 noundef 2, i32 noundef %i.bj, ptr noundef null) #20
  br label %_ZN5folly12EpollBackend16removeTimerEventERNS_14EventBaseEventE.exit

bb.z:                                             ; preds = %bb.v
  %i.bl = tail call ptr @__errno_location() #22
  store i32 22, ptr %i.bl, align 4, !tbaa !7
  br label %_ZN5folly12EpollBackend16removeTimerEventERNS_14EventBaseEventE.exit

_ZN5folly12EpollBackend16removeTimerEventERNS_14EventBaseEventE.exit: ; preds = %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i, %bb.f, %bb.n, %bb.p, %bb.z, %bb.y, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.z ], [ -1, %bb.n ], [ %i.al, %bb.p ], [ %i.bk, %bb.y ], [ -1, %bb.f ], [ 0, %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly12EpollBackend15eb_event_activeERNS_14EventBaseEventEi(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5folly12EpollBackend16setEdgeTriggeredERNS_14EventBaseEventE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.critedge:
  %2 = alloca %struct.epoll_event, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load i16, ptr %i.d, align 8, !tbaa !64   ; 2 uses
  %i.f = lshr i16 %i.e, 1
  %.lobit.i = and i16 %i.f, 1
  %i.g = and i16 %i.e, 4
  %.16.i = or disjoint i16 %.lobit.i, %i.g
  %.1.i = zext nneg i16 %.16.i to i32
  %i.h = or disjoint i32 %.1.i, -2147483648
  store i32 %i.h, ptr %2, align 4, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store ptr %i.b, ptr %i.i, align 4, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !75
  %i.n = call i32 @epoll_ctl(i32 noundef %i.k, i32 noundef 3, i32 noundef %i.m, ptr noundef nonnull %2) #20
  %i.o = icmp eq i32 %i.n, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %.0 = phi i1 [ %i.o, %bb.a ], [ false, %.critedge ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly12EpollBackend10SocketPairC2Ev(ptr noundef nonnull align 4 dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store i32 -1, ptr %0, align 4, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  %i.b = tail call i32 @socketpair(i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %0) #20
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !7      ; 2 uses
  %i.d = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.c, i32 noundef 3, i32 noundef 0)
  %i.e = or i32 %i.d, 2048
  %i.f = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.c, i32 noundef 4, i32 noundef %i.e) ; 0 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %i.h = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.g, i32 noundef 3, i32 noundef 0)
  %i.i = or i32 %i.h, 2048
  %i.j = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.g, i32 noundef 4, i32 noundef %i.i) ; 0 uses
  ret void

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.l = tail call ptr @__errno_location() #22
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  invoke void @_ZN5folly8errnoStrB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, i32 noundef %i.m)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #25
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f
end_hunk_0
begin_hunk_1_@_ZNSt6vectorI11epoll_eventSaIS0_EE17_M_default_appendEm:bb.a
_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE13_M_deallocateEPS0_m.exit38: ; preds = %_ZNSt6vectorI11epoll_eventSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.i
  store ptr %i.y, ptr %0, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %1
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !47
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !114
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP11epoll_eventmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE13_M_deallocateEPS0_m.exit38, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109
  invoke void @_ZNSt8_Rb_treeIP5eventS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #23
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 88) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP5eventS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  tail call void @_ZNSt8_Rb_treeIP5eventS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !120

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly12EpollBackendD2Ev(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5folly12EpollBackendE, i64 16), ptr %0, align 8, !tbaa !103
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = invoke i32 @close(i32 noundef %i.b)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !105
  %i.f = invoke i32 @close(i32 noundef %i.e)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %i.i)
          to label %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #23
  unreachable

_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEED2Ev.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN5folly12EpollBackend10SocketPairD1Ev(ptr noundef nonnull align 4 dead_on_return(8) dereferenceable(8) %i.l) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI11epoll_eventSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #21
  br label %_ZNSt6vectorI11epoll_eventSaIS0_EED2Ev.exit

_ZNSt6vectorI11epoll_eventSaIS0_EED2Ev.exit:      ; preds = %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEED2Ev.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable
}

declare extern_weak void @eb_poll_loop_pre_hook(ptr noundef) #5

declare i32 @epoll_wait(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare extern_weak void @eb_poll_loop_post_hook(i64 noundef, i32 noundef) #5

declare void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_ZN5folly12EpollBackend13processTimersEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !105
  %i.e = call noundef i64 @_ZN5folly9readNoIntEiPvm(i32 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef 8)
  %.not.not = icmp eq i64 %i.e, 8
  br i1 %.not.not, label %.critedge17, label %bb.b, !prof !76

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.b, align 8, !tbaa !55
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !55
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 526, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.22, i64 noundef 78)
          to label %.critedge16 unwind label %bb.i ; 0 uses

.critedge16:                                      ; preds = %bb.c
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.critedge17

.critedge17:                                      ; preds = %bb.a, %.critedge16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge17, %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit
  %i.k = phi ptr [ %i.am, %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit ], [ %i.i, %.critedge17 ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #20
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 8, !tbaa !45
  %.not = icmp sgt i64 %.sroa.0.0.copyload.i.i, %i.m
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !107  ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96   ; 3 uses
  %i.t = icmp eq ptr %i.q, null                   ; 2 uses
  %i.u = icmp eq ptr %i.s, null
  %or.cond.i.i = or i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.v = select i1 %i.t, ptr %i.s, ptr %i.q       ; 3 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !97
  %.not38.i.i = icmp eq ptr %i.v, null
  br i1 %.not38.i.i, label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESA_SA_PSA_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.v, align 8, !tbaa !93
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESA_SA_PSA_.exit.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.032.i.i = phi ptr [ %i.z, %.preheader.i ], [ %i.s, %bb.e ] ; 3 uses
  %.030.i.i.a = phi ptr [ %.032..0.i.i, %.preheader.i ], [ null, %bb.e ]
  %.029.i.i.a = phi ptr [ %i.aa, %.preheader.i ], [ %i.h, %bb.e ]
  %.0.i.i.a = phi ptr [ %.0..032.i.i, %.preheader.i ], [ %i.q, %bb.e ] ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %.0.i.i.a, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.032.i.i, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !45
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !45
  %i.x = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i.i.i ; 2 uses
  %.032..0.i.i = select i1 %i.x, ptr %.032.i.i, ptr %.0.i.i.a, !unpredictable !42 ; 6 uses
  %.0..032.i.i = select i1 %i.x, ptr %.0.i.i.a, ptr %.032.i.i, !unpredictable !42 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !96   ; 2 uses
  store ptr %.032..0.i.i, ptr %.029.i.i.a, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !96
  store ptr %.030.i.i.a, ptr %.032..0.i.i, align 8, !tbaa !93
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.h, label %.preheader.i, !llvm.loop !98

bb.h:                                             ; preds = %.preheader.i
  store ptr %.0..032.i.i, ptr %i.aa, align 8, !tbaa !97
  store ptr %.032..0.i.i, ptr %.0..032.i.i, align 8, !tbaa !93
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESA_SA_PSA_.exit.i

_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESA_SA_PSA_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.n, align 8, !tbaa !93
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit

_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit: ; preds = %bb.d, %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESA_SA_PSA_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !121 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 106
  store i16 1, ptr %i.ae, align 2, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i16 128, ptr %i.af, align 2, !tbaa !74
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !79
  call void %i.ah(i32 noundef %i.aj, i16 noundef signext 1, ptr noundef %i.al)
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !107 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.critedge, label %.lr.ph, !llvm.loop !125

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %i.ao

.critedge:                                        ; preds = %.lr.ph, %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit, %.critedge17
  call void @_ZN5folly12EpollBackend13updateTimerFdEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly12EpollBackend14processSignalsEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"struct.std::array.63", align 1    ; 4 uses
  %2 = alloca %"struct.std::array.64", align 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %1, i8 0, i64 65, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7
  %i.c = call noundef i64 @_ZN5folly9readNoIntEiPvm(i32 noundef %i.b, ptr noundef nonnull %2, i64 noundef 130) ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph28, label %._crit_edge

.lr.ph28:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void

bb.b:                                             ; preds = %.lr.ph28, %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread
  %.027 = phi i64 [ 0, %.lr.ph28 ], [ %i.aq, %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.027
  %i.h = load i8, ptr %i.g, align 1, !tbaa !55    ; 3 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = icmp ugt i8 %i.h, 64
  br i1 %i.j, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i8 %i.h to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !126, !range !41, !noundef !42
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.l, align 1, !tbaa !126
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !109  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = icmp slt i32 %i.q, %i.i                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.r, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.r, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !128

_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.s, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE4findERS9_.exit.i

_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE4findERS9_.exit.i: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = icmp sgt i32 %i.u, %i.i
  br i1 %i.v, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit

_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit: ; preds = %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE4findERS9_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit, %.lr.ph
  %.sroa.022.026 = phi ptr [ %i.ao, %.lr.ph ], [ %i.x, %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.022.026, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !129 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 106
  store i16 0, ptr %i.ac, align 2, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 4 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !74
  %i.af = or i16 %i.ae, 8
  store i16 %i.af, ptr %i.ad, align 2, !tbaa !74
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !79
  call void %i.ah(i32 noundef %i.aj, i16 noundef signext 0, ptr noundef %i.al)
  %i.am = load i16, ptr %i.ad, align 8, !tbaa !74
  %i.an = and i16 %i.am, -9
  store i16 %i.an, ptr %i.ad, align 8, !tbaa !74
  %i.ao = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.022.026) #26 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.y
  br i1 %i.ap, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %.lr.ph

_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread: ; preds = %.lr.ph, %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit, %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE4findERS9_.exit.i, %bb.d, %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %bb.b, %bb.c
  %i.aq = add nuw nsw i64 %.027, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !130
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly12EpollBackend13addTimerEventERNS_14EventBaseEventEPK7timeval(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %1, ptr %i.f, align 8, !tbaa !121
  store ptr %i.d, ptr %i.a, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr @_ZN5folly12EpollBackend9TimerInfo12freeFunctionEPv, ptr %i.g, align 8, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]  ; 13 uses
  %i.h = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #20
  %i.i = load i64, ptr %2, align 8, !tbaa !45
  %i.j = mul nsw i64 %i.i, 1000000000
  %i.k = add nsw i64 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !45
  %i.n = mul nsw i64 %i.m, 1000
  %i.o = add nsw i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !45
  %i.q = load ptr, ptr %.0, align 8, !tbaa !93    ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %magicptr = ptrtoint ptr %i.q to i64
  switch i64 %magicptr, label %bb.d [
    i64 1, label %bb.k
    i64 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95
  %i.u = icmp eq ptr %i.t, %.0
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %spec.select.i.i = select i1 %i.u, ptr %i.s, ptr %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !96   ; 3 uses
  %i.aa = icmp eq ptr %i.x, null                  ; 2 uses
  %i.ab = icmp eq ptr %i.z, null
  %or.cond.i.i.i = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.i.i, label %bb.f, label %.preheader.i.i

bb.f:                                             ; preds = %bb.e
  %i.ac = select i1 %i.aa, ptr %i.z, ptr %i.x     ; 3 uses
  store ptr %i.ac, ptr %.0.i.i, align 8, !tbaa !97
  %.not38.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not38.i.i.i, label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.q, ptr %i.ac, align 8, !tbaa !93
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.032.i.i.i = phi ptr [ %i.ag, %.preheader.i.i ], [ %i.z, %bb.e ] ; 3 uses
  %.030.i.i.i.a = phi ptr [ %.032..0.i.i.i, %.preheader.i.i ], [ %i.q, %bb.e ]
  %.029.i.i.i.a = phi ptr [ %i.ah, %.preheader.i.i ], [ %.0.i.i, %bb.e ]
  %.0.i.i.i.a = phi ptr [ %.0..032.i.i.i, %.preheader.i.i ], [ %i.x, %bb.e ] ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.a, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.032.i.i.i, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8, !tbaa !45
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !45
  %i.ae = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i.i.i.i ; 2 uses
  %.032..0.i.i.i = select i1 %i.ae, ptr %.032.i.i.i, ptr %.0.i.i.i.a, !unpredictable !42 ; 6 uses
  %.0..032.i.i.i = select i1 %i.ae, ptr %.0.i.i.i.a, ptr %.032.i.i.i, !unpredictable !42 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !96 ; 2 uses
  store ptr %.032..0.i.i.i, ptr %.029.i.i.i.a, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !95
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !96
  store ptr %.030.i.i.i.a, ptr %.032..0.i.i.i, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.h, label %.preheader.i.i, !llvm.loop !98

bb.h:                                             ; preds = %.preheader.i.i
  store ptr %.0..032.i.i.i, ptr %i.ah, align 8, !tbaa !97
  store ptr %.032..0.i.i.i, ptr %.0..032.i.i.i, align 8, !tbaa !93
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i

_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0, i8 0, i64 24, i1 false)
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !107 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %.preheader.i3.i

bb.i:                                             ; preds = %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i
  store ptr %.0, ptr %i.r, align 8, !tbaa !97
  store ptr null, ptr %.0, align 8, !tbaa !93
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit

.preheader.i3.i:                                  ; preds = %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i, %.preheader.i3.i
  %.032.i.i4.i = phi ptr [ %i.ao, %.preheader.i3.i ], [ %i.aj, %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i ] ; 3 uses
  %.030.i.i5.i = phi ptr [ %.032..0.i.i10.i, %.preheader.i3.i ], [ null, %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i ]
  %.029.i.i6.i = phi ptr [ %i.ap, %.preheader.i3.i ], [ %i.r, %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i ]
  %.0.i.i7.i = phi ptr [ %.0..032.i.i11.i, %.preheader.i3.i ], [ %.0, %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i ] ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %.032.i.i4.i, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i8.i = load i64, ptr %4, align 8, !tbaa !45
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i9.i = load i64, ptr %i.al, align 8, !tbaa !45
  %i.am = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i8.i, %.sroa.0.0.copyload.i2.i.i.i.i.i.i9.i ; 2 uses
  %.032..0.i.i10.i = select i1 %i.am, ptr %.032.i.i4.i, ptr %.0.i.i7.i, !unpredictable !42 ; 6 uses
  %.0..032.i.i11.i = select i1 %i.am, ptr %.0.i.i7.i, ptr %.032.i.i4.i, !unpredictable !42 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.032..0.i.i10.i, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !96 ; 2 uses
  store ptr %.032..0.i.i10.i, ptr %.029.i.i6.i, align 8, !tbaa !97
  %i.ap = getelementptr inbounds nuw i8, ptr %.032..0.i.i10.i, i64 8 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !95
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !96
  store ptr %.030.i.i5.i, ptr %.032..0.i.i10.i, align 8, !tbaa !93
  %.not.i.i12.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i12.i, label %bb.j, label %.preheader.i3.i, !llvm.loop !98

bb.j:                                             ; preds = %.preheader.i3.i
  store ptr %.0..032.i.i11.i, ptr %i.ap, align 8, !tbaa !97
  store ptr %.032..0.i.i10.i, ptr %.0..032.i.i11.i, align 8, !tbaa !93
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit

bb.k:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0, i8 0, i64 24, i1 false)
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !107 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %.preheader.i

bb.l:                                             ; preds = %bb.k
  store ptr %.0, ptr %i.r, align 8, !tbaa !97
  store ptr null, ptr %.0, align 8, !tbaa !93
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit

.preheader.i:                                     ; preds = %bb.k, %.preheader.i
  %.032.i.i = phi ptr [ %i.aw, %.preheader.i ], [ %i.ar, %bb.k ] ; 3 uses
  %.030.i.i.a = phi ptr [ %.032..0.i.i, %.preheader.i ], [ null, %bb.k ]
  %.029.i.i.a = phi ptr [ %i.ax, %.preheader.i ], [ %i.r, %bb.k ]
  %.0.i.i16.a = phi ptr [ %.0..032.i.i, %.preheader.i ], [ %.0, %bb.k ] ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %.0.i.i16.a, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %.032.i.i, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !tbaa !45
  %i.au = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i.i.i ; 2 uses
  %.032..0.i.i = select i1 %i.au, ptr %.032.i.i, ptr %.0.i.i16.a, !unpredictable !42 ; 6 uses
  %.0..032.i.i = select i1 %i.au, ptr %.0.i.i16.a, ptr %.032.i.i, !unpredictable !42 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !96 ; 2 uses
  store ptr %.032..0.i.i, ptr %.029.i.i.a, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !95
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !96
  store ptr %.030.i.i.a, ptr %.032..0.i.i, align 8, !tbaa !93
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %bb.m, label %.preheader.i, !llvm.loop !98

bb.m:                                             ; preds = %.preheader.i
  store ptr %.0..032.i.i, ptr %i.ax, align 8, !tbaa !97
  store ptr %.032..0.i.i, ptr %.0..032.i.i, align 8, !tbaa !93
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit

_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit: ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  tail call void @_ZN5folly12EpollBackend13updateTimerFdEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly12EpollBackend14addSignalEventERNS_14EventBaseEventE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.37", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %i.i = icmp slt i32 %i.h, %i.f                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE11lower_boundERS9_.exit.i, label %bb.b, !llvm.loop !128

_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE11lower_boundERS9_.exit.i: ; preds = %bb.b
  %i.j = icmp eq ptr %.19.i.i.i.i, %i.e
  br i1 %i.j, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE11lower_boundERS9_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = icmp slt i32 %i.f, %i.l
  br i1 %i.m, label %.critedge.i, label %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEEixERS9_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE11lower_boundERS9_.exit.i, %bb.a
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE11lower_boundERS9_.exit.i ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.b, ptr %2, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.n = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEEixERS9_.exit

_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEEixERS9_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.n, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !127 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEEixERS9_.exit, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEEixERS9_.exit ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !129  ; 2 uses
  %i.s = icmp ult ptr %1, %i.r                    ; 2 uses
  %.in.v.i.i.i = select i1 %i.s, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !133

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.s, label %._crit_edge.thread.i.i.i, label %bb.e

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEEixERS9_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.p, %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEEixERS9_.exit ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !110
  %i.v = icmp eq ptr %.019.lcssa29.i.i.i, %i.u
  br i1 %i.v, label %select.unfold.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.w = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #26
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !129
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %i.x = phi ptr [ %.pre.i.i, %bb.d ], [ %i.r, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.d ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.y = icmp ult ptr %i.x, %1
  br i1 %i.y, label %select.unfold.i.i, label %_ZNSt3setIP5eventSt4lessIS1_ESaIS1_EE6insertEOS1_.exit

select.unfold.i.i:                                ; preds = %bb.e, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.e ] ; 3 uses
  %i.z = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.p
  br i1 %i.z, label %_ZNSt8_Rb_treeIP5eventS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !129
  %i.ac = icmp ult ptr %1, %i.ab
  br label %_ZNSt8_Rb_treeIP5eventS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIP5eventS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.f, %select.unfold.i.i
  %i.ad = phi i1 [ %i.ac, %bb.f ], [ true, %select.unfold.i.i ]
  %i.ae = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %1, ptr %i.af, align 8, !tbaa !129
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ad, ptr noundef nonnull %i.ae, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 80 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !112
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !112
  br label %_ZNSt3setIP5eventSt4lessIS1_ESaIS1_EE6insertEOS1_.exit

_ZNSt3setIP5eventSt4lessIS1_ESaIS1_EE6insertEOS1_.exit: ; preds = %bb.e, %_ZNSt8_Rb_treeIP5eventS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.aj = load atomic i8, ptr @_ZGVZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit, !prof !134

bb.g:                                             ; preds = %_ZNSt3setIP5eventSt4lessIS1_ESaIS1_EE6insertEOS1_.exit
  %i.al = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance) #20
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %bb.i unwind label %bb.j       ; 8 uses

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.am, align 8, !tbaa !135
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  store i32 0, ptr %i.an, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr null, ptr %i.ao, align 8, !tbaa !109
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !110
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !111
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i64 0, ptr %i.ar, align 8, !tbaa !112
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store i32 -1, ptr %i.as, align 8, !tbaa !137
  store ptr %i.am, ptr @_ZZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance, align 8, !tbaa !139
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance) #20
  br label %_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit

bb.j:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance) #20
  resume { ptr, i32 } %i.at

_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit: ; preds = %_ZNSt3setIP5eventSt4lessIS1_ESaIS1_EE6insertEOS1_.exit, %bb.g, %bb.i
  %i.au = load ptr, ptr @_ZZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance, align 8, !tbaa !139, !nonnull !42, !align !141
  %i.av = load i32, ptr %i.b, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !7
  call fastcc void @_ZN5folly12_GLOBAL__N_114SignalRegistry11setNotifyFdEii(ptr noundef nonnull align 8 dereferenceable(60) %i.au, i32 noundef %i.av, i32 noundef %i.ax)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly12_GLOBAL__N_19EventInfo12freeFunctionEPv(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly12_GLOBAL__N_19EventInfoD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !54
  br label %_ZN5folly12_GLOBAL__N_19EventInfoD2Ev.exit

_ZN5folly12_GLOBAL__N_19EventInfoD2Ev.exit:       ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  br label %bb.d

bb.d:                                             ; preds = %_ZN5folly12_GLOBAL__N_19EventInfoD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @_ZN5folly12EpollBackend16removeTimerEventERNS_14EventBaseEventE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !93   ; 6 uses
  %.not = icmp eq ptr %i.d, inttoptr (i64 1 to ptr)
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call ptr @__errno_location() #22
  store i32 22, ptr %i.e, align 4, !tbaa !7
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = icmp eq ptr %i.d, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.j = icmp eq ptr %i.i, %i.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %spec.select.i = select i1 %i.j, ptr %i.h, ptr %i.k
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %spec.select.i, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !96   ; 3 uses
  %i.p = icmp eq ptr %i.m, null                   ; 2 uses
  %i.q = icmp eq ptr %i.o, null
  %or.cond.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i, label %bb.g, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.r = select i1 %i.p, ptr %i.o, ptr %i.m       ; 3 uses
  store ptr %i.r, ptr %.0.i, align 8, !tbaa !97
  %.not38.i.i = icmp eq ptr %i.r, null
  br i1 %.not38.i.i, label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.d, ptr %i.r, align 8, !tbaa !93
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.032.i.i = phi ptr [ %i.v, %.preheader.i ], [ %i.o, %bb.f ] ; 3 uses
  %.030.i.i.a = phi ptr [ %.032..0.i.i, %.preheader.i ], [ %i.d, %bb.f ]
  %.029.i.i.a = phi ptr [ %i.w, %.preheader.i ], [ %.0.i, %bb.f ]
  %.0.i.i.a = phi ptr [ %.0..032.i.i, %.preheader.i ], [ %i.m, %bb.f ] ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %.0.i.i.a, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %.032.i.i, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !45
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !45
  %i.t = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i.i.i ; 2 uses
  %.032..0.i.i = select i1 %i.t, ptr %.032.i.i, ptr %.0.i.i.a, !unpredictable !42 ; 6 uses
  %.0..032.i.i = select i1 %i.t, ptr %.0.i.i.a, ptr %.032.i.i, !unpredictable !42 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96   ; 2 uses
  store ptr %.032..0.i.i, ptr %.029.i.i.a, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95
  store ptr %i.x, ptr %i.u, align 8, !tbaa !96
  store ptr %.030.i.i.a, ptr %.032..0.i.i, align 8, !tbaa !93
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.i, label %.preheader.i, !llvm.loop !98

bb.i:                                             ; preds = %.preheader.i
  store ptr %.0..032.i.i, ptr %i.w, align 8, !tbaa !97
  store ptr %.032..0.i.i, ptr %.0..032.i.i, align 8, !tbaa !93
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit

_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit: ; preds = %bb.g, %bb.h, %bb.i
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !tbaa !93
  tail call void @_ZN5folly12EpollBackend13updateTimerFdEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @_ZN5folly12EpollBackend17removeSignalEventERNS_14EventBaseEventE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %1, ptr %i.a, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %i.i = icmp slt i32 %i.h, %i.f                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %bb.b, !llvm.loop !128

_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %bb.b
  %i.j = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.j, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE4findERS9_.exit.i

_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE4findERS9_.exit.i: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = icmp slt i32 %i.f, %i.l
  br i1 %i.m, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit

_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit: ; preds = %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE4findERS9_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.o = call noundef i64 @_ZNSt8_Rb_treeIP5eventS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %bb.c

_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread: ; preds = %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE4findERS9_.exit.i, %bb.a, %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit
  %i.q = tail call ptr @__errno_location() #22
  store i32 22, ptr %i.q, align 4, !tbaa !7
  br label %bb.h

bb.c:                                             ; preds = %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit
  %i.r = load atomic i8, ptr @_ZGVZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit, !prof !134

bb.d:                                             ; preds = %bb.c
  %i.t = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance) #20
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %bb.f unwind label %bb.g       ; 8 uses

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8, !tbaa !135
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr null, ptr %i.w, align 8, !tbaa !109
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.v, ptr %i.x, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr %i.v, ptr %i.y, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i64 0, ptr %i.z, align 8, !tbaa !112
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 -1, ptr %i.aa, align 8, !tbaa !137
  store ptr %i.u, ptr @_ZZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance, align 8, !tbaa !139
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance) #20
  br label %_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance) #20
  resume { ptr, i32 } %i.ab

_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit: ; preds = %bb.c, %bb.d, %bb.f
  %i.ac = load ptr, ptr @_ZZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance, align 8, !tbaa !139, !nonnull !42, !align !141
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !75
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
define void @_ZN5folly12EpollBackend13updateTimerFdEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.itimerspec, align 8         ; 5 uses
  %2 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %3 = alloca %struct.itimerspec, align 8         ; 7 uses
  %4 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit

_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit, %bb.a
  %.sroa.041.0 = phi i64 [ undef, %bb.a ], [ %i.f, %_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit ] ; 3 uses
  %.sroa.7.0 = phi i8 [ 0, %bb.a ], [ 1, %_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = trunc nuw i8 %.sroa.7.0 to i1            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !106, !range !41, !noundef !42
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
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !105
  %i.p = call i32 @timerfd_settime(i32 noundef %i.o, i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) #20
  %.not22.not = icmp eq i32 %i.p, 0
  br i1 %.not22.not, label %.critedge25, label %bb.e, !prof !76

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !55
  %.fca.1.gep10 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep10, align 8, !tbaa !55
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 501, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.21, i64 noundef 65)
          to label %.critedge unwind label %bb.g  ; 0 uses

.critedge:                                        ; preds = %bb.f
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
end_hunk_1
