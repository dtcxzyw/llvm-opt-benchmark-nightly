Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/datetime?download=true
inline.NumInlined: 2499
inline.NumDeleted: 992
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8

@_ZN14arrow_vendored4date9tzdb_listD1Ev = unnamed_addr alias void (ptr), ptr @_ZN14arrow_vendored4date9tzdb_listD2Ev
@_ZN14arrow_vendored4date9tzdb_listC1EOS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN14arrow_vendored4date9tzdb_listC2EOS1_
@_ZN14arrow_vendored4date9time_zoneC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6detail12undocumentedE = unnamed_addr alias void (ptr, ptr), ptr @_ZN14arrow_vendored4date9time_zoneC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6detail12undocumentedE
@_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE = unnamed_addr alias void (ptr, ptr), ptr @_ZN14arrow_vendored4date11leap_secondC2ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN14arrow_vendored4date9tzdb_listD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 seq_cst, align 8 ; 2 uses
  store atomic ptr null, ptr %0 seq_cst, align 8
  %.not5 = icmp eq ptr %i.a, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN14arrow_vendored4date4tzdbD2Ev.exit
  %.06 = phi ptr [ %i.c, %_ZN14arrow_vendored4date4tzdbD2Ev.exit ], [ %i.a, %bb.a ] ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.06, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.06, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.06, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %.06, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN14arrow_vendored4date9time_zoneEEEvT_S6_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN14arrow_vendored4date9time_zoneES2_EvT_S4_RSaIT0_E.exit.i.i unwind label %bb.d

_ZSt8_DestroyIPN14arrow_vendored4date9time_zoneES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date9time_zoneES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.06, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i

bb.d:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN14arrow_vendored4date9time_zoneES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %.06, align 8, !tbaa !39   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.06, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN14arrow_vendored4date4tzdbD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !40
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #28
  br label %_ZN14arrow_vendored4date4tzdbD2Ev.exit

_ZN14arrow_vendored4date4tzdbD2Ev.exit:           ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06, i64 noundef 88) #28
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !156

._crit_edge:                                      ; preds = %_ZN14arrow_vendored4date4tzdbD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN14arrow_vendored4date9tzdb_listC2EOS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = atomicrmw xchg ptr %1, ptr null seq_cst, align 8
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN14arrow_vendored4date9tzdb_list10push_frontEPNS0_4tzdbE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef initializes((80, 88)) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 seq_cst, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.a, ptr %i.b, align 8, !tbaa !33
  store atomic ptr %1, ptr %0 seq_cst, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @_ZN14arrow_vendored4date9tzdb_list11erase_afterENS1_14const_iteratorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  store ptr %i.d, ptr %i.a, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN14arrow_vendored4date9time_zoneEEEvT_S6_(ptr noundef %i.m, ptr noundef %i.o)
          to label %_ZSt8_DestroyIPN14arrow_vendored4date9time_zoneES2_EvT_S4_RSaIT0_E.exit.i.i unwind label %bb.d

_ZSt8_DestroyIPN14arrow_vendored4date9time_zoneES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date9time_zoneES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i

bb.d:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #29
  unreachable

_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN14arrow_vendored4date9time_zoneES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !40
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #28
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !33
  ret ptr %i.ac
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date13get_tzdb_listEv() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN14arrow_vendored4dateL11create_tzdbEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN14arrow_vendored4date9tzdb_listD1Ev, ptr nonnull @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  resume { ptr, i32 } %i.e
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL11create_tzdbEv() unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::unique_ptr.53", align 8 ; 8 uses
  store ptr null, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  invoke fastcc void @_ZN14arrow_vendored4dateL9init_tzdbEv(ptr dead_on_unwind noalias writable align 8 %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !45
  %i.b = load atomic ptr, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.b, ptr %i.c, align 8, !tbaa !33
  store atomic ptr %i.a, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db seq_cst, align 8
  %i.d = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN14arrow_vendored4date4tzdbESt14default_deleteIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNKSt14default_deleteIN14arrow_vendored4date4tzdbEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d)
  br label %_ZNSt10unique_ptrIN14arrow_vendored4date4tzdbESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN14arrow_vendored4date4tzdbESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  call void @_ZN14arrow_vendored4date9tzdb_listD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  resume { ptr, i32 } %i.e
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN14arrow_vendored4date9time_zoneC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %i.b = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !47   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #31
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !48

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !39
  store i64 %i.d, ptr %i.a, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !40
  store i8 %i.k, ptr %i.j, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  %i.o = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #32
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.o, align 4, !tbaa !158
  store ptr %i.o, ptr %i.p, align 8, !tbaa !50
  ret void

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #30
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit: ; preds = %bb.g, %bb.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.a
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !40
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.q
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28
  br label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i

_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit

end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date9time_zone9init_implEv:bb.a
bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn101 = phi { ptr, i32 } [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ]
  call void @__cxa_free_exception(ptr %i.al) #30
  br label %bb.ap

bb.p:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %4, align 8, !tbaa !61
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %4, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  store i32 5, ptr %i.be, align 4, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !71
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bd, i32 noundef %i.bg)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.t

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.p
  %i.bh = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc38 unwind label %bb.t   ; 0 uses

.noexc38:                                         ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  %i.bi = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc39 unwind label %bb.t   ; 0 uses

.noexc39:                                         ; preds = %.noexc38
  %i.bj = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc40 unwind label %bb.t   ; 0 uses

.noexc40:                                         ; preds = %.noexc39
  %i.bk = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN14arrow_vendored4dateL11load_headerERSi.exit unwind label %bb.t ; 0 uses

_ZN14arrow_vendored4dateL11load_headerERSi.exit:  ; preds = %.noexc40
  %i.bl = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZN14arrow_vendored4dateL11load_headerERSi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.bm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi6ignoreEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 15)
          to label %_ZN14arrow_vendored4dateL12skip_reserveERSi.exit unwind label %bb.ad ; 0 uses

_ZN14arrow_vendored4dateL12skip_reserveERSi.exit: ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4)
          to label %.noexc44 unwind label %bb.ad  ; 0 uses

.noexc44:                                         ; preds = %_ZN14arrow_vendored4dateL12skip_reserveERSi.exit
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !15
  %i.bp = call noundef i32 @llvm.bswap.i32(i32 %i.bo)
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !15
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i64 noundef 4)
          to label %.noexc45 unwind label %bb.ad  ; 0 uses

.noexc45:                                         ; preds = %.noexc44
  %i.br = load i32, ptr %i.c, align 4, !tbaa !15
  %i.bs = call noundef i32 @llvm.bswap.i32(i32 %i.br)
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !15
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i64 noundef 4)
          to label %.noexc46 unwind label %bb.ad  ; 0 uses

.noexc46:                                         ; preds = %.noexc45
  %i.bu = load i32, ptr %i.d, align 4, !tbaa !15
  %i.bv = call noundef i32 @llvm.bswap.i32(i32 %i.bu)
  store i32 %i.bv, ptr %i.d, align 4, !tbaa !15
  %i.bw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i64 noundef 4)
          to label %.noexc47 unwind label %bb.ad  ; 0 uses

.noexc47:                                         ; preds = %.noexc46
  %i.bx = load i32, ptr %i.e, align 4, !tbaa !15
  %i.by = call noundef i32 @llvm.bswap.i32(i32 %i.bx)
  store i32 %i.by, ptr %i.e, align 4, !tbaa !15
  %i.bz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i64 noundef 4)
          to label %.noexc48 unwind label %bb.ad  ; 0 uses

.noexc48:                                         ; preds = %.noexc47
  %i.ca = load i32, ptr %i.f, align 4, !tbaa !15
  %i.cb = call noundef i32 @llvm.bswap.i32(i32 %i.ca)
  store i32 %i.cb, ptr %i.f, align 4, !tbaa !15
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.g, i64 noundef 4)
          to label %bb.r unwind label %bb.ad      ; 0 uses

bb.r:                                             ; preds = %.noexc48
  %i.cd = load i32, ptr %i.g, align 4, !tbaa !15
  %i.ce = call noundef i32 @llvm.bswap.i32(i32 %i.cd) ; 3 uses
  store i32 %i.ce, ptr %i.g, align 4, !tbaa !15
  %i.cf = and i32 %i.bl, 255
  %i.cg = icmp eq i32 %i.cf, 0
  %i.ch = load i32, ptr %i.f, align 4, !tbaa !15  ; 2 uses
  br i1 %i.cg, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ci = load i32, ptr %i.d, align 4, !tbaa !15
  %i.cj = load i32, ptr %i.e, align 4, !tbaa !15
  invoke void @_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.ch, i32 noundef %i.ce)
          to label %bb.x unwind label %bb.ad

