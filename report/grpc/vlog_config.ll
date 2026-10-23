Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/vlog_config?download=true
inline.NumInlined: 626
inline.NumDeleted: 299
begin_hunk_0_@_ZN4absl12lts_2025051212log_internal9VLogLevelESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.f = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.f, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %bb.a
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE) #20
  br label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit

_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  %i.g = load ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !25
  %i.h = load i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_18global_vE, align 4, !tbaa !26
  %i.i = invoke fastcc noundef i32 @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_19VLogLevelESt17basic_string_viewIcSt11char_traitsIcEEPKSt6vectorINS2_11VModuleInfoESaIS8_EEi(i64 %0, ptr %1, ptr noundef %i.g, i32 noundef %i.h)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !23     ; 3 uses
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
  %.val45 = load ptr, ptr %2, align 8, !tbaa !28  ; 2 uses
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val46 = load ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  %i.b = icmp eq ptr %.val45, %.val46
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %.lr.ph.preheader, label %.preheader.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %.not13.i = icmp eq i64 %i.c, 0
  br i1 %.not13.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread, label %.preheader.preheader, !llvm.loop !0

.preheader.preheader:                             ; preds = %bb.c, %.preheader
  %.1.i110 = phi i64 [ %i.c, %.preheader ], [ %0, %bb.c ] ; 3 uses
  %i.c = add i64 %.1.i110, -1                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit, label %.preheader, !llvm.loop !0

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit: ; preds = %.preheader.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i110
  %i.h = sub nuw i64 %0, %.1.i110
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread: ; preds = %.preheader, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit
  %.sroa.064.0 = phi i64 [ %i.h, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit ], [ %0, %.preheader ] ; 5 uses
  %.sroa.7.0 = phi ptr [ %i.g, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit ], [ %1, %.preheader ] ; 6 uses
  %.not79 = icmp eq i64 %.sroa.064.0, 0
  br i1 %.not79, label %.lr.ph.preheader, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread
  %i.i = tail call ptr @memchr(ptr noundef %.sroa.7.0, i32 noundef 46, i64 noundef %.sroa.064.0) #19 ; 2 uses
  %.not.i51 = icmp eq ptr %i.i, null
  br i1 %.not.i51, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.sroa.7.0 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %.not42 = icmp eq i64 %i.l, -1
  br i1 %.not42, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %.neg = sub i64 %0, %.sroa.064.0
  %i.m = add i64 %.neg, %i.l
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, %bb.d, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %.sroa.057.0 = phi i64 [ %.sroa.064.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ], [ %i.l, %bb.d ], [ %.sroa.064.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 4 uses
  %.sroa.061.0 = phi i64 [ %0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ], [ %i.m, %bb.d ], [ %0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 3 uses
  %i.n = icmp ult i64 %.sroa.057.0, 4
  br i1 %i.n, label %.lr.ph.preheader, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
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

.lr.ph.preheader:                                 ; preds = %bb.c, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %.sroa.7.098102 = phi ptr [ %.sroa.7.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ %.sroa.7.0, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ %.sroa.7.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread ], [ %1, %bb.c ]
  %.sroa.057.174 = phi i64 [ %.sroa.057.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ %spec.select81, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread ], [ 0, %bb.c ]
  %.sroa.061.1 = phi i64 [ %.sroa.061.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ %spec.select82, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ %0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread ], [ 0, %bb.c ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.sroa.054.087 = phi ptr [ %i.ad, %bb.g ], [ %.val45, %.lr.ph.preheader ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.054.087, i64 32
  %i.w = load i8, ptr %i.v, align 8, !tbaa !35, !range !36, !noundef !37
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = load ptr, ptr %.sroa.054.087, align 8, !tbaa !38 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.054.087, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !39  ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ab = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %i.aa, ptr %i.y, i64 %.sroa.061.1, ptr %1)
  br i1 %i.ab, label %.loopexit.sink.split, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ac = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %i.aa, ptr %i.y, i64 %.sroa.057.174, ptr %.sroa.7.098102)
  br i1 %i.ac, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.054.087, i64 40 ; 2 uses
  %.not80 = icmp eq ptr %i.ad, %.val46
  br i1 %.not80, label %.loopexit, label %.lr.ph

.loopexit.sink.split:                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.054.087, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !40 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -32768
  %.43 = select i1 %i.ag, i32 %3, i32 %i.af
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.loopexit.sink.split, %bb.a, %bb.b
  %.4 = phi i32 [ %3, %bb.a ], [ %3, %bb.b ], [ %.43, %.loopexit.sink.split ], [ %3, %bb.g ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
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
  %0 = alloca %"class.std::vector", align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %i.b = load ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !25 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge

._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge: ; preds = %bb.a
  %.val10.i.pre = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !25
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit: ; preds = %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge, %bb.b
  %.val10.i = phi ptr [ null, %bb.b ], [ %.val10.i.pre, %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge ] ; 2 uses
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.val11.i = load ptr, ptr %i.e, align 8, !tbaa !43 ; 2 uses
  %i.f = ptrtoint ptr %.val11.i to i64
  %i.g = ptrtoint ptr %.val10.i to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.val11.i, %.val10.i
  br i1 %.not.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr null, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.k, align 8, !tbaa !44
  br label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit
  %i.l = sdiv exact i64 %i.h, 40
  %i.m = icmp ugt i64 %i.l, 230584300921369395
  br i1 %i.m, label %.noexc.i.i, label %bb.d, !prof !10

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #22 ; 7 uses
  %.val.i.pre = load ptr, ptr %i.d, align 8, !tbaa !28 ; 2 uses
  %.val9.i.pre = load ptr, ptr %i.e, align 8, !tbaa !28 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !44
  %.not12.i.i.i.i.i = icmp eq ptr %.val.i.pre, %.val9.i.pre
  br i1 %.not12.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.g
  %.014.i.i.i.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.n, %bb.d ] ; 9 uses
  %.sroa.010.013.i.i.i.i.i = phi ptr [ %i.ah, %bb.g ], [ %.val.i.pre, %bb.d ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.014.i.i.i.i.i, align 8, !tbaa !45
  %i.s = load ptr, ptr %.sroa.010.013.i.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.u, ptr %i.a, align 8, !tbaa !46
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i unwind label %bb.h ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.w, ptr %.014.i.i.i.i.i, align 8, !tbaa !38
  %i.x = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.x, ptr %i.r, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.y = phi ptr [ %i.w, %.noexc.i.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i.i ] ; 2 uses
  switch i64 %i.u, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !29
  store i8 %i.z, ptr %i.y, align 1, !tbaa !29
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !39
  %i.ac = load ptr, ptr %.014.i.i.i.i.i, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i.i, i64 32
  %i.ag = load i64, ptr %i.af, align 8
  store i64 %i.ag, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i.i, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %.val9.i.pre
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !63

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = call ptr @__cxa_begin_catch(ptr %i.ak) #19 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvT_S6_(ptr noundef nonnull %i.n, ptr noundef nonnull %.014.i.i.i.i.i)
  invoke void @__cxa_rethrow() #23
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #21
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.h) #24
  br label %common.resume

common.resume:                                    ; preds = %.body.i, %_ZN4absl12lts_202505129MutexLockD2Ev.exit34
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN4absl12lts_202505129MutexLockD2Ev.exit34 ], [ %i.am, %.body.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit: ; preds = %bb.g, %.thread, %bb.d
  %i.ap = phi ptr [ %i.q, %bb.d ], [ %i.k, %.thread ], [ %i.q, %bb.g ]
  %i.aq = phi ptr [ %i.o, %bb.d ], [ %i.i, %.thread ], [ %i.o, %bb.g ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.n, %bb.d ], [ null, %.thread ], [ %i.ai, %bb.g ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !43
  %i.ar = load i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_18global_vE, align 4, !tbaa !26
  %i.as = load atomic i8, ptr @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.l, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit, !prof !47

bb.l:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit
  %i.au = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex) #19
  %.not.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i28, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex, align 8, !tbaa !49
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex) #19
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit: ; preds = %bb.m, %bb.l, %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %bb.p

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.av = load atomic i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE monotonic, align 4
  %i.aw = and i32 %i.av, 2
  %i.ax = atomicrmw xchg ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE, i32 %i.aw release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.ax, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE, i32 noundef %i.ax) #20
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit, %bb.n
  %i.ay = load atomic ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_114site_list_headE seq_cst, align 8 ; 2 uses
  %.not47 = icmp eq ptr %i.ay, null
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, %bb.q
  %.050 = phi i32 [ %.1, %bb.q ], [ 0, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit ]
  %.01349 = phi ptr [ %.114, %bb.q ], [ null, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit ] ; 2 uses
  %.01548 = phi ptr [ %i.bf, %bb.q ], [ %i.ay, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit ] ; 3 uses
  %i.az = load ptr, ptr %.01548, align 8, !tbaa !20 ; 4 uses
  %.not24 = icmp eq ptr %i.az, %.01349
  br i1 %.not24, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #19
  %i.bb = invoke fastcc noundef i32 @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_19VLogLevelESt17basic_string_viewIcSt11char_traitsIcEEPKSt6vectorINS2_11VModuleInfoESaIS8_EEi(i64 %i.ba, ptr nonnull %i.az, ptr noundef nonnull %0, i32 noundef %i.ar)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit34

