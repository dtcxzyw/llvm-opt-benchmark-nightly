Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/vlog_config?download=true
inline.NumInlined: 640
inline.NumDeleted: 306
begin_hunk_0_@_ZN4absl12lts_2026052612log_internal9VLogLevelESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  store atomic i32 %i.aj, ptr %i.ah monotonic, align 4
  br label %bb.i

bb.i:                                             ; preds = %.noexc.i, %bb.g
  %.not4.i.i = icmp ult i32 %i.ae, 8
  br i1 %.not4.i.i, label %_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.ab, i32 noundef %i.ae) #20
          to label %_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #21
  unreachable

_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %i.aa

bb.l:                                             ; preds = %_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.am
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_19VLogLevelESt17basic_string_viewIcSt11char_traitsIcEEPKSt6vectorINS2_11VModuleInfoESaIS8_EEi(i64 %0, ptr %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val34 = load ptr, ptr %2, align 8, !tbaa !31  ; 2 uses
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val35 = load ptr, ptr %i.a, align 8, !tbaa !31 ; 2 uses
  %i.b = icmp eq ptr %.val34, %.val35
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %.lr.ph.preheader, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.c, %bb.d
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.d ], [ %0, %bb.c ] ; 3 uses
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i.i.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !32
  %memchr.char0cmp.not.i = icmp eq i8 %i.d, 47
  br i1 %memchr.char0cmp.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.not17.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not17.i.i.i, label %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_18BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !64

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i.i.in.i
  %i.f = sub nuw i64 %0, %.1.i.i.in.i
  br label %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_18BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_18BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i
  %.sroa.5.0.i = phi ptr [ %i.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i ], [ %1, %bb.d ] ; 6 uses
  %.sroa.0.0.i = phi i64 [ %i.f, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i ], [ %0, %bb.d ] ; 5 uses
  %.not74 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not74, label %.lr.ph.preheader, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_18BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.g = tail call ptr @memchr(ptr noundef nonnull %.sroa.5.0.i, i32 noundef 46, i64 noundef %.sroa.0.0.i) #19 ; 2 uses
  %.not.i39 = icmp eq ptr %i.g, null
  br i1 %.not.i39, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %.sroa.5.0.i to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %.not32 = icmp eq i64 %i.j, -1
  br i1 %.not32, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %.neg = sub i64 %0, %.sroa.0.0.i
  %i.k = add i64 %.neg, %i.j
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, %bb.e, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %.sroa.047.0 = phi i64 [ %.sroa.0.0.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ], [ %i.j, %bb.e ], [ %.sroa.0.0.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 4 uses
  %.sroa.053.0 = phi i64 [ %0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ], [ %i.k, %bb.e ], [ %0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 3 uses
  %i.l = icmp ult i64 %.sroa.047.0, 4
  br i1 %i.l, label %.lr.ph.preheader, label %_ZN4absl12lts_202605268EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_202605268EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %i.m = add i64 %.sroa.047.0, -4                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 %i.m
  %i.o = load i32, ptr %i.n, align 1
  %i.p = icmp ne i32 %i.o, 1819175213
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0                      ; 2 uses
  %i.s = add i64 %.sroa.053.0, -4
  %spec.select76 = select i1 %i.r, i64 %i.m, i64 %.sroa.047.0
  %spec.select77 = select i1 %i.r, i64 %i.s, i64 %.sroa.053.0
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_18BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, %_ZN4absl12lts_202605268EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %.sroa.5.0.i606693 = phi ptr [ %.sroa.5.0.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ %.sroa.5.0.i, %_ZN4absl12lts_202605268EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ %1, %bb.c ], [ %.sroa.5.0.i, %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_18BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.sroa.047.169 = phi i64 [ %.sroa.047.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ %spec.select76, %_ZN4absl12lts_202605268EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ 0, %bb.c ], [ 0, %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_18BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.sroa.053.1 = phi i64 [ %.sroa.053.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ %spec.select77, %_ZN4absl12lts_202605268EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ 0, %bb.c ], [ %0, %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_18BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.044.082 = phi ptr [ %i.ab, %bb.h ], [ %.val34, %.lr.ph.preheader ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.044.082, i64 32
  %i.u = load i8, ptr %i.t, align 8, !tbaa !38, !range !65, !noundef !28
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = load ptr, ptr %.sroa.044.082, align 8, !tbaa !39 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.044.082, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !40   ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.z = tail call noundef zeroext i1 @_ZN4absl12lts_2026052612log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %i.y, ptr %i.w, i64 %.sroa.053.1, ptr %1)
  br i1 %i.z, label %.loopexit.sink.split, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.aa = tail call noundef zeroext i1 @_ZN4absl12lts_2026052612log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %i.y, ptr %i.w, i64 %.sroa.047.169, ptr %.sroa.5.0.i606693)
  br i1 %i.aa, label %.loopexit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.044.082, i64 40 ; 2 uses
  %.not75 = icmp eq ptr %i.ab, %.val35
  br i1 %.not75, label %.loopexit, label %.lr.ph

.loopexit.sink.split:                             ; preds = %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.044.082, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.loopexit.sink.split, %bb.a, %bb.b
  %.4 = phi i32 [ %3, %bb.a ], [ %3, %bb.b ], [ %i.ad, %.loopexit.sink.split ], [ %3, %bb.h ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29 ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = and i32 %i.b, 2
  %i.d = atomicrmw xchg ptr %i.a, i32 %i.c release, align 4 ; 3 uses
  %i.e = and i32 %i.d, 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 76 ; 2 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 4
  %i.i = add nsw i32 %i.h, -1
  store atomic i32 %i.i, ptr %i.g monotonic, align 4
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %.not4.i = icmp ult i32 %i.d, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.d) #20
          to label %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit unwind label %bb.e

_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #21
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052612log_internal15UpdateVLogSitesEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %0 = alloca %"class.std::vector", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %i.b = load ptr, ptr @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !24 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %._ZN4absl12lts_2026052612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge

._ZN4absl12lts_2026052612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge: ; preds = %bb.a
  %.val10.i.pre = load ptr, ptr %i.b, align 8, !tbaa !43
  br label %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !24
  br label %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit

_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit: ; preds = %._ZN4absl12lts_2026052612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge, %bb.b
  %.val10.i = phi ptr [ null, %bb.b ], [ %.val10.i.pre, %._ZN4absl12lts_2026052612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge ] ; 3 uses
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %._ZN4absl12lts_2026052612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val11.i = load ptr, ptr %i.e, align 8, !tbaa !44 ; 3 uses
  %i.f = ptrtoint ptr %.val11.i to i64
  %i.g = ptrtoint ptr %.val10.i to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.val11.i, %.val10.i
  br i1 %.not.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr null, i64 %i.h ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.k, align 8, !tbaa !45
  br label %_ZNSt6vectorIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit
  %i.l = sdiv exact i64 %i.h, 40
  %i.m = icmp ugt i64 %i.l, 230584300921369395
  br i1 %i.m, label %.noexc.i.i, label %bb.d, !prof !11

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #22 ; 7 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !45
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.g
  %.014.i.i.i.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.n, %bb.d ] ; 9 uses
  %.sroa.010.013.i.i.i.i.i = phi ptr [ %i.ah, %bb.g ], [ %.val10.i, %bb.d ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.014.i.i.i.i.i, align 8, !tbaa !46
  %i.s = load ptr, ptr %.sroa.010.013.i.i.i.i.i, align 8, !tbaa !39 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !40   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.u, ptr %i.a, align 8, !tbaa !47
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i unwind label %bb.h ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.w, ptr %.014.i.i.i.i.i, align 8, !tbaa !39
  %i.x = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.x, ptr %i.r, align 8, !tbaa !32
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.y = phi ptr [ %i.w, %.noexc.i.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i.i ] ; 2 uses
  switch i64 %i.u, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !32
  store i8 %i.z, ptr %i.y, align 1, !tbaa !32
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !40
  %i.ac = load ptr, ptr %.014.i.i.i.i.i, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i.i, i64 32
  %i.ag = load i64, ptr %i.af, align 8
  store i64 %i.ag, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i.i, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %.val11.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !66

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = call ptr @__cxa_begin_catch(ptr %i.ak) #19 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoEEvT_S6_(ptr noundef nonnull %i.n, ptr noundef nonnull %.014.i.i.i.i.i)
  invoke void @__cxa_rethrow() #23
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt12_Vector_baseIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #21
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable

common.resume:                                    ; preds = %_ZN4absl12lts_202605269MutexLockD2Ev.exit36, %_ZNSt12_Vector_baseIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.am, %_ZNSt12_Vector_baseIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit.i ], [ %.pn.pn.pn, %_ZN4absl12lts_202605269MutexLockD2Ev.exit36 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt12_Vector_baseIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit.i: ; preds = %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.h) #24
  br label %common.resume

_ZNSt6vectorIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit: ; preds = %bb.g, %.thread
  %i.ap = phi ptr [ %i.j, %.thread ], [ %i.p, %bb.g ]
  %i.aq = phi ptr [ %i.i, %.thread ], [ %i.o, %bb.g ]
  %1 = phi ptr [ null, %.thread ], [ %i.n, %bb.g ] ; 5 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.ai, %bb.g ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !44
  %i.ar = load i32, ptr @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_18global_vE, align 4, !tbaa !25
  %i.as = load atomic i8, ptr @_ZGVZN4absl12lts_2026052612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.l, label %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit, !prof !48

bb.l:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit
  %i.au = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex) #19
  %.not.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i28, label %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr @_ZZN4absl12lts_2026052612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex, align 8, !tbaa !50
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex) #19
  br label %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit

_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit: ; preds = %bb.m, %bb.l, %_ZNSt6vectorIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit
  invoke void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202605269MutexLockC2ERNS0_5MutexE.exit unwind label %bb.r

_ZN4absl12lts_202605269MutexLockC2ERNS0_5MutexE.exit: ; preds = %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.av = load atomic i32, ptr @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_15mutexE monotonic, align 4
  %i.aw = and i32 %i.av, 2
  %i.ax = atomicrmw xchg ptr @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_15mutexE, i32 %i.aw release, align 4 ; 3 uses
  %i.ay = and i32 %i.ax, 4
  %.not.i29 = icmp eq i32 %i.ay, 0
  br i1 %.not.i29, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_202605269MutexLockC2ERNS0_5MutexE.exit
  %i.az = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 76 ; 2 uses
  %i.bb = load atomic i32, ptr %i.ba monotonic, align 4
  %i.bc = add nsw i32 %i.bb, -1
  store atomic i32 %i.bc, ptr %i.ba monotonic, align 4
  br label %bb.o

bb.o:                                             ; preds = %.noexc, %_ZN4absl12lts_202605269MutexLockC2ERNS0_5MutexE.exit
  %.not4.i = icmp ult i32 %i.ax, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_15mutexE, i32 noundef %i.ax) #20
          to label %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit: ; preds = %bb.o, %bb.p
  %i.bd = load atomic ptr, ptr @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_114site_list_headE seq_cst, align 8 ; 2 uses
  %.not49 = icmp eq ptr %i.bd, null
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit, %bb.s
  %.052 = phi i32 [ %.1, %bb.s ], [ 0, %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit ]
  %.01351 = phi ptr [ %.114, %bb.s ], [ null, %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit ] ; 2 uses
  %.01550 = phi ptr [ %i.bk, %bb.s ], [ %i.bd, %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit ] ; 3 uses
  %i.be = load ptr, ptr %.01550, align 8, !tbaa !21 ; 4 uses
  %.not24 = icmp eq ptr %i.be, %.01351
  br i1 %.not24, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.bf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #19
  %i.bg = invoke fastcc noundef i32 @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_19VLogLevelESt17basic_string_viewIcSt11char_traitsIcEEPKSt6vectorINS2_11VModuleInfoESaIS8_EEi(i64 %i.bf, ptr nonnull %i.be, ptr noundef nonnull %0, i32 noundef %i.ar)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202605269MutexLockD2Ev.exit36