bb.t:                                             ; preds = %_ZN14arrow_vendored4dateL11load_headerERSi.exit, %.noexc40, %.noexc39, %.noexc38, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit, %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.u:                                             ; preds = %bb.r
  %i.cl = load i32, ptr %i.e, align 4, !tbaa !15
  %i.cm = mul nsw i32 %i.cl, 5
  %i.cn = mul nsw i32 %i.ch, 6
  %i.co = load i32, ptr %i.d, align 4, !tbaa !15
  %i.cp = shl nsw i32 %i.co, 3
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !15
  %i.cr = load i32, ptr %i.b, align 4, !tbaa !15
  %i.cs = add i32 %i.ce, 20
  %i.ct = add i32 %i.cs, %i.cm
  %i.cu = add i32 %i.ct, %i.cn
  %i.cv = add i32 %i.cu, %i.cp
  %i.cw = add i32 %i.cv, %i.cq
  %i.cx = add i32 %i.cw, %i.cr
  %i.cy = sext i32 %i.cx to i64
  %i.cz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi6ignoreEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.cy)
          to label %bb.v unwind label %bb.ad      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.da = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4)
          to label %.noexc50 unwind label %bb.ad  ; 0 uses

.noexc50:                                         ; preds = %bb.v
  %i.db = load i32, ptr %i.b, align 4, !tbaa !15
  %i.dc = call noundef i32 @llvm.bswap.i32(i32 %i.db)
  store i32 %i.dc, ptr %i.b, align 4, !tbaa !15
  %i.dd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i64 noundef 4)
          to label %.noexc51 unwind label %bb.ad  ; 0 uses

.noexc51:                                         ; preds = %.noexc50
  %i.de = load i32, ptr %i.c, align 4, !tbaa !15
  %i.df = call noundef i32 @llvm.bswap.i32(i32 %i.de)
  store i32 %i.df, ptr %i.c, align 4, !tbaa !15
  %i.dg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i64 noundef 4)
          to label %.noexc52 unwind label %bb.ad  ; 0 uses

.noexc52:                                         ; preds = %.noexc51
  %i.dh = load i32, ptr %i.d, align 4, !tbaa !15
  %i.di = call noundef i32 @llvm.bswap.i32(i32 %i.dh)
  store i32 %i.di, ptr %i.d, align 4, !tbaa !15
  %i.dj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i64 noundef 4)
          to label %.noexc53 unwind label %bb.ad  ; 0 uses

.noexc53:                                         ; preds = %.noexc52
  %i.dk = load i32, ptr %i.e, align 4, !tbaa !15
  %i.dl = call noundef i32 @llvm.bswap.i32(i32 %i.dk)
  store i32 %i.dl, ptr %i.e, align 4, !tbaa !15
  %i.dm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i64 noundef 4)
          to label %.noexc54 unwind label %bb.ad  ; 0 uses

.noexc54:                                         ; preds = %.noexc53
  %i.dn = load i32, ptr %i.f, align 4, !tbaa !15
  %i.do = call noundef i32 @llvm.bswap.i32(i32 %i.dn)
  store i32 %i.do, ptr %i.f, align 4, !tbaa !15
  %i.dp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.g, i64 noundef 4)
          to label %bb.w unwind label %bb.ad      ; 0 uses

bb.w:                                             ; preds = %.noexc54
  %i.dq = load i32, ptr %i.g, align 4, !tbaa !15
  %i.dr = call noundef i32 @llvm.bswap.i32(i32 %i.dq) ; 2 uses
  store i32 %i.dr, ptr %i.g, align 4, !tbaa !15
  %i.ds = load i32, ptr %i.d, align 4, !tbaa !15
  %i.dt = load i32, ptr %i.e, align 4, !tbaa !15
  %i.du = load i32, ptr %i.f, align 4, !tbaa !15
  invoke void @_ZN14arrow_vendored4date9time_zone9load_dataIlEEvRSiiiii(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.ds, i32 noundef %i.dt, i32 noundef %i.du, i32 noundef %i.dr)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w, %bb.s
  %i.dv = load i32, ptr %i.d, align 4, !tbaa !15
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %bb.y, label %..loopexit104_crit_edge

..loopexit104_crit_edge:                          ; preds = %bb.x
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !72
  %.phi.trans.insert120 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre121 = load ptr, ptr %.phi.trans.insert120, align 8, !tbaa !72
  br label %.loopexit104

bb.y:                                             ; preds = %bb.x
  %i.dx = load atomic i8, ptr @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db acquire, align 8
  %i.dy = icmp eq i8 %i.dx, 0
  br i1 %i.dy, label %bb.z, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, !prof !44

bb.z:                                             ; preds = %bb.y
  %i.dz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  %.not.i57 = icmp eq i32 %i.dz, 0
  br i1 %.not.i57, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_ZN14arrow_vendored4dateL11create_tzdbEv()
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ea = call i32 @__cxa_atexit(ptr @_ZN14arrow_vendored4date9tzdb_listD1Ev, ptr nonnull @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit

bb.ac:                                            ; preds = %bb.aa
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %.body

_ZN14arrow_vendored4date13get_tzdb_listEv.exit:   ; preds = %bb.ab, %bb.z, %bb.y
  %i.ec = load atomic ptr, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db seq_cst, align 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !73 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ee, align 8, !tbaa !74 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !72 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !72 ; 5 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 4                 ; 2 uses
  %i.en = icmp sgt i64 %i.em, 0
  br i1 %i.en, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEEZNS3_9time_zone9init_implEvE3$_0ET_SM_SM_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.07.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.em, %_ZN14arrow_vendored4date13get_tzdb_listEv.exit ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %.sroa.02.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.eg, %_ZN14arrow_vendored4date13get_tzdb_listEv.exit ] ; 2 uses
  %i.eo = lshr i64 %.07.i.i, 1                    ; 3 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.06.i.i, i64 %i.eo ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.ep, align 8, !tbaa !74
  %i.eq = icmp slt i64 %.sroa.0.0.copyload.i, %.val2.i.i.i ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.es = xor i64 %i.eo, -1
  %i.et = add nsw i64 %.07.i.i, %i.es
  %.sroa.02.1.i.i = select i1 %i.eq, ptr %.sroa.02.06.i.i, ptr %i.er ; 2 uses
  %.1.i.i = select i1 %i.eq, i64 %i.eo, i64 %i.et ; 2 uses
  %i.eu = icmp sgt i64 %.1.i.i, 0
  br i1 %i.eu, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEEZNS3_9time_zone9init_implEvE3$_0ET_SM_SM_RKT0_T1_.exit", !llvm.loop !163

