inline.NumInlined: 626
inline.NumDeleted: 299
begin_hunk_0_@_ZN4absl12lts_2025051212log_internal9VLogLevelESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.f, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %bb.a
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE) #20
  br label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit

_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  %i.g = load ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !22
  %i.h = load i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_18global_vE, align 4, !tbaa !3
  %i.i = invoke fastcc noundef i32 @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_19VLogLevelESt17basic_string_viewIcSt11char_traitsIcEEPKSt6vectorINS2_11VModuleInfoESaIS8_EEi(i64 %0, ptr %1, ptr noundef %i.g, i32 noundef %i.h)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !19     ; 3 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 4
  %i.l = and i32 %i.k, 2
  %i.m = atomicrmw xchg ptr %i.j, i32 %i.l release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.m, 8
  br i1 %.not4.i.i, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.j, i32 noundef %i.m) #20
          to label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %i.i

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_19VLogLevelESt17basic_string_viewIcSt11char_traitsIcEEPKSt6vectorINS2_11VModuleInfoESaIS8_EEi(i64 %0, ptr %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val45 = load ptr, ptr %2, align 8, !tbaa !24  ; 2 uses
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val46 = load ptr, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp eq ptr %.val45, %.val46
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %.lr.ph.preheader, label %.preheader.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %.not13.i = icmp eq i64 %i.c, 0
  br i1 %.not13.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread, label %.preheader.preheader, !llvm.loop !26

.preheader.preheader:                             ; preds = %bb.c, %.preheader
  %.1.i109 = phi i64 [ %i.c, %.preheader ], [ %0, %bb.c ] ; 3 uses
  %i.c = add i64 %.1.i109, -1                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !27
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit, label %.preheader, !llvm.loop !26

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit: ; preds = %.preheader.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i109
  %i.h = sub i64 %0, %.1.i109
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread: ; preds = %.preheader, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit
  %.sroa.064.0 = phi i64 [ %i.h, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit ], [ %0, %.preheader ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %i.g, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit ], [ %1, %.preheader ] ; 6 uses
  %.not79 = icmp eq i64 %.sroa.064.0, 0
  br i1 %.not79, label %.lr.ph.preheader, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread
  %i.i = tail call ptr @memchr(ptr noundef %.sroa.7.0, i32 noundef 46, i64 noundef %.sroa.064.0) #19 ; 2 uses
  %.not.i51 = icmp eq ptr %i.i, null
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.sroa.7.0 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %.not42 = icmp eq i64 %i.l, -1
  %or.cond = select i1 %.not.i51, i1 true, i1 %.not42 ; 2 uses
  %.neg = sub i64 %0, %.sroa.064.0
  %i.m = add i64 %.neg, %i.l
  %.sroa.057.0 = select i1 %or.cond, i64 %.sroa.064.0, i64 %i.l ; 4 uses
  %.sroa.061.0 = select i1 %or.cond, i64 %0, i64 %i.m ; 3 uses
  %i.n = icmp ult i64 %.sroa.057.0, 4
  br i1 %i.n, label %.lr.ph.preheader, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.o = add i64 %.sroa.057.0, -4                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 %i.o
  %i.q = load i32, ptr %i.p, align 1
  %i.r = icmp ne i32 %i.q, 1819175213
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0                      ; 2 uses
  %i.u = add i64 %.sroa.061.0, -4
  %spec.select81 = select i1 %i.t, i64 %i.o, i64 %.sroa.057.0
  %spec.select82 = select i1 %i.t, i64 %i.u, i64 %.sroa.061.0
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %.sroa.7.097101 = phi ptr [ %.sroa.7.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %.sroa.7.0, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ %.sroa.7.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread ], [ %1, %bb.c ]
  %.sroa.057.174 = phi i64 [ %.sroa.057.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %spec.select81, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread ], [ 0, %bb.c ]
  %.sroa.061.1 = phi i64 [ %.sroa.061.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %spec.select82, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ %0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread ], [ 0, %bb.c ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.sroa.054.087 = phi ptr [ %i.ad, %bb.f ], [ %.val45, %.lr.ph.preheader ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.054.087, i64 32
  %i.w = load i8, ptr %i.v, align 8, !tbaa !28, !range !34, !noundef !35
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = load ptr, ptr %.sroa.054.087, align 8, !tbaa !36 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.054.087, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37  ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ab = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %i.aa, ptr %i.y, i64 %.sroa.061.1, ptr %1)
  br i1 %i.ab, label %.loopexit.sink.split, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ac = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %i.aa, ptr %i.y, i64 %.sroa.057.174, ptr %.sroa.7.097101)
  br i1 %i.ac, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.054.087, i64 40 ; 2 uses
  %.not80 = icmp eq ptr %i.ad, %.val46
  br i1 %.not80, label %.loopexit, label %.lr.ph

.loopexit.sink.split:                             ; preds = %bb.e, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.054.087, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !38 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -32768
  %.43 = select i1 %i.ag, i32 %3, i32 %i.af
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.loopexit.sink.split, %bb.a, %bb.b
  %.4 = phi i32 [ %3, %bb.a ], [ %3, %bb.b ], [ %.43, %.loopexit.sink.split ], [ %3, %bb.f ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = and i32 %i.b, 2
  %i.d = atomicrmw xchg ptr %i.a, i32 %i.c release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.d, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.d) #20
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit unwind label %bb.c

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051212log_internal15UpdateVLogSitesEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %0 = alloca %"class.std::vector", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %i.b = load ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !22 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge

._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge: ; preds = %bb.a
  %.val10.i.pre = load ptr, ptr %i.b, align 8, !tbaa !39
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !22
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit: ; preds = %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge, %bb.b
  %.val.i = phi ptr [ null, %bb.b ], [ %.val10.i.pre, %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge ] ; 5 uses
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.val11.i = load ptr, ptr %i.e, align 8, !tbaa !41 ; 2 uses
  %i.f = ptrtoint ptr %.val11.i to i64
  %i.g = ptrtoint ptr %.val.i to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %.val11.i, %.val.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = icmp ugt i64 %i.i, 230584300921369395
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i, !prof !7

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %1 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #22
  %.val9.i.pre = load ptr, ptr %i.e, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit
  %.val9.i = phi ptr [ %.val.i, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit ], [ %.val9.i.pre, %_ZNSt15__new_allocatorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %2 = phi ptr [ null, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit ], [ %1, %_ZNSt15__new_allocatorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i ] ; 11 uses
  store ptr %2, ptr %0, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.l, align 8, !tbaa !42
  %.not12.i.i.i.i.i = icmp eq ptr %.val.i, %.val9.i
  br i1 %.not12.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.g
  %.014.i.i.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %2, %bb.d ] ; 9 uses
  %.sroa.010.013.i.i.i.i.i = phi ptr [ %i.ac, %bb.g ], [ %.val.i, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.m, ptr %.014.i.i.i.i.i, align 8, !tbaa !43
  %i.n = load ptr, ptr %.sroa.010.013.i.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.p, ptr %i.a, align 8, !tbaa !44
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i unwind label %bb.h ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.r, ptr %.014.i.i.i.i.i, align 8, !tbaa !36
  %i.s = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.s, ptr %i.m, align 8, !tbaa !27
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.t = phi ptr [ %i.r, %.noexc.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !27
  store i8 %i.u, ptr %i.t, align 1, !tbaa !27
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !37
  %i.x = load ptr, ptr %.014.i.i.i.i.i, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i.i, i64 32
  %i.ab = load i64, ptr %i.aa, align 8
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i.i, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %.val9.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !45

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = call ptr @__cxa_begin_catch(ptr %i.af) #19 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvT_S6_(ptr noundef %2, ptr noundef nonnull %.014.i.i.i.i.i)
  invoke void @__cxa_rethrow() #23
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #21
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.i
  %.not.i.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.l

bb.l:                                             ; preds = %.body.i
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef %i.h) #24
  br label %common.resume

common.resume:                                    ; preds = %.body.i, %bb.l, %_ZN4absl12lts_202505129MutexLockD2Ev.exit34
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN4absl12lts_202505129MutexLockD2Ev.exit34 ], [ %i.ah, %bb.l ], [ %i.ah, %.body.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit: ; preds = %bb.g, %bb.d
  %.0.lcssa.i.i.i.i.i = phi ptr [ %2, %bb.d ], [ %i.ad, %bb.g ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.k, align 8, !tbaa !41
  %i.ak = load i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_18global_vE, align 4, !tbaa !3
  %i.al = load atomic i8, ptr @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex acquire, align 8
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.m, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit, !prof !46

bb.m:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit
  %i.an = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex) #19
  %.not.i28 = icmp eq i32 %i.an, 0
  br i1 %.not.i28, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex, align 8, !tbaa !47
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex) #19
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit: ; preds = %bb.n, %bb.m, %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %bb.q

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.ao = load atomic i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE monotonic, align 4
  %i.ap = and i32 %i.ao, 2
  %i.aq = atomicrmw xchg ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE, i32 %i.ap release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.aq, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE, i32 noundef %i.aq) #20
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit unwind label %bb.r

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit, %bb.o
  %i.ar = load atomic ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_114site_list_headE seq_cst, align 8 ; 2 uses
  %.not44 = icmp eq ptr %i.ar, null
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, %bb.t
  %.01647 = phi i32 [ %.117, %bb.t ], [ 0, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit ]
  %.01846 = phi ptr [ %.119, %bb.t ], [ null, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit ] ; 2 uses
  %.02045 = phi ptr [ %i.ba, %bb.t ], [ %i.ar, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit ] ; 3 uses
  %i.as = load ptr, ptr %.02045, align 8, !tbaa !10 ; 4 uses
  %.not24 = icmp eq ptr %i.as, %.01846
  br i1 %.not24, label %bb.t, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #19
  %i.au = invoke fastcc noundef i32 @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_19VLogLevelESt17basic_string_viewIcSt11char_traitsIcEEPKSt6vectorINS2_11VModuleInfoESaIS8_EEi(i64 %i.at, ptr nonnull %i.as, ptr noundef nonnull %0, i32 noundef %i.ak)
          to label %bb.t unwind label %bb.s

