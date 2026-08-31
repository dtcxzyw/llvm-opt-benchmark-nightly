Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/reflection_test?download=true
inline.NumInlined: 2880
inline.NumDeleted: 1275
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7testing8internal18CmpHelperOpFailureIPN4absl12lts_2026052615CommandLineFlagEDnEENS_15AssertionResultEPKcS8_RKT_RKT0_S8_:bb.a
.body95:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i90, %bb.al
  %eh.lpad-body96 = phi { ptr, i32 } [ %i.fd, %bb.al ], [ %i.ed, %_ZN7testing7MessageD2Ev.exit5.i90 ] ; 2 uses
  %i.fe = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %.body95
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !23
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %.body95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.ak ], [ %eh.lpad-body96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %eh.lpad-body96, %.body95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %.body77

.body77:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i73, %_ZN7testing7MessageD2Ev.exit5.i81, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.dc, %_ZN7testing7MessageD2Ev.exit5.i73 ], [ %i.fb, %bb.aj ], [ %i.do, %_ZN7testing7MessageD2Ev.exit5.i81 ] ; 2 uses
  %i.fj = load ptr, ptr %17, align 8, !tbaa !18   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %.body77
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !23
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %.body77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn, %.body77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.body

.body:                                            ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %_ZN7testing7MessageD2Ev.exit5.i20, %_ZN7testing7MessageD2Ev.exit5.i40, %bb.ah, %_ZN7testing7MessageD2Ev.exit5.i62, %_ZN7testing7MessageD2Ev.exit6.i52, %_ZN7testing7MessageD2Ev.exit6.i30, %_ZN7testing7MessageD2Ev.exit6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.h, %_ZN7testing7MessageD2Ev.exit5.i ], [ %i.x, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.aj, %_ZN7testing7MessageD2Ev.exit5.i20 ], [ %i.az, %_ZN7testing7MessageD2Ev.exit6.i30 ], [ %i.bl, %_ZN7testing7MessageD2Ev.exit5.i40 ], [ %i.cb, %_ZN7testing7MessageD2Ev.exit6.i52 ], [ %i.ez, %bb.ah ], [ %i.cn, %_ZN7testing7MessageD2Ev.exit5.i62 ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #2

declare void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28, !noalias !123 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !24, !noalias !123
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !21, !noalias !123
  store i8 0, ptr %i.d, align 8, !tbaa !23, !noalias !123
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !93   ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !93
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 32) #29
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ %i.c, %bb.b ], [ %.pre, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.m = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #30 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21
  %i.q = sub i64 4611686018427387903, %i.p
  %i.r = icmp ult i64 %i.q, %i.n
  br i1 %i.r, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.d:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #32
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull %i.m, i64 noundef %i.n)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.t = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !23
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.y
}

declare void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_135ReflectionTest_TestGetAllFlags_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_135ReflectionTest_TestGetAllFlags_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 5 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_135ReflectionTest_TestGetAllFlags_TestE, i64 16), ptr %i.a, align 8, !tbaa !73
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #29
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_135ReflectionTest_TestGetAllFlags_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_114ReflectionTestE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_114ReflectionTestD2Ev.exit, label %_ZNKSt14default_deleteIN4absl12lts_202605269FlagSaverEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4absl12lts_202605269FlagSaverEEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZN4absl12lts_202605269FlagSaverD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #30, !inline_history !76
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #29, !inline_history !76
  br label %_ZN12_GLOBAL__N_114ReflectionTestD2Ev.exit

_ZN12_GLOBAL__N_114ReflectionTestD2Ev.exit:       ; preds = %bb.a, %_ZNKSt14default_deleteIN4absl12lts_202605269FlagSaverEEclEPS2_.exit.i.i
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %0) #30, !inline_history !76
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_135ReflectionTest_TestGetAllFlags_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::flat_hash_map", align 8 ; 11 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %3 = alloca %"class.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::basic_string_view<char>, absl::lts_20260526::CommandLineFlag *>>::iterator", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::basic_string_view<char>, absl::lts_20260526::CommandLineFlag *>>::iterator", align 8 ; 5 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::basic_string_view<char>, absl::lts_20260526::CommandLineFlag *>>::iterator", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::basic_string_view<char>, absl::lts_20260526::CommandLineFlag *>>::iterator", align 8 ; 5 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %13 = alloca %"class.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::basic_string_view<char>, absl::lts_20260526::CommandLineFlag *>>::iterator", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::basic_string_view<char>, absl::lts_20260526::CommandLineFlag *>>::iterator", align 8 ; 5 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.std::vector", align 8      ; 13 uses
  %18 = alloca %"class.absl::lts_20260526::flat_hash_map", align 8 ; 12 uses
  %19 = alloca %"struct.std::pair", align 8       ; 5 uses
  %20 = alloca %"class.absl::lts_20260526::flat_hash_map", align 8 ; 13 uses
  %21 = alloca %"struct.std::pair", align 8       ; 5 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %23 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 9 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZN4absl12lts_2026052611GetAllFlagsEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::flat_hash_map") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE4findIA9_cEENSB_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(9) @.str)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  store ptr %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr null, ptr %4, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_SI_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.67)
          to label %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit unwind label %bb.f

_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.e = load i8, ptr %2, align 8, !tbaa !84, !range !32, !noundef !33
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.q, label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.g, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.v

bb.h:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !93   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.j, %bb.i
  %i.l = phi ptr [ %i.k, %bb.j ], [ @.str.66, %bb.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 69, ptr noundef %i.l)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.m = load ptr, ptr %5, align 8, !tbaa !94     ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.m, null
  br i1 %.not.i.i71, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(128) %i.m) #30, !inline_history !96
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit74

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn36 = phi { ptr, i32 } [ %i.s, %bb.o ], [ %i.r, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.t = load ptr, ptr %5, align 8, !tbaa !94     ; 3 uses
  %.not.i.i72 = icmp eq ptr %i.t, null
  br i1 %.not.i.i72, label %_ZN7testing7MessageD2Ev.exit74, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73: ; preds = %bb.p
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #30, !inline_history !96
  br label %_ZN7testing7MessageD2Ev.exit74

_ZN7testing7MessageD2Ev.exit74:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73, %bb.p, %bb.m
  %.pn36.pn = phi { ptr, i32 } [ %i.q, %bb.m ], [ %.pn36, %bb.p ], [ %.pn36, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  br label %bb.v

bb.q:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !93   ; 4 uses
  %.not.i.i75 = icmp eq ptr %i.y, null
  br i1 %.not.i.i75, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ae = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE4findIA18_cEENSB_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(18) @.str.8)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.af = extractvalue { ptr, ptr } %i.ae, 0      ; 2 uses
  store ptr %i.af, ptr %8, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1
  store ptr %i.ah, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr null, ptr %9, align 8
  %i.ai = icmp eq ptr %i.af, null
  br i1 %i.ai, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit unwind label %bb.x

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit unwind label %bb.x

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.aj = load i8, ptr %7, align 8, !tbaa !84, !range !32, !noundef !33
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.ai, label %bb.z

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit74, %bb.g
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN7testing7MessageD2Ev.exit74 ], [ %.pn, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.cx

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.am = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_135ReflectionTest_TestGetAllFlags_Test8TestBodyEv:bb.a

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84: ; preds = %bb.ah
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !73
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(128) %i.ay) #30, !inline_history !96
  br label %_ZN7testing7MessageD2Ev.exit85

_ZN7testing7MessageD2Ev.exit85:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84, %bb.ah, %bb.ae
  %.pn42.pn = phi { ptr, i32 } [ %i.av, %bb.ae ], [ %.pn42, %bb.ah ], [ %.pn42, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #30
  br label %bb.an

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit, %_ZN7testing7MessageD2Ev.exit82
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !93 ; 4 uses
  %.not.i.i86 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i86, label %_ZN7testing15AssertionResultD2Ev.exit90, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !18 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87: ; preds = %bb.aj
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !23
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit90

_ZN7testing15AssertionResultD2Ev.exit90:          ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.bj = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE4findIA20_cEENSB_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.79)
          to label %bb.ak unwind label %bb.ao     ; 2 uses

bb.ak:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit90
  %i.bk = extractvalue { ptr, ptr } %i.bj, 0      ; 2 uses
  store ptr %i.bk, ptr %13, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1
  store ptr %i.bm, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  store ptr null, ptr %14, align 8
  %i.bn = icmp eq ptr %i.bk, null
  br i1 %i.bn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit93 unwind label %bb.ap

bb.am:                                            ; preds = %bb.ak
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit93 unwind label %bb.ap

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit93: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.bo = load i8, ptr %12, align 8, !tbaa !84, !range !32, !noundef !33
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.ba, label %bb.ar