"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEEZNS3_9time_zone9init_implEvE3$_0ET_SM_SM_RKT0_T1_.exit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZN14arrow_vendored4date13get_tzdb_listEv.exit
  %.sroa.02.0.lcssa.i.i = phi ptr [ %i.eg, %_ZN14arrow_vendored4date13get_tzdb_listEv.exit ], [ %.sroa.02.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.ev = icmp eq ptr %.sroa.02.0.lcssa.i.i, %i.ei
  br i1 %i.ev, label %.loopexit104, label %.preheader103.lr.ph

.preheader103.lr.ph:                              ; preds = %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEEZNS3_9time_zone9init_implEvE3$_0ET_SM_SM_RKT0_T1_.exit"
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  br label %.preheader103

.preheader103:                                    ; preds = %.preheader103.lr.ph, %._crit_edge
  %.sroa.095.0114 = phi ptr [ %i.ee, %.preheader103.lr.ph ], [ %.sroa.095.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.093.0113 = phi i64 [ %.sroa.0.0.copyload.i, %.preheader103.lr.ph ], [ %.sroa.093.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.090.0112 = phi i64 [ 0, %.preheader103.lr.ph ], [ %.sroa.090.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.086.0111 = phi ptr [ %.sroa.02.0.lcssa.i.i, %.preheader103.lr.ph ], [ %i.fe, %._crit_edge ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.086.0111, align 8, !tbaa !74 ; 3 uses
  %.not105 = icmp slt i64 %.sroa.0.0.copyload.i.i, %.sroa.093.0113
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader103
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !73
  br label %bb.ae

bb.ad:                                            ; preds = %.noexc54, %.noexc53, %.noexc52, %.noexc51, %.noexc50, %bb.v, %.noexc48, %.noexc47, %.noexc46, %.noexc45, %.noexc44, %_ZN14arrow_vendored4dateL12skip_reserveERSi.exit, %bb.q, %bb.s, %bb.u, %bb.w
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %.lr.ph, %bb.ag
  %.sroa.095.1107 = phi ptr [ %.sroa.095.0114, %.lr.ph ], [ %i.fa, %bb.ag ]
  %.sroa.090.1106 = phi i64 [ %.sroa.090.0112, %.lr.ph ], [ %i.ez, %bb.ag ]
  %i.ez = add nsw i64 %.sroa.090.1106, 1          ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.095.1107, i64 8 ; 4 uses
  %i.fb = icmp eq ptr %i.fa, %i.ex
  br i1 %i.fb, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.0.copyload.i59 = load i64, ptr %i.fa, align 8, !tbaa !74
  %i.fc = add nsw i64 %.sroa.0.0.copyload.i59, %i.ez
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.sroa.093.2 = phi i64 [ %i.fc, %bb.af ], [ 971890876800, %bb.ae ] ; 2 uses
  %.not = icmp slt i64 %.sroa.0.0.copyload.i.i, %.sroa.093.2
  br i1 %.not, label %._crit_edge, label %bb.ae, !llvm.loop !164

._crit_edge:                                      ; preds = %bb.ag, %.preheader103
  %.sroa.090.1.lcssa = phi i64 [ %.sroa.090.0112, %.preheader103 ], [ %i.ez, %bb.ag ] ; 2 uses
  %.sroa.093.1.lcssa = phi i64 [ %.sroa.093.0113, %.preheader103 ], [ %.sroa.093.2, %bb.ag ]
  %.sroa.095.1.lcssa = phi ptr [ %.sroa.095.0114, %.preheader103 ], [ %i.fa, %bb.ag ]
  %i.fd = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.090.1.lcssa
  store i64 %i.fd, ptr %.sroa.086.0111, align 8, !tbaa !76
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.086.0111, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ei
  br i1 %i.ff, label %.loopexit104, label %.preheader103, !llvm.loop !165

.loopexit104:                                     ; preds = %._crit_edge, %..loopexit104_crit_edge, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEEZNS3_9time_zone9init_implEvE3$_0ET_SM_SM_RKT0_T1_.exit"
  %i.fg = phi ptr [ %.pre121, %..loopexit104_crit_edge ], [ %i.ei, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEEZNS3_9time_zone9init_implEvE3$_0ET_SM_SM_RKT0_T1_.exit" ], [ %i.ei, %._crit_edge ] ; 3 uses
  %i.fh = phi ptr [ %.pre, %..loopexit104_crit_edge ], [ %i.eg, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEEZNS3_9time_zone9init_implEvE3$_0ET_SM_SM_RKT0_T1_.exit" ], [ %i.eg, %._crit_edge ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.fk = icmp eq ptr %i.fg, %i.fh
  %.sroa.067.0115 = getelementptr inbounds i8, ptr %i.fg, i64 -16 ; 2 uses
  %i.fl = icmp eq ptr %.sroa.067.0115, %i.fh
  %or.cond = select i1 %i.fk, i1 true, i1 %i.fl
  br i1 %or.cond, label %.loopexit, label %.lr.ph118

.lr.ph118:                                        ; preds = %.loopexit104, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102
  %.sroa.067.0117 = phi ptr [ %.sroa.067.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102 ], [ %.sroa.067.0115, %.loopexit104 ] ; 5 uses
  %.pn116 = phi ptr [ %.sroa.067.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102 ], [ %i.fg, %.loopexit104 ] ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %.pn116, i64 -8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !79 ; 4 uses
  %i.fo = getelementptr inbounds i8, ptr %.pn116, i64 -24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !79 ; 4 uses
  %i.fq = load i64, ptr %i.fn, align 8, !tbaa !74
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !74
  %i.fs = icmp eq i64 %i.fq, %i.fr
  br i1 %i.fs, label %bb.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102

bb.ah:                                            ; preds = %.lr.ph118
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !47 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !47
  %i.fz = icmp eq i64 %i.fw, %i.fy
  br i1 %i.fz, label %bb.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102

bb.ai:                                            ; preds = %bb.ah
  %i.ga = icmp eq i64 %i.fw, 0
  br i1 %i.ga, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ai
  %i.gb = load ptr, ptr %i.fu, align 8, !tbaa !39
  %i.gc = load ptr, ptr %i.ft, align 8, !tbaa !39
  %bcmp.i = call i32 @bcmp(ptr %i.gc, ptr %i.gb, i64 %i.fw)
  %i.gd = icmp eq i32 %bcmp.i, 0
  br i1 %i.gd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.ai, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !82, !range !83, !noundef !84
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !82, !range !83, !noundef !84
  %i.gi = icmp eq i8 %i.gf, %i.gh
  br i1 %i.gi, label %bb.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102

bb.aj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.gj = load ptr, ptr %i.fi, align 8, !tbaa !72 ; 2 uses
  %i.gk = ptrtoint ptr %.sroa.067.0117 to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = getelementptr inbounds i8, ptr %i.gj, i64 %i.gm ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 4 uses
  %i.gp = load ptr, ptr %i.fj, align 8, !tbaa !72 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = sub i64 %i.gr, %i.gs                    ; 3 uses
  %i.gu = icmp sgt i64 %i.gt, 16
  br i1 %i.gu, label %bb.al, label %bb.am, !prof !85

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.gn, ptr nonnull align 8 %i.go, i64 %i.gt, i1 false)
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.gv = icmp eq i64 %i.gt, 16
  br i1 %i.gv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %i.go, i64 16, i1 false), !tbaa.struct !87
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.aj
  %i.gw = load ptr, ptr %i.fj, align 8, !tbaa !88
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -16
  store ptr %i.gx, ptr %i.fj, align 8, !tbaa !88
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102: ; preds = %bb.ah, %.lr.ph118, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.ao
  %.sroa.067.1 = phi ptr [ %i.gn, %bb.ao ], [ %.sroa.067.0117, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %.sroa.067.0117, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.sroa.067.0117, %.lr.ph118 ], [ %.sroa.067.0117, %bb.ah ] ; 2 uses
  %.sroa.067.0 = getelementptr inbounds i8, ptr %.sroa.067.1, i64 -16 ; 2 uses
  %i.gy = icmp eq ptr %.sroa.067.0, %i.fh
  br i1 %i.gy, label %.loopexit, label %.lr.ph118, !llvm.loop !166

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102, %.loopexit104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.gz = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.s
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii:bb.a
  store ptr null, ptr %i.n, align 8, !tbaa !79, !noalias !179
  %.sroa.8.0171 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = ptrtoint ptr %i.g to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775792
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !179

.noexc13.i:                                       ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487)
  %i.w = select i1 %i.u, i64 576460752303423487, i64 %i.v ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.w, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #32
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !179 ; 8 uses

.noexc14.i:                                       ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q ; 2 uses
  store i64 %i.m, ptr %i.z, align 8, !tbaa !74, !noalias !179
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !79, !noalias !179
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not10.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc14.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %.noexc14.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %.noexc14.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !87, !alias.scope !180, !noalias !179
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc14.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %.noexc14.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.q) #28, !noalias !179
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.w ; 4 uses
  %.sroa.0.0.copyload.i.i15.i.pre = load i64, ptr %.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !74, !noalias !179
  %i.ae = icmp slt i64 %.sroa.0.0.copyload.i.i15.i.pre, -1096193779200
  %.sroa.8.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  store i64 -1096193779200, ptr %.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !74, !noalias !179
  br label %bb.f

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !179
  %i.af = ptrtoint ptr %i.h to i64
  %i.ag = ptrtoint ptr %i.g to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.ah) #28, !noalias !179
  br label %common.resume

bb.f:                                             ; preds = %.thread, %bb.e, %.loopexit
  %.sroa.8.0174 = phi ptr [ %.sroa.8.0171, %.thread ], [ %.sroa.8.0, %bb.e ], [ %.sroa.8.0, %.loopexit ] ; 2 uses
  %i.ai = phi ptr [ %i.h, %.thread ], [ %i.ad, %bb.e ], [ %i.ad, %.loopexit ]
  %i.aj = phi ptr [ %i.g, %.thread ], [ %i.y, %bb.e ], [ %i.y, %.loopexit ]
  %.sroa.085.1173 = phi ptr [ %.sroa.085.0, %.thread ], [ %i.y, %bb.e ], [ %i.y, %.loopexit ] ; 2 uses
  %.sroa.12.1172 = phi ptr [ %.sroa.12.0, %.thread ], [ %i.ad, %bb.e ], [ %i.ad, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !179
  %i.ak = add nuw nsw i32 %.0819.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ak, %3
  br i1 %exitcond.not.i, label %_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit, label %.lr.ph.i, !llvm.loop !174

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIhSaIhEED2Ev.exit75
  %common.resume.op = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit75 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit: ; preds = %bb.f, %bb.a, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i
  %.sroa.12.2 = phi ptr [ null, %bb.a ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.12.1172, %bb.f ]
  %.sroa.8.1 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.8.0174, %bb.f ]
  %.sroa.085.2 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.085.1173, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !54
  store ptr %.sroa.085.2, ptr %i.al, align 8, !tbaa !53
  store ptr %.sroa.8.1, ptr %i.an, align 8, !tbaa !88
  store ptr %.sroa.12.2, ptr %i.ao, align 8, !tbaa !54
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.as) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit: ; preds = %bb.g, %_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call fastcc void @_ZN14arrow_vendored4dateL12load_indicesERSii(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke fastcc void @_ZN14arrow_vendored4dateL11load_ttinfoERSii(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %4)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 13 uses
  store ptr %i.at, ptr %8, align 8, !tbaa !46, !alias.scope !181
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.au, align 8, !tbaa !47, !alias.scope !181
  store i8 0, ptr %i.at, align 8, !tbaa !40, !alias.scope !181
  %i.av = zext i32 %5 to i64                      ; 4 uses
  %.not.i47 = icmp eq i32 %5, 0
  br i1 %.not.i47, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.h
  %.not.i.i.i.i48 = icmp ugt i32 %5, 15
  br i1 %.not.i.i.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.aw = icmp ult i32 %5, 30
  %i.ax = add nuw nsw i64 %i.av, 1
  %i.ay = select i1 %i.aw, i64 31, i64 %i.ax
  %.0.i1315.i = call i32 @llvm.umax.i32(i32 %5, i32 30)
  %.0.i13.i = zext i32 %.0.i1315.i to i64
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #32
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i unwind label %bb.j ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.pre.i7.i = load ptr, ptr %8, align 8, !tbaa !39, !alias.scope !181 ; 2 uses
  %i.ba = icmp eq ptr %.pre.i7.i, %i.at
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i
  %i.bb = load i64, ptr %i.at, align 8, !tbaa !40, !alias.scope !181
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %.pre.i7.i, i64 noundef %i.bc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i
  store ptr %i.az, ptr %8, align 8, !tbaa !39, !alias.scope !181
  store i64 %.0.i13.i, ptr %i.at, align 8, !tbaa !40, !alias.scope !181
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %cond.i.i.i.i = icmp eq i32 %5, 1
  br i1 %cond.i.i.i.i, label %.sink.split.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i
  %i.bd = phi ptr [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bd, i8 0, i64 %i.av, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.be = phi ptr [ %i.bd, %bb.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  store i64 %i.av, ptr %i.au, align 8, !tbaa !47, !alias.scope !181
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.av
  store i8 0, ptr %i.bf, align 1, !tbaa !40
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !39, !alias.scope !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i: ; preds = %.sink.split.i.i, %bb.h
  %i.bg = phi ptr [ %.pre.i, %.sink.split.i.i ], [ %i.at, %bb.h ]
  %i.bh = sext i32 %5 to i64
  %i.bi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bg, i64 noundef %i.bh)
          to label %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %8, align 8, !tbaa !39, !alias.scope !181 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.at
  br i1 %i.bl, label %.body, label %.body.sink.split

_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i
  %i.bm = load atomic i8, ptr @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, !prof !44

bb.k:                                             ; preds = %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit
  %i.bo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  %.not.i49 = icmp eq i32 %i.bo, 0
  br i1 %.not.i49, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @_ZN14arrow_vendored4dateL11create_tzdbEv()
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = call i32 @__cxa_atexit(ptr @_ZN14arrow_vendored4date9tzdb_listD1Ev, ptr nonnull @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit

bb.n:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %.body50

_ZN14arrow_vendored4date13get_tzdb_listEv.exit:   ; preds = %bb.m, %bb.k, %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit
  %i.br = load atomic ptr, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db seq_cst, align 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = icmp eq ptr %i.bt, %i.bv
  %i.bx = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.bx, %i.bw
  br i1 %or.cond, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_ZN14arrow_vendored4date13get_tzdb_listEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke fastcc void @_ZN14arrow_vendored4dateL10load_leapsIiEESt6vectorINS0_11leap_secondESaIS3_EERSii(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 72 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !35
  %i.cb = load <2 x ptr>, ptr %9, align 16, !tbaa !73
  store <2 x ptr> %i.cb, ptr %i.bs, align 8, !tbaa !73
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 16, !tbaa !35
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !35
  %.not.i.i.i.i.i52 = icmp eq ptr %i.by, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i52, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EEaSEOS4_.exit: ; preds = %bb.p
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = ptrtoint ptr %i.by to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cg) #28
  %.pr = load ptr, ptr %9, align 16, !tbaa !34    ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EEaSEOS4_.exit
  %i.ch = load ptr, ptr %i.cc, align 16, !tbaa !35
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %.pr to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ck) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit: ; preds = %bb.p, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EEaSEOS4_.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit73

bb.s:                                             ; preds = %bb.o
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.body50

bb.t:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, %_ZN14arrow_vendored4date13get_tzdb_listEv.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !91 ; 3 uses
  %i.cq = load ptr, ptr %7, align 8, !tbaa !92    ; 5 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 3
  invoke void @_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 noundef %i.cu)
          to label %.preheader unwind label %bb.ar

.preheader:                                       ; preds = %bb.t
  %i.cv = icmp eq ptr %i.cq, %i.cp
  br i1 %i.cv, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 12 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.u

._crit_edge:                                      ; preds = %_ZN14arrow_vendored4date6detail15expanded_ttinfoD2Ev.exit, %.preheader
  %i.dc = load ptr, ptr %i.al, align 8, !tbaa !72 ; 4 uses
  %i.dd = load ptr, ptr %i.an, align 8, !tbaa !72 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %bb.ah, label %bb.ag

bb.u:                                             ; preds = %.lr.ph, %_ZN14arrow_vendored4date6detail15expanded_ttinfoD2Ev.exit
  %.sroa.082.0106 = phi ptr [ %i.cq, %.lr.ph ], [ %i.eu, %_ZN14arrow_vendored4date6detail15expanded_ttinfoD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.df = load i32, ptr %.sroa.082.0106, align 4, !tbaa !15
  %i.dg = sext i32 %i.df to i64
  store i64 %i.dg, ptr %10, align 8, !tbaa !76
  %i.dh = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.082.0106, i64 5
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !94
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dk ; 3 uses
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !46
  %i.dm = icmp eq ptr %i.dh, null
  br i1 %i.dm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #31
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dl) #30 ; 8 uses
  %i.do = icmp ugt i64 %i.dn, 15
  br i1 %i.do, label %bb.x, label %._crit_edge.i.i

bb.x:                                             ; preds = %bb.w
  %i.dp = icmp slt i64 %i.dn, 0
  br i1 %i.dp, label %.noexc.i, label %bb.y

.noexc.i:                                         ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #31
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %.noexc.i
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.dq = add nuw i64 %i.dn, 1                    ; 2 uses
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !48

.noexc11.i:                                       ; preds = %bb.y
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.y
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #32
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc56:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.ds, ptr %i.cw, align 8, !tbaa !39
  store i64 %i.dn, ptr %i.cx, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc56, %bb.w
  %i.dt = phi ptr [ %i.ds, %.noexc56 ], [ %i.cx, %bb.w ] ; 3 uses
  switch i64 %i.dn, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.du = load i8, ptr %i.dl, align 1, !tbaa !40
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !40
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dt, ptr nonnull align 1 %i.dl, i64 %i.dn, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  store i64 %i.dn, ptr %i.cy, align 8, !tbaa !47
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dn
  store i8 0, ptr %i.dv, align 1, !tbaa !40
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.082.0106, i64 4
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !95
  %i.dy = icmp ne i8 %i.dx, 0
  %i.dz = zext i1 %i.dy to i8
  store i8 %i.dz, ptr %i.cz, align 8, !tbaa !82
  %i.ea = load ptr, ptr %i.da, align 8, !tbaa !58 ; 7 uses
  %i.eb = load ptr, ptr %i.db, align 8, !tbaa !59
  %.not.i.i57 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not.i.i57, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = load i64, ptr %10, align 8, !tbaa !74
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !74
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 3 uses
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !46
  %i.ef = load ptr, ptr %i.cw, align 8, !tbaa !39 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.cx
  br i1 %i.eg, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9time_zone9load_dataIlEEvRSiiiii:bb.a
bb.d:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775792
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !192

.noexc13.i:                                       ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = call i64 @llvm.umin.i64(i64 %i.s, i64 576460752303423487)
  %i.v = select i1 %i.t, i64 576460752303423487, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !192 ; 6 uses

.noexc14.i:                                       ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p ; 2 uses
  store i64 %i.l, ptr %i.y, align 8, !tbaa !74, !noalias !192
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !79, !noalias !192
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc14.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %.noexc14.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %.noexc14.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !87, !alias.scope !193, !noalias !192
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc14.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.x, %.noexc14.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.p) #28, !noalias !192
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.v ; 2 uses
  %.sroa.0.0.copyload.i.i15.i.pre = load i64, ptr %.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !74, !noalias !192
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.c
  %.sroa.0.0.copyload.i.i15.i = phi i64 [ %.sroa.0.0.copyload.i.i15.i.pre, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.l, %bb.c ]
  %.sroa.12.1 = phi ptr [ %i.ac, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.12.0, %bb.c ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.085.1 = phi ptr [ %i.x, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.085.0, %bb.c ] ; 2 uses
  %i.ad = phi ptr [ %i.x, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.g, %bb.c ]
  %i.ae = phi ptr [ %i.ac, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %.sroa.8.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.af = icmp slt i64 %.sroa.0.0.copyload.i.i15.i, -1096193779200
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 -1096193779200, ptr %.0.lcssa.i.i.i.i.i.i.pn, align 8, !tbaa !74, !noalias !192
  br label %bb.h

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !192
  %i.ag = ptrtoint ptr %i.h to i64
  %i.ah = ptrtoint ptr %i.g to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.ai) #28, !noalias !192
  br label %common.resume

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !192
  %i.aj = add nuw nsw i32 %.0819.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aj, %3
  br i1 %exitcond.not.i, label %_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit, label %.lr.ph.i, !llvm.loop !187

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIhSaIhEED2Ev.exit75
  %common.resume.op = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit75 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit: ; preds = %bb.h, %bb.a, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i
  %.sroa.12.2 = phi ptr [ null, %bb.a ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.12.1, %bb.h ]
  %.sroa.8.1 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.8.0, %bb.h ]
  %.sroa.085.2 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.085.1, %bb.h ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !53 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54
  store ptr %.sroa.085.2, ptr %i.ak, align 8, !tbaa !53
  store ptr %.sroa.8.1, ptr %i.am, align 8, !tbaa !88
  store ptr %.sroa.12.2, ptr %i.an, align 8, !tbaa !54
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ar) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit: ; preds = %bb.i, %_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call fastcc void @_ZN14arrow_vendored4dateL12load_indicesERSii(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke fastcc void @_ZN14arrow_vendored4dateL11load_ttinfoERSii(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %4)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 13 uses
  store ptr %i.as, ptr %8, align 8, !tbaa !46, !alias.scope !194
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.at, align 8, !tbaa !47, !alias.scope !194
  store i8 0, ptr %i.as, align 8, !tbaa !40, !alias.scope !194
  %i.au = zext i32 %5 to i64                      ; 4 uses
  %.not.i47 = icmp eq i32 %5, 0
  br i1 %.not.i47, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.j
  %.not.i.i.i.i48 = icmp ugt i32 %5, 15
  br i1 %.not.i.i.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.av = icmp ult i32 %5, 30
  %i.aw = add nuw nsw i64 %i.au, 1
  %i.ax = select i1 %i.av, i64 31, i64 %i.aw
  %.0.i1315.i = call i32 @llvm.umax.i32(i32 %5, i32 30)
  %.0.i13.i = zext i32 %.0.i1315.i to i64
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #32
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i unwind label %bb.l ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.pre.i7.i = load ptr, ptr %8, align 8, !tbaa !39, !alias.scope !194 ; 2 uses
  %i.az = icmp eq ptr %.pre.i7.i, %i.as
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !40, !alias.scope !194
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre.i7.i, i64 noundef %i.bb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i
  store ptr %i.ay, ptr %8, align 8, !tbaa !39, !alias.scope !194
  store i64 %.0.i13.i, ptr %i.as, align 8, !tbaa !40, !alias.scope !194
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %cond.i.i.i.i = icmp eq i32 %5, 1
  br i1 %cond.i.i.i.i, label %.sink.split.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i
  %i.bc = phi ptr [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bc, i8 0, i64 %i.au, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.bd = phi ptr [ %i.bc, %bb.k ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  store i64 %i.au, ptr %i.at, align 8, !tbaa !47, !alias.scope !194
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.au
  store i8 0, ptr %i.be, align 1, !tbaa !40
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !39, !alias.scope !194
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i: ; preds = %.sink.split.i.i, %bb.j
  %i.bf = phi ptr [ %.pre.i, %.sink.split.i.i ], [ %i.as, %bb.j ]
  %i.bg = sext i32 %5 to i64
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bf, i64 noundef %i.bg)
          to label %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %8, align 8, !tbaa !39, !alias.scope !194 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.as
  br i1 %i.bk, label %.body, label %.body.sink.split

_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i
  %i.bl = load atomic i8, ptr @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db acquire, align 8
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, !prof !44

bb.m:                                             ; preds = %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit
  %i.bn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  %.not.i49 = icmp eq i32 %i.bn, 0
  br i1 %.not.i49, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_ZN14arrow_vendored4dateL11create_tzdbEv()
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = call i32 @__cxa_atexit(ptr @_ZN14arrow_vendored4date9tzdb_listD1Ev, ptr nonnull @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %.body50

_ZN14arrow_vendored4date13get_tzdb_listEv.exit:   ; preds = %bb.o, %bb.m, %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit
  %i.bq = load atomic ptr, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db seq_cst, align 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !73
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !73
  %i.bv = icmp eq ptr %i.bs, %i.bu
  %i.bw = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.bw, %i.bv
  br i1 %or.cond, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_ZN14arrow_vendored4date13get_tzdb_listEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke fastcc void @_ZN14arrow_vendored4dateL10load_leapsIlEESt6vectorINS0_11leap_secondESaIS3_EERSii(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !34 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 72 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !35
  %i.ca = load <2 x ptr>, ptr %9, align 16, !tbaa !73
  store <2 x ptr> %i.ca, ptr %i.br, align 8, !tbaa !73
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !35
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !35
  %.not.i.i.i.i.i52 = icmp eq ptr %i.bx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i52, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EEaSEOS4_.exit: ; preds = %bb.r
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = ptrtoint ptr %i.bx to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cf) #28
  %.pr = load ptr, ptr %9, align 16, !tbaa !34    ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EEaSEOS4_.exit
  %i.cg = load ptr, ptr %i.cb, align 16, !tbaa !35
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %.pr to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cj) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit: ; preds = %bb.r, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EEaSEOS4_.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.v

bb.t:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit73

bb.u:                                             ; preds = %bb.q
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.body50

bb.v:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, %_ZN14arrow_vendored4date13get_tzdb_listEv.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !91 ; 3 uses
  %i.cp = load ptr, ptr %7, align 8, !tbaa !92    ; 5 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3
  invoke void @_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 noundef %i.ct)
          to label %.preheader unwind label %bb.at

.preheader:                                       ; preds = %bb.v
  %i.cu = icmp eq ptr %i.cp, %i.co
  br i1 %i.cu, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 12 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.w

._crit_edge:                                      ; preds = %_ZN14arrow_vendored4date6detail15expanded_ttinfoD2Ev.exit, %.preheader
  %i.db = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 4 uses
  %i.dc = load ptr, ptr %i.am, align 8, !tbaa !72 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %bb.aj, label %bb.ai

bb.w:                                             ; preds = %.lr.ph, %_ZN14arrow_vendored4date6detail15expanded_ttinfoD2Ev.exit
  %.sroa.082.0106 = phi ptr [ %i.cp, %.lr.ph ], [ %i.et, %_ZN14arrow_vendored4date6detail15expanded_ttinfoD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.de = load i32, ptr %.sroa.082.0106, align 4, !tbaa !15
  %i.df = sext i32 %i.de to i64
  store i64 %i.df, ptr %10, align 8, !tbaa !76
  %i.dg = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.082.0106, i64 5
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !94
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dj ; 3 uses
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !46
  %i.dl = icmp eq ptr %i.dg, null
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #31
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.dm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dk) #30 ; 8 uses
  %i.dn = icmp ugt i64 %i.dm, 15
  br i1 %i.dn, label %bb.z, label %._crit_edge.i.i

bb.z:                                             ; preds = %bb.y
  %i.do = icmp slt i64 %i.dm, 0
  br i1 %i.do, label %.noexc.i, label %bb.aa

.noexc.i:                                         ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #31
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %.noexc.i
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.dp = add nuw i64 %i.dm, 1                    ; 2 uses
  %i.dq = icmp slt i64 %i.dp, 0
  br i1 %i.dq, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !48

.noexc11.i:                                       ; preds = %bb.aa
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.aa
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #32
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc56:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.dr, ptr %i.cv, align 8, !tbaa !39
  store i64 %i.dm, ptr %i.cw, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc56, %bb.y
  %i.ds = phi ptr [ %i.dr, %.noexc56 ], [ %i.cw, %bb.y ] ; 3 uses
  switch i64 %i.dm, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.dt = load i8, ptr %i.dk, align 1, !tbaa !40
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !40
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr nonnull align 1 %i.dk, i64 %i.dm, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i
  store i64 %i.dm, ptr %i.cx, align 8, !tbaa !47
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dm
  store i8 0, ptr %i.du, align 1, !tbaa !40
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.082.0106, i64 4
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !95
  %i.dx = icmp ne i8 %i.dw, 0
  %i.dy = zext i1 %i.dx to i8
  store i8 %i.dy, ptr %i.cy, align 8, !tbaa !82
  %i.dz = load ptr, ptr %i.cz, align 8, !tbaa !58 ; 7 uses
  %i.ea = load ptr, ptr %i.da, align 8, !tbaa !59
  %.not.i.i57 = icmp eq ptr %i.dz, %i.ea
  br i1 %.not.i.i57, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load i64, ptr %10, align 8, !tbaa !74
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !74
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 3 uses
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !46
  %i.ee = load ptr, ptr %i.cv, align 8, !tbaa !39 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.cw
  br i1 %i.ef, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored4date6detaillsERSoRKNS1_10transitionE:bb.a
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 43) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !79
  %.sroa.0.0.copyload.i.pre = load i64, ptr %.pre, align 8, !tbaa !74, !noalias !227
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %i.f, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.0.0.copyload.i, i1 true) ; 3 uses
  %i.p = udiv i64 %spec.select.i.i.i, 3600        ; 3 uses
  store i64 %i.p, ptr %2, align 8, !alias.scope !227
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = udiv i64 %spec.select.i.i.i, 60
  %.neg.i.i.i = mul nsw i64 %i.p, -60
  %i.s = add nsw i64 %.neg.i.i.i, %i.r            ; 2 uses
  store i64 %i.s, ptr %i.q, align 8, !alias.scope !227
  %.neg.i7.i.i = mul nsw i64 %i.p, -3600
  %i.t = add nsw i64 %.neg.i7.i.i, %spec.select.i.i.i
  %.neg.i8.i.i = mul nsw i64 %i.s, -60
  %i.u = add i64 %i.t, %.neg.i8.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.u, ptr %i.v, align 8, !alias.scope !227
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %i.w, align 8, !alias.scope !227
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.lobit.i.i = lshr i64 %.sroa.0.0.copyload.i, 63
  %i.y = trunc nuw nsw i64 %.lobit.i.i to i8
  store i8 %i.y, ptr %i.x, align 8, !tbaa !108, !alias.scope !227
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !82, !range !83, !noundef !84
  %i.ad = trunc nuw i8 %i.ac to i1
  %.str.2..str.3 = select i1 %i.ad, ptr @.str.2, ptr @.str.3
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.str.2..str.3, i64 noundef 10) ; 0 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !79  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !47
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ah, i64 noundef %i.aj) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN14arrow_vendored4date11leap_secondC2ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !74
  store i64 %i.a, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsERSoRKNS0_11leap_secondE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEENSt9enable_ifIXntsr3std14is_convertibleIT1_NS5_IiS6_ILl86400ELl1EEEEEE5valueERSt13basic_ostreamIT_T0_EE4typeESH_RKNS4_10time_pointINS4_3_V212system_clockESA_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEENSt9enable_ifIXntsr3std14is_convertibleIT1_NS5_IiS6_ILl86400ELl1EEEEEE5valueERSt13basic_ostreamIT_T0_EE4typeESH_RKNS4_10time_pointINS4_3_V212system_clockESA_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.arrow_vendored::date::year_month_day", align 4 ; 4 uses
  %3 = alloca %"class.arrow_vendored::date::hh_mm_ss", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !74 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload.i.i, 86400  ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %sext.i.i = shl i64 %i.b, 32
  %i.d = ashr exact i64 %sext.i.i, 32
  %i.e = mul nsw i64 %i.d, 86400
  %i.f = icmp sgt i64 %i.e, %.sroa.0.0.copyload.i.i
  %i.g = sext i1 %i.f to i32
  %spec.select.i.i = add nsw i32 %i.g, %i.c       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.h = add nsw i32 %spec.select.i.i, 719468     ; 2 uses
  %i.i = icmp sgt i32 %spec.select.i.i, -719469
  %i.j = add nsw i32 %spec.select.i.i, 573372
  %i.k = select i1 %i.i, i32 %i.h, i32 %i.j
  %i.l = sdiv i32 %i.k, 146097                    ; 2 uses
  %.neg.i.i = mul nsw i32 %i.l, -146097
  %i.m = add i32 %.neg.i.i, %i.h                  ; 5 uses
  %i.n = udiv i32 %i.m, 1460
  %i.o = udiv i32 %i.m, 36524
  %i.p = udiv i32 %i.m, 146096
  %.neg7 = add i32 %i.o, %i.m
  %i.q = add nuw nsw i32 %i.p, %i.n
  %i.r = sub i32 %.neg7, %i.q                     ; 3 uses
  %i.s = udiv i32 %i.r, 365                       ; 2 uses
  %i.t = mul nsw i32 %i.l, 400
  %i.u = add nsw i32 %i.s, %i.t
  %i.v = udiv i32 %i.r, 1460
  %i.w = udiv i32 %i.r, 36500
  %.neg36.i.i = mul i32 %i.s, -365
  %.neg37.i.i = sub i32 %i.m, %i.v
  %.neg25.i.i = add i32 %.neg37.i.i, %i.w
  %i.x = add i32 %.neg25.i.i, %.neg36.i.i         ; 2 uses
  %i.y = mul i32 %i.x, 5
  %i.z = add i32 %i.y, 2                          ; 2 uses
  %i.aa = udiv i32 %i.z, 153                      ; 2 uses
  %i.ab = mul nuw i32 %i.aa, 153
  %i.ac = add nuw i32 %i.ab, 2
  %i.ad = udiv i32 %i.ac, 5
  %i.ae = sub i32 %i.x, %i.ad
  %i.af = icmp ult i32 %i.z, 1530
  %.v.i.i = select i1 %i.af, i32 3, i32 -9
  %i.ag = add nsw i32 %.v.i.i, %i.aa              ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 3
  %i.ai = zext i1 %i.ah to i32
  %i.aj = add nsw i32 %i.u, %i.ai
  %i.ak = shl i32 %i.ae, 24
  %.sroa.3.0.insert.ext.i.i = add i32 %i.ak, 16777216
  %.sroa.2.0.insert.ext.i.i = shl i32 %i.ag, 16
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.030.0.insert.ext.i.i = and i32 %i.aj, 65535
  %.sroa.030.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.030.0.insert.ext.i.i
  store i32 %.sroa.030.0.insert.insert.i.i, ptr %2, align 4
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_14year_month_dayE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(4) %2) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !61
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !104
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.as, %bb.b ], [ %i.al, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload.i.i3 = load i64, ptr %1, align 8, !tbaa !74
  %i.au = sext i32 %spec.select.i.i to i64
  %.neg.i.i4 = mul nsw i64 %i.au, -86400
  %i.av = add i64 %.sroa.0.0.copyload.i.i3, %.neg.i.i4 ; 2 uses
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %i.av, i1 true) ; 3 uses
  %i.aw = udiv i64 %spec.select.i.i.i, 3600       ; 3 uses
  store i64 %i.aw, ptr %3, align 8, !alias.scope !230
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = udiv i64 %spec.select.i.i.i, 60
  %.neg.i.i.i = mul nsw i64 %i.aw, -60
  %i.az = add nsw i64 %.neg.i.i.i, %i.ay          ; 2 uses
  store i64 %i.az, ptr %i.ax, align 8, !alias.scope !230
  %.neg.i7.i.i = mul nsw i64 %i.aw, -3600
  %i.ba = add nsw i64 %.neg.i7.i.i, %spec.select.i.i.i
  %.neg.i8.i.i = mul nsw i64 %i.az, -60
  %i.bb = add i64 %i.ba, %.neg.i8.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !alias.scope !230
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.bd, align 8, !alias.scope !230
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.lobit.i.i = lshr i64 %i.av, 63
  %i.bf = trunc nuw nsw i64 %.lobit.i.i to i8
  store i8 %i.bf, ptr %i.be, align 8, !tbaa !108, !alias.scope !230
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull align 8 dereferenceable(33) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %i.bg
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(88) ptr @_ZN14arrow_vendored4date8get_tzdbEv() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN14arrow_vendored4dateL11create_tzdbEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN14arrow_vendored4date9tzdb_listD1Ev, ptr nonnull @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  resume { ptr, i32 } %i.e

