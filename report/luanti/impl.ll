inline.NumInlined: 2716
inline.NumDeleted: 1032
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3con10Connection14GetPeerAddressEt:bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN3con21PeerNotFoundExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull @.str.67)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN3con21PeerNotFoundExceptionE, ptr nonnull @_ZN13BaseExceptionD2Ev) #32
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #29
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef nonnull align 4 dereferenceable(22) ptr %i.f(ptr noundef nonnull align 8 dereferenceable(10) %i.a)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !35
  call void @_ZN3con10PeerHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.d, %bb.e ]
  call void @_ZN3con10PeerHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3con21PeerNotFoundExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !110
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #32
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.e, ptr %i.b, align 8, !tbaa !112
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !113
  %i.h = load i64, ptr %i.b, align 8, !tbaa !112
  store i64 %i.h, ptr %i.c, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !37
  store i8 %i.j, ptr %i.i, align 1, !tbaa !37
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !112  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !115
  %i.m = load ptr, ptr %2, align 8, !tbaa !113
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !110
  %i.q = load ptr, ptr %2, align 8, !tbaa !113    ; 2 uses
  %i.r = load i64, ptr %i.l, align 8, !tbaa !115  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.r, ptr %i.a, align 8, !tbaa !112
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i4 unwind label %bb.h  ; 2 uses

.noexc.i4:                                        ; preds = %.noexc.i.i
  store ptr %i.t, ptr %i.o, align 8, !tbaa !113
  %i.u = load i64, ptr %i.a, align 8, !tbaa !112
  store i64 %i.u, ptr %i.p, align 8, !tbaa !37
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i4, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc.i4 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !37
  store i8 %i.w, ptr %i.v, align 1, !tbaa !37
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #33
  unreachable

