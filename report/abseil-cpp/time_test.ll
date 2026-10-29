Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/time_test?download=true
inline.NumInlined: 7926
inline.NumDeleted: 2008
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7testing13PrintToStringIN4absl12lts_202605264TimeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !92, !alias.scope !343
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !91, !alias.scope !343
  store i8 0, ptr %i.q, align 8, !tbaa !90, !alias.scope !343
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94, !noalias !343 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !noalias !343 ; 2 uses
  %i.w = icmp ugt ptr %i.t, %i.v
  %.08.i.i.i = select i1 %i.w, ptr %i.t, ptr %i.v ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95, !noalias !343 ; 2 uses
  %i.z = ptrtoint ptr %.08.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.ab)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !87, !alias.scope !343 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.q
  br i1 %i.af, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !90, !alias.scope !343
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #28
  br label %.body

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.aj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aj, ptr %3, align 8, !tbaa !54
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !54
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ap, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !87 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !90
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #28
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ap, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #26
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ax, ptr %3, align 8, !tbaa !54
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %3, i64 %i.ba
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !54
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !97
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i.i.i.i ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ad, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #8 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn memory(read, argmem: readwrite)
declare void @_ZN4absl12lts_2026052610FormatTimeB5cxx11ENS0_4TimeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, i32) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_119Time_UnixEpoch_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_119Time_UnixEpoch_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_119Time_UnixEpoch_TestE, i64 16), ptr %i.a, align 8, !tbaa !54
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_119Time_UnixEpoch_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119Time_UnixEpoch_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.absl::lts_20260526::TimeZone::CivilInfo", align 8 ; 12 uses
  %2 = alloca %"class.absl::lts_20260526::TimeZone", align 8 ; 4 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %4 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.absl::lts_20260526::Duration", align 8 ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.c = tail call ptr @_ZN4absl12lts_2026052613time_internal4cctz13utc_time_zoneEv()
  store ptr %i.c, ptr %2, align 8
  call void @_ZNK4absl12lts_202605268TimeZone2AtENS0_4TimeE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::TimeZone::CivilInfo") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 0, i32 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 1970, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i40 257, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.d = load i64, ptr %1, align 8, !tbaa !100, !noalias !352
  %i.e = icmp eq i64 %i.d, 1970
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <4 x i8>, ptr %i.f, align 8
  %.fr = freeze <4 x i8> %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i8, ptr %i.h, align 4
  %i.j = icmp eq i8 %i.i, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.k = icmp eq i32 %.fr.scalar, 257
  %op.rdx = select i1 %i.k, i1 %i.e, i1 false
  %op.rdx89 = select i1 %op.rdx, i1 %i.j, i1 false
  br i1 %op.rdx89, label %bb.b, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %bb.a
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.b, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.l = load i8, ptr %3, align 8, !tbaa !80, !range !81, !noundef !82
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.l, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83   ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.p, %bb.e ], [ @.str.64, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 131, ptr noundef %i.q)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.r = load ptr, ptr %5, align 8, !tbaa !89     ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.r, null
  br i1 %.not.i.i27, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(128) %i.r) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit30

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.w, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.y = load ptr, ptr %5, align 8, !tbaa !89     ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.y, null
  br i1 %.not.i.i28, label %_ZN7testing7MessageD2Ev.exit30, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29: ; preds = %bb.k
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit30

_ZN7testing7MessageD2Ev.exit30:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29, %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %.pn, %bb.k ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.an

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83 ; 4 uses
  %.not.i.i31 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i31, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !90
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i64 0, ptr %8, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %.sroa.22.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.aj, align 8, !tbaa !69, !noalias !353
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.24.0.copyload.i.i = load i32, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !69, !noalias !353
  %i.ak = icmp eq i64 %.sroa.03.0.copyload.i.i, 0
  %i.al = icmp eq i32 %.sroa.24.0.copyload.i.i, 0
  %spec.select.i.i.i = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %spec.select.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %i.aj)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.am = load i8, ptr %7, align 8, !tbaa !80, !range !81, !noundef !82
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.y, label %bb.p

bb.p:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !83 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i32, label %_ZNK7testing15AssertionResult15failure_messageEv.exit33, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit33

_ZNK7testing15AssertionResult15failure_messageEv.exit33: ; preds = %bb.r, %bb.q
  %i.ar = phi ptr [ %i.aq, %bb.r ], [ @.str.64, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 132, ptr noundef %i.ar)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit33
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.as = load ptr, ptr %9, align 8, !tbaa !89    ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.as, null
  br i1 %.not.i.i34, label %_ZN7testing7MessageD2Ev.exit36, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35: ; preds = %bb.t
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit36

_ZN7testing7MessageD2Ev.exit36:                   ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.y