_ZN14arrow_vendored4date13get_tzdb_listEv.exit:   ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load atomic ptr, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db seq_cst, align 8
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK14arrow_vendored4date4tzdb11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 %1, ptr %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  store i64 %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZNK14arrow_vendored4date4tzdb11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEEE2rc) ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !235, !noalias !236 ; 2 uses
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !235, !noalias !236
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !237, !noalias !236
  %i.g = icmp ugt i32 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN14arrow_vendored4date12_GLOBAL__N_117recursion_limiter5countEv.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #30, !noalias !236 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !236
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !236
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !236
  %i.i = load i32, ptr %i.e, align 4, !tbaa !237, !noalias !236
  call void @_ZNSt7__cxx119to_stringEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %i.i) #30, !noalias !236
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.f, !noalias !236

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.53)
          to label %bb.d unwind label %bb.g, !noalias !236

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.h, !noalias !236

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
          to label %bb.j unwind label %bb.h, !noalias !236

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

bb.g:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.h:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !39, !noalias !236 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40, !noalias !236
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28, !noalias !236
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.l, %bb.h ] ; 2 uses
  %.1.i = phi i1 [ true, %bb.g ], [ %.0.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.0.i, %bb.h ] ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !39, !noalias !236 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !40, !noalias !236
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #28, !noalias !236
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i, %bb.f
  %.pn.pn.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %.2.i = phi i1 [ true, %bb.f ], [ %.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i ], [ %.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %i.w = load ptr, ptr %5, align 8, !tbaa !39, !noalias !236 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !40, !noalias !236
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #28, !noalias !236
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !236
  br i1 %.2.i, label %bb.i, label %common.resume

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  call void @__cxa_free_exception(ptr %i.h) #30, !noalias !236
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %bb.i, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %bb.r ], [ %.pn.pn.i, %bb.i ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.e
  unreachable

_ZN14arrow_vendored4date12_GLOBAL__N_117recursion_limiter5countEv.exit: ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !109 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !109 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEESt17basic_string_viewIcSt11char_traitsIcEEZNKS3_4tzdb11locate_zoneESE_E3$_0ET_SH_SH_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i: ; preds = %_ZN14arrow_vendored4date12_GLOBAL__N_117recursion_limiter5countEv.exit
  %i.aj = udiv exact i64 %i.ah, 88
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK14arrow_vendored4date4tzdb11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKNS3_9time_zoneESt6vectorISD_SaISD_EEEEKS8_EEbT_RT0_.exit.i.i", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i
  %.07.i.i = phi i64 [ %.1.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK14arrow_vendored4date4tzdb11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKNS3_9time_zoneESt6vectorISD_SaISD_EEEEKS8_EEbT_RT0_.exit.i.i" ], [ %i.aj, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %.sroa.02.1.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK14arrow_vendored4date4tzdb11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKNS3_9time_zoneESt6vectorISD_SaISD_EEEEKS8_EEbT_RT0_.exit.i.i" ], [ %i.ac, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %i.ak = lshr i64 %.07.i.i, 1                    ; 3 uses
  %i.al = getelementptr inbounds nuw [88 x i8], ptr %.sroa.02.06.i.i, i64 %i.ak ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val2.i.i.i = load i64, ptr %i.am, align 8, !tbaa !47 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val2.i.i.i, i64 %1) ; 2 uses
  %i.an = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.an, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.ao = tail call i32 @memcmp(ptr noundef readonly %2, ptr noundef readonly %.val.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK14arrow_vendored4date4tzdb11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKNS3_9time_zoneESt6vectorISD_SaISD_EEEEKS8_EEbT_RT0_.exit.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.aq = sub i64 %1, %.val2.i.i.i
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK14arrow_vendored4date4tzdb11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKNS3_9time_zoneESt6vectorISD_SaISD_EEEEKS8_EEbT_RT0_.exit.i.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK14arrow_vendored4date4tzdb11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKNS3_9time_zoneESt6vectorISD_SaISD_EEEEKS8_EEbT_RT0_.exit.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ], [ %i.ao, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ]
  %i.ar = icmp sgt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.at = xor i64 %i.ak, -1
  %i.au = add nsw i64 %.07.i.i, %i.at
  %.sroa.02.1.i.i = select i1 %i.ar, ptr %i.as, ptr %.sroa.02.06.i.i ; 2 uses
  %.1.i.i = select i1 %i.ar, i64 %i.au, i64 %i.ak ; 2 uses
  %i.av = icmp sgt i64 %.1.i.i, 0
  br i1 %i.av, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEESt17basic_string_viewIcSt11char_traitsIcEEZNKS3_4tzdb11locate_zoneESE_E3$_0ET_SH_SH_RKT0_T1_.exit", !llvm.loop !233

"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEESt17basic_string_viewIcSt11char_traitsIcEEZNKS3_4tzdb11locate_zoneESE_E3$_0ET_SH_SH_RKT0_T1_.exit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK14arrow_vendored4date4tzdb11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKNS3_9time_zoneESt6vectorISD_SaISD_EEEEKS8_EEbT_RT0_.exit.i.i", %_ZN14arrow_vendored4date12_GLOBAL__N_117recursion_limiter5countEv.exit
  %.sroa.02.0.lcssa.i.i = phi ptr [ %i.ac, %_ZN14arrow_vendored4date12_GLOBAL__N_117recursion_limiter5countEv.exit ], [ %.sroa.02.1.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK14arrow_vendored4date4tzdb11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKNS3_9time_zoneESt6vectorISD_SaISD_EEEEKS8_EEbT_RT0_.exit.i.i" ] ; 4 uses
  %i.aw = icmp eq ptr %.sroa.02.0.lcssa.i.i, %i.ae
  br i1 %i.aw, label %.critedge, label %bb.k

bb.k:                                             ; preds = %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEESt17basic_string_viewIcSt11char_traitsIcEEZNKS3_4tzdb11locate_zoneESE_E3$_0ET_SH_SH_RKT0_T1_.exit"
  %i.ax = load ptr, ptr %.sroa.02.0.lcssa.i.i, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !47
  %i.ba = icmp eq i64 %1, %i.az
  br i1 %i.ba, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bb = icmp eq i64 %1, 0
  br i1 %i.bb, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.l
  %bcmp.i = tail call i32 @bcmp(ptr %2, ptr %i.ax, i64 %1)
  %i.bc = icmp eq i32 %bcmp.i, 0
  br i1 %i.bc, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %.critedge

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.k, %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEESt17basic_string_viewIcSt11char_traitsIcEEZNKS3_4tzdb11locate_zoneESE_E3$_0ET_SH_SH_RKT0_T1_.exit"
end_hunk_4
begin_hunk_5_@_ZNK14arrow_vendored4date4tzdb11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.pn.pn28 = phi { ptr, i32 } [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %.pn.pn28.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bd) #30
  br label %bb.r

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.l
  store i32 %i.c, ptr %i.b, align 4, !tbaa !235
  ret ptr %.sroa.02.0.lcssa.i.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn28, %bb.q ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ]
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !235
  %i.bx = add i32 %i.bw, -1
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !235
  br label %common.resume

bb.s:                                             ; preds = %bb.o
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #30 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !47   ; 5 uses
  %i.d = sub i64 9223372036854775807, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.f = add i64 %i.c, %i.a                       ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.j = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.f, %i.l
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.a, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c ; 2 uses
  %cond.i.i = icmp eq i64 %i.a, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %2, align 1, !tbaa !40
  store i8 %i.n, ptr %i.m, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %2, i64 %i.a, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef 0, ptr noundef nonnull %2, i64 noundef %i.a)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.f, ptr %i.b, align 8, !tbaa !47
  %i.o = load ptr, ptr %1, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 0, ptr %i.p, align 1, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !46
  %i.r = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.h
  br i1 %i.s, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.t = load i64, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.r, ptr %0, align 8, !tbaa !39
  %i.w = load i64, ptr %i.h, align 8, !tbaa !40
  store i64 %i.w, ptr %i.q, align 8, !tbaa !40
  %.pre = load i64, ptr %i.b, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.x = phi i64 [ %i.t, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !47
  store ptr %i.h, ptr %1, align 8, !tbaa !39
  store i64 0, ptr %i.b, align 8, !tbaa !47
  store i8 0, ptr %i.h, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !74 ; 9 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !238 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %i.b = icmp eq ptr %.sroa.2.0.copyload, null
  %i.c = icmp ne i64 %.sroa.0.0.copyload, 0
  %or.cond.i.i = and i1 %i.c, %i.b
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %.sroa.0.0.copyload, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %.sroa.0.0.copyload, 0
  br i1 %i.e, label %.noexc.i.i, label %bb.e

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #31
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %.sroa.0.0.copyload, 1       ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !48

.noexc9.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !39
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %.sroa.0.0.copyload, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %.sroa.2.0.copyload, align 1, !tbaa !40
  store i8 %i.j, ptr %i.i, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %.sroa.2.0.copyload, i64 %.sroa.0.0.copyload, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.k, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.0.0.copyload
  store i8 0, ptr %i.l, align 1, !tbaa !40
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN14arrow_vendored4date11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN14arrow_vendored4date8get_tzdbEv.exit, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN14arrow_vendored4date8get_tzdbEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN14arrow_vendored4dateL11create_tzdbEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN14arrow_vendored4date9tzdb_listD1Ev, ptr nonnull @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %_ZN14arrow_vendored4date8get_tzdbEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  resume { ptr, i32 } %i.e

_ZN14arrow_vendored4date8get_tzdbEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load atomic ptr, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db seq_cst, align 8
  %i.g = tail call noundef ptr @_ZNK14arrow_vendored4date4tzdb11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 %0, ptr %1)
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsERSoRKNS0_4tzdbE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 9) ; 0 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.e, i64 noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109  ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !40
  %i.o = load ptr, ptr %0, align 8, !tbaa !61
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !104
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %._crit_edge
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !73   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73   ; 2 uses
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %._crit_edge30, label %.lr.ph29