bb.an:                                            ; preds = %_ZN7testing7MessageD2Ev.exit85, %bb.y
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %_ZN7testing7MessageD2Ev.exit85 ], [ %.pn40, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.cx

bb.ao:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit90
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn46 = phi { ptr, i32 } [ %i.br, %bb.ap ], [ %i.bq, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.bg

bb.ar:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !93 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i94, label %_ZNK7testing15AssertionResult15failure_messageEv.exit95, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit95

_ZNK7testing15AssertionResult15failure_messageEv.exit95: ; preds = %bb.at, %bb.as
  %i.bv = phi ptr [ %i.bu, %bb.at ], [ @.str.66, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 71, ptr noundef %i.bv)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.bw = load ptr, ptr %15, align 8, !tbaa !94   ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i96, label %_ZN7testing7MessageD2Ev.exit98, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.av
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !73
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(128) %i.bw) #30, !inline_history !96
  br label %_ZN7testing7MessageD2Ev.exit98

_ZN7testing7MessageD2Ev.exit98:                   ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit101

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #30
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn48 = phi { ptr, i32 } [ %i.cc, %bb.ay ], [ %i.cb, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.cd = load ptr, ptr %15, align 8, !tbaa !94   ; 3 uses
  %.not.i.i99 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i99, label %_ZN7testing7MessageD2Ev.exit101, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100: ; preds = %bb.az
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !73
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #30, !inline_history !96
  br label %_ZN7testing7MessageD2Ev.exit101

_ZN7testing7MessageD2Ev.exit101:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100, %bb.az, %bb.aw
  %.pn48.pn = phi { ptr, i32 } [ %i.ca, %bb.aw ], [ %.pn48, %bb.az ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #30
  br label %bb.bg

bb.ba:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit93, %_ZN7testing7MessageD2Ev.exit98
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !93 ; 4 uses
  %.not.i.i102 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i102, label %_ZN7testing15AssertionResultD2Ev.exit106, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !18 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103: ; preds = %bb.bb
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !23
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit106

_ZN7testing15AssertionResultD2Ev.exit106:         ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZN4absl12lts_2026052611GetAllFlagsEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::flat_hash_map") align 8 %18)
          to label %bb.bc unwind label %bb.bh

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit106
  %i.co = load i64, ptr %18, align 8              ; 2 uses
  %.not.i.i107 = icmp ult i64 %i.co, 131072
  br i1 %.not.i.i107, label %._crit_edge, label %bb.bd, !prof !22

bb.bd:                                            ; preds = %bb.bc
  %i.cp = and i64 %i.co, 254
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.cr = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !23
  br label %.lr.ph

bb.bf:                                            ; preds = %bb.bd
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !23, !nonnull !33, !noundef !33 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !23 ; 2 uses
  %i.cu = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1, !tbaa !126
  %i.cv = icmp slt i8 %i.cu, -1
  br i1 %i.cv, label %.lr.ph.i.i, label %.lr.ph

.lr.ph.i.i:                                       ; preds = %bb.bf, %.lr.ph.i.i
  %i.cw = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.bf ]
  %i.cx = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.bf ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.da = load i8, ptr %i.cy, align 1, !tbaa !126
  %i.db = icmp slt i8 %i.da, -1
  br i1 %i.db, label %.lr.ph.i.i, label %.lr.ph, !llvm.loop !128

.lr.ph:                                           ; preds = %.lr.ph.i.i, %bb.be, %bb.bf
  %.sroa.6.0.i.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.be ], [ %.sroa.0.0.copyload.i.i.i, %bb.bf ], [ %i.cz, %.lr.ph.i.i ]
  %.sroa.0.0.i.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.be ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.bf ], [ %i.cy, %.lr.ph.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.dc, align 8, !tbaa !130
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  invoke void @_ZN4absl12lts_2026052611GetAllFlagsEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::flat_hash_map") align 8 %20)
          to label %bb.bn unwind label %.thread

bb.bg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit101, %bb.aq
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit101 ], [ %.pn46, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.cx

bb.bh:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit106
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i, %.lr.ph
  %i.df = phi ptr [ %.pre, %.lr.ph ], [ %i.ed, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 5 uses
  %.sroa.9213.0251 = phi ptr [ %.sroa.6.0.i.ph, %.lr.ph ], [ %.sroa.9213.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 3 uses
  %.sroa.0211.0250 = phi ptr [ %.sroa.0.0.i.ph, %.lr.ph ], [ %.sroa.0211.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9213.0251, i64 24, i1 false)
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !133
  %.not.i108 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i108, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9213.0251, i64 16, i1 false)
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !130
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  store ptr %i.di, ptr %i.dc, align 8, !tbaa !130
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

bb.bj:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit
  %i.dj = load ptr, ptr %17, align 8, !tbaa !134  ; 5 uses
  %i.dk = ptrtoint ptr %i.df to i64
  %i.dl = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dm = sub i64 %i.dk, %i.dl                    ; 3 uses
  %i.dn = icmp eq i64 %i.dm, 9223372036854775792
  br i1 %i.dn, label %bb.bk, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #32
          to label %.noexc109 unwind label %.loopexit.split-lp223

.noexc109:                                        ; preds = %bb.bk
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bj
  %i.do = ashr exact i64 %i.dm, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.do, i64 1)
  %i.dp = add nsw i64 %.sroa.speculated.i.i.i, %i.do ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.do
  %i.dr = call i64 @llvm.umin.i64(i64 %i.dp, i64 576460752303423487)
  %i.ds = select i1 %i.dq, i64 576460752303423487, i64 %i.dr ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ds, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dt = shl nuw nsw i64 %i.ds, 4
  %i.du = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #28
          to label %.noexc110 unwind label %.loopexit222 ; 5 uses

.noexc110:                                        ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !135
  %.not10.i.i.i.i.i = icmp eq ptr %i.dj, %i.df
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc110, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %i.du, %.noexc110 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %i.dj, %.noexc110 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !135, !alias.scope !136
  %i.dw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, %i.df
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !140

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc110
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.du, %.noexc110 ], [ %i.dx, %.lr.ph.i.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.dz = load ptr, ptr %i.dd, align 8, !tbaa !133
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.eb) #29
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.bl, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.du, ptr %17, align 8, !tbaa !134
  store ptr %i.dy, ptr %i.dc, align 8, !tbaa !130
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.ds
  store ptr %i.ec, ptr %i.dd, align 8, !tbaa !133
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.bi
  %i.ed = phi ptr [ %i.dy, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.di, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0211.0250, i64 1 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.9213.0251, i64 24 ; 2 uses
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !126 ; 2 uses
  %i.eh = icmp slt i8 %i.eg, -1
  br i1 %i.eh, label %.lr.ph.i.i111, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i111:                                    ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit, %.lr.ph.i.i111
  %i.ei = phi ptr [ %i.el, %.lr.ph.i.i111 ], [ %i.ef, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ]
  %i.ej = phi ptr [ %i.ek, %.lr.ph.i.i111 ], [ %i.ee, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 2 uses
  %i.em = load i8, ptr %i.ek, align 1, !tbaa !126 ; 2 uses
  %i.en = icmp slt i8 %i.em, -1
  br i1 %i.en, label %.lr.ph.i.i111, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !128

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i111, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit
  %.sroa.0211.1 = phi ptr [ %i.ee, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ], [ %i.ek, %.lr.ph.i.i111 ]
  %.sroa.9213.1 = phi ptr [ %i.ef, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ], [ %i.el, %.lr.ph.i.i111 ]
  %i.eo = phi i8 [ %i.eg, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ], [ %i.em, %.lr.ph.i.i111 ]
  %i.ep = icmp eq i8 %i.eo, -1
  br i1 %i.ep, label %._crit_edge, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit, !prof !22

.loopexit222:                                     ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit224 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp223:                            ; preds = %bb.bk
  %lpad.loopexit.split-lp225 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit.split-lp223, %.loopexit222
  %lpad.phi226 = phi { ptr, i32 } [ %lpad.loopexit224, %.loopexit222 ], [ %lpad.loopexit.split-lp225, %.loopexit.split-lp223 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit188

bb.bn:                                            ; preds = %._crit_edge
  %i.eq = load i64, ptr %20, align 8              ; 2 uses
  %.not.i.i112 = icmp ult i64 %i.eq, 131072
  br i1 %.not.i.i112, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread, label %bb.bo, !prof !22

bb.bo:                                            ; preds = %bb.bn
  %i.er = and i64 %i.eq, 254
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.et = getelementptr inbounds nuw i8, ptr %20, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i122 = load ptr, ptr %i.et, align 8, !tbaa !23
  br label %.lr.ph259.preheader

bb.bq:                                            ; preds = %bb.bo
  %i.eu = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.sroa.0.0.copyload.i.i.i.i113 = load ptr, ptr %i.eu, align 8, !tbaa !23, !nonnull !33, !noundef !33 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %20, i64 16
  %.sroa.0.0.copyload.i.i.i115 = load ptr, ptr %i.ev, align 8, !tbaa !23 ; 2 uses
  %i.ew = load i8, ptr %.sroa.0.0.copyload.i.i.i.i113, align 1, !tbaa !126
  %i.ex = icmp slt i8 %i.ew, -1
  br i1 %i.ex, label %.lr.ph.i.i121, label %.lr.ph259.preheader

.lr.ph259.preheader:                              ; preds = %.lr.ph.i.i121, %bb.bp, %bb.bq
  %.sroa.0196.0257.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.bp ], [ %.sroa.0.0.copyload.i.i.i.i113, %bb.bq ], [ %i.fa, %.lr.ph.i.i121 ]
  %.sroa.9.0256.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i122, %bb.bp ], [ %.sroa.0.0.copyload.i.i.i115, %bb.bq ], [ %i.fb, %.lr.ph.i.i121 ]
  br label %.lr.ph259

.lr.ph.i.i121:                                    ; preds = %bb.bq, %.lr.ph.i.i121
  %i.ey = phi ptr [ %i.fb, %.lr.ph.i.i121 ], [ %.sroa.0.0.copyload.i.i.i115, %bb.bq ]
  %i.ez = phi ptr [ %i.fa, %.lr.ph.i.i121 ], [ %.sroa.0.0.copyload.i.i.i.i113, %bb.bq ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 2 uses
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !126
  %i.fd = icmp slt i8 %i.fc, -1
  br i1 %i.fd, label %.lr.ph.i.i121, label %.lr.ph259.preheader, !llvm.loop !128

._crit_edge260:                                   ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  %i.fe = ptrtoint ptr %.sroa.9203.1 to i64
  %i.ff = ptrtoint ptr %.sroa.0199.2 to i64       ; 3 uses
  %i.fg = sub i64 %i.fe, %i.ff                    ; 5 uses
  %i.fh = icmp ugt i64 %i.fg, 9223372036854775792
  br i1 %i.fh, label %.noexc.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread: ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %._crit_edge260
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #32
          to label %.noexc124 unwind label %bb.bz

.noexc124:                                        ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i: ; preds = %._crit_edge260
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.9203.1, %.sroa.0199.2
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i.i.i.i: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i
  %.sroa.0199.0.lcssa336351 = phi ptr [ null, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread ], [ %.sroa.0199.2, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i ]
  %.sroa.14.0.lcssa342349 = phi ptr [ null, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread ], [ %.sroa.14.2, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i ]
  %i.fi = phi i64 [ 0, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread ], [ %i.ff, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i ]
  %i.fj = phi i64 [ 0, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread ], [ %i.fg, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr null, i64 %i.fj
  br label %bb.bw

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #28
          to label %.noexc125 unwind label %bb.bz ; 4 uses

.noexc125:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fg
  %i.fn = and i64 %i.fg, 9223372036854775792      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fl, ptr align 8 %.sroa.0199.2, i64 %i.fn, i1 false), !noalias !141
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.fl, i64 %i.fn
  br label %bb.bw

.thread:                                          ; preds = %._crit_edge
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit188

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142
  %.sroa.0196.0257 = phi ptr [ %.sroa.0196.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142 ], [ %.sroa.0196.0257.ph, %.lr.ph259.preheader ]
  %.sroa.9.0256 = phi ptr [ %.sroa.9.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142 ], [ %.sroa.9.0256.ph, %.lr.ph259.preheader ] ; 3 uses
  %.sroa.14.0255 = phi ptr [ %.sroa.14.2, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142 ], [ null, %.lr.ph259.preheader ] ; 6 uses
  %.sroa.9203.0254 = phi ptr [ %.sroa.9203.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142 ], [ null, %.lr.ph259.preheader ] ; 3 uses
  %.sroa.0199.0253 = phi ptr [ %.sroa.0199.2, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142 ], [ null, %.lr.ph259.preheader ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0256, i64 24, i1 false)
  %.not.i126 = icmp eq ptr %.sroa.9203.0254, %.sroa.14.0255
  br i1 %.not.i126, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph259
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9203.0254, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0256, i64 16, i1 false)
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit141

bb.bs:                                            ; preds = %.lr.ph259
  %i.fp = ptrtoint ptr %.sroa.14.0255 to i64
  %i.fq = ptrtoint ptr %.sroa.0199.0253 to i64
  %i.fr = sub i64 %i.fp, %i.fq                    ; 4 uses
  %i.fs = icmp eq i64 %i.fr, 9223372036854775792
  br i1 %i.fs, label %bb.bt, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i127

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #32
          to label %.noexc139 unwind label %.loopexit.split-lp

.noexc139:                                        ; preds = %bb.bt
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i127: ; preds = %bb.bs
  %i.ft = ashr exact i64 %i.fr, 4                 ; 3 uses
  %.sroa.speculated.i.i.i128 = call i64 @llvm.umax.i64(i64 %i.ft, i64 1)
  %i.fu = add nsw i64 %.sroa.speculated.i.i.i128, %i.ft ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.ft
  %i.fw = call i64 @llvm.umin.i64(i64 %i.fu, i64 576460752303423487)
  %i.fx = select i1 %i.fv, i64 576460752303423487, i64 %i.fw ; 3 uses
  %.not.i.i.i129 = icmp ne i64 %i.fx, 0
  call void @llvm.assume(i1 %.not.i.i.i129)
  %i.fy = shl nuw nsw i64 %i.fx, 4
  %i.fz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #28
          to label %.noexc140 unwind label %.loopexit ; 5 uses

.noexc140:                                        ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i127
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !135
  %.not10.i.i.i.i.i130 = icmp eq ptr %.sroa.0199.0253, %.sroa.14.0255
  br i1 %.not10.i.i.i.i.i130, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i135, label %.lr.ph.i.i.i.i.i131

.lr.ph.i.i.i.i.i131:                              ; preds = %.noexc140, %.lr.ph.i.i.i.i.i131
  %.012.i.i.i.i.i132 = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i131 ], [ %i.fz, %.noexc140 ] ; 2 uses
  %.0911.i.i.i.i.i133 = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i131 ], [ %.sroa.0199.0253, %.noexc140 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i132, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i133, i64 16, i1 false), !tbaa.struct !135, !alias.scope !146
  %i.gb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i133, i64 16 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i132, i64 16 ; 2 uses
  %.not.i.i.i.i.i134 = icmp eq ptr %i.gb, %.sroa.14.0255
  br i1 %.not.i.i.i.i.i134, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i135, label %.lr.ph.i.i.i.i.i131, !llvm.loop !140

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i135: ; preds = %.lr.ph.i.i.i.i.i131, %.noexc140
  %.0.lcssa.i.i.i.i.i136 = phi ptr [ %i.fz, %.noexc140 ], [ %i.gc, %.lr.ph.i.i.i.i.i131 ]
  %.not.i23.i.i137 = icmp eq ptr %.sroa.0199.0253, null
  br i1 %.not.i23.i.i137, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i135
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0199.0253, i64 noundef %i.fr) #29
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138: ; preds = %bb.bu, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i135
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fx
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit141

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit141: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138, %bb.br
  %.sroa.0199.2 = phi ptr [ %i.fz, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138 ], [ %.sroa.0199.0253, %bb.br ] ; 7 uses
  %.0.lcssa.i.i.i.i.i136.pn = phi ptr [ %.0.lcssa.i.i.i.i.i136, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138 ], [ %.sroa.9203.0254, %bb.br ]
  %.sroa.14.2 = phi ptr [ %i.gd, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138 ], [ %.sroa.14.0255, %bb.br ] ; 4 uses
  %.sroa.9203.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i136.pn, i64 16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0196.0257, i64 1 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.9.0256, i64 24 ; 2 uses
  %i.gg = load i8, ptr %i.ge, align 1, !tbaa !126 ; 2 uses
  %i.gh = icmp slt i8 %i.gg, -1
  br i1 %i.gh, label %.lr.ph.i.i143, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142