bb.u:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit39

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit33
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.x
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_127Time_NextTransitionNYC_Test8TestBodyEv:.noexc.i
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.u, 1
  %.fca.0.extract.i = extractvalue { i64, i64 } %i.u, 0
  %.sroa.024.0.copyload = load ptr, ptr %3, align 8, !tbaa !215
  %.sroa.2342.8.insert.ext = and i64 %.fca.1.extract.i.i, 1099511627775
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.sroa.024.0.copyload, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK4absl12lts_202605268TimeZone2AtENS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::TimeZone::TimeInfo") align 4 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %.fca.0.extract.i, i64 %.sroa.2342.8.insert.ext) #26
  %i.v = load i32, ptr %2, align 4, !tbaa !218
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.05.0.copyload.i = load i64, ptr %i.x, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.05.0.copyload6.i = load i64, ptr %i.y, align 4
  %.sroa.3.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.3.0.copyload8.i = load i32, ptr %.sroa.3.0..sroa_idx7.i, align 4
  %.sroa.05.0.i = select i1 %i.w, i64 %.sroa.05.0.copyload.i, i64 %.sroa.05.0.copyload6.i
  %.sroa.3.0.i = select i1 %i.w, i32 %.sroa.3.0.copyload.i, i32 %.sroa.3.0.copyload8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.z = call noundef zeroext i1 @_ZNK4absl12lts_202605268TimeZone14NextTransitionENS0_4TimeEPNS1_15CivilTransitionE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %.sroa.05.0.i, i32 %.sroa.3.0.i, ptr noundef nonnull %5) ; 2 uses
  %i.aa = zext i1 %i.z to i8
  store i8 %i.aa, ptr %6, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !219
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 1, ptr %i.ac, align 8, !tbaa !221
  br i1 %i.z, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.d

bb.b:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.c:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.b
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.c
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !90
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.b ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ae, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.db

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.544, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.99)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %10, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !91
  store i64 %i.al, ptr %9, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.aj, ptr %i.am, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, i64 60, ptr nonnull @.str.2, i32 noundef 1297, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %9)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26
  %i.an = load ptr, ptr %10, align 8, !tbaa !87   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.h
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !90
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.as = load ptr, ptr %7, align 8, !tbaa !89    ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #26, !inline_history !0
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit95

bb.j:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.k:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn53 = phi { ptr, i32 } [ %i.az, %bb.l ], [ %i.ay, %bb.k ] ; 2 uses
  %i.ba = load ptr, ptr %10, align 8, !tbaa !87   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.m
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !90
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.j
  %.pn53.pn = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.pn53, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bf = load ptr, ptr %7, align 8, !tbaa !89    ; 3 uses
  %.not.i.i93 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i93, label %_ZN7testing7MessageD2Ev.exit95, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(128) %i.bf) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit95

_ZN7testing7MessageD2Ev.exit95:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.i
  %.pn53.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.pn53.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.da

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.pr = load ptr, ptr %i.ab, align 8, !tbaa !83  ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %.pr, align 8, !tbaa !87  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !90
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #28
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store i64 2018, ptr %12, align 8
  %.sroa.2.0..sroa_idx.i.i98 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i40 132107, ptr %.sroa.2.0..sroa_idx.i.i98, align 8
  %i.bo = load i64, ptr %5, align 8, !tbaa !100, !noalias !1859
  %i.bp = icmp eq i64 %i.bo, 2018
  %i.bq = load <4 x i8>, ptr %i.m, align 8
  %.fr = freeze <4 x i8> %i.bq
  %i.br = load i8, ptr %i.q, align 4
  %i.bs = icmp eq i8 %i.br, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.bt = icmp eq i32 %.fr.scalar, 132107
  %op.rdx470 = select i1 %i.bt, i1 %i.bp, i1 false
  %op.rdx471 = select i1 %op.rdx470, i1 %i.bs, i1 false
  br i1 %op.rdx471, label %bb.p, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.p:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.546, ptr noundef nonnull @.str.547, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.p, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.bu = load i8, ptr %11, align 8, !tbaa !80, !range !81, !noundef !82
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.z, label %bb.q

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !83 ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i100, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.s, %bb.r
  %i.bz = phi ptr [ %i.by, %bb.s ], [ @.str.64, %bb.r ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1298, ptr noundef %i.bz)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ca = load ptr, ptr %13, align 8, !tbaa !89   ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i101, label %_ZN7testing7MessageD2Ev.exit103, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %bb.u
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !54
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(128) %i.ca) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit103

_ZN7testing7MessageD2Ev.exit103:                  ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.z