bb.s:                                             ; preds = %bb.q, %.lr.ph
  %.114 = phi ptr [ %.01351, %.lr.ph ], [ %i.be, %bb.q ]
  %.1 = phi i32 [ %.052, %.lr.ph ], [ %i.bg, %bb.q ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01550, i64 8
  store atomic i32 %.1, ptr %i.bi seq_cst, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.01550, i64 16
  %i.bk = load atomic ptr, ptr %i.bj seq_cst, align 8 ; 2 uses
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.s, %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit
  %i.bl = load ptr, ptr @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_116update_callbacksE, align 8, !tbaa !52 ; 3 uses
  %.not23 = icmp eq ptr %i.bl, null
  br i1 %.not23, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !69 ; 2 uses
  %.not4353 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not4353, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.t, %_ZNKSt8functionIFvvEEclEv.exit
  %.sroa.037.054 = phi ptr [ %i.bt, %_ZNKSt8functionIFvvEEclEv.exit ], [ %i.bm, %bb.t ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !55
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph56
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %.lr.ph56
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.037.054)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !68

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 32 ; 2 uses
  %.not43 = icmp eq ptr %i.bt, %i.bo
  br i1 %.not43, label %.loopexit, label %.lr.ph56

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.q, %bb.n, %bb.p, %bb.u
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit36 unwind label %bb.y

.loopexit:                                        ; preds = %_ZNKSt8functionIFvvEEclEv.exit, %bb.t, %._crit_edge
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #21
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit:        ; preds = %.loopexit
  %.not4.i.i.i = icmp eq ptr %1, %.0.lcssa.i.i.i.i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_202605269MutexLockD2Ev.exit, %_ZSt8_DestroyIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cb, %_ZSt8_DestroyIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i ], [ %1, %_ZN4absl12lts_202605269MutexLockD2Ev.exit ] ; 3 uses
  %i.bw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !39 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZSt8_DestroyIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !32
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #24
  br label %_ZSt8_DestroyIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.cb, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i33, label %_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i, %_ZN4absl12lts_202605269MutexLockD2Ev.exit
  %.not.i.i2.i = icmp eq ptr %1, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i
  %i.cc = ptrtoint ptr %i.ap to i64
  %i.cd = ptrtoint ptr %1 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef %i.ce) #24
  br label %_ZNSt6vectorIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret void