.lr.ph.i.i143:                                    ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit141, %.lr.ph.i.i143
  %i.gi = phi ptr [ %i.gl, %.lr.ph.i.i143 ], [ %i.gf, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit141 ]
  %i.gj = phi ptr [ %i.gk, %.lr.ph.i.i143 ], [ %i.ge, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit141 ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 2 uses
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !126 ; 2 uses
  %i.gn = icmp slt i8 %i.gm, -1
  br i1 %i.gn, label %.lr.ph.i.i143, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142, !llvm.loop !128

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142: ; preds = %.lr.ph.i.i143, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit141
  %.sroa.9.1 = phi ptr [ %i.gf, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit141 ], [ %i.gl, %.lr.ph.i.i143 ]
  %.sroa.0196.1 = phi ptr [ %i.ge, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit141 ], [ %i.gk, %.lr.ph.i.i143 ]
  %i.go = phi i8 [ %i.gg, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit141 ], [ %i.gm, %.lr.ph.i.i143 ]
  %i.gp = icmp eq i8 %i.go, -1
  br i1 %i.gp, label %._crit_edge260, label %.lr.ph259, !prof !22

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i127
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp:                               ; preds = %bb.bt
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %bb.ct

bb.bw:                                            ; preds = %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i.i.i.i, %.noexc125
  %.sroa.0199.0.lcssa336350 = phi ptr [ %.sroa.0199.0.lcssa336351, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i.i.i.i ], [ %.sroa.0199.2, %.noexc125 ] ; 5 uses
  %.sroa.14.0.lcssa342348 = phi ptr [ %.sroa.14.0.lcssa342349, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i.i.i.i ], [ %.sroa.14.2, %.noexc125 ] ; 4 uses
  %i.gq = phi i64 [ %i.fi, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i.i.i.i ], [ %i.ff, %.noexc125 ]
  %.sroa.2.0 = phi ptr [ null, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i.i.i.i ], [ %i.fl, %.noexc125 ]
  %.sink.i.i = phi ptr [ %i.fk, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i.i.i.i ], [ %i.fm, %.noexc125 ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i.i.i.i ], [ %scevgep.i.i.i.i.i, %.noexc125 ]
  store i32 3, ptr %23, align 8, !tbaa !150, !alias.scope !156
  %i.gr = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store ptr %.sroa.2.0, ptr %i.gr, align 8, !tbaa !134, !alias.scope !156
  %i.gs = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.gs, align 8, !tbaa !130, !alias.scope !156
  %i.gt = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 3 uses
  store ptr %.sink.i.i, ptr %i.gt, align 8, !tbaa !133, !alias.scope !156
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEEEEclISt6vectorIS6_SaIS6_EEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.80, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.gu = load ptr, ptr %i.gr, align 8, !tbaa !134 ; 3 uses
  %.not.i.i.i.i.i146 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i.i146, label %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !133
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gu to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.gy) #29
  br label %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  %i.gz = load i8, ptr %22, align 8, !tbaa !84, !range !32, !noundef !33
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.cl, label %bb.cc