bb.v:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit106

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn57 = phi { ptr, i32 } [ %i.cg, %bb.x ], [ %i.cf, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ch = load ptr, ptr %13, align 8, !tbaa !89   ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i104, label %_ZN7testing7MessageD2Ev.exit106, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105: ; preds = %bb.y
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit106

_ZN7testing7MessageD2Ev.exit106:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105, %bb.y, %bb.v
  %.pn57.pn = phi { ptr, i32 } [ %i.ce, %bb.v ], [ %.pn57, %bb.y ], [ %.pn57, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.da

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit103
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !83 ; 4 uses
  %.not.i.i107 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i107, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !87 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !90
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.z, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store i64 2018, ptr %16, align 8
  %.sroa.2.0..sroa_idx.i.i110 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i40 66571, ptr %.sroa.2.0..sroa_idx.i.i110, align 8
  %i.cs = load i64, ptr %i.r, align 8, !tbaa !100, !noalias !1860
  %i.ct = icmp eq i64 %i.cs, 2018
  %i.cu = load <4 x i8>, ptr %i.s, align 8
  %.fr472 = freeze <4 x i8> %i.cu
  %i.cv = load i8, ptr %i.t, align 4
  %i.cw = icmp eq i8 %i.cv, 0
  %.fr472.scalar = bitcast <4 x i8> %.fr472 to i32
  %i.cx = icmp eq i32 %.fr472.scalar, 66571
  %op.rdx468 = select i1 %i.cx, i1 %i.ct, i1 false
  %op.rdx469 = select i1 %op.rdx468, i1 %i.cw, i1 false
  br i1 %op.rdx469, label %bb.ab, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i112

bb.ab:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit114

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i112: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.548, ptr noundef nonnull @.str.549, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit114

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit114: ; preds = %bb.ab, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.cy = load i8, ptr %15, align 8, !tbaa !80, !range !81, !noundef !82
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !83 ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.db, null
  br i1 %.not.i.i115, label %_ZNK7testing15AssertionResult15failure_messageEv.exit116, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit116

_ZNK7testing15AssertionResult15failure_messageEv.exit116: ; preds = %bb.ae, %bb.ad
  %i.dd = phi ptr [ %i.dc, %bb.ae ], [ @.str.64, %bb.ad ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1299, ptr noundef %i.dd)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.de = load ptr, ptr %17, align 8, !tbaa !89   ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.de, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.ag
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !54
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(128) %i.de) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit119

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %bb.ag, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.al

bb.ah:                                            ; preds = %bb.ac
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit122

bb.ai:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn60 = phi { ptr, i32 } [ %i.dk, %bb.aj ], [ %i.dj, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.dl = load ptr, ptr %17, align 8, !tbaa !89   ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i120, label %_ZN7testing7MessageD2Ev.exit122, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.ak
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(128) %i.dl) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit122

_ZN7testing7MessageD2Ev.exit122:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121, %bb.ak, %bb.ah
  %.pn60.pn = phi { ptr, i32 } [ %i.di, %bb.ah ], [ %.pn60, %bb.ak ], [ %.pn60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.da

bb.al:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit114, %_ZN7testing7MessageD2Ev.exit119
  %i.dp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !83 ; 4 uses
  %.not.i.i123 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i123, label %_ZN7testing15AssertionResultD2Ev.exit127, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !87 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124: ; preds = %bb.am
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !90
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit127

_ZN7testing15AssertionResultD2Ev.exit127:         ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.dw = call noundef zeroext i1 @_ZNK4absl12lts_202605268TimeZone14NextTransitionENS0_4TimeEPNS1_15CivilTransitionE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 9223372036854775807, i32 -1, ptr noundef nonnull %5) ; 2 uses
  %i.dx = zext i1 %i.dw to i8
  store i8 %i.dx, ptr %19, align 8, !tbaa !80
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store ptr null, ptr %i.dy, align 8, !tbaa !219
  %i.dz = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i8 0, ptr %i.dz, align 8, !tbaa !221
  br i1 %i.dw, label %bb.an, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit146

bb.an:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull @.str.544, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.85)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.ea = load ptr, ptr %23, align 8, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !91
  store i64 %i.ec, ptr %22, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.ea, ptr %i.ed, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, i64 60, ptr nonnull @.str.2, i32 noundef 1302, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %22)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  %i.ee = load ptr, ptr %23, align 8, !tbaa !87   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.ar
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !90
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.ej = load ptr, ptr %20, align 8, !tbaa !89   ; 3 uses
  %.not.i.i133 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i133, label %bb.ax, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !54
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(128) %i.ej) #26, !inline_history !0
  br label %bb.ax

bb.as:                                            ; preds = %bb.an
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit141

bb.at:                                            ; preds = %bb.ao
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.au:                                            ; preds = %bb.ap
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.aq
  %i.eq = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_127Time_NextTransitionNYC_Test8TestBodyEv:.noexc.i
  %i.fh = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store ptr null, ptr %i.fh, align 8, !tbaa !219
  %i.fi = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i8 1, ptr %i.fi, align 8, !tbaa !221
  br i1 %i.ff, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit165, label %bb.az

bb.az:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.544, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.99)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.fj = load ptr, ptr %28, align 8, !tbaa !87
  %i.fk = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !91
  store i64 %i.fl, ptr %27, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %i.fj, ptr %i.fm, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 1, i64 60, ptr nonnull @.str.2, i32 noundef 1305, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %27)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #26
  %i.fn = load ptr, ptr %28, align 8, !tbaa !87   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.bd
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !90
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.fs = load ptr, ptr %25, align 8, !tbaa !89   ; 3 uses
  %.not.i.i152 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i152, label %bb.bj, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !54
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(128) %i.fs) #26, !inline_history !0
  br label %bb.bj

bb.be:                                            ; preds = %bb.az
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit160

bb.bf:                                            ; preds = %bb.ba
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

bb.bg:                                            ; preds = %bb.bb
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bc
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #26
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn67 = phi { ptr, i32 } [ %i.fz, %bb.bh ], [ %i.fy, %bb.bg ] ; 2 uses
  %i.ga = load ptr, ptr %28, align 8, !tbaa !87   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.bi
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !90
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155, %bb.bf
  %.pn67.pn = phi { ptr, i32 } [ %i.fx, %bb.bf ], [ %.pn67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %.pn67, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.gf = load ptr, ptr %25, align 8, !tbaa !89   ; 3 uses
  %.not.i.i158 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i158, label %_ZN7testing7MessageD2Ev.exit160, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !54
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(128) %i.gf) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit160