bb.q:                                             ; preds = %bb.o, %.lr.ph
  %.114 = phi ptr [ %.01349, %.lr.ph ], [ %i.az, %bb.o ]
  %.1 = phi i32 [ %.050, %.lr.ph ], [ %i.bb, %bb.o ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01548, i64 8
  store atomic i32 %.1, ptr %i.bd seq_cst, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.01548, i64 16
  %i.bf = load atomic ptr, ptr %i.be seq_cst, align 8 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.q, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit
  %i.bg = load ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116update_callbacksE, align 8, !tbaa !51 ; 3 uses
  %.not23 = icmp eq ptr %i.bg, null
  br i1 %.not23, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !66 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !66 ; 2 uses
  %.not4151 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not4151, label %.loopexit, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.r, %_ZNKSt8functionIFvvEEclEv.exit
  %.sroa.035.052 = phi ptr [ %i.bo, %_ZNKSt8functionIFvvEEclEv.exit ], [ %i.bh, %bb.r ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.035.052, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph54
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %.lr.ph54
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.035.052, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !56
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.052)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !65

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.035.052, i64 32 ; 2 uses
  %.not41 = icmp eq ptr %i.bo, %i.bj
  br i1 %.not41, label %.loopexit, label %.lr.ph54

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.o, %bb.n, %bb.s
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit34 unwind label %bb.w

.loopexit:                                        ; preds = %_ZNKSt8functionIFvvEEclEv.exit, %bb.r, %._crit_edge
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #21
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %.loopexit
  %1 = load ptr, ptr %0, align 8, !tbaa !42       ; 5 uses
  %2 = load ptr, ptr %i.aq, align 8, !tbaa !43    ; 2 uses
  %.not4.i.i.i = icmp eq ptr %1, %2
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bw, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i ], [ %1, %_ZN4absl12lts_202505129MutexLockD2Ev.exit ] ; 3 uses
  %i.br = load ptr, ptr %.05.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !29
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #24
  br label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bw, %2
  br i1 %.not.i.i.i31, label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i, %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %.not.i.i2.i = icmp eq ptr %1, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i
  %.val1.i = load ptr, ptr %i.ap, align 8, !tbaa !44
  %3 = ptrtoint ptr %.val1.i to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef %5) #24
  br label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret void

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #21
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit34:      ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !38 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !29
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.j, align 8, !tbaa !44
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
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 8 uses
  %4 = alloca %"class.absl::lts_20250512::strings_internal::SplitIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i64 %0, ptr %3, align 8, !tbaa !46, !alias.scope !78
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !79, !alias.scope !78
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 44, ptr %i.f, align 8, !tbaa !29, !alias.scope !78
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 0, ptr %4, align 8, !tbaa !86, !alias.scope !87
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i32 0, ptr %i.g, align 8, !tbaa !88, !alias.scope !87
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !alias.scope !87
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %3, ptr %i.i, align 8, !tbaa !89, !alias.scope !87
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i8 44, ptr %i.j, align 8, !tbaa !29, !alias.scope !87
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.g, align 8, !tbaa !88, !alias.scope !87
  br label %.split