bb.bz:                                            ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, %.noexc.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit150

bb.ca:                                            ; preds = %bb.bw
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %i.gr, align 8, !tbaa !134 ; 3 uses
  %.not.i.i.i.i.i147 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i147, label %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit150, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.he = load ptr, ptr %i.gt, align 8, !tbaa !133
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hh) #29
  br label %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit150

_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit150: ; preds = %bb.cb, %bb.ca, %bb.bz
  %.sroa.14.0.lcssa340 = phi ptr [ %.sroa.14.2, %bb.bz ], [ %.sroa.14.0.lcssa342348, %bb.cb ], [ %.sroa.14.0.lcssa342348, %bb.ca ]
  %.sroa.0199.0.lcssa334 = phi ptr [ %.sroa.0199.2, %bb.bz ], [ %.sroa.0199.0.lcssa336350, %bb.cb ], [ %.sroa.0199.0.lcssa336350, %bb.ca ]
  %.pn52.pn = phi { ptr, i32 } [ %i.hb, %bb.bz ], [ %i.hc, %bb.cb ], [ %i.hc, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.cs

bb.cc:                                            ; preds = %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  %i.hi = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !93 ; 2 uses
  %.not.i.i151 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i151, label %_ZNK7testing15AssertionResult15failure_messageEv.exit152, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit152

_ZNK7testing15AssertionResult15failure_messageEv.exit152: ; preds = %bb.ce, %bb.cd
  %i.hl = phi ptr [ %i.hk, %bb.ce ], [ @.str.66, %bb.cd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 86, ptr noundef %i.hl)
          to label %bb.cf unwind label %bb.ci

bb.cf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit152
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.cg unwind label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  %i.hm = load ptr, ptr %24, align 8, !tbaa !94   ; 3 uses
  %.not.i.i153 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i153, label %_ZN7testing7MessageD2Ev.exit155, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154: ; preds = %bb.cg
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !73
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(128) %i.hm) #30, !inline_history !96
  br label %_ZN7testing7MessageD2Ev.exit155

_ZN7testing7MessageD2Ev.exit155:                  ; preds = %bb.cg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cc
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit158

bb.ci:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit152
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cf
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #30
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn55 = phi { ptr, i32 } [ %i.hs, %bb.cj ], [ %i.hr, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  %i.ht = load ptr, ptr %24, align 8, !tbaa !94   ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i156, label %_ZN7testing7MessageD2Ev.exit158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %bb.ck
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !73
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(128) %i.ht) #30, !inline_history !96
  br label %_ZN7testing7MessageD2Ev.exit158

_ZN7testing7MessageD2Ev.exit158:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157, %bb.ck, %bb.ch
  %.pn55.pn = phi { ptr, i32 } [ %i.hq, %bb.ch ], [ %.pn55, %bb.ck ], [ %.pn55, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #30
  br label %bb.cs

bb.cl:                                            ; preds = %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit155
  %i.hx = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !93 ; 4 uses
  %.not.i.i159 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i159, label %_ZN7testing15AssertionResultD2Ev.exit163, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !18 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160: ; preds = %bb.cm
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !23
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit163

_ZN7testing15AssertionResultD2Ev.exit163:         ; preds = %bb.cl, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  %i.ie = load i64, ptr %20, align 8              ; 2 uses
  %i.if = and i64 %i.ie, 255                      ; 2 uses
  %notmask.i.i.i.i.i164 = shl nsw i64 -1, %i.if   ; 4 uses
  %i.ig = add nsw i64 %notmask.i.i.i.i.i164, 281474976710655
  %i.ih = or i64 %i.ig, %notmask.i.i.i.i.i164
  %i.ii = icmp eq i64 %i.ih, -1
  call void @llvm.assume(i1 %i.ii)
  %i.ij = icmp samesign ugt i64 %notmask.i.i.i.i.i164, -281474976710657
  call void @llvm.assume(i1 %i.ij)
  %i.ik = icmp eq i64 %i.if, 0
  br i1 %i.ik, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev.exit, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit163
  %26 = xor i64 %notmask.i.i.i.i.i164, -1
  %27 = and i64 %i.ie, 65536
  %.phi.trans.insert.i.i.i.a = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.a, align 8, !tbaa !23
  %i.il = icmp ne i64 %27, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %26, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i.i, i64 noundef 24, i64 noundef 8, i1 noundef zeroext %i.il)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev.exit unwind label %bb.cn

bb.cn:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i.i
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #31
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit163, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  %.not.i.i.i166 = icmp eq ptr %.sroa.0199.0.lcssa336350, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev.exit
  %i.io = ptrtoint ptr %.sroa.14.0.lcssa342348 to i64
  %i.ip = sub i64 %i.io, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0199.0.lcssa336350, i64 noundef %i.ip) #29
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev.exit, %bb.co
  %i.iq = load i64, ptr %18, align 8              ; 2 uses
  %i.ir = and i64 %i.iq, 255                      ; 2 uses
  %notmask.i.i.i.i.i167 = shl nsw i64 -1, %i.ir   ; 4 uses
  %i.is = add nsw i64 %notmask.i.i.i.i.i167, 281474976710655
  %i.it = or i64 %i.is, %notmask.i.i.i.i.i167
  %i.iu = icmp eq i64 %i.it, -1
  call void @llvm.assume(i1 %i.iu)
  %i.iv = icmp samesign ugt i64 %notmask.i.i.i.i.i167, -281474976710657
  call void @llvm.assume(i1 %i.iv)
  %i.iw = icmp eq i64 %i.ir, 0
  br i1 %i.iw, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev.exit175, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i.i171

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i.i171: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit
  %28 = xor i64 %notmask.i.i.i.i.i167, -1
  %29 = and i64 %i.iq, 65536
  %.phi.trans.insert.i.i.i169.a = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i.i170 = load ptr, ptr %.phi.trans.insert.i.i.i169.a, align 8, !tbaa !23
  %i.ix = icmp ne i64 %29, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %28, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i.i170, i64 noundef 24, i64 noundef 8, i1 noundef zeroext %i.ix)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev.exit175 unwind label %bb.cp

bb.cp:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i.i171
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  call void @__clang_call_terminate(ptr %i.iz) #31
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev.exit175: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.ja = load ptr, ptr %17, align 8, !tbaa !134  ; 3 uses
  %.not.i.i.i176 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit177, label %bb.cq