_ZN7testing7MessageD2Ev.exit160:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %bb.be
  %.pn67.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.be ], [ %.pn67.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %.pn67.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.da

bb.bj:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %.pr349 = load ptr, ptr %i.fh, align 8, !tbaa !83 ; 4 uses
  %.not.i.i.i161 = icmp eq ptr %.pr349, null
  br i1 %.not.i.i.i161, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit165, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gj = load ptr, ptr %.pr349, align 8, !tbaa !87 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.pr349, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i162: ; preds = %bb.bk
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !90
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i163

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i163: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i162
  call void @_ZdlPvm(ptr noundef nonnull %.pr349, i64 noundef 32) #28
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit165

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit165: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit146, %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.go = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1918, i8 noundef signext 3, i64 noundef 31, i64 noundef 0, i8 noundef signext 2, i8 noundef signext 0, i8 noundef signext 0) #26 ; 2 uses
  %.fca.1.extract.i.i262 = extractvalue { i64, i64 } %i.go, 1 ; 5 uses
  %.fca.0.extract.i166 = extractvalue { i64, i64 } %i.go, 0
  %i.gp = load i64, ptr %5, align 8, !tbaa !100   ; 2 uses
  %i.gq = icmp eq i64 %i.gp, %.fca.0.extract.i166
  %i.gr = load i8, ptr %i.m, align 8              ; 2 uses
  %.sroa.4.8.extract.trunc = trunc i64 %.fca.1.extract.i.i262 to i8
  %i.gs = icmp eq i8 %i.gr, %.sroa.4.8.extract.trunc
  %or.cond = select i1 %i.gq, i1 %i.gs, i1 false
  br i1 %or.cond, label %bb.bl, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread

bb.bl:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit165
  %i.gt = load i8, ptr %i.n, align 1, !tbaa !105
  %.sroa.4.9.extract.shift353 = lshr i64 %.fca.1.extract.i.i262, 8
  %.sroa.4.9.extract.trunc = trunc i64 %.sroa.4.9.extract.shift353 to i8
  %i.gu = icmp eq i8 %i.gt, %.sroa.4.9.extract.trunc
  br i1 %i.gu, label %bb.bm, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread

bb.bm:                                            ; preds = %bb.bl
  %i.gv = load i8, ptr %i.o, align 2, !tbaa !106
  %.sroa.4.10.extract.shift354 = lshr i64 %.fca.1.extract.i.i262, 16
  %.sroa.4.10.extract.trunc = trunc i64 %.sroa.4.10.extract.shift354 to i8
  %i.gw = icmp eq i8 %i.gv, %.sroa.4.10.extract.trunc
  br i1 %i.gw, label %bb.bn, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.gx = load i8, ptr %i.p, align 1, !tbaa !107
  %.sroa.4.11.extract.shift355 = lshr i64 %.fca.1.extract.i.i262, 24
  %.sroa.4.11.extract.trunc = trunc i64 %.sroa.4.11.extract.shift355 to i8
  %i.gy = icmp eq i8 %i.gx, %.sroa.4.11.extract.trunc
  br i1 %i.gy, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit: ; preds = %bb.bn
  %i.gz = load i8, ptr %i.q, align 4, !tbaa !108
  %.sroa.4.12.extract.shift356 = lshr i64 %.fca.1.extract.i.i262, 32
  %.sroa.4.12.extract.trunc = trunc i64 %.sroa.4.12.extract.shift356 to i8
  %i.ha = icmp eq i8 %i.gz, %.sroa.4.12.extract.trunc
  br i1 %i.ha, label %bb.bo, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread

bb.bo:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  %i.hb = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1918, i8 noundef signext 3, i64 noundef 31, i64 noundef 0, i8 noundef signext 3, i8 noundef signext 0, i8 noundef signext 0) #26 ; 2 uses
  %.fca.1.extract.i.i283 = extractvalue { i64, i64 } %i.hb, 1 ; 3 uses
  %.fca.0.extract.i170 = extractvalue { i64, i64 } %i.hb, 0 ; 2 uses
  store i64 %.fca.0.extract.i170, ptr %30, align 8
  %.sroa.2.0..sroa_idx.i.i172 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %.sroa.2.0.extract.trunc.i.i173 = trunc i64 %.fca.1.extract.i.i283 to i40
  store i40 %.sroa.2.0.extract.trunc.i.i173, ptr %.sroa.2.0..sroa_idx.i.i172, align 8
  %i.hc = load i64, ptr %i.r, align 8, !tbaa !100, !noalias !1861
  %i.hd = icmp eq i64 %.fca.0.extract.i170, %i.hc
  %i.he = lshr i64 %.fca.1.extract.i.i283, 32
  %i.hf = trunc i64 %i.he to i8
  %i.hg = load <4 x i8>, ptr %i.s, align 8
  %i.hh = bitcast i64 %.fca.1.extract.i.i283 to <8 x i8>
  %i.hi = shufflevector <8 x i8> %i.hh, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hj = icmp eq <4 x i8> %i.hg, %i.hi
  %i.hk = load i8, ptr %i.t, align 4
  %i.hl = icmp eq i8 %i.hk, %i.hf
  %i.hm = freeze <4 x i1> %i.hj
  %i.hn = bitcast <4 x i1> %i.hm to i4
  %i.ho = icmp eq i4 %i.hn, -1
  %op.rdx = select i1 %i.ho, i1 %i.hd, i1 false
  %op.rdx463 = select i1 %op.rdx, i1 %i.hl, i1 false
  br i1 %op.rdx463, label %bb.bp, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i174

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %29)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit176

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i174: ; preds = %bb.bo
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %29, ptr noundef nonnull @.str.550, ptr noundef nonnull @.str.549, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit176

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit176: ; preds = %bb.bp, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  %i.hp = load i8, ptr %29, align 8, !tbaa !80, !range !81, !noundef !82
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.bz, label %bb.bq