_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.z = load i64, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !115
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ad = load ptr, ptr %2, align 8, !tbaa !113   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.c
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.c, align 8, !tbaa !37
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3con21PeerNotFoundExceptionE, i64 16), ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN3con10Connection11getPeerStatEtNS_13rtt_stat_typeE(ptr noundef nonnull align 8 dereferenceable(520) %0, i16 noundef zeroext %1, i32 noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.con::PeerHelper", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN3con10Connection11getPeerNoExEt(ptr dead_on_unwind nonnull writable sret(%"class.con::PeerHelper") align 8 %3, ptr noundef nonnull align 8 dereferenceable(520) %0, i16 noundef zeroext %1)
  %i.a = load ptr, ptr %3, align 8, !tbaa !260    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3con10PeerHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i32 noundef %2)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi nsz float [ -1.000000e+00, %bb.a ], [ %i.f, %bb.c ]
  call void @_ZN3con10PeerHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN3con10Connection12getLocalStatENS_14rate_stat_typeE(ptr noundef nonnull align 8 dereferenceable(520) %0, i32 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.con::PeerHelper", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN3con10Connection11getPeerNoExEt(ptr dead_on_unwind nonnull writable sret(%"class.con::PeerHelper") align 8 %2, ptr noundef nonnull align 8 dereferenceable(520) %0, i16 noundef zeroext 1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !260    ; 16 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.1, i32 noundef 1541, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN3con10Connection12getLocalStatENS_14rate_stat_typeE) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.d = icmp eq ptr %i.c, getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3con7UDPPeerE, i64 16)
  %spec.select = select i1 %i.d, ptr %i.a, ptr null ; 13 uses
  %switch = icmp ult i32 %1, 6
  br i1 %switch, label %.split, label %bb.g

.split:                                           ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %spec.select, i64 544 ; 7 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #29 ; 7 uses
  %.not.i.i.i37 = icmp eq i32 %i.f, 0             ; 6 uses
  switch i32 %1, label %.split.split.preheader [
    i32 0, label %.split.split.us.preheader
    i32 1, label %.split.split.us60.preheader
    i32 2, label %.split.split.us74.preheader
    i32 3, label %.split.split.us88.preheader
    i32 5, label %.split.split.us102.preheader
  ]

.split.split.us102.preheader:                     ; preds = %.split
  br i1 %.not.i.i.i37, label %_ZN3con7Channel16getAvgLossRateKBEv.exit.us, label %.invoke

.split.split.us88.preheader:                      ; preds = %.split
  br i1 %.not.i.i.i37, label %_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us, label %.invoke

.split.split.us74.preheader:                      ; preds = %.split
  br i1 %.not.i.i.i37, label %_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us, label %.invoke

.split.split.us60.preheader:                      ; preds = %.split
  br i1 %.not.i.i.i37, label %_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us, label %.invoke

.split.split.us.preheader:                        ; preds = %.split
  br i1 %.not.i.i.i37, label %_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us, label %.invoke

.split.split.preheader:                           ; preds = %.split
  br i1 %.not.i.i.i37, label %_ZN3con7Channel20getCurrentLossRateKBEv.exit, label %.invoke

_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us: ; preds = %.split.split.us.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.h = load float, ptr %i.g, align 8, !tbaa !250
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #29 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select, i64 1056 ; 2 uses
  %i.k = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #29 ; 2 uses
  %.not.i.i.i.us.1 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.us.1, label %_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us.1, label %.invoke

_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us.1: ; preds = %_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1136
  %i.m = load float, ptr %i.l, align 8, !tbaa !250
  %i.n = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #29 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select, i64 1568 ; 2 uses
  %i.p = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #29 ; 2 uses
  %.not.i.i.i.us.2 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.us.2, label %_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us.2, label %.invoke

_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us.2: ; preds = %_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us.1
  %.1.us.1 = fadd nsz float %i.h, %i.m
  br label %.split58.us

_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us:  ; preds = %.split.split.us60.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  %i.r = load float, ptr %i.q, align 4, !tbaa !257
  %i.s = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #29 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select, i64 1056 ; 2 uses
  %i.u = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #29 ; 2 uses
  %.not.i.i.i29.us.1 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i29.us.1, label %_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us.1, label %.invoke

_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us.1: ; preds = %_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1140
  %i.w = load float, ptr %i.v, align 4, !tbaa !257
  %i.x = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #29 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select, i64 1568 ; 2 uses
  %i.z = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #29 ; 2 uses
  %.not.i.i.i29.us.2 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i29.us.2, label %_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us.2, label %.invoke

_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us.2: ; preds = %_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us.1
  %.1.us65.1 = fadd nsz float %i.r, %i.w
  br label %.split58.us

_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us: ; preds = %.split.split.us74.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 636
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !252
  %i.ac = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #29 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 1056 ; 2 uses
  %i.ae = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #29 ; 2 uses
  %.not.i.i.i31.us.1 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i31.us.1, label %_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us.1, label %.invoke

_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us.1: ; preds = %_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1148
  %i.ag = load float, ptr %i.af, align 4, !tbaa !252
  %i.ah = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #29 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %spec.select, i64 1568 ; 2 uses
  %i.aj = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #29 ; 2 uses
  %.not.i.i.i31.us.2 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i31.us.2, label %_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us.2, label %.invoke

_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us.2: ; preds = %_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us.1
  %.1.us79.1 = fadd nsz float %i.ab, %i.ag
  br label %.split58.us

_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us:  ; preds = %.split.split.us88.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.al = load float, ptr %i.ak, align 8, !tbaa !259
  %i.am = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #29 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select, i64 1056 ; 2 uses
  %i.ao = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #29 ; 2 uses
  %.not.i.i.i33.us.1 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i33.us.1, label %_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us.1, label %.invoke

_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us.1: ; preds = %_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !259
  %i.ar = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #29 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %spec.select, i64 1568 ; 2 uses
  %i.at = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.as) #29 ; 2 uses
  %.not.i.i.i33.us.2 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i33.us.2, label %_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us.2, label %.invoke

_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us.2: ; preds = %_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us.1
  %.1.us93.1 = fadd nsz float %i.al, %i.aq
  br label %.split58.us

_ZN3con7Channel16getAvgLossRateKBEv.exit.us:      ; preds = %.split.split.us102.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.av = load float, ptr %i.au, align 4, !tbaa !258
  %i.aw = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #29 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %spec.select, i64 1056 ; 2 uses
  %i.ay = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #29 ; 2 uses
  %.not.i.i.i35.us.1 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i35.us.1, label %_ZN3con7Channel16getAvgLossRateKBEv.exit.us.1, label %.invoke