bb.cq:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev.exit175
  %i.jb = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !133
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %i.ja to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.jf) #29
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit177

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit177: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev.exit175, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %i.jg = load i64, ptr %1, align 8               ; 2 uses
  %i.jh = and i64 %i.jg, 255                      ; 2 uses
  %notmask.i.i.i.i.i178 = shl nsw i64 -1, %i.jh   ; 4 uses
  %i.ji = add nsw i64 %notmask.i.i.i.i.i178, 281474976710655
  %i.jj = or i64 %i.ji, %notmask.i.i.i.i.i178
  %i.jk = icmp eq i64 %i.jj, -1
  call void @llvm.assume(i1 %i.jk)
  %i.jl = icmp samesign ugt i64 %notmask.i.i.i.i.i178, -281474976710657
  call void @llvm.assume(i1 %i.jl)
  %i.jm = icmp eq i64 %i.jh, 0
  br i1 %i.jm, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev.exit186, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i.i182

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i.i182: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit177
  %30 = xor i64 %notmask.i.i.i.i.i178, -1
  %31 = and i64 %i.jg, 65536
  %.phi.trans.insert.i.i.i180.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i.i181 = load ptr, ptr %.phi.trans.insert.i.i.i180.a, align 8, !tbaa !23
  %i.jn = icmp ne i64 %31, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %30, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i.i181, i64 noundef 24, i64 noundef 8, i1 noundef zeroext %i.jn)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev.exit186 unwind label %bb.cr

bb.cr:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i.i182
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  %i.jp = extractvalue { ptr, i32 } %i.jo, 0
  call void @__clang_call_terminate(ptr %i.jp) #31
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev.exit186: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit177, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.cs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit158, %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit150
  %.sroa.14.0.lcssa339 = phi ptr [ %.sroa.14.0.lcssa342348, %_ZN7testing7MessageD2Ev.exit158 ], [ %.sroa.14.0.lcssa340, %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit150 ]
  %.sroa.0199.0.lcssa333 = phi ptr [ %.sroa.0199.0.lcssa336350, %_ZN7testing7MessageD2Ev.exit158 ], [ %.sroa.0199.0.lcssa334, %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit150 ]
  %.pn55.pn.pn = phi { ptr, i32 } [ %.pn55.pn, %_ZN7testing7MessageD2Ev.exit158 ], [ %.pn52.pn, %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit150 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.bv
  %.sroa.0199.0239 = phi ptr [ %.sroa.0199.0.lcssa333, %bb.cs ], [ %.sroa.0199.0253, %bb.bv ] ; 3 uses
  %.sroa.14.0233 = phi ptr [ %.sroa.14.0.lcssa339, %bb.cs ], [ %.sroa.14.0255, %bb.bv ]
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn, %bb.cs ], [ %lpad.phi, %bb.bv ] ; 2 uses
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  %.not.i.i.i187 = icmp eq ptr %.sroa.0199.0239, null
  br i1 %.not.i.i.i187, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit188, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jq = ptrtoint ptr %.sroa.14.0233 to i64
  %i.jr = ptrtoint ptr %.sroa.0199.0239 to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0199.0239, i64 noundef %i.js) #29
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit188

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit188: ; preds = %bb.cu, %bb.ct, %.thread, %bb.bm
  %.pn64.pn.pn = phi { ptr, i32 } [ %lpad.phi226, %bb.bm ], [ %.pn59.pn.pn, %bb.cu ], [ %.pn59.pn.pn, %bb.ct ], [ %i.fo, %.thread ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #30
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit188, %bb.bh
  %.pn64.pn.pn.pn = phi { ptr, i32 } [ %.pn64.pn.pn, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit188 ], [ %i.de, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.jt = load ptr, ptr %17, align 8, !tbaa !134  ; 3 uses
  %.not.i.i.i189 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit190, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ju = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !133
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %i.jt to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jy) #29
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit190

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit190: ; preds = %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit190, %bb.bg, %bb.an, %bb.v
  %.pn64.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn64.pn.pn.pn, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit190 ], [ %.pn48.pn.pn, %bb.bg ], [ %.pn42.pn.pn, %bb.an ], [ %.pn36.pn.pn, %bb.v ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn64.pn.pn.pn.pn
}

declare void @_ZN4absl12lts_2026052611GetAllFlagsEv(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::flat_hash_map") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE4findIA9_cEENSB_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(9) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA9_cEENSB_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !23 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !10 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !12
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(9) %1) #30
  %i.f = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %i.e
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA9_cEENSB_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA9_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i.i, ptr nonnull align 1 dereferenceable(9) %1, i64 %.sroa.0.0.copyload.i.i.i.i.i.i)
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA9_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA9_cEENSB_8iteratorERKT_.exit

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA9_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA9_cEENSB_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !23
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = lshr i64 %i.a, 8
  %i.k = and i64 %i.j, 255
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(9) %1) #30
  %i.m = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.k, ptr noundef nonnull align 1 dereferenceable(9) %1, i64 noundef %i.l)
  %i.n = tail call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIA9_cEENSB_8iteratorERKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(9) %1, i64 noundef %i.m)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA9_cEENSB_8iteratorERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA9_cEENSB_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA9_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %bb.e
  %.pn = phi { ptr, ptr } [ %i.n, %bb.e ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA9_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE4findIA18_cEENSB_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(18) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA18_cEENSB_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !23 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !10 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !12
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %1) #30
  %i.f = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %i.e
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA18_cEENSB_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA18_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i.i, ptr nonnull align 1 dereferenceable(18) %1, i64 %.sroa.0.0.copyload.i.i.i.i.i.i)
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA18_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA18_cEENSB_8iteratorERKT_.exit

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA18_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA18_cEENSB_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !23
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = lshr i64 %i.a, 8
  %i.k = and i64 %i.j, 255
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %1) #30
  %i.m = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.k, ptr noundef nonnull align 1 dereferenceable(18) %1, i64 noundef %i.l)
  %i.n = tail call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIA18_cEENSB_8iteratorERKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(18) %1, i64 noundef %i.m)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA18_cEENSB_8iteratorERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA18_cEENSB_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA18_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %bb.e
  %.pn = phi { ptr, ptr } [ %i.n, %bb.e ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA18_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE4findIA20_cEENSB_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA20_cEENSB_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !23 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !10 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !12
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %1) #30
  %i.f = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %i.e
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA20_cEENSB_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA20_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i.i, ptr nonnull align 1 dereferenceable(20) %1, i64 %.sroa.0.0.copyload.i.i.i.i.i.i)
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA20_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA20_cEENSB_8iteratorERKT_.exit

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA20_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA20_cEENSB_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !23
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = lshr i64 %i.a, 8
  %i.k = and i64 %i.j, 255
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %1) #30
  %i.m = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.k, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 noundef %i.l)
  %i.n = tail call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIA20_cEENSB_8iteratorERKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 noundef %i.m)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA20_cEENSB_8iteratorERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIA20_cEENSB_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA20_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %bb.e
  %.pn = phi { ptr, ptr } [ %i.n, %bb.e ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIA20_cNS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEEEEclISt6vectorIS6_SaIS6_EEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::Matcher", align 8  ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28, !noalias !174 ; 3 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !150, !noalias !174
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175, !noalias !174
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !175, !noalias !174
  invoke void @_ZN7testing8internal31UnorderedElementsAreMatcherImplIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEC2IN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEENS0_23UnorderedMatcherRequire5FlagsET_SK_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %i.b, ptr %i.d, ptr %i.f)
          to label %_ZN7testing15SafeMatcherCastIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EENS_8internal32UnorderedElementsAreArrayMatcherIS5_EEEENS_7MatcherIT_EERKT0_.exit unwind label %bb.b, !noalias !174

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn21, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #29, !noalias !174
  br label %common.resume

_ZN7testing15SafeMatcherCastIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EENS_8internal32UnorderedElementsAreArrayMatcherIS5_EEEENS_7MatcherIT_EERKT0_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE9GetVTableINSB_11ValuePolicyIPKNS_16MatcherInterfaceISA_EELb1EEEEEPKNSB_6VTableEvE7kVTable, ptr %i.h, align 8, !tbaa !176, !alias.scope !174
  %i.j = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28, !noalias !174 ; 3 uses
  store i32 1, ptr %i.j, align 4, !tbaa !180, !noalias !174
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = ptrtoint ptr %i.a to i64
  store i64 %i.l, ptr %i.k, align 8, !tbaa !182, !noalias !174
  store ptr %i.j, ptr %i.i, align 8, !tbaa !23, !alias.scope !174
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE, i64 16), ptr %8, align 8, !tbaa !73, !alias.scope !174
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !184
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %7, align 8, !tbaa !73
  %i.n = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZN7testing15SafeMatcherCastIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EENS_8internal32UnorderedElementsAreArrayMatcherIS5_EEEENS_7MatcherIT_EERKT0_.exit
  br i1 %i.n, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE15MatchAndExplainESA_PNS_19MatchResultListenerE.exit.i, label %.noexc3.i