bb.q:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit34

bb.r:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.s:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.t:                                             ; preds = %bb.p, %.lr.ph
  %.119 = phi ptr [ %.01846, %.lr.ph ], [ %i.as, %bb.p ]
  %.117 = phi i32 [ %.01647, %.lr.ph ], [ %i.au, %bb.p ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02045, i64 8
  store atomic i32 %.117, ptr %i.ay seq_cst, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.02045, i64 16
  %i.ba = load atomic ptr, ptr %i.az seq_cst, align 8 ; 2 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.t, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit
  %i.bb = load ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116update_callbacksE, align 8, !tbaa !50 ; 3 uses
  %.not23 = icmp eq ptr %i.bb, null
  br i1 %.not23, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !52 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !52 ; 2 uses
  %.not4148 = icmp eq ptr %i.bc, %i.be
  br i1 %.not4148, label %.loopexit, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.u, %_ZNKSt8functionIFvvEEclEv.exit
  %.sroa.035.049 = phi ptr [ %i.bj, %_ZNKSt8functionIFvvEEclEv.exit ], [ %i.bc, %bb.u ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.035.049, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph51
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %.lr.ph51
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.035.049, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.049)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %.loopexit42, !inline_history !58

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.035.049, i64 32 ; 2 uses
  %.not41 = icmp eq ptr %i.bj, %i.be
  br i1 %.not41, label %.loopexit, label %.lr.ph51

.loopexit42:                                      ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit:                                        ; preds = %_ZNKSt8functionIFvvEEclEv.exit, %bb.u, %._crit_edge
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #21
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %.loopexit
  %.not4.i.i.i = icmp eq ptr %2, %.0.lcssa.i.i.i.i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.br, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i ], [ %2, %_ZN4absl12lts_202505129MutexLockD2Ev.exit ] ; 3 uses
  %i.bm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !27
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #24
  br label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.br, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i31, label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !59