.lr.ph:                                           ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16
  %.sroa.024.027 = phi ptr [ %i.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16 ], [ %i.k, %bb.a ] ; 2 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsERSoRKNS0_9time_zoneE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.024.027) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !40
  %i.ac = load ptr, ptr %0, align 8, !tbaa !61
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !104
  %.not.i14 = icmp eq i64 %i.ah, 0
  br i1 %.not.i14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

bb.e:                                             ; preds = %.lr.ph
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.024.027, i64 88 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.m
  br i1 %i.al, label %._crit_edge, label %.lr.ph

._crit_edge30:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  ret ptr %0

.lr.ph29:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19
  %.sroa.020.028 = phi ptr [ %i.aw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19 ], [ %i.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ] ; 2 uses
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEENSt9enable_ifIXntsr3std14is_convertibleIT1_NS5_IiS6_ILl86400ELl1EEEEEE5valueERSt13basic_ostreamIT_T0_EE4typeESH_RKNS4_10time_pointINS4_3_V212system_clockESA_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.020.028) ; 5 uses
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !40
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !61
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !104
  %.not.i17 = icmp eq i64 %i.at, 0
  br i1 %.not.i17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph29
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

bb.g:                                             ; preds = %.lr.ph29
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 8 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.z
  br i1 %i.ax, label %._crit_edge30, label %.lr.ph29
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK14arrow_vendored4date4tzdb12current_zoneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 7 uses
  %2 = alloca %struct.stat, align 8               ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::basic_ifstream", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::basic_ifstream", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::basic_ifstream", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::basic_ifstream", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = call i32 @lstat(ptr noundef nonnull @.str.8, ptr noundef nonnull %1) #30
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !112
  %i.e = and i32 %i.d, 61440
  %i.f = icmp eq i32 %i.e, 40960
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp sgt i64 %i.h, 0
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.j = load atomic i8, ptr @_ZGVZNK14arrow_vendored4date4tzdb12current_zoneEvE12use_realpath acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.g, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK14arrow_vendored4date4tzdb12current_zoneEvE12use_realpath) #30
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = invoke fastcc noundef zeroext i1 @_ZN14arrow_vendored4dateL14sniff_realpathEPKc()
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.n = zext i1 %i.m to i8
  store i8 %i.n, ptr @_ZZNK14arrow_vendored4date4tzdb12current_zoneEvE12use_realpath, align 1, !tbaa !245
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZZNK14arrow_vendored4date4tzdb12current_zoneEvE12use_realpath) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK14arrow_vendored4date4tzdb12current_zoneEvE12use_realpath) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.p = load i8, ptr @_ZZNK14arrow_vendored4date4tzdb12current_zoneEvE12use_realpath, align 1, !tbaa !245, !range !83, !noundef !84
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @realpath(ptr noundef nonnull @.str.8, ptr noundef null) #30 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.t = tail call ptr @__cxa_allocate_exception(i64 32) #30 ; 3 uses
  %i.u = tail call ptr @__errno_location() #34
  %i.v = load i32, ptr %i.u, align 4, !tbaa !15
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #34
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 %i.v, ptr nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.9)
          to label %_ZNSt12system_errorC2EiRKNSt3_V214error_categoryEPKc.exit unwind label %.thread