.noexc3.i:                                        ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.92, i32 noundef 234)
          to label %.noexc23 unwind label %bb.e

.noexc23:                                         ; preds = %.noexc3.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.93, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc23
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE15MatchAndExplainESA_PNS_19MatchResultListenerE.exit.i

.body.i:                                          ; preds = %.noexc23
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %.body

_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE15MatchAndExplainESA_PNS_19MatchResultListenerE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !187
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %7)
          to label %bb.c unwind label %bb.e, !inline_history !189

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE15MatchAndExplainESA_PNS_19MatchResultListenerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
          to label %bb.al unwind label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE15MatchAndExplainESA_PNS_19MatchResultListenerE.exit.i, %.noexc3.i, %_ZN7testing15SafeMatcherCastIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EENS_8internal32UnorderedElementsAreArrayMatcherIS5_EEEENS_7MatcherIT_EERKT0_.exit, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.85, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !190
  %i.ac = or i32 %i.ab, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.z, i32 noundef %i.ac)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.p

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #30
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %2, i64 noundef %i.ad)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %bb.h, %bb.i
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.86, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.87, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.ai = icmp ne ptr %i.ah, null
  %i.aj = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ai)
          to label %.noexc33 unwind label %bb.p

.noexc33:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  br i1 %i.aj, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.92, i32 noundef 246)
          to label %.noexc34 unwind label %bb.p

.noexc34:                                         ; preds = %bb.j
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.93, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc34
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.l

bb.k:                                             ; preds = %.noexc34
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.body35

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc33
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !197
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE10DescribeToEPSo.exit unwind label %bb.p, !inline_history !198

_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE10DescribeToEPSo.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !184
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !73
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ap)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE10DescribeToEPSo.exit
  %i.as = invoke noundef zeroext i1 @_ZN7testing8internal20MatchPrintAndExplainIKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EERS9_EEbRT_RKNS_7MatcherIT0_EEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %10)
end_hunk_1
begin_hunk_2_@_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_32UnorderedElementsAreArrayMatcherISt17basic_string_viewIcSt11char_traitsIcEEEEEclISt6vectorIS6_SaIS6_EEEENS_15AssertionResultEPKcRKT_:bb.a
_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !73
  %i.dn = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.dn, ptr %i.ap, align 8, !tbaa !73
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dn, i64 -24    ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %i.ap, i64 %i.dq
  store ptr %i.do, ptr %i.dr, align 8, !tbaa !73
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.ds, ptr %i.aq, align 8, !tbaa !73
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dt, align 8, !tbaa !73
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !18 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZN7testing25StringMatchResultListenerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !23
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #29, !inline_history !216
  br label %_ZN7testing25StringMatchResultListenerD2Ev.exit

_ZN7testing25StringMatchResultListenerD2Ev.exit:  ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dt, align 8, !tbaa !73
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 96
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ea) #30, !inline_history !216
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.eb, ptr %i.ap, align 8, !tbaa !73
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.eb, i64 -24    ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds i8, ptr %i.ap, i64 %i.ee
  store ptr %i.ec, ptr %i.ef, align 8, !tbaa !73
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 0, ptr %i.eg, align 8, !tbaa !109
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 144
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.eh) #30, !inline_history !216
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  store ptr %i.dn, ptr %9, align 8, !tbaa !73
  %i.ei = load i64, ptr %i.dp, align 8
  %i.ej = getelementptr inbounds i8, ptr %9, i64 %i.ei
  store ptr %i.do, ptr %i.ej, align 8, !tbaa !73
  store ptr %i.ds, ptr %i.u, align 8, !tbaa !73
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ek, align 8, !tbaa !73
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !18 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !23
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ek, align 8, !tbaa !73
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.er) #30
  store ptr %i.eb, ptr %9, align 8, !tbaa !73
  %i.es = load i64, ptr %i.ed, align 8
  %i.et = getelementptr inbounds i8, ptr %9, i64 %i.es
  store ptr %i.ec, ptr %i.et, align 8, !tbaa !73
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.eu, align 8, !tbaa !109
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ev) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.al

bb.ae:                                            ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %11, align 8, !tbaa !18   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.az
  br i1 %i.ey, label %.body43, label %.body43.sink.split

.body43.sink.split:                               ; preds = %bb.ae, %bb.t
  %.sink = phi ptr [ %i.bn, %bb.t ], [ %i.ex, %bb.ae ]
  %.pn.ph = phi { ptr, i32 } [ %i.bm, %bb.t ], [ %i.ew, %bb.ae ]
  %i.ez = load i64, ptr %i.az, align 8, !tbaa !23
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fa) #29
  br label %.body43

.body43:                                          ; preds = %.body43.sink.split, %bb.ae, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.t ], [ %i.ew, %bb.ae ], [ %.pn.ph, %.body43.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.ai

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.ab
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.body50:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %bb.ag
  %eh.lpad-body51 = phi { ptr, i32 } [ %i.fc, %bb.ag ], [ %i.cx, %_ZN7testing7MessageD2Ev.exit5.i ] ; 2 uses
  %i.fd = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.bx
  br i1 %i.fe, label %.body46, label %.body46.sink.split

.body46.sink.split:                               ; preds = %.body50, %bb.x
  %.sink90 = phi ptr [ %i.cl, %bb.x ], [ %i.fd, %.body50 ]
  %.pn14.ph = phi { ptr, i32 } [ %i.ck, %bb.x ], [ %eh.lpad-body51, %.body50 ]
  %i.ff = load i64, ptr %i.bx, align 8, !tbaa !23
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %.sink90, i64 noundef %i.fg) #29
  br label %.body46

.body46:                                          ; preds = %.body46.sink.split, %.body50, %bb.x
  %.pn14 = phi { ptr, i32 } [ %i.ck, %bb.x ], [ %eh.lpad-body51, %.body50 ], [ %.pn14.ph, %.body46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #30
  br label %bb.ah

bb.ah:                                            ; preds = %.body46, %bb.af
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.body46 ], [ %i.fb, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.body43, %bb.r
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.ah ], [ %.pn, %.body43 ], [ %i.ax, %bb.r ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %10) #30
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.q
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.ai ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %.body35

.body35:                                          ; preds = %bb.p, %bb.k, %bb.aj
  %.pn14.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn, %bb.aj ], [ %i.av, %bb.p ], [ %i.al, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #30
  br label %bb.ak

bb.ak:                                            ; preds = %.body35, %bb.o
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn, %.body35 ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.body

bb.al:                                            ; preds = %bb.d, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEE, i64 16), ptr %8, align 8, !tbaa !73
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i66, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE8IsSharedEv.exit.i.i: ; preds = %bb.al
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !217
  %.not.i.i67 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i67, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE8IsSharedEv.exit.i.i
  %i.fk = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.fl = atomicrmw sub ptr %i.fk, i32 1 acq_rel, align 4
  %i.fm = icmp eq i32 %i.fl, 1
  br i1 %i.fm, label %bb.an, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEED2Ev.exit

bb.an:                                            ; preds = %bb.am
  %i.fn = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !217
  %i.fq = load ptr, ptr %i.i, align 8, !tbaa !23
  invoke void %i.fp(ptr noundef %i.fq)
          to label %_ZN7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEED2Ev.exit unwind label %bb.ao, !inline_history !218

bb.ao:                                            ; preds = %bb.an
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #31, !inline_history !219
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEED2Ev.exit: ; preds = %bb.al, %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE8IsSharedEv.exit.i.i, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret void

.body:                                            ; preds = %bb.e, %.body.i, %bb.ak
  %.pn21 = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.ak ], [ %i.t, %bb.e ], [ %i.p, %.body.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 255                        ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.b         ; 4 uses
  %i.c = add nsw i64 %notmask.i.i.i.i, 281474976710655
  %i.d = or i64 %i.c, %notmask.i.i.i.i
  %i.e = icmp eq i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %notmask.i.i.i.i, -281474976710657
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE15destructor_implEv.exit, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i: ; preds = %bb.a
  %1 = xor i64 %notmask.i.i.i.i, -1
  %2 = and i64 %i.a, 65536
  %.phi.trans.insert.i.i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i.a, align 8, !tbaa !23
  %i.h = icmp ne i64 %2, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 noundef 24, i64 noundef 8, i1 noundef zeroext %i.h)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE15destructor_implEv.exit unwind label %bb.b

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE15destructor_implEv.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i
  ret void

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_SI_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %15, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.68, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.c ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.d = load ptr, ptr %15, align 8, !tbaa !94    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #30, !inline_history !118
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !94    ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #30, !inline_history !118
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc15 unwind label %bb.ah