bb.bq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  %i.hr = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !83 ; 2 uses
  %.not.i.i177 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i177, label %_ZNK7testing15AssertionResult15failure_messageEv.exit178, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit178

_ZNK7testing15AssertionResult15failure_messageEv.exit178: ; preds = %bb.bs, %bb.br
  %i.hu = phi ptr [ %i.ht, %bb.bs ], [ @.str.64, %bb.br ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1309, ptr noundef %i.hu)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit178
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.hv = load ptr, ptr %31, align 8, !tbaa !89   ; 3 uses
  %.not.i.i179 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i179, label %_ZN7testing7MessageD2Ev.exit181, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180: ; preds = %bb.bu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !54
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(128) %i.hv) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit181

_ZN7testing7MessageD2Ev.exit181:                  ; preds = %bb.bu, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bq
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit184

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit178
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bt
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #26
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn77 = phi { ptr, i32 } [ %i.ib, %bb.bx ], [ %i.ia, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.ic = load ptr, ptr %31, align 8, !tbaa !89   ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %bb.by
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !54
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(128) %i.ic) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit184

_ZN7testing7MessageD2Ev.exit184:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183, %bb.by, %bb.bv
  %.pn77.pn = phi { ptr, i32 } [ %i.hz, %bb.bv ], [ %.pn77, %bb.by ], [ %.pn77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.da

bb.bz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit176, %_ZN7testing7MessageD2Ev.exit181
  %i.ig = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !83 ; 4 uses
  %.not.i.i185 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i185, label %_ZN7testing15AssertionResultD2Ev.exit189, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !87 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186: ; preds = %bb.ca
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !90
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit189

_ZN7testing15AssertionResultD2Ev.exit189:         ; preds = %bb.bz, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.cz

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit165, %bb.bl, %bb.bm, %bb.bn, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  store i64 1883, ptr %34, align 8
  %.sroa.2.0..sroa_idx.i.i192 = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i40 249159225867, ptr %.sroa.2.0..sroa_idx.i.i192, align 8
  %i.in = icmp eq i64 %i.gp, 1883
  %i.io = icmp eq i8 %i.gr, 11
  %i.ip = load <4 x i8>, ptr %i.n, align 1
  %.fr473 = freeze <4 x i8> %i.ip
  %.fr473.scalar = bitcast <4 x i8> %.fr473 to i32
  %i.iq = icmp eq i32 %.fr473.scalar, 973278226
  %i.ir = and i1 %i.iq, %i.in
  %op.rdx467 = select i1 %i.ir, i1 %i.io, i1 false
  br i1 %op.rdx467, label %bb.cb, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i194

bb.cb:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit196

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i194: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33, ptr noundef nonnull @.str.551, ptr noundef nonnull @.str.547, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit196

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit196: ; preds = %bb.cb, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  %i.is = load i8, ptr %33, align 8, !tbaa !80, !range !81, !noundef !82
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.cl, label %bb.cc

bb.cc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit196
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  %i.iu = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !83 ; 2 uses
  %.not.i.i197 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i197, label %_ZNK7testing15AssertionResult15failure_messageEv.exit198, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit198

_ZNK7testing15AssertionResult15failure_messageEv.exit198: ; preds = %bb.ce, %bb.cd
  %i.ix = phi ptr [ %i.iw, %bb.ce ], [ @.str.64, %bb.cd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1311, ptr noundef %i.ix)
          to label %bb.cf unwind label %bb.ci

bb.cf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit198
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.cg unwind label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.iy = load ptr, ptr %35, align 8, !tbaa !89   ; 3 uses
  %.not.i.i199 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i199, label %_ZN7testing7MessageD2Ev.exit201, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200: ; preds = %bb.cg
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !54
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(128) %i.iy) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit201

_ZN7testing7MessageD2Ev.exit201:                  ; preds = %bb.cg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cc
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit204

bb.ci:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit198
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cf
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #26
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn71 = phi { ptr, i32 } [ %i.je, %bb.cj ], [ %i.jd, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.jf = load ptr, ptr %35, align 8, !tbaa !89   ; 3 uses
  %.not.i.i202 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i202, label %_ZN7testing7MessageD2Ev.exit204, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203: ; preds = %bb.ck
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !54
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(128) %i.jf) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit204