_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i, %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %.not.i.i2.i = icmp eq ptr %2, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef %i.h) #24
  br label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret void

bb.z:                                             ; preds = %.loopexit42, %.loopexit.split-lp, %bb.s, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %i.ax, %bb.s ], [ %lpad.loopexit, %.loopexit42 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit34 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #21
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit34:      ; preds = %bb.z, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.q ], [ %.pn.pn, %bb.z ]
  call fastcc void @_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !36 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !27
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !59

_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !39
  br label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.k = ptrtoint ptr %.val1 to i64
  %i.l = ptrtoint ptr %.val to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.m) #24
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051212log_internal13UpdateVModuleESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 8 uses
  %4 = alloca %"class.absl::lts_20250512::strings_internal::SplitIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i64 %0, ptr %3, align 8, !tbaa !44, !alias.scope !60
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !63, !alias.scope !60
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 44, ptr %i.d, align 8, !tbaa !27, !alias.scope !60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 0, ptr %4, align 8, !tbaa !64, !alias.scope !71
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i32 0, ptr %i.e, align 8, !tbaa !74, !alias.scope !71
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !alias.scope !71
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %3, ptr %i.g, align 8, !tbaa !75, !alias.scope !71
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i8 44, ptr %i.h, align 8, !tbaa !27, !alias.scope !71
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.e, align 8, !tbaa !74, !alias.scope !71
  br label %.split