_ZN3con7Channel16getAvgLossRateKBEv.exit.us.1:    ; preds = %_ZN3con7Channel16getAvgLossRateKBEv.exit.us
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 1164
  %i.ba = load float, ptr %i.az, align 4, !tbaa !258
  %i.bb = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #29 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %spec.select, i64 1568 ; 2 uses
  %i.bd = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bc) #29 ; 2 uses
  %.not.i.i.i35.us.2 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i35.us.2, label %_ZN3con7Channel16getAvgLossRateKBEv.exit.us.2, label %.invoke

_ZN3con7Channel16getAvgLossRateKBEv.exit.us.2:    ; preds = %_ZN3con7Channel16getAvgLossRateKBEv.exit.us.1
  %.1.us107.1 = fadd nsz float %i.av, %i.ba
  br label %.split58.us

.split58.us:                                      ; preds = %_ZN3con7Channel16getAvgLossRateKBEv.exit.us.2, %_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us.2, %_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us.2, %_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us.2, %_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us.2, %_ZN3con7Channel20getCurrentLossRateKBEv.exit.2
  %.sink = phi i64 [ 1676, %_ZN3con7Channel16getAvgLossRateKBEv.exit.us.2 ], [ 1664, %_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us.2 ], [ 1660, %_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us.2 ], [ 1652, %_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us.2 ], [ 1648, %_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us.2 ], [ 1672, %_ZN3con7Channel20getCurrentLossRateKBEv.exit.2 ]
  %.sink151 = phi ptr [ %i.bc, %_ZN3con7Channel16getAvgLossRateKBEv.exit.us.2 ], [ %i.as, %_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us.2 ], [ %i.ai, %_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us.2 ], [ %i.y, %_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us.2 ], [ %i.o, %_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us.2 ], [ %i.bo, %_ZN3con7Channel20getCurrentLossRateKBEv.exit.2 ]
  %.us-phi59 = phi float [ %.1.us107.1, %_ZN3con7Channel16getAvgLossRateKBEv.exit.us.2 ], [ %.1.us93.1, %_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us.2 ], [ %.1.us79.1, %_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us.2 ], [ %.1.us65.1, %_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us.2 ], [ %.1.us.1, %_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us.2 ], [ %.1.1, %_ZN3con7Channel20getCurrentLossRateKBEv.exit.2 ]
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink
  %4 = load float, ptr %3, align 4, !tbaa !125
  %5 = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sink151) #29 ; 0 uses
  %.1.us107.2 = fadd nsz float %.us-phi59, %4
  call void @_ZN3con10PeerHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret float %.1.us107.2

bb.f:                                             ; preds = %.invoke, %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.invoke:                                          ; preds = %.split.split.us.preheader, %_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us, %_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us.1, %.split.split.preheader, %_ZN3con7Channel20getCurrentLossRateKBEv.exit, %_ZN3con7Channel20getCurrentLossRateKBEv.exit.1, %.split.split.us102.preheader, %_ZN3con7Channel16getAvgLossRateKBEv.exit.us, %_ZN3con7Channel16getAvgLossRateKBEv.exit.us.1, %.split.split.us88.preheader, %_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us, %_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us.1, %.split.split.us74.preheader, %_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us, %_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us.1, %.split.split.us60.preheader, %_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us, %_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us.1
  %i.bf = phi i32 [ %i.bd, %_ZN3con7Channel16getAvgLossRateKBEv.exit.us.1 ], [ %i.at, %_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us.1 ], [ %i.aj, %_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us.1 ], [ %i.z, %_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us.1 ], [ %i.bp, %_ZN3con7Channel20getCurrentLossRateKBEv.exit.1 ], [ %i.f, %.split.split.us60.preheader ], [ %i.u, %_ZN3con7Channel20getAvgDownloadRateKBEv.exit.us ], [ %i.f, %.split.split.us74.preheader ], [ %i.ae, %_ZN3con7Channel24getCurrentIncomingRateKBEv.exit.us ], [ %i.f, %.split.split.us88.preheader ], [ %i.ao, %_ZN3con7Channel20getAvgIncomingRateKBEv.exit.us ], [ %i.f, %.split.split.us102.preheader ], [ %i.ay, %_ZN3con7Channel16getAvgLossRateKBEv.exit.us ], [ %i.f, %.split.split.preheader ], [ %i.bk, %_ZN3con7Channel20getCurrentLossRateKBEv.exit ], [ %i.f, %.split.split.us.preheader ], [ %i.k, %_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us ], [ %i.p, %_ZN3con7Channel24getCurrentDownloadRateKBEv.exit.us.1 ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bf) #32
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZN3con7Channel20getCurrentLossRateKBEv.exit:     ; preds = %.split.split.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !251
  %i.bi = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #29 ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select, i64 1056 ; 2 uses
  %i.bk = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bj) #29 ; 2 uses
  %.not.i.i.i37.1 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i37.1, label %_ZN3con7Channel20getCurrentLossRateKBEv.exit.1, label %.invoke