_ZN7testing7MessageD2Ev.exit204:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203, %bb.ck, %bb.ch
  %.pn71.pn = phi { ptr, i32 } [ %i.jc, %bb.ch ], [ %.pn71, %bb.ck ], [ %.pn71, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  br label %bb.da

bb.cl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit196, %_ZN7testing7MessageD2Ev.exit201
  %i.jj = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !83 ; 4 uses
  %.not.i.i205 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i205, label %_ZN7testing15AssertionResultD2Ev.exit209, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !87 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206: ; preds = %bb.cm
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !90
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit209

_ZN7testing15AssertionResultD2Ev.exit209:         ; preds = %bb.cl, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #26
  store i64 1883, ptr %38, align 8
  %.sroa.2.0..sroa_idx.i.i212 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i40 791051, ptr %.sroa.2.0..sroa_idx.i.i212, align 8
  %i.jq = load i64, ptr %i.r, align 8, !tbaa !100, !noalias !1862
  %i.jr = icmp eq i64 %i.jq, 1883
  %i.js = load <4 x i8>, ptr %i.s, align 8
  %.fr474 = freeze <4 x i8> %i.js
  %i.jt = load i8, ptr %i.t, align 4
  %i.ju = icmp eq i8 %i.jt, 0
  %.fr474.scalar = bitcast <4 x i8> %.fr474 to i32
  %i.jv = icmp eq i32 %.fr474.scalar, 791051
  %op.rdx464 = select i1 %i.jv, i1 %i.jr, i1 false
  %op.rdx465 = select i1 %op.rdx464, i1 %i.ju, i1 false
  br i1 %op.rdx465, label %bb.cn, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i214

bb.cn:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit209
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %37)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit216

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i214: ; preds = %_ZN7testing15AssertionResultD2Ev.exit209
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %37, ptr noundef nonnull @.str.552, ptr noundef nonnull @.str.549, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit216

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit216: ; preds = %bb.cn, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  %i.jw = load i8, ptr %37, align 8, !tbaa !80, !range !81, !noundef !82
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.cx, label %bb.co

bb.co:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit216
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  %i.jy = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !83 ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i217, label %_ZNK7testing15AssertionResult15failure_messageEv.exit218, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit218

_ZNK7testing15AssertionResult15failure_messageEv.exit218: ; preds = %bb.cq, %bb.cp
  %i.kb = phi ptr [ %i.ka, %bb.cq ], [ @.str.64, %bb.cp ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1312, ptr noundef %i.kb)
          to label %bb.cr unwind label %bb.cu

bb.cr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit218
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  %i.kc = load ptr, ptr %39, align 8, !tbaa !89   ; 3 uses
  %.not.i.i219 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i219, label %_ZN7testing7MessageD2Ev.exit221, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220: ; preds = %bb.cs
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !54
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit221

_ZN7testing7MessageD2Ev.exit221:                  ; preds = %bb.cs, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  br label %bb.cx

bb.ct:                                            ; preds = %bb.co
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit224

bb.cu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit218
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cr
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #26
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn74 = phi { ptr, i32 } [ %i.ki, %bb.cv ], [ %i.kh, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  %i.kj = load ptr, ptr %39, align 8, !tbaa !89   ; 3 uses
  %.not.i.i222 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i222, label %_ZN7testing7MessageD2Ev.exit224, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223: ; preds = %bb.cw
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !54
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(128) %i.kj) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit224

_ZN7testing7MessageD2Ev.exit224:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223, %bb.cw, %bb.ct
  %.pn74.pn = phi { ptr, i32 } [ %i.kg, %bb.ct ], [ %.pn74, %bb.cw ], [ %.pn74, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %37) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  br label %bb.da

bb.cx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit216, %_ZN7testing7MessageD2Ev.exit221
  %i.kn = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !83 ; 4 uses
  %.not.i.i225 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i225, label %_ZN7testing15AssertionResultD2Ev.exit229, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !87 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226: ; preds = %bb.cy
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !90
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit229

