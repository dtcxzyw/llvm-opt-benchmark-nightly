Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/log_streamer_test?download=true
inline.NumInlined: 3002
inline.NumDeleted: 1238
begin_hunk_0_@_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEES9_S9_S9_S9_S9_S9_NS0_15AnythingMatcherES9_EED2Ev:bb.a
  %.not.i.i.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEES7_S7_S7_S7_S7_S7_NS0_8internal15AnythingMatcherES7_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.w = atomicrmw add ptr %i.v, i32 -1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.f, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEES7_S7_S7_S7_S7_S7_NS0_8internal15AnythingMatcherES7_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !49
  invoke void %i.aa(ptr noundef %i.ab)
          to label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEES7_S7_S7_S7_S7_S7_NS0_8internal15AnythingMatcherES7_EED2Ev.exit unwind label %bb.g, !inline_history !1

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #28, !inline_history !60
  unreachable

_ZNSt11_Tuple_implILm0EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEES7_S7_S7_S7_S7_S7_NS0_8internal15AnythingMatcherES7_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.e, %bb.f
  tail call void @_ZNSt11_Tuple_implILm2EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEES7_S7_S7_S7_NS0_8internal15AnythingMatcherES7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(192) %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !49
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit unwind label %bb.d, !inline_history !299

_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIiED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIiEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIiE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIiE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIiE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIiE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIiE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIiE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !49
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIiE7DestroyEv.exit unwind label %bb.d, !inline_history !300

_ZN7testing8internal11MatcherBaseIiE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIiE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIN4absl12lts_2026052611LogSeverityEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN4absl12lts_2026052611LogSeverityEEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIN4absl12lts_2026052611LogSeverityEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIN4absl12lts_2026052611LogSeverityEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIN4absl12lts_2026052611LogSeverityEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIN4absl12lts_2026052611LogSeverityEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN4absl12lts_2026052611LogSeverityEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIN4absl12lts_2026052611LogSeverityEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !49
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIN4absl12lts_2026052611LogSeverityEE7DestroyEv.exit unwind label %bb.d, !inline_history !301

_ZN7testing8internal11MatcherBaseIN4absl12lts_2026052611LogSeverityEE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIN4absl12lts_2026052611LogSeverityEE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIbED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIbEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIbE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIbE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIbE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIbE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIbE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIbE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !49
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIbE7DestroyEv.exit unwind label %bb.d, !inline_history !302

_ZN7testing8internal11MatcherBaseIbE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIbE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #28
  unreachable
}

declare void @_ZN4absl12lts_2026052613ScopedMockLog18StartCapturingLogsEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052611LogStreamerD2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i8, ptr %i.a, align 8, !tbaa !114, !range !115, !noundef !116
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.split12, label %.split14.us.thread

.split14.us.thread:                               ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !114
  br label %_ZNSt14_Optional_baseIN4absl12lts_2026052616strings_internal13OStringStreamELb0ELb0EED2Ev.exit

.split14.us:                                      ; preds = %bb.e
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %.pre = load i8, ptr %i.a, align 8, !tbaa !114, !range !115
  %i.h = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.a, align 8, !tbaa !114
  br i1 %i.h, label %bb.b, label %_ZNSt14_Optional_baseIN4absl12lts_2026052616strings_internal13OStringStreamELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %.split14.us
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #27, !inline_history !117
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.k) #27, !inline_history !117
  br label %_ZNSt14_Optional_baseIN4absl12lts_2026052616strings_internal13OStringStreamELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4absl12lts_2026052616strings_internal13OStringStreamELb0ELb0EED2Ev.exit: ; preds = %.split14.us.thread, %.split14.us, %bb.b
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN4absl12lts_2026052616strings_internal13OStringStreamELb0ELb0EED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !49
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4absl12lts_2026052616strings_internal13OStringStreamELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !49
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  ret void