bb.c:                                             ; preds = %bb.a
  %i.l = invoke { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i64 %0, ptr nonnull %1, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  store i32 1, ptr %i.g, align 8, !tbaa !88, !alias.scope !87
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %i.q = load i64, ptr %4, align 8, !tbaa !86, !alias.scope !87 ; 5 uses
  %i.r = icmp ugt i64 %i.q, %0
  br i1 %i.r, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %i.q, i64 noundef %0) #23
          to label %.noexc33 unwind label %bb.g

.noexc33:                                         ; preds = %bb.f
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i: ; preds = %bb.e
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.s, %i.u
  %i.w = sub nuw i64 %0, %i.q
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.w, i64 %i.v) ; 2 uses
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.h, align 8, !tbaa !46, !alias.scope !87
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !79, !alias.scope !87
  %i.x = add i64 %i.q, %i.m
  %i.y = add i64 %i.x, %.sroa.speculated.i.i.i.i
  %.sroa.0.0.copyload.i.i.i34.pre = load i64, ptr %3, align 8, !tbaa !46, !noalias !90
  %.pre = load i32, ptr %i.g, align 8, !tbaa !88
  %i.z = icmp ne i32 %.pre, 2
  br label %.split, !llvm.loop !73

.split:                                           ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i, %bb.b
  %i.aa = phi i1 [ %i.z, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ false, %bb.b ]
  %.sroa.0.0.copyload.i.i.i34 = phi i64 [ %.sroa.0.0.copyload.i.i.i34.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %0, %bb.b ] ; 2 uses
  %storemerge.i = phi i64 [ %i.y, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %0, %bb.b ] ; 2 uses
  store i64 %storemerge.i, ptr %4, align 8, !tbaa !86, !alias.scope !87
  %i.ab = icmp ne i64 %storemerge.i, %.sroa.0.0.copyload.i.i.i34
  %.not3.i144 = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %.not3.i144, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.split
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %.split
  %.sroa.14.0.lcssa = phi ptr [ null, %.split ], [ %.sroa.14.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 3 uses
  %.sroa.980.0.lcssa = phi ptr [ null, %.split ], [ %.sroa.980.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 2 uses
  %.sroa.076.0.lcssa = phi ptr [ null, %.split ], [ %.sroa.076.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ac = load atomic i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE monotonic, align 4 ; 3 uses
  %i.ad = and i32 %i.ac, 1
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i: ; preds = %._crit_edge
  %i.ae = or disjoint i32 %i.ac, 1
  %i.af = cmpxchg ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE, i32 %i.ac, i32 %i.ae acquire monotonic, align 4
  %i.ag = extractvalue { i32, i1 } %i.af, 0
  %.pre.i.i = and i32 %i.ag, 1
  %i.ah = icmp eq i32 %.pre.i.i, 0
  br i1 %i.ah, label %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, %._crit_edge
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE) #20
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp101.loopexit.split-lp:          ; preds = %bb.q, %bb.t
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.h:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  %.sroa.076.0147 = phi ptr [ null, %.lr.ph ], [ %.sroa.076.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 11 uses
  %.sroa.980.0146 = phi ptr [ null, %.lr.ph ], [ %.sroa.980.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 13 uses
  %.sroa.14.0145 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 6 uses
  %.sroa.068.0.copyload = load i64, ptr %i.h, align 8, !tbaa !46 ; 3 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !79 ; 4 uses
  %.not.i = icmp eq i64 %.sroa.068.0.copyload, 0
end_hunk_0