.noexc15:                                         ; preds = %bb.d
  %i.m = icmp eq ptr %1, null
  %i.n = load ptr, ptr %14, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br i1 %i.m, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc15
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc15
  %i.q = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.74, %.noexc15 ]
  %i.r = phi i64 [ %i.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %.noexc15 ]
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.f ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.t = load ptr, ptr %14, align 8, !tbaa !94    ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i13, label %bb.g, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14: ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #30, !inline_history !119
  br label %bb.g

bb.f:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %14, align 8, !tbaa !94    ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.f
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #30, !inline_history !119
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %.body

bb.g:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc23 unwind label %bb.ah

.noexc23:                                         ; preds = %bb.g
  %i.ac = load ptr, ptr %13, align 8, !tbaa !94
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 1 dereferenceable(3) @.str.69, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i unwind label %bb.i ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i:      ; preds = %.noexc23
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i
  %i.af = load ptr, ptr %13, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i21, label %bb.j, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22: ; preds = %bb.h
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.af) #30, !inline_history !120
  br label %bb.j

bb.i:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i, %.noexc23
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %13, align 8, !tbaa !94   ; 3 uses
  %.not.i.i3.i18 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i3.i18, label %_ZN7testing7MessageD2Ev.exit5.i20, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19: ; preds = %bb.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #30, !inline_history !120
  br label %_ZN7testing7MessageD2Ev.exit5.i20

_ZN7testing7MessageD2Ev.exit5.i20:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %.body

bb.j:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc34 unwind label %bb.ah

.noexc34:                                         ; preds = %bb.j
  %i.ao = icmp eq ptr %5, null
  %i.ap = load ptr, ptr %12, align 8, !tbaa !94
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  br i1 %i.ao, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26: ; preds = %.noexc34
  %i.ar = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #30
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26, %.noexc34
  %i.as = phi ptr [ %5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26 ], [ @.str.74, %.noexc34 ]
  %i.at = phi i64 [ %i.ar, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26 ], [ 6, %.noexc34 ]
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.as, i64 noundef %i.at)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i31 unwind label %bb.l ; 0 uses

end_hunk_2
begin_hunk_3_@_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_SI_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !23
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  ret void

bb.ah:                                            ; preds = %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d, %bb.a
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.v
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.aj:                                            ; preds = %bb.y, %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENSt7__cxx1112basic_stringIcS9_SaIcEEERKT_RKT0_.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body77

bb.ak:                                            ; preds = %bb.ab
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.al:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENSt7__cxx1112basic_stringIcS9_SaIcEEERKT_RKT0_.exit88, %bb.ae
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body96

.body96:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i91, %bb.al
  %eh.lpad-body97 = phi { ptr, i32 } [ %i.fd, %bb.al ], [ %i.ed, %_ZN7testing7MessageD2Ev.exit5.i91 ] ; 2 uses
  %i.fe = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %.body96
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !23
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %.body96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.ak ], [ %eh.lpad-body97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %eh.lpad-body97, %.body96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %.body77

.body77:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i73, %_ZN7testing7MessageD2Ev.exit5.i81, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.dc, %_ZN7testing7MessageD2Ev.exit5.i73 ], [ %i.fb, %bb.aj ], [ %i.do, %_ZN7testing7MessageD2Ev.exit5.i81 ] ; 2 uses
  %i.fj = load ptr, ptr %17, align 8, !tbaa !18   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %.body77
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !23
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %.body77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn.pn, %.body77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.body

.body:                                            ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %_ZN7testing7MessageD2Ev.exit5.i20, %_ZN7testing7MessageD2Ev.exit5.i40, %bb.ah, %_ZN7testing7MessageD2Ev.exit5.i62, %_ZN7testing7MessageD2Ev.exit6.i52, %_ZN7testing7MessageD2Ev.exit6.i30, %_ZN7testing7MessageD2Ev.exit6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.h, %_ZN7testing7MessageD2Ev.exit5.i ], [ %i.x, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.aj, %_ZN7testing7MessageD2Ev.exit5.i20 ], [ %i.az, %_ZN7testing7MessageD2Ev.exit6.i30 ], [ %i.bl, %_ZN7testing7MessageD2Ev.exit5.i40 ], [ %i.cb, %_ZN7testing7MessageD2Ev.exit6.i52 ], [ %i.ez, %bb.ah ], [ %i.cn, %_ZN7testing7MessageD2Ev.exit5.i62 ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS2_15CommandLineFlagEEEJEE8iteratorEEENSt7__cxx1112basic_stringIcS8_SaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal20PrintBytesInObjectToEPKhmPSo(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 16, ptr noundef nonnull %i.a)
          to label %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorEE5PrintERKSF_PSo.exit unwind label %bb.e

_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorEE5PrintERKSF_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !24, !alias.scope !226
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !21, !alias.scope !226
  store i8 0, ptr %i.b, align 8, !tbaa !23, !alias.scope !226
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104, !noalias !226 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !226 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorEE5PrintERKSF_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108, !noalias !226 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !226 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !23, !alias.scope !226
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorEE5PrintERKSF_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !73
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !73
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !23
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #30
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !73
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !109
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN7testing8internal20PrintBytesInObjectToEPKhmPSo(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIA9_cEENSB_8iteratorERKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(9) %1, i64 noundef %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noalias !227
  %i.b = and i64 %i.a, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.b
  %i.c = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.d = lshr i64 %2, 57
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !23 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i14 = load ptr, ptr %i.g, align 8, !tbaa !23 ; 2 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.sroa.13.0 = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.f ]
  %.pn = phi i64 [ %2, %bb.a ], [ %i.ah, %bb.f ]
  %.sroa.628.0 = and i64 %.pn, %i.c               ; 4 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14, i64 %.sroa.628.0
  tail call void @llvm.prefetch.p0(ptr %i.j, i32 0, i32 3, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.628.0
  %i.l = load <16 x i8>, ptr %i.k, align 1, !tbaa !23 ; 2 uses
  %i.m = icmp eq <16 x i8> %i.i, %i.l
  %i.n = bitcast <16 x i1> %i.m to i16
  %i.o = zext i16 %i.n to i32
  %i.p = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.o) #33, !srcloc !230 ; 2 uses
  %.not49 = icmp eq i32 %i.p, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.019.050 = phi i32 [ %i.p, %.lr.ph ], [ %i.ab, %bb.e ] ; 3 uses
  %i.s = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050, i1 true)
  %i.t = zext nneg i32 %i.s to i64
  %i.u = add nuw i64 %.sroa.628.0, %i.t
  %i.v = and i64 %i.u, %i.c                       ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14, i64 %i.v ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !10
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !12
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.q
  br i1 %i.x, label %bb.d, label %bb.e, !prof !231

bb.d:                                             ; preds = %bb.c
  br i1 %i.r, label %.thread36, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr nonnull %1, i64 %i.q)
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.thread36, label %bb.e

.thread36:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  br label %.loopexit

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.aa = add i32 %.sroa.019.050, -1
  %i.ab = and i32 %i.aa, %.sroa.019.050           ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.ac = icmp eq <16 x i8> %i.l, splat (i8 -128)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = zext i16 %i.ad to i32
  %i.af = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ae) #33, !srcloc !230
  %.not47 = icmp eq i32 %i.af, 0
  br i1 %.not47, label %bb.f, label %.loopexit, !prof !22

bb.f:                                             ; preds = %._crit_edge
  %i.ag = add i64 %.sroa.13.0, 16                 ; 2 uses
  %i.ah = add i64 %.sroa.628.0, %i.ag
  br label %bb.b, !llvm.loop !232