.split12:                                         ; preds = %bb.a
  %i.v = load i32, ptr %0, align 8, !tbaa !124    ; 2 uses
  %i.w = icmp sgt i32 %i.v, 3
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.v, i32 0)
  %spec.store.select1.i = select i1 %i.w, i32 2, i32 %spec.store.select.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.73, i32 noundef 123, i32 noundef %spec.store.select1.i) #33
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %.split12
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.y = load i64, ptr %i.c, align 8, !tbaa !101
  %i.z = load i32, ptr %i.d, align 4, !tbaa !125
  %i.aa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessage10AtLocationESt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %i.y, ptr %i.x, i32 noundef %i.z)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %.split14.us unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.split12
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #28
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2026052613ScopedMockLogD1Ev(ptr noundef nonnull align 8 dead_on_return(234) dereferenceable(240)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing7MatcherIRKN4absl12lts_202605268LogEntryEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !49
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev.exit unwind label %bb.d, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #28, !inline_history !60
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.42, i32 noundef 246)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.43, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.42, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.43, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEES9_S9_S9_NS0_15AnythingMatcherES9_EEcvNS3_IT_EEIS8_EEv:bb.a

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.v, %bb.f ]
  call void @_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEES9_S9_S9_NS0_15AnythingMatcherES9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !49
  invoke void %i.l(ptr noundef %i.m)
          to label %_ZNSt10_Head_baseILm0EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i unwind label %bb.d, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #28, !inline_history !60
  unreachable

_ZNSt10_Head_baseILm0EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i: ; preds = %bb.c, %bb.b, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.p, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEES7_S7_S7_NS0_8internal15AnythingMatcherES7_EED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %.not.i.i.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEES7_S7_S7_NS0_8internal15AnythingMatcherES7_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.w = atomicrmw add ptr %i.v, i32 -1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.f, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEES7_S7_S7_NS0_8internal15AnythingMatcherES7_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !49
  invoke void %i.aa(ptr noundef %i.ab)
          to label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEES7_S7_S7_NS0_8internal15AnythingMatcherES7_EED2Ev.exit unwind label %bb.g, !inline_history !1

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #28, !inline_history !60
  unreachable