bb.c:                                             ; preds = %bb.a
  %i.j = invoke { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.h, i64 %0, ptr nonnull %1, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  store i32 1, ptr %i.e, align 8, !tbaa !74, !alias.scope !71
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %i.o = load i64, ptr %4, align 8, !tbaa !64, !alias.scope !71 ; 5 uses
  %i.p = icmp ugt i64 %i.o, %0
  br i1 %i.p, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %i.o, i64 noundef %0) #23
          to label %.noexc33 unwind label %bb.g

.noexc33:                                         ; preds = %bb.f
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i: ; preds = %bb.e
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.q, %i.s
  %i.u = sub nuw i64 %0, %i.o
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.t) ; 2 uses
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.f, align 8, !tbaa !44, !alias.scope !71
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !63, !alias.scope !71
  %i.v = add i64 %i.o, %i.k
  %i.w = add i64 %i.v, %.sroa.speculated.i.i.i.i
  %.sroa.0.0.copyload.i.i.i34.pre = load i64, ptr %3, align 8, !tbaa !44, !noalias !76
  %.pre = load i32, ptr %i.e, align 8, !tbaa !74
  %i.x = icmp ne i32 %.pre, 2
  br label %.split, !llvm.loop !79

.split:                                           ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i, %bb.b
  %i.y = phi i1 [ %i.x, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ false, %bb.b ]
  %.sroa.0.0.copyload.i.i.i34 = phi i64 [ %.sroa.0.0.copyload.i.i.i34.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %0, %bb.b ] ; 2 uses
  %storemerge.i = phi i64 [ %i.w, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %0, %bb.b ] ; 2 uses
  store i64 %storemerge.i, ptr %4, align 8, !tbaa !64, !alias.scope !71
  %i.z = icmp ne i64 %storemerge.i, %.sroa.0.0.copyload.i.i.i34
  %.not3.i150 = select i1 %i.y, i1 true, i1 %i.z
  br i1 %.not3.i150, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.split
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %.split
  %.sroa.14.0.lcssa = phi ptr [ null, %.split ], [ %.sroa.14.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 6 uses
  %.sroa.980.0.lcssa = phi ptr [ null, %.split ], [ %.sroa.980.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 2 uses
  %.sroa.076.0.lcssa = phi ptr [ null, %.split ], [ %.sroa.076.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.aa = load atomic i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE monotonic, align 4 ; 3 uses
  %i.ab = and i32 %i.aa, 1
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i: ; preds = %._crit_edge
  %i.ac = or disjoint i32 %i.aa, 1
  %i.ad = cmpxchg ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE, i32 %i.aa, i32 %i.ac acquire monotonic, align 4
  %i.ae = extractvalue { i32, i1 } %i.ad, 0
  %.pre.i.i = and i32 %i.ae, 1
  %i.af = icmp eq i32 %.pre.i.i, 0
  br i1 %i.af, label %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, %._crit_edge
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE) #20
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit unwind label %bb.w

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit106:                                     ; preds = %bb.q
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp107:                            ; preds = %bb.t
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u
end_hunk_0