_ZN7testing15AssertionResultD2Ev.exit229:         ; preds = %bb.cx, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit229, %_ZN7testing15AssertionResultD2Ev.exit189
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.da:                                            ; preds = %_ZN7testing7MessageD2Ev.exit224, %_ZN7testing7MessageD2Ev.exit204, %_ZN7testing7MessageD2Ev.exit184, %_ZN7testing7MessageD2Ev.exit160, %_ZN7testing7MessageD2Ev.exit141, %_ZN7testing7MessageD2Ev.exit122, %_ZN7testing7MessageD2Ev.exit106, %_ZN7testing7MessageD2Ev.exit95
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %_ZN7testing7MessageD2Ev.exit184 ], [ %.pn74.pn, %_ZN7testing7MessageD2Ev.exit224 ], [ %.pn71.pn, %_ZN7testing7MessageD2Ev.exit204 ], [ %.pn67.pn.pn, %_ZN7testing7MessageD2Ev.exit160 ], [ %.pn63.pn.pn, %_ZN7testing7MessageD2Ev.exit141 ], [ %.pn60.pn, %_ZN7testing7MessageD2Ev.exit122 ], [ %.pn57.pn, %_ZN7testing7MessageD2Ev.exit106 ], [ %.pn53.pn.pn, %_ZN7testing7MessageD2Ev.exit95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.da ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn77.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127Time_PrevTransitionNYC_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127Time_PrevTransitionNYC_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_127Time_PrevTransitionNYC_TestE, i64 16), ptr %i.a, align 8, !tbaa !54
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_127Time_PrevTransitionNYC_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_127Time_PrevTransitionNYC_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %1 = alloca %"class.absl::lts_20260526::TimeZone", align 8 ; 4 uses
  %2 = alloca %"struct.absl::lts_20260526::TimeZone::TimeInfo", align 4 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.absl::lts_20260526::TimeZone", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"struct.absl::lts_20260526::TimeZone::CivilTransition", align 8 ; 14 uses
  %6 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %16 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_127Time_PrevTransitionNYC_Test8TestBodyEv:.noexc.i
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.r, 1
  %.fca.0.extract.i = extractvalue { i64, i64 } %i.r, 0
  %.sroa.024.0.copyload = load ptr, ptr %3, align 8, !tbaa !215
  %.sroa.2190.8.insert.ext = and i64 %.fca.1.extract.i.i, 1099511627775
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.sroa.024.0.copyload, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK4absl12lts_202605268TimeZone2AtENS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::TimeZone::TimeInfo") align 4 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %.fca.0.extract.i, i64 %.sroa.2190.8.insert.ext) #26
  %i.s = load i32, ptr %2, align 4, !tbaa !218
  %i.t = icmp eq i32 %i.s, 1                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.05.0.copyload.i = load i64, ptr %i.u, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.05.0.copyload6.i = load i64, ptr %i.v, align 4
  %.sroa.3.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.3.0.copyload8.i = load i32, ptr %.sroa.3.0..sroa_idx7.i, align 4
  %.sroa.05.0.i = select i1 %i.t, i64 %.sroa.05.0.copyload.i, i64 %.sroa.05.0.copyload6.i
  %.sroa.3.0.i = select i1 %i.t, i32 %.sroa.3.0.copyload.i, i32 %.sroa.3.0.copyload8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.w = call noundef zeroext i1 @_ZNK4absl12lts_202605268TimeZone14PrevTransitionENS0_4TimeEPNS1_15CivilTransitionE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %.sroa.05.0.i, i32 %.sroa.3.0.i, ptr noundef nonnull %5) ; 2 uses
  %i.x = zext i1 %i.w to i8
  store i8 %i.x, ptr %6, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !219
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 1, ptr %i.z, align 8, !tbaa !221
  br i1 %i.w, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.d

bb.b:                                             ; preds = %.noexc.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.c:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.b
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.c
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !90
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.b
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.b ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.ab, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bm

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.545, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.99)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %10, align 8, !tbaa !87
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !91
  store i64 %i.ai, ptr %9, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ag, ptr %i.aj, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, i64 60, ptr nonnull @.str.2, i32 noundef 1321, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %9)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26
  %i.ak = load ptr, ptr %10, align 8, !tbaa !87   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.h
  %i.an = load i64, ptr %i.al, align 8, !tbaa !90
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ap = load ptr, ptr %7, align 8, !tbaa !89    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #26, !inline_history !0
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit80

bb.j:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.k:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn47 = phi { ptr, i32 } [ %i.aw, %bb.l ], [ %i.av, %bb.k ] ; 2 uses
  %i.ax = load ptr, ptr %10, align 8, !tbaa !87   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.m
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !90
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.j
  %.pn47.pn = phi { ptr, i32 } [ %i.au, %bb.j ], [ %.pn47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %.pn47, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bc = load ptr, ptr %7, align 8, !tbaa !89    ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i78, label %_ZN7testing7MessageD2Ev.exit80, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit80

_ZN7testing7MessageD2Ev.exit80:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %bb.i
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.at, %bb.i ], [ %.pn47.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn47.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bl

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.pr = load ptr, ptr %i.y, align 8, !tbaa !83   ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %.pr, align 8, !tbaa !87  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !90
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #28
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store i64 2018, ptr %12, align 8
  %.sroa.2.0..sroa_idx.i.i83 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i40 133891, ptr %.sroa.2.0..sroa_idx.i.i83, align 8
  %i.bl = load i64, ptr %5, align 8, !tbaa !100, !noalias !1871
  %i.bm = icmp eq i64 %i.bl, 2018
  %i.bn = load <4 x i8>, ptr %i.m, align 8
  %.fr = freeze <4 x i8> %i.bn
  %i.bo = load i8, ptr %i.n, align 4
  %i.bp = icmp eq i8 %i.bo, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.bq = icmp eq i32 %.fr.scalar, 133891
  %op.rdx257 = select i1 %i.bq, i1 %i.bm, i1 false
  %op.rdx258 = select i1 %op.rdx257, i1 %i.bp, i1 false
  br i1 %op.rdx258, label %bb.p, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.p:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.553, ptr noundef nonnull @.str.547, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.p, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.br = load i8, ptr %11, align 8, !tbaa !80, !range !81, !noundef !82
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.z, label %bb.q

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !83 ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i85, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.s, %bb.r
  %i.bw = phi ptr [ %i.bv, %bb.s ], [ @.str.64, %bb.r ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1322, ptr noundef %i.bw)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.bx = load ptr, ptr %13, align 8, !tbaa !89   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit88, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.u
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(128) %i.bx) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit88

_ZN7testing7MessageD2Ev.exit88:                   ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.z