_ZNSt11_Tuple_implILm0EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEES7_S7_S7_NS0_8internal15AnythingMatcherES7_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.e, %bb.f
  tail call void @_ZNSt11_Tuple_implILm2EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEES7_NS0_8internal15AnythingMatcherES7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(120) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3hexRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %0) #21 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !206
  %i.c = and i32 %i.b, -75
  %i.d = or disjoint i32 %i.c, 8
  store i32 %i.d, ptr %i.a, align 8, !tbaa !207
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052611LogStreamerC2EOS1_(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(424) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x i32>, ptr %1, align 8, !tbaa !49
  store <2 x i32> %i.a, ptr %0, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !99
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !101  ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8, !tbaa !102
  %i.l = load i64, ptr %i.f, align 8, !tbaa !49
  store i64 %i.l, ptr %i.d, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !101
  store ptr %i.f, ptr %i.c, align 8, !tbaa !102
  store i64 0, ptr %i.m, align 8, !tbaa !101
  store i8 0, ptr %i.f, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !99
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !102  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !101  ; 2 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.s, ptr %i.p, align 8, !tbaa !102
  %i.z = load i64, ptr %i.t, align 8, !tbaa !49
  store i64 %i.z, ptr %i.r, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !101
  store ptr %i.t, ptr %i.q, align 8, !tbaa !102
  store i64 0, ptr %i.aa, align 8, !tbaa !101
  store i8 0, ptr %i.t, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !114
  %i.af = load i8, ptr %i.ad, align 8, !tbaa !114, !range !115, !noundef !116
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZNSt22_Optional_payload_baseIN4absl12lts_2026052616strings_internal13OStringStreamEE12_M_constructIJS3_EEEvDpOT_.exit.i.i.i.i.i, label %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEEC2EOS4_.exit

_ZNSt22_Optional_payload_baseIN4absl12lts_2026052616strings_internal13OStringStreamEE12_M_constructIJS3_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZN4absl12lts_2026052616strings_internal13OStringStreamC1EOS2_(ptr noundef nonnull align 8 dereferenceable(352) %i.ai, ptr noundef nonnull align 8 dereferenceable(352) %i.ah)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt22_Optional_payload_baseIN4absl12lts_2026052616strings_internal13OStringStreamEE12_M_constructIJS3_EEEvDpOT_.exit.i.i.i.i.i
  store i8 1, ptr %i.ae, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.p, ptr %i.aj, align 8, !tbaa !205
  br label %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEEC2EOS4_.exit

_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEEC2EOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8, %bb.d
  %i.ak = load i8, ptr %i.ad, align 8, !tbaa !114, !range !115, !noundef !116
  %i.al = trunc nuw i8 %i.ak to i1
  store i8 0, ptr %i.ad, align 8, !tbaa !114
  br i1 %i.al, label %bb.e, label %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEE5resetEv.exit

bb.e:                                             ; preds = %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEEC2EOS4_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.am, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #27, !inline_history !117
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #27, !inline_history !117
  br label %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEE5resetEv.exit

_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEE5resetEv.exit: ; preds = %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEEC2EOS4_.exit, %bb.e
  ret void

bb.f:                                             ; preds = %_ZNSt22_Optional_payload_baseIN4absl12lts_2026052616strings_internal13OStringStreamEE12_M_constructIJS3_EEEvDpOT_.exit.i.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #28
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm2EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEES7_NS0_8internal15AnythingMatcherES7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm2EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm2EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %_ZNSt10_Head_baseILm2EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !49
  invoke void %i.l(ptr noundef %i.m)
          to label %_ZNSt10_Head_baseILm2EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit unwind label %bb.d, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #28, !inline_history !60
  unreachable

_ZNSt10_Head_baseILm2EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i, %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.p, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm3EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm2EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %.not.i.i.i.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i1, label %_ZNSt10_Head_baseILm3EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.w = atomicrmw add ptr %i.v, i32 -1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.f, label %_ZNSt10_Head_baseILm3EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !49
  invoke void %i.aa(ptr noundef %i.ab)
          to label %_ZNSt10_Head_baseILm3EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i unwind label %bb.g, !inline_history !1

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #28, !inline_history !60
  unreachable

_ZNSt10_Head_baseILm3EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i: ; preds = %bb.f, %bb.e, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i, %_ZNSt10_Head_baseILm2EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm3EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_8internal15AnythingMatcherES7_EED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i2.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i2.i: ; preds = %_ZNSt10_Head_baseILm3EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.not.i.i.i3.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i3.i, label %_ZNSt11_Tuple_implILm3EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_8internal15AnythingMatcherES7_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i2.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49
  %i.ak = atomicrmw add ptr %i.aj, i32 -1 acq_rel, align 4
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.i, label %_ZNSt11_Tuple_implILm3EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_8internal15AnythingMatcherES7_EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !49
  invoke void %i.ao(ptr noundef %i.ap)
          to label %_ZNSt11_Tuple_implILm3EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_8internal15AnythingMatcherES7_EED2Ev.exit unwind label %bb.j, !inline_history !1

bb.j:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #28, !inline_history !60
  unreachable

_ZNSt11_Tuple_implILm3EJN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEENS0_8internal15AnythingMatcherES7_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm3EN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEELb0EED2Ev.exit.i, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i2.i, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_7MatcherIRKN4absl12lts_202605268LogEntryEEES9_S9_S9_NS0_15AnythingMatcherES9_EE21CreateVariadicMatcherIS8_Lm0EEEvPSt6vectorINS3_IT_EESaISF_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Matcher", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41, !noalias !1093 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !41, !alias.scope !1093
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49, !noalias !1093 ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !49, !alias.scope !1093
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  %i.g = inttoptr i64 %i.f to ptr
  br i1 %.not.i.i.i.i.i.i, label %_ZN7testing15SafeMatcherCastIRKN4absl12lts_202605268LogEntryES5_EENS_7MatcherIT_EERKNS6_IT0_EE.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59, !noalias !1093
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN7testing15SafeMatcherCastIRKN4absl12lts_202605268LogEntryES5_EENS_7MatcherIT_EERKNS6_IT0_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i
  %i.j = atomicrmw add ptr %i.g, i32 1 monotonic, align 4, !noalias !1093 ; 0 uses
  br label %_ZN7testing15SafeMatcherCastIRKN4absl12lts_202605268LogEntryES5_EENS_7MatcherIT_EERKNS6_IT0_EE.exit

_ZN7testing15SafeMatcherCastIRKN4absl12lts_202605268LogEntryES5_EENS_7MatcherIT_EERKNS6_IT0_EE.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !26, !alias.scope !1093
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !110  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.c, label %_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %_ZN7testing15SafeMatcherCastIRKN4absl12lts_202605268LogEntryES5_EENS_7MatcherIT_EERKNS6_IT0_EE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.c, ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.f, ptr %i.p, align 8, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.l, align 8, !tbaa !26
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.r, ptr %i.k, align 8, !tbaa !110
  br label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev.exit

bb.c:                                             ; preds = %_ZN7testing15SafeMatcherCastIRKN4absl12lts_202605268LogEntryES5_EENS_7MatcherIT_EERKNS6_IT0_EE.exit
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEESaIS7_EE9push_backEOS7_.exit unwind label %bb.g

_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.c
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %2, align 8, !tbaa !26
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEESaIS7_EE9push_backEOS7_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.pr, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %.not.i.i4 = icmp eq ptr %i.t, null
  br i1 %.not.i.i4, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE8IsSharedEv.exit.i.i
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !49
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052611LogStreameraSEOS1_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = load i8, ptr %i.a, align 8, !tbaa !114, !range !115, !noundef !116
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.split28, label %.split30.us

.split30.us:                                      ; preds = %.critedge, %bb.a
  %i.h = load i32, ptr %1, align 8, !tbaa !124
  store i32 %i.h, ptr %0, align 8, !tbaa !124
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !102  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !102  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.o = icmp eq ptr %i.m, %i.n                   ; 2 uses
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.split30.us
  br i1 %i.o, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.split30.us
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !101  ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !57

bb.c:                                             ; preds = %bb.b
  switch i64 %i.q, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = load i8, ptr %i.m, align 1, !tbaa !49
  store i8 %i.s, ptr %i.j, align 1, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.t = load i64, ptr %i.p, align 8, !tbaa !101  ; 2 uses
  store i64 %i.t, ptr %i.c, align 8, !tbaa !101
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !49
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.m, ptr %i.b, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !101
  store i64 %i.x, ptr %i.c, align 8, !tbaa !101
  %i.y = load i64, ptr %i.n, align 8, !tbaa !49
  store i64 %i.y, ptr %i.k, align 8, !tbaa !49
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.z = load i64, ptr %i.k, align 8, !tbaa !49
  store ptr %i.m, ptr %i.b, align 8, !tbaa !102
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !101
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !101
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !49
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.j, ptr %i.i, align 8, !tbaa !102
  store i64 %i.z, ptr %i.n, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.n, ptr %i.i, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.ad = phi ptr [ %i.j, %bb.f ], [ %i.n, %bb.g ], [ %i.m, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ae, align 8, !tbaa !101
  store i8 0, ptr %i.ad, align 1, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !125
  store i32 %i.ag, ptr %i.d, align 4, !tbaa !125
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !102 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !102 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.an = icmp eq ptr %i.al, %i.am                ; 2 uses
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.an, label %bb.h, label %.thread.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.an, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i20

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i25
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !101 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %.not21.i22 = icmp eq ptr %1, %0
  br i1 %.not21.i22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27, label %bb.i, !prof !57

bb.i:                                             ; preds = %bb.h
  switch i64 %i.ap, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !49
  store i8 %i.ar, ptr %i.ai, align 1, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.al, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23: ; preds = %bb.k, %bb.j, %bb.i
  %i.as = load i64, ptr %i.ao, align 8, !tbaa !101 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.as, ptr %i.at, align 8, !tbaa !101
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !49
  %.pre.i24 = load ptr, ptr %i.ah, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27

.thread.i26:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i25
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.al, ptr %i.e, align 8, !tbaa !102
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !101
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !101
  %i.az = load i64, ptr %i.am, align 8, !tbaa !49
  store i64 %i.az, ptr %i.aj, align 8, !tbaa !49
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i20: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i19
  %i.ba = load i64, ptr %i.aj, align 8, !tbaa !49
  store ptr %i.al, ptr %i.e, align 8, !tbaa !102
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !101
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !101
  %i.be = load i64, ptr %i.am, align 8, !tbaa !49
  store i64 %i.be, ptr %i.aj, align 8, !tbaa !49
  %.not.i21 = icmp eq ptr %i.ai, null
  br i1 %.not.i21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i20
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !102
  store i64 %i.ba, ptr %i.am, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i20, %.thread.i26
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23, %bb.l, %bb.m
  %i.bf = phi ptr [ %i.ai, %bb.l ], [ %i.am, %bb.m ], [ %i.al, %bb.h ], [ %.pre.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.bg, align 8, !tbaa !101
  store i8 0, ptr %i.bf, align 1, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bj = load i8, ptr %i.a, align 8, !tbaa !114, !range !115, !noundef !116
  %i.bk = trunc nuw i8 %i.bj to i1                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 8, !range !115
  %i.bn = trunc nuw i8 %i.bm to i1                ; 2 uses
  %or.cond.i.i.i.i.i = select i1 %i.bk, i1 %i.bn, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27
  %i.bo = call noundef nonnull align 8 dereferenceable(344) ptr @_ZN4absl12lts_2026052616strings_internal13OStringStreamaSEOS2_(ptr noundef nonnull align 8 dereferenceable(352) %i.bi, ptr noundef nonnull align 8 dereferenceable(352) %i.bh) ; 0 uses
  br label %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN4absl12lts_2026052616strings_internal13OStringStreamC1EOS2_(ptr noundef nonnull align 8 dereferenceable(352) %i.bi, ptr noundef nonnull align 8 dereferenceable(352) %i.bh)
  store i8 1, ptr %i.a, align 8, !tbaa !114
  br label %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEEaSEOS4_.exit

bb.q:                                             ; preds = %bb.o
  store i8 0, ptr %i.a, align 8, !tbaa !114
  br i1 %i.bk, label %bb.r, label %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEEaSEOS4_.exit

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bp, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bq) #27, !inline_history !117
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.br) #27, !inline_history !117
  br label %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEEaSEOS4_.exit

_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEEaSEOS4_.exit: ; preds = %bb.n, %bb.p, %bb.q, %bb.r
  %i.bs = load i8, ptr %i.a, align 8, !tbaa !114, !range !115, !noundef !116
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.v, label %bb.w

.split28:                                         ; preds = %bb.a
  %i.bu = load i32, ptr %0, align 8, !tbaa !124   ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 3
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %spec.store.select1.i = select i1 %i.bv, i32 2, i32 %spec.store.select.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.73, i32 noundef 108, i32 noundef %spec.store.select1.i) #33
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !101
  %i.by = load i32, ptr %i.d, align 4, !tbaa !125
  %i.bz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessage10AtLocationESt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %i.bx, ptr %i.bw, i32 noundef %i.by)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %.split28
  %i.ca = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
          to label %.critedge unwind label %bb.u