_ZN3con7Channel20getCurrentLossRateKBEv.exit.1:   ; preds = %_ZN3con7Channel20getCurrentLossRateKBEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 1160
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !251
  %i.bn = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bj) #29 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %spec.select, i64 1568 ; 2 uses
  %i.bp = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bo) #29 ; 2 uses
  %.not.i.i.i37.2 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i37.2, label %_ZN3con7Channel20getCurrentLossRateKBEv.exit.2, label %.invoke

_ZN3con7Channel20getCurrentLossRateKBEv.exit.2:   ; preds = %_ZN3con7Channel20getCurrentLossRateKBEv.exit.1
  %.1.1 = fadd nsz float %i.bh, %i.bm
  br label %.split58.us

bb.g:                                             ; preds = %bb.e
  invoke void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 1566, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN3con10Connection12getLocalStatENS_14rate_stat_typeE) #32
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.d
  %.pn27 = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.be, %bb.f ]
  call void @_ZN3con10PeerHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn27
}

; Function Attrs: uwtable
define dso_local noundef zeroext i16 @_ZN3con10Connection10createPeerERK7Addressi(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(22) %1, i32 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.Address, align 8             ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %class.Buffer, align 8              ; 6 uses
  %7 = alloca %"class.std::shared_ptr.35", align 8 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.80", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, label %bb.b

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #32
  unreachable

bb.c:                                             ; preds = %_ZNSt3mapItPN3con4PeerESt4lessItESaISt4pairIKtS2_EEE4findERS6_.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader
  %.017127 = phi i32 [ 0, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader ], [ %i.q, %_ZNSt3mapItPN3con4PeerESt4lessItESaISt4pairIKtS2_EEE4findERS6_.exit ]
  %i.g = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef 2, i32 noundef 65534)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.h = trunc i32 %i.g to i16                    ; 12 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !147  ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapItPN3con4PeerESt4lessItESaISt4pairIKtS2_EEE4findERS6_.exit42.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load i16, ptr %i.j, align 2, !tbaa !36
  %i.l = icmp ult i16 %i.k, %i.h                  ; 2 uses
  %.19.i.i.i = select i1 %i.l, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.l, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !148 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeItSt4pairIKtPN3con4PeerEESt10_Select1stIS5_ESt4lessItESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !469

_ZNSt8_Rb_treeItSt4pairIKtPN3con4PeerEESt10_Select1stIS5_ESt4lessItESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.m = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.m, label %.lr.ph.i.i.i31.preheader, label %_ZNSt3mapItPN3con4PeerESt4lessItESaISt4pairIKtS2_EEE4findERS6_.exit

_ZNSt3mapItPN3con4PeerESt4lessItESaISt4pairIKtS2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtPN3con4PeerEESt10_Select1stIS5_ESt4lessItESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.o = load i16, ptr %i.n, align 2, !tbaa !36
  %i.p = icmp ugt i16 %i.o, %i.h
  %i.q = add nuw nsw i32 %.017127, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, 100
  %or.cond = select i1 %i.p, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.lr.ph.i.i.i31.preheader, label %bb.c, !llvm.loop !514