_ZNSt12system_errorC2EiRKNSt3_V214error_categoryEPKc.exit: ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #31
          to label %bb.dj unwind label %bb.m

end_hunk_5
begin_hunk_6_@_ZN14arrow_vendored4dateL14sniff_realpathEPKc:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc { i64, ptr } @_ZN14arrow_vendored4dateL15extract_tz_nameEPKc(ptr noundef %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30 ; 6 uses
  store i64 %i.a, ptr %1, align 8, !tbaa !251
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !252
  %.not.i.i = icmp ult i64 %i.a, 8
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.a, -8
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.c, %bb.b
  %.013.i.i = phi i64 [ %i.i, %bb.c ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.013.i.i ; 2 uses
  %i.e = load i64, ptr %i.d, align 1
  %i.f = icmp ne i64 %i.e, 8027224784786845562
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindES2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.i = add i64 %.013.i.i, -1
  %.not6.i.i = icmp eq i64 %.013.i.i, 0
  br i1 %.not6.i.i, label %.loopexit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, !llvm.loop !249

.loopexit:                                        ; preds = %bb.c, %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread

bb.d:                                             ; preds = %.loopexit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.58, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread: ; preds = %.loopexit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.y = load i64, ptr %i.w, align 8, !tbaa !40
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #28
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !40
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.ab) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.h, label %bb.i

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.thread
  %.pn.pn21.ph = phi { ptr, i32 } [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.pn.pn21 = phi { ptr, i32 } [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %.pn.pn21.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.j) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.pn.pn20 = phi { ptr, i32 } [ %.pn.pn21, %bb.h ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  resume { ptr, i32 } %.pn.pn20

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ac = icmp ult i64 %.013.i.i, %i.a
  br i1 %i.ac, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindES2_m.exit
  %i.ad = sub nuw i64 %i.a, %.013.i.i
  %i.ae = tail call ptr @memchr(ptr noundef nonnull %i.d, i32 noundef 47, i64 noundef %i.ad) #30 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %0 to i64
  %reass.sub = sub i64 %i.af, %i.ag
  %i.ah = add i64 %reass.sub, 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindES2_m.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.j
  %.1.i = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindES2_m.exit ], [ %i.ah, %bb.j ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i
  %i.aj = sub i64 %i.a, %.1.i
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %i.aj, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %i.ai, 1
  ret { i64, ptr } %.fca.1.insert

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #4 align 2

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN14arrow_vendored4date12current_zoneEv() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN14arrow_vendored4date8get_tzdbEv.exit, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN14arrow_vendored4date8get_tzdbEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN14arrow_vendored4dateL11create_tzdbEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN14arrow_vendored4date9tzdb_listD1Ev, ptr nonnull @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %_ZN14arrow_vendored4date8get_tzdbEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  resume { ptr, i32 } %i.e

_ZN14arrow_vendored4date8get_tzdbEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load atomic ptr, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db seq_cst, align 8
  %i.g = tail call noundef ptr @_ZNK14arrow_vendored4date4tzdb12current_zoneEv(ptr noundef nonnull align 8 dereferenceable(88) %i.f)
  ret ptr %i.g
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN14arrow_vendored4date9time_zoneEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit
  %.05 = phi ptr [ %i.af, %_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit ], [ %0, %bb.a ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 4) #28
  br label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i.i.i.i, %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i
  %i.aa = load ptr, ptr %.05, align 8, !tbaa !39  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !40
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #28
  br label %_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit

_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.af, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !253

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date9time_zoneD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i

_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 4) #28
  br label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i ], [ %i.d, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.c, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit
  %i.n = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit, %bb.c
  %i.aa = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
end_hunk_6