.critedge:                                        ; preds = %bb.t
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.split30.us

bb.u:                                             ; preds = %bb.t, %bb.s, %.split28
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.cb

bb.v:                                             ; preds = %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEEaSEOS4_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.e, ptr %i.cc, align 8, !tbaa !205
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEEaSEOS4_.exit
  %i.cd = load i8, ptr %i.bl, align 8, !tbaa !114, !range !115, !noundef !116
  %i.ce = trunc nuw i8 %i.cd to i1
  store i8 0, ptr %i.bl, align 8, !tbaa !114
  br i1 %i.ce, label %bb.x, label %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEE5resetEv.exit

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cf, align 8, !tbaa !26
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cg) #27, !inline_history !117
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ch) #27, !inline_history !117
  br label %_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEE5resetEv.exit

_ZNSt8optionalIN4absl12lts_2026052616strings_internal13OStringStreamEE5resetEv.exit: ; preds = %bb.w, %bb.x
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN7testing10InSequenceD1Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(344) ptr @_ZN4absl12lts_2026052616strings_internal13OStringStreamaSEOS2_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(344) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 6 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !26
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 6 uses
  tail call void @_ZNSt8ios_base7_M_swapERS_(ptr noundef nonnull align 8 dereferenceable(264) %i.d, ptr noundef nonnull align 8 dereferenceable(264) %i.h) #27
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE15_M_cache_localeERKSt6locale(ptr noundef nonnull align 8 dereferenceable(264) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE15_M_cache_localeERKSt6locale(ptr noundef nonnull align 8 dereferenceable(264) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZNSoaSEOSo.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #28
  unreachable

_ZNSoaSEOSo.exit:                                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 216 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 216 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !1190
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !1190
  store ptr %i.p, ptr %i.m, align 8, !tbaa !1190
  store ptr %i.o, ptr %i.n, align 8, !tbaa !1190
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 224 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 224 ; 2 uses
  %i.s = load i8, ptr %i.q, align 8, !tbaa !49
  %i.t = load i8, ptr %i.r, align 8, !tbaa !49
  store i8 %i.t, ptr %i.q, align 8, !tbaa !49
  store i8 %i.s, ptr %i.r, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 225 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 225 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !179, !range !115, !noundef !116
  %i.x = load i8, ptr %i.v, align 1, !tbaa !179, !range !115, !noundef !116
  store i8 %i.x, ptr %i.u, align 1, !tbaa !179
  store i8 %i.w, ptr %i.v, align 1, !tbaa !179
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %i.y) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !205
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !205
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = tail call noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ae, ptr noundef nonnull %i.z) ; 0 uses
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_base7_M_swapERS_(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_140LogStreamerTest_CorrectDefaultFlags_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_140LogStreamerTest_CorrectDefaultFlags_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_140LogStreamerTest_CorrectDefaultFlags_TestE, i64 16), ptr %i.a, align 8, !tbaa !26
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_140LogStreamerTest_CorrectDefaultFlags_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_140LogStreamerTest_CorrectDefaultFlags_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %2 = alloca %"class.testing::Cardinality", align 8 ; 7 uses
  %3 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %4 = alloca %"class.absl::lts_20260526::ScopedMockLog", align 8 ; 10 uses
  %5 = alloca %"class.testing::internal::MockSpec", align 8 ; 9 uses
  %6 = alloca %"class.testing::internal::MockSpec", align 8 ; 20 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::VariadicMatcher.288", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %10 = alloca %"class.testing::Matcher.53", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20260526::LogStreamer", align 8 ; 7 uses
  %12 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN4absl12lts_2026052613ScopedMockLogC1ENS0_14MockLogDefaultE(ptr noundef nonnull align 8 dereferenceable(240) %4, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN7testing8internal15WithoutMatchers3GetEv()
          to label %bb.b unwind label %bb.be

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !1209
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !1210, !noalias !1209
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.c, align 8, !tbaa !41, !alias.scope !1210, !noalias !1209
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %3, align 8, !tbaa !26, !alias.scope !1210, !noalias !1209
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 6 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(240) %4)
          to label %bb.d unwind label %bb.c, !noalias !1209

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27, !noalias !1209
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !1209
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %5, align 8, !tbaa !48, !alias.scope !1211
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268LogEntryEE9GetVTableINS7_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !41, !alias.scope !1211
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !49, !alias.scope !1211
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605268LogEntryEEE, i64 16), ptr %i.i, align 8, !tbaa !26, !alias.scope !1212
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !1209
  %i.j = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN7testing8internal8MockSpecIFvRKN4absl12lts_202605268LogEntryEEE18InternalExpectedAtEPKciSA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.3, i32 noundef 439, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33)
          to label %bb.e unwind label %bb.bf

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %2, i32 noundef 0)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.l

_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal16TypedExpectationIFvRKN4absl12lts_202605268LogEntryEEE5TimesERKNS_11CardinalityE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #27, !inline_history !0
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #27, !inline_history !0
end_hunk_2