bb.y:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #21
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit36:      ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %lpad.loopexit.split-lp83, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZNSt6vectorIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !39 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !32
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZSt8_DestroyIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !43
  br label %_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.k = ptrtoint ptr %.val1 to i64
  %i.l = ptrtoint ptr %.val to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.m) #24
  br label %_ZNSt12_Vector_baseIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052612log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052612log_internal13UpdateVModuleESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.absl::lts_20260526::strings_internal::Splitter", align 8 ; 8 uses
  %4 = alloca %"class.absl::lts_20260526::strings_internal::SplitIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i64 %0, ptr %3, align 8, !tbaa !47, !alias.scope !82
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !83, !alias.scope !82
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 44, ptr %i.e, align 8, !tbaa !32, !alias.scope !82
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 0, ptr %4, align 8, !tbaa !90, !alias.scope !91
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i32 0, ptr %i.f, align 8, !tbaa !92, !alias.scope !91
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !alias.scope !91
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %3, ptr %i.h, align 8, !tbaa !93, !alias.scope !91
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i8 44, ptr %i.i, align 8, !tbaa !32, !alias.scope !91
  %i.j = icmp eq ptr %1, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.f, align 8, !tbaa !92, !alias.scope !91
  br label %.split

bb.c:                                             ; preds = %bb.a
  %i.k = invoke { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i64 %0, ptr nonnull %1, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  store i32 1, ptr %i.f, align 8, !tbaa !92, !alias.scope !91
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %i.p = load i64, ptr %4, align 8, !tbaa !90, !alias.scope !91 ; 5 uses
  %i.q = icmp ugt i64 %i.p, %0
  br i1 %i.q, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %i.p, i64 noundef %0) #23
          to label %.noexc33 unwind label %bb.l