bb.v:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit91

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn51 = phi { ptr, i32 } [ %i.cd, %bb.x ], [ %i.cc, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ce = load ptr, ptr %13, align 8, !tbaa !89   ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit91, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.y
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(128) %i.ce) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit91

_ZN7testing7MessageD2Ev.exit91:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, %bb.y, %bb.v
  %.pn51.pn = phi { ptr, i32 } [ %i.cb, %bb.v ], [ %.pn51, %bb.y ], [ %.pn51, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bl

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit88
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !83 ; 4 uses
  %.not.i.i92 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i92, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !87 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !90
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.z, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store i64 2018, ptr %16, align 8
  %.sroa.2.0..sroa_idx.i.i95 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i40 199427, ptr %.sroa.2.0..sroa_idx.i.i95, align 8
  %i.cp = load i64, ptr %i.o, align 8, !tbaa !100, !noalias !1872
  %i.cq = icmp eq i64 %i.cp, 2018
  %i.cr = load <4 x i8>, ptr %i.p, align 8
  %.fr259 = freeze <4 x i8> %i.cr
  %i.cs = load i8, ptr %i.q, align 4
  %i.ct = icmp eq i8 %i.cs, 0
  %.fr259.scalar = bitcast <4 x i8> %.fr259 to i32
  %i.cu = icmp eq i32 %.fr259.scalar, 199427
  %op.rdx = select i1 %i.cu, i1 %i.cq, i1 false
  %op.rdx256 = select i1 %op.rdx, i1 %i.ct, i1 false
  br i1 %op.rdx256, label %bb.ab, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i97

bb.ab:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit99

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i97: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.554, ptr noundef nonnull @.str.549, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit99

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit99: ; preds = %bb.ab, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.cv = load i8, ptr %15, align 8, !tbaa !80, !range !81, !noundef !82
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !83 ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i100, label %_ZNK7testing15AssertionResult15failure_messageEv.exit101, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit101

_ZNK7testing15AssertionResult15failure_messageEv.exit101: ; preds = %bb.ae, %bb.ad
  %i.da = phi ptr [ %i.cz, %bb.ae ], [ @.str.64, %bb.ad ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1323, ptr noundef %i.da)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit101
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.db = load ptr, ptr %17, align 8, !tbaa !89   ; 3 uses
  %.not.i.i102 = icmp eq ptr %i.db, null
  br i1 %.not.i.i102, label %_ZN7testing7MessageD2Ev.exit104, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103: ; preds = %bb.ag
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !54
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(128) %i.db) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit104

_ZN7testing7MessageD2Ev.exit104:                  ; preds = %bb.ag, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.al

bb.ah:                                            ; preds = %bb.ac
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit107

bb.ai:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit101
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn54 = phi { ptr, i32 } [ %i.dh, %bb.aj ], [ %i.dg, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.di = load ptr, ptr %17, align 8, !tbaa !89   ; 3 uses
  %.not.i.i105 = icmp eq ptr %i.di, null
  br i1 %.not.i.i105, label %_ZN7testing7MessageD2Ev.exit107, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106: ; preds = %bb.ak
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !54
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(128) %i.di) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit107

_ZN7testing7MessageD2Ev.exit107:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106, %bb.ak, %bb.ah
  %.pn54.pn = phi { ptr, i32 } [ %i.df, %bb.ah ], [ %.pn54, %bb.ak ], [ %.pn54, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.bl

bb.al:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit99, %_ZN7testing7MessageD2Ev.exit104
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !83 ; 4 uses
  %.not.i.i108 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i108, label %_ZN7testing15AssertionResultD2Ev.exit112, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !87 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i109: ; preds = %bb.am
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !90
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i109
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit112

_ZN7testing15AssertionResultD2Ev.exit112:         ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.dt = call noundef zeroext i1 @_ZNK4absl12lts_202605268TimeZone14PrevTransitionENS0_4TimeEPNS1_15CivilTransitionE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 -9223372036854775808, i32 -1, ptr noundef nonnull %5) ; 2 uses
  %i.du = zext i1 %i.dt to i8
  store i8 %i.du, ptr %19, align 8, !tbaa !80
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store ptr null, ptr %i.dv, align 8, !tbaa !219
  %i.dw = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i8 0, ptr %i.dw, align 8, !tbaa !221
  br i1 %i.dt, label %bb.an, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit131

bb.an:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull @.str.545, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.85)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.dx = load ptr, ptr %23, align 8, !tbaa !87
  %i.dy = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !91
  store i64 %i.dz, ptr %22, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.dx, ptr %i.ea, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, i64 60, ptr nonnull @.str.2, i32 noundef 1326, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %22)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  %i.eb = load ptr, ptr %23, align 8, !tbaa !87   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.ar
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !90
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.eg = load ptr, ptr %20, align 8, !tbaa !89   ; 3 uses
  %.not.i.i118 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i118, label %bb.ax, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !54
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(128) %i.eg) #26, !inline_history !0
  br label %bb.ax

bb.as:                                            ; preds = %bb.an
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit126

bb.at:                                            ; preds = %bb.ao
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.au:                                            ; preds = %bb.ap
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.aq
  %i.en = landingpad { ptr, i32 }
          cleanup
end_hunk_3