.loopexit:                                        ; preds = %._crit_edge, %.thread36
  %.sroa.0.4.ph = phi ptr [ %i.z, %.thread36 ], [ null, %._crit_edge ]
  %.sroa.3.4.ph = phi ptr [ %i.w, %.thread36 ], [ undef, %._crit_edge ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.4.ph, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i.i = load i64, ptr %i.b, align 1
  %i.c = icmp samesign ugt i64 %2, 3
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i34.i = load i32, ptr %1, align 1
  %i.d = zext i32 %.0.copyload.i.i34.i to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.g, align 1
  %i.h = zext i32 %.0.copyload.i4.i.i to i64
  %i.i = or disjoint i64 %i.e, %i.h
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %1, align 1, !tbaa !23
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 16
  %i.m = getelementptr i8, ptr %1, i64 %2
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23
  %i.p = zext i8 %i.o to i64
  %i.q = or disjoint i64 %i.l, %i.p
  %i.r = lshr i64 %2, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !23
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = or disjoint i64 %i.q, %i.v
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i

_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.i, %bb.c ], [ %i.w, %bb.e ], [ 87, %bb.d ]
  %i.x = xor i64 %.0.copyload.i.i.i, %.0.i.i
  %i.y = xor i64 %i.x, %0
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw nsw i128 %i.z, 8779197792823184629 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.f:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %2, 17
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i38.i = load i64, ptr %i.af, align 1
  %.0.copyload.i.i.i.i = load i64, ptr %1, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.0.copyload.i.i2.i.i = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i38.i, %.0.copyload.i.i.i.i
  %i.aj = xor i64 %i.ai, %0
  %i.ak = xor i64 %.0.copyload.i.i2.i.i, 8779197792823184629
  %i.al = zext i64 %i.aj to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.al, %i.am               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp ult i64 %2, 33
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i42.i = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i42.i, %0        ; 2 uses
  %.0.copyload.i.i43.i = load i64, ptr %1, align 1
  %i.au = xor i64 %.0.copyload.i.i43.i, 1376283091369227076
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i44.i = load i64, ptr %i.av, align 1
  %i.aw = xor i64 %.0.copyload.i.i44.i, %i.at
  %i.ax = zext i64 %i.au to i128
  %i.ay = zext i64 %i.aw to i128
  %i.az = mul nuw i128 %i.ay, %i.ax               ; 2 uses
  %i.ba = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -16
  %.0.copyload.i.i48.i = load i64, ptr %i.bb, align 1
  %i.bc = xor i64 %.0.copyload.i.i48.i, 589684135938649225
  %i.bd = getelementptr i8, ptr %i.ba, i64 -8
  %.0.copyload.i.i49.i = load i64, ptr %i.bd, align 1
  %i.be = xor i64 %.0.copyload.i.i49.i, %i.at
  %i.bf = zext i64 %i.bc to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = xor i128 %i.bh, %i.az
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = xor i128 %i.az, %i.bj
  %i.bl = xor i128 %i.bk, %i.bh
  %i.bm = trunc i128 %i.bl to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bn = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i, %bb.g, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ad, %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i ], [ %i.aq, %bb.g ], [ %i.bm, %bb.i ], [ %i.bn, %bb.j ]
  ret i64 %.0.i
}

declare noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS2_15CommandLineFlagEEEJEE8iteratorEEENSt7__cxx1112basic_stringIcS8_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS2_15CommandLineFlagEEEJEE8iteratorEEENSt7__cxx1112basic_stringIcS8_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENSt7__cxx1112basic_stringIcS9_SaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENSt7__cxx1112basic_stringIcS9_SaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENSt7__cxx1112basic_stringIcS9_SaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !23
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.f = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !23
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENSt7__cxx1112basic_stringIcS9_SaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !23
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.r = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !23
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIA18_cEENSB_8iteratorERKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(18) %1, i64 noundef %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noalias !233
  %i.b = and i64 %i.a, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.b
  %i.c = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.d = lshr i64 %2, 57
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !23 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i14 = load ptr, ptr %i.g, align 8, !tbaa !23 ; 2 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.sroa.13.0 = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.f ]
  %.pn = phi i64 [ %2, %bb.a ], [ %i.ah, %bb.f ]
  %.sroa.628.0 = and i64 %.pn, %i.c               ; 4 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14, i64 %.sroa.628.0
  tail call void @llvm.prefetch.p0(ptr %i.j, i32 0, i32 3, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.628.0
  %i.l = load <16 x i8>, ptr %i.k, align 1, !tbaa !23 ; 2 uses
  %i.m = icmp eq <16 x i8> %i.i, %i.l
  %i.n = bitcast <16 x i1> %i.m to i16
  %i.o = zext i16 %i.n to i32
  %i.p = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.o) #33, !srcloc !230 ; 2 uses
  %.not49 = icmp eq i32 %i.p, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.019.050 = phi i32 [ %i.p, %.lr.ph ], [ %i.ab, %bb.e ] ; 3 uses
  %i.s = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050, i1 true)
  %i.t = zext nneg i32 %i.s to i64
  %i.u = add nuw i64 %.sroa.628.0, %i.t
  %i.v = and i64 %i.u, %i.c                       ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14, i64 %i.v ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !10
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !12
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.q
  br i1 %i.x, label %bb.d, label %bb.e, !prof !231

bb.d:                                             ; preds = %bb.c
  br i1 %i.r, label %.thread36, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr nonnull %1, i64 %i.q)
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.thread36, label %bb.e

.thread36:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  br label %.loopexit

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.aa = add i32 %.sroa.019.050, -1
  %i.ab = and i32 %i.aa, %.sroa.019.050           ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.ac = icmp eq <16 x i8> %i.l, splat (i8 -128)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = zext i16 %i.ad to i32
  %i.af = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ae) #33, !srcloc !230
  %.not47 = icmp eq i32 %i.af, 0
  br i1 %.not47, label %bb.f, label %.loopexit, !prof !22

bb.f:                                             ; preds = %._crit_edge
  %i.ag = add i64 %.sroa.13.0, 16                 ; 2 uses
  %i.ah = add i64 %.sroa.628.0, %i.ag
  br label %bb.b, !llvm.loop !236

.loopexit:                                        ; preds = %._crit_edge, %.thread36
  %.sroa.0.4.ph = phi ptr [ %i.z, %.thread36 ], [ null, %._crit_edge ]
  %.sroa.3.4.ph = phi ptr [ %i.w, %.thread36 ], [ undef, %._crit_edge ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.4.ph, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIA20_cEENSB_8iteratorERKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 noundef %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noalias !237
  %i.b = and i64 %i.a, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.b
  %i.c = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.d = lshr i64 %2, 57
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !23 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i14 = load ptr, ptr %i.g, align 8, !tbaa !23 ; 2 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.sroa.13.0 = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.f ]
  %.pn = phi i64 [ %2, %bb.a ], [ %i.ah, %bb.f ]
  %.sroa.628.0 = and i64 %.pn, %i.c               ; 4 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14, i64 %.sroa.628.0
  tail call void @llvm.prefetch.p0(ptr %i.j, i32 0, i32 3, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.628.0
  %i.l = load <16 x i8>, ptr %i.k, align 1, !tbaa !23 ; 2 uses
  %i.m = icmp eq <16 x i8> %i.i, %i.l
  %i.n = bitcast <16 x i1> %i.m to i16
  %i.o = zext i16 %i.n to i32
  %i.p = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.o) #33, !srcloc !230 ; 2 uses
  %.not49 = icmp eq i32 %i.p, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.019.050 = phi i32 [ %i.p, %.lr.ph ], [ %i.ab, %bb.e ] ; 3 uses
  %i.s = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050, i1 true)
  %i.t = zext nneg i32 %i.s to i64
  %i.u = add nuw i64 %.sroa.628.0, %i.t
  %i.v = and i64 %i.u, %i.c                       ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14, i64 %i.v ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !10
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !12
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.q
  br i1 %i.x, label %bb.d, label %bb.e, !prof !231

bb.d:                                             ; preds = %bb.c
  br i1 %i.r, label %.thread36, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr nonnull %1, i64 %i.q)
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.thread36, label %bb.e

.thread36:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  br label %.loopexit

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.aa = add i32 %.sroa.019.050, -1
  %i.ab = and i32 %i.aa, %.sroa.019.050           ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.ac = icmp eq <16 x i8> %i.l, splat (i8 -128)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = zext i16 %i.ad to i32
  %i.af = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ae) #33, !srcloc !230
  %.not47 = icmp eq i32 %i.af, 0
  br i1 %.not47, label %bb.f, label %.loopexit, !prof !22

bb.f:                                             ; preds = %._crit_edge
  %i.ag = add i64 %.sroa.13.0, 16                 ; 2 uses
  %i.ah = add i64 %.sroa.628.0, %i.ag
  br label %bb.b, !llvm.loop !240

.loopexit:                                        ; preds = %._crit_edge, %.thread36
  %.sroa.0.4.ph = phi ptr [ %i.z, %.thread36 ], [ null, %._crit_edge ]
  %.sroa.3.4.ph = phi ptr [ %i.w, %.thread36 ], [ undef, %._crit_edge ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.4.ph, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.92, i32 noundef 246)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.93, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !197
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal20MatchPrintAndExplainIKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EERS9_EEbRT_RKNS_7MatcherIT0_EEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %6 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !184
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %5, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.f = icmp ne ptr %i.e, null
  %i.g = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.f)
  br i1 %i.g, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE7MatchesESA_.exit, label %.noexc3.i

.noexc3.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.92, i32 noundef 234)
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.93, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc3.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE7MatchesESA_.exit

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %.body.i ], [ %.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %.noexc3.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE7MatchesESA_.exit: ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !187
  %i.l = call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5), !inline_history !241
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !184
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %6, align 8, !tbaa !73
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !176
  %i.r = icmp ne ptr %i.q, null
  %i.s = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.r)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  br i1 %i.s, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.92, i32 noundef 234)
          to label %.noexc23 unwind label %bb.g

.noexc23:                                         ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.93, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc23
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.f
end_hunk_3