.noexc33:                                         ; preds = %bb.f
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i: ; preds = %bb.e
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.r, %i.t
  %i.v = sub nuw i64 %0, %i.p
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.v, i64 %i.u) ; 2 uses
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.g, align 8, !tbaa !47, !alias.scope !91
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !83, !alias.scope !91
  %i.w = add i64 %i.p, %i.l
  %i.x = add i64 %i.w, %.sroa.speculated.i.i.i.i
  %.sroa.0.0.copyload.i.i.i34.pre = load i64, ptr %3, align 8, !tbaa !47, !noalias !94
  %.pre = load i32, ptr %i.f, align 8, !tbaa !92
  %i.y = icmp ne i32 %.pre, 2
  br label %.split, !llvm.loop !76

.split:                                           ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i, %bb.b
  %i.z = phi i1 [ %i.y, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ false, %bb.b ]
  %.sroa.0.0.copyload.i.i.i34 = phi i64 [ %.sroa.0.0.copyload.i.i.i34.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %0, %bb.b ] ; 2 uses
  %storemerge.i = phi i64 [ %i.x, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %0, %bb.b ] ; 2 uses
  store i64 %storemerge.i, ptr %4, align 8, !tbaa !90, !alias.scope !91
  %i.aa = icmp ne i64 %storemerge.i, %.sroa.0.0.copyload.i.i.i34
  %.not3.i144 = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %.not3.i144, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.split
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %.split
  %.sroa.14.0.lcssa = phi ptr [ null, %.split ], [ %.sroa.14.2, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 3 uses
  %.sroa.981.0.lcssa = phi ptr [ null, %.split ], [ %.sroa.981.2, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 2 uses
  %.sroa.077.0.lcssa = phi ptr [ null, %.split ], [ %.sroa.077.2, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ab = load atomic i32, ptr @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_15mutexE monotonic, align 4 ; 10 uses
  %i.ac = and i32 %i.ab, 1
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.g, label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i

bb.g:                                             ; preds = %._crit_edge
  %i.ad = and i32 %i.ab, 2
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.af = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc35:                                         ; preds = %bb.h
  %.not.i.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.not.i.i.i, label %bb.i, label %.thread13.i.i.i

bb.i:                                             ; preds = %.noexc35
  %i.ag = or disjoint i32 %i.ab, 1
  %i.ah = cmpxchg ptr @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_15mutexE, i32 %i.ab, i32 %i.ag acquire monotonic, align 4
  %i.ai = extractvalue { i32, i1 } %i.ah, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i

.thread13.i.i.i:                                  ; preds = %.noexc35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 76 ; 2 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %i.al = add nsw i32 %i.ak, 1
  store atomic i32 %i.al, ptr %i.aj monotonic, align 4
  %i.am = or i32 %i.ab, 5
  %i.an = cmpxchg ptr @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_15mutexE, i32 %i.ab, i32 %i.am acquire monotonic, align 4 ; 2 uses
  %i.ao = extractvalue { i32, i1 } %i.an, 1
end_hunk_0