.lr.ph.i.i.i31.preheader:                         ; preds = %_ZNSt8_Rb_treeItSt4pairIKtPN3con4PeerEESt10_Select1stIS5_ESt4lessItESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZNSt3mapItPN3con4PeerESt4lessItESaISt4pairIKtS2_EEE4findERS6_.exit
  br label %.lr.ph.i.i.i31

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.i.i.i31:                                   ; preds = %.lr.ph.i.i.i31.preheader, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %.1.i.i.i37, %.lr.ph.i.i.i31 ], [ %i.i, %.lr.ph.i.i.i31.preheader ] ; 3 uses
  %.0811.i.i.i33 = phi ptr [ %.19.i.i.i34, %.lr.ph.i.i.i31 ], [ %i.f, %.lr.ph.i.i.i31.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 32
  %i.t = load i16, ptr %i.s, align 2, !tbaa !36
  %i.u = icmp ult i16 %i.t, %i.h                  ; 2 uses
  %.19.i.i.i34 = select i1 %i.u, ptr %.0811.i.i.i33, ptr %.012.i.i.i32 ; 3 uses
  %.1.in.v.i.i.i35 = select i1 %i.u, i64 24, i64 16
  %.1.in.i.i.i36 = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 %.1.in.v.i.i.i35
  %.1.i.i.i37 = load ptr, ptr %.1.in.i.i.i36, align 8, !tbaa !148 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.1.i.i.i37, null
  br i1 %.not.i.i.i38, label %_ZNSt8_Rb_treeItSt4pairIKtPN3con4PeerEESt10_Select1stIS5_ESt4lessItESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i39, label %.lr.ph.i.i.i31, !llvm.loop !469

_ZNSt8_Rb_treeItSt4pairIKtPN3con4PeerEESt10_Select1stIS5_ESt4lessItESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i39: ; preds = %.lr.ph.i.i.i31
  %i.v = icmp eq ptr %.19.i.i.i34, %i.f
  br i1 %i.v, label %_ZNSt3mapItPN3con4PeerESt4lessItESaISt4pairIKtS2_EEE4findERS6_.exit42.thread, label %_ZNSt3mapItPN3con4PeerESt4lessItESaISt4pairIKtS2_EEE4findERS6_.exit42

_ZNSt3mapItPN3con4PeerESt4lessItESaISt4pairIKtS2_EEE4findERS6_.exit42: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtPN3con4PeerEESt10_Select1stIS5_ESt4lessItESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i39
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i34, i64 32
  %i.x = load i16, ptr %i.w, align 2, !tbaa !36
  %i.y = icmp ugt i16 %i.x, %i.h
  br i1 %i.y, label %_ZNSt3mapItPN3con4PeerESt4lessItESaISt4pairIKtS2_EEE4findERS6_.exit42.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapItPN3con4PeerESt4lessItESaISt4pairIKtS2_EEE4findERS6_.exit42
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.f, %bb.g
  %i.z = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZN3con10Connection7getDescB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(520) %0)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %_ZTW11errorstream.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !60, !nonnull !73, !align !74 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %.noexc unwind label %bb.t, !inline_history !317

.noexc:                                           ; preds = %bb.h
  %.v.i = select i1 %i.ad, i64 976, i64 984
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.v.i ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77 ; 5 uses
  %.not.i.i43 = icmp eq ptr %i.af, null
  br i1 %.not.i.i43, label %_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !78
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %.noexc44 unwind label %bb.t

.noexc44:                                         ; preds = %bb.j
  %.pre.i.i = load ptr, ptr %i.ae, align 8, !tbaa !77
  br label %bb.k

bb.k:                                             ; preds = %.noexc44, %bb.i
  %i.an = phi ptr [ %.pre.i.i, %.noexc44 ], [ %i.af, %bb.i ]
  %i.ao = load ptr, ptr %4, align 8, !tbaa !113
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !115
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ao, i64 noundef %i.aq)
          to label %_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit unwind label %bb.t ; 0 uses

_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit: ; preds = %.noexc, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.70, ptr %i.b, align 8, !tbaa !76
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.l unwind label %bb.t       ; 2 uses

bb.l:                                             ; preds = %_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !77 ; 5 uses
  %.not.i47 = icmp eq ptr %i.at, null
  br i1 %.not.i47, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !78
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %.noexc48 unwind label %bb.t

.noexc48:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.as, align 8, !tbaa !77 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre129 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.o

bb.o:                                             ; preds = %.noexc48, %bb.m
  %i.bb = phi i64 [ %.pre129, %.noexc48 ], [ %i.aw, %bb.m ]
  %i.bc = phi ptr [ %.pre.i, %.noexc48 ], [ %i.at, %bb.m ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.bb
end_hunk_0
