inline.NumInlined: 980
inline.NumDeleted: 393
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3re23RE2C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.d:                                             ; preds = %bb.b, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.i
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.i, align 8, !tbaa !25
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re23RE2C2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(148) initializes((8, 31)) %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.re2::RE2::Options", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8388608, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.d, align 1, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 1, ptr %i.e, align 2, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i32 0, ptr %i.f, align 1
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.g, align 1, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.j, align 8, !tbaa !23
  store i8 0, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.l, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.m, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZN3re23RE27OptionsC1ENS0_13CannedOptionsE(ptr noundef nonnull align 8 dereferenceable(23) %3, i32 noundef 0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3re23RE24InitESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(148) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(23) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.i, align 8, !tbaa !25
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_ZN3re23RE2C2ESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(148) initializes((8, 31)) %0, i64 %1, ptr nofree readonly captures(address_is_null) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(23) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8388608, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.d, align 1, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 1, ptr %i.e, align 2, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i32 0, ptr %i.f, align 1
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.g, align 1, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.j, align 8, !tbaa !23
  store i8 0, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.l, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.m, align 8, !tbaa !26
  invoke void @_ZN3re23RE24InitESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(148) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(23) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.i, align 8, !tbaa !25
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 4, 8192) i32 @_ZNK3re23RE27Options10ParseFlagsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(23) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  switch i32 %i.c, label %bb.b [
    i32 1, label %bb.i
    i32 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.e = load i8, ptr %i.d, align 2, !tbaa !17, !range !47, !noundef !48
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 166) #35
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 17, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi18EEERS2_RAT__Kc.exit unwind label %bb.e

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi18EEERS2_RAT__Kc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.g = load i32, ptr %i.b, align 8, !tbaa !14
  store i32 %i.g, ptr %i.a, align 4, !tbaa !43
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIN3re23RE27Options8EncodingETnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS9_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi18EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi18EEERS2_RAT__Kc.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.i, %bb.e ]
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.d, %bb.h, %bb.a
  %.014 = phi i32 [ 4, %bb.d ], [ 4, %bb.b ], [ 4, %bb.a ], [ 36, %bb.h ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i8, ptr %i.k, align 4, !tbaa !15, !range !47, !noundef !48
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = or i32 %.014, 1940
  %spec.select = select i1 %i.m, i32 %.014, i32 %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.p = load i8, ptr %i.o, align 1, !tbaa !59, !range !47, !noundef !48
  %i.q = shl nuw nsw i8 %i.p, 1
  %2 = zext nneg i8 %i.q to i32
  %.2 = or disjoint i32 %spec.select, %2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !60, !range !47, !noundef !48
  %3 = zext nneg i8 %i.s to i32
  %4 = shl nuw nsw i32 %3, 11
  %.3 = or disjoint i32 %.2, %4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.u = load i8, ptr %i.t, align 1, !tbaa !61, !range !47, !noundef !48
  %i.v = shl nuw nsw i8 %i.u, 3
  %5 = zext nneg i8 %i.v to i32
  %.4 = or disjoint i32 %.3, %5
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.x = load i8, ptr %i.w, align 2, !tbaa !62, !range !47, !noundef !48
  %6 = zext nneg i8 %i.x to i32
  %7 = shl nuw nsw i32 %6, 12
  %.5 = or i32 %.4, %7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.z = load i8, ptr %i.y, align 1, !tbaa !63, !range !47, !noundef !48
  %8 = xor i8 %i.z, 1
  %9 = zext nneg i8 %8 to i32
  %.6 = or i32 %.5, %9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !64, !range !47, !noundef !48
  %i.ac = shl nuw i8 %i.ab, 7
  %10 = zext i8 %i.ac to i32
  %.7 = or i32 %.6, %10
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 21
  %12 = load i8, ptr %11, align 1, !tbaa !65, !range !47, !noundef !48
  %13 = zext nneg i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %.8 = or i32 %.7, %14
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %16 = load i8, ptr %15, align 2, !tbaa !66, !range !47, !noundef !48
  %17 = shl nuw nsw i8 %16, 4
  %18 = zext nneg i8 %17 to i32
  %.9 = or i32 %.8, %18
  ret i32 %.9
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIN3re23RE27Options8EncodingETnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !43
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.d)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %0

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.f
}

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZN3re26Regexp5ParseESt17basic_string_viewIcSt11char_traitsIcEENS0_10ParseFlagsEPNS_12RegexpStatusE(i64, ptr, i32 noundef, ptr noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3re2L5truncB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp ult i64 %1, 100
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !19
  %i.c = icmp eq ptr %2, null
  %i.d = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.d, %i.c
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.33) #34
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, label %._crit_edge.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.c
  %i.f = add nuw nsw i64 %1, 1
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !28
  store i64 %1, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.h = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.b, %bb.c ] ; 3 uses
  switch i64 %1, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %2, align 1, !tbaa !25
  store i8 %i.i, ptr %i.h, align 1, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %1
  store i8 0, ptr %i.k, align 1, !tbaa !25
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !19
  %i.m = icmp eq ptr %2, null
  br i1 %i.m, label %.noexc17, label %bb.h

.noexc17:                                         ; preds = %bb.g
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.33) #34
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.n = call noalias noundef nonnull dereferenceable(101) ptr @_Znwm(i64 noundef 101) #33 ; 3 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !28
  store i64 100, ptr %i.l, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %i.n, ptr noundef nonnull align 1 dereferenceable(100) %2, i64 100, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 100, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  store i8 0, ptr %i.p, align 1, !tbaa !25
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 100, i64 noundef 0, ptr noundef nonnull @.str.35, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.h
  %.pre = load ptr, ptr %3, align 8, !tbaa !28, !noalias !69 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 103
  store i8 0, ptr %i.q, align 1, !tbaa !25, !noalias !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !19, !alias.scope !69
  %i.s = icmp ne ptr %.pre, %i.l
  call void @llvm.assume(i1 %i.s)
  store ptr %.pre, ptr %0, align 8, !tbaa !28, !alias.scope !69
  %i.t = load i64, ptr %i.l, align 8, !tbaa !25, !noalias !69
  store i64 %i.t, ptr %i.r, align 8, !tbaa !25, !alias.scope !69
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 103, ptr %i.u, align 8, !tbaa !23, !alias.scope !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.l
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.i
  %i.y = load i64, ptr %i.l, align 8, !tbaa !25
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.v

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  ret void
}

declare void @_ZNK3re212RegexpStatus4TextB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN3re26Regexp14RequiredPrefixEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPbPPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #9

declare noundef ptr @_ZN3re26Regexp13CompileToProgEl(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #9

declare noundef i32 @_ZN3re26Regexp11NumCapturesEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN3re24Prog9IsOnePassEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3re212RegexpStatusD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !25
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #32
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
end_hunk_0
begin_hunk_1_@"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZNK3re23RE211ReverseProgEvE3$_0JPKS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_":bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %"_ZSt6invokeIZNK3re23RE211ReverseProgEvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit"

bb.e:                                             ; preds = %.noexc9
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i.i.i

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !25
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i, %bb.f
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i ], [ %i.ab, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i.i.i, %bb.e
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i.i.i ], [ %i.z, %bb.e ]
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn.pn.i.i.i.i

"_ZSt6invokeIZNK3re23RE211ReverseProgEvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.b, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  %i.ah = atomicrmw xchg ptr %0, i32 221 release, align 4
  %i.ai = icmp eq i32 %i.ah, 94570706
  br i1 %i.ai, label %bb.h, label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

bb.h:                                             ; preds = %"_ZSt6invokeIZNK3re23RE211ReverseProgEvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit"
  call void @AbslInternalSpinLockWake_lts_20240116(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit: ; preds = %bb.h, %"_ZSt6invokeIZNK3re23RE211ReverseProgEvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit", %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  ret void
}

declare noundef ptr @_ZN3re26Regexp20CompileToReverseProgEl(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZNK3re23RE220NamedCapturingGroupsB5cxx11EvE3$_0JPKS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = cmpxchg ptr %0, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4absl12lts_2024011613base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @"_ZZN4absl12lts_2024011613base_internal12CallOnceImplIZNK3re23RE220NamedCapturingGroupsB5cxx11EvE3$_0JPKS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans", i32 noundef 1)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread: ; preds = %bb.a, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  %.val = load ptr, ptr %1, align 8, !tbaa !72    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.noexc

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !81
  br label %bb.b

.noexc:                                           ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  %i.g = tail call noundef ptr @_ZN3re26Regexp13NamedCapturesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !81
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %._crit_edge.i.i.i.i
  %i.i = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.g, %.noexc ]
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %"_ZSt6invokeIZNK3re23RE220NamedCapturingGroupsB5cxx11EvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit"

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 120
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L13empty_storageE, i64 32), ptr %i.k, align 8, !tbaa !81
  br label %"_ZSt6invokeIZNK3re23RE220NamedCapturingGroupsB5cxx11EvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit"

"_ZSt6invokeIZNK3re23RE220NamedCapturingGroupsB5cxx11EvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit": ; preds = %bb.c, %bb.b
  %i.l = atomicrmw xchg ptr %0, i32 221 release, align 4
  %i.m = icmp eq i32 %i.l, 94570706
  br i1 %i.m, label %bb.d, label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

bb.d:                                             ; preds = %"_ZSt6invokeIZNK3re23RE220NamedCapturingGroupsB5cxx11EvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit"
  tail call void @AbslInternalSpinLockWake_lts_20240116(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit: ; preds = %bb.d, %"_ZSt6invokeIZNK3re23RE220NamedCapturingGroupsB5cxx11EvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit", %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  ret void
}

declare noundef ptr @_ZN3re26Regexp13NamedCapturesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #9

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZNK3re23RE219CapturingGroupNamesB5cxx11EvE3$_0JPKS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = cmpxchg ptr %0, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4absl12lts_2024011613base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @"_ZZN4absl12lts_2024011613base_internal12CallOnceImplIZNK3re23RE219CapturingGroupNamesB5cxx11EvE3$_0JPKS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans", i32 noundef 1)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread: ; preds = %bb.a, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  %.val = load ptr, ptr %1, align 8, !tbaa !72    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.noexc

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !75
  br label %bb.b

.noexc:                                           ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  %i.g = tail call noundef ptr @_ZN3re26Regexp12CaptureNamesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 128
  store ptr %i.g, ptr %i.h, align 8, !tbaa !75
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %._crit_edge.i.i.i.i
  %i.i = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.g, %.noexc ]
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %"_ZSt6invokeIZNK3re23RE219CapturingGroupNamesB5cxx11EvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit"

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 128
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L13empty_storageE, i64 80), ptr %i.k, align 8, !tbaa !75
  br label %"_ZSt6invokeIZNK3re23RE219CapturingGroupNamesB5cxx11EvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit"

"_ZSt6invokeIZNK3re23RE219CapturingGroupNamesB5cxx11EvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit": ; preds = %bb.c, %bb.b
  %i.l = atomicrmw xchg ptr %0, i32 221 release, align 4
  %i.m = icmp eq i32 %i.l, 94570706
  br i1 %i.m, label %bb.d, label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

bb.d:                                             ; preds = %"_ZSt6invokeIZNK3re23RE219CapturingGroupNamesB5cxx11EvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit"
  tail call void @AbslInternalSpinLockWake_lts_20240116(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit: ; preds = %bb.d, %"_ZSt6invokeIZNK3re23RE219CapturingGroupNamesB5cxx11EvE3$_0JPKS1_EENSt13invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit", %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  ret void
}

declare noundef ptr @_ZN3re26Regexp12CaptureNamesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #9

declare void @_ZN4absl12lts_2024011619str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #2 align 2

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN3re25hooks7contextE() local_unnamed_addr #26 comdat {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN3re25hooks7contextE)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn }
attributes #35 = { cold }
attributes #36 = { cold nounwind }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN3re23RE27OptionsE", !11, i64 0, !12, i64 8, !13, i64 12, !13, i64 13, !13, i64 14, !13, i64 15, !13, i64 16, !13, i64 17, !13, i64 18, !13, i64 19, !13, i64 20, !13, i64 21, !13, i64 22}
!11 = !{!"long", !6, i64 0}
!12 = !{!"_ZTSN3re23RE27Options8EncodingE", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!10, !12, i64 8}
!15 = !{!10, !13, i64 12}
!16 = !{!10, !13, i64 13}
!17 = !{!10, !13, i64 14}
!18 = !{!13, !13, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!21 = !{!"p1 omnipotent char", !22, i64 0}
!22 = !{!"any pointer", !6, i64 0}
!23 = !{!24, !11, i64 8}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !11, i64 8, !6, i64 16}
!25 = !{!6, !6, i64 0}
!26 = !{!27, !5, i64 0}
!27 = !{!"_ZTSSt13__atomic_baseIjE", !5, i64 0}
!28 = !{!24, !21, i64 0}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSN3re23RE2E", !33, i64 0, !10, i64 8, !34, i64 32, !34, i64 40, !33, i64 48, !33, i64 56, !5, i64 64, !35, i64 68, !13, i64 71, !13, i64 71, !13, i64 71, !24, i64 72, !36, i64 104, !36, i64 112, !37, i64 120, !38, i64 128, !39, i64 136, !39, i64 140, !39, i64 144}
!33 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!34 = !{!"p1 _ZTSN3re26RegexpE", !22, i64 0}
!35 = !{!"_ZTSN3re23RE29ErrorCodeE", !6, i64 0}
!36 = !{!"p1 _ZTSN3re24ProgE", !22, i64 0}
!37 = !{!"p1 _ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE", !22, i64 0}
!38 = !{!"p1 _ZTSSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE", !22, i64 0}
!39 = !{!"_ZTSN4absl12lts_202401169once_flagE", !40, i64 0}
!40 = !{!"_ZTSSt6atomicIjE", !27, i64 0}
!41 = !{i64 0, i64 8, !42, i64 8, i64 4, !43, i64 12, i64 1, !18, i64 13, i64 1, !18, i64 14, i64 1, !18, i64 15, i64 1, !18, i64 16, i64 1, !18, i64 17, i64 1, !18, i64 18, i64 1, !18, i64 19, i64 1, !18, i64 20, i64 1, !18, i64 21, i64 1, !18, i64 22, i64 1, !18}
!42 = !{!11, !11, i64 0}
!43 = !{!12, !12, i64 0}
!44 = !{!32, !33, i64 48}
!45 = !{!32, !33, i64 56}
!46 = !{!32, !5, i64 64}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTSN3re212RegexpStatusE", !51, i64 0, !52, i64 8, !33, i64 24}
!51 = !{!"_ZTSN3re216RegexpStatusCodeE", !6, i64 0}
!52 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !11, i64 0, !21, i64 8}
!53 = !{!32, !34, i64 32}
!54 = !{!21, !21, i64 0}
!55 = !{!34, !34, i64 0}
!56 = !{!32, !34, i64 40}
!57 = !{!32, !36, i64 104}
!58 = !{!50, !33, i64 24}
!59 = !{!10, !13, i64 15}
!60 = !{!10, !13, i64 16}
!61 = !{!10, !13, i64 17}
!62 = !{!10, !13, i64 18}
!63 = !{!10, !13, i64 19}
!64 = !{!10, !13, i64 20}
!65 = !{!10, !13, i64 21}
!66 = !{!10, !13, i64 22}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTSN4absl12lts_2024011612log_internal10LogMessage14LogMessageDataE", !22, i64 0}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!71 = distinct !{!71, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!72 = !{!73, !73, i64 0}
!73 = !{!"p1 _ZTSN3re23RE2E", !22, i64 0}
!74 = !{!32, !36, i64 112}
!75 = !{!32, !38, i64 128}
!76 = !{!77, !80, i64 8}
!77 = !{!"_ZTSSt15_Rb_tree_header", !78, i64 0, !11, i64 32}
!78 = !{!"_ZTSSt18_Rb_tree_node_base", !79, i64 0, !80, i64 8, !80, i64 16, !80, i64 24}
!79 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!80 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!81 = !{!32, !37, i64 120}
!82 = !{!83, !5, i64 16}
!83 = !{!"_ZTSN3re24ProgE", !13, i64 0, !13, i64 1, !13, i64 2, !13, i64 3, !13, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !13, i64 24, !11, i64 32, !6, i64 40, !5, i64 48, !6, i64 52, !84, i64 88, !11, i64 104, !95, i64 112, !106, i64 128, !11, i64 144, !116, i64 152, !116, i64 160, !6, i64 168, !39, i64 424, !39, i64 428}
!84 = !{!"_ZTSN3re28PODArrayItEE", !85, i64 0}
!85 = !{!"_ZTSSt10unique_ptrIA_tN3re28PODArrayItE7DeleterEE", !86, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_dataItN3re28PODArrayItE7DeleterELb1ELb1EE", !87, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implItN3re28PODArrayItE7DeleterEE", !88, i64 0}
!88 = !{!"_ZTSSt5tupleIJPtN3re28PODArrayItE7DeleterEEE", !89, i64 0}
!89 = !{!"_ZTSSt11_Tuple_implILm0EJPtN3re28PODArrayItE7DeleterEEE", !90, i64 0, !93, i64 8}
!90 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayItE7DeleterEEE", !91, i64 0}
!91 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayItE7DeleterELb0EE", !92, i64 0}
!92 = !{!"_ZTSN3re28PODArrayItE7DeleterE", !5, i64 0}
!93 = !{!"_ZTSSt10_Head_baseILm0EPtLb0EE", !94, i64 0}
!94 = !{!"p1 short", !22, i64 0}
!95 = !{!"_ZTSN3re28PODArrayINS_4Prog4InstEEE", !96, i64 0}
!96 = !{!"_ZTSSt10unique_ptrIA_N3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !97, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_dataIN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterELb1ELb1EE", !98, i64 0}
!98 = !{!"_ZTSSt15__uniq_ptr_implIN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !99, i64 0}
!99 = !{!"_ZTSSt5tupleIJPN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !100, i64 0}
!100 = !{!"_ZTSSt11_Tuple_implILm0EJPN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !101, i64 0, !104, i64 8}
!101 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayINS0_4Prog4InstEE7DeleterEEE", !102, i64 0}
!102 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayINS0_4Prog4InstEE7DeleterELb0EE", !103, i64 0}
!103 = !{!"_ZTSN3re28PODArrayINS_4Prog4InstEE7DeleterE", !5, i64 0}
!104 = !{!"_ZTSSt10_Head_baseILm0EPN3re24Prog4InstELb0EE", !105, i64 0}
!105 = !{!"p1 _ZTSN3re24Prog4InstE", !22, i64 0}
!106 = !{!"_ZTSN3re28PODArrayIhEE", !107, i64 0}
!107 = !{!"_ZTSSt10unique_ptrIA_hN3re28PODArrayIhE7DeleterEE", !108, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_dataIhN3re28PODArrayIhE7DeleterELb1ELb1EE", !109, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_implIhN3re28PODArrayIhE7DeleterEE", !110, i64 0}
!110 = !{!"_ZTSSt5tupleIJPhN3re28PODArrayIhE7DeleterEEE", !111, i64 0}
!111 = !{!"_ZTSSt11_Tuple_implILm0EJPhN3re28PODArrayIhE7DeleterEEE", !112, i64 0, !115, i64 8}
!112 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayIhE7DeleterEEE", !113, i64 0}
!113 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayIhE7DeleterELb0EE", !114, i64 0}
!114 = !{!"_ZTSN3re28PODArrayIhE7DeleterE", !5, i64 0}
!115 = !{!"_ZTSSt10_Head_baseILm0EPhLb0EE", !21, i64 0}
!116 = !{!"p1 _ZTSN3re23DFAE", !22, i64 0}
!117 = !{!118, !5, i64 0}
!118 = !{!"_ZTSN3re211SparseArrayIiEE", !5, i64 0, !119, i64 8, !130, i64 24}
!119 = !{!"_ZTSN3re28PODArrayIiEE", !120, i64 0}
!120 = !{!"_ZTSSt10unique_ptrIA_iN3re28PODArrayIiE7DeleterEE", !121, i64 0}
!121 = !{!"_ZTSSt15__uniq_ptr_dataIiN3re28PODArrayIiE7DeleterELb1ELb1EE", !122, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_implIiN3re28PODArrayIiE7DeleterEE", !123, i64 0}
!123 = !{!"_ZTSSt5tupleIJPiN3re28PODArrayIiE7DeleterEEE", !124, i64 0}
!124 = !{!"_ZTSSt11_Tuple_implILm0EJPiN3re28PODArrayIiE7DeleterEEE", !125, i64 0, !128, i64 8}
!125 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayIiE7DeleterEEE", !126, i64 0}
!126 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayIiE7DeleterELb0EE", !127, i64 0}
!127 = !{!"_ZTSN3re28PODArrayIiE7DeleterE", !5, i64 0}
!128 = !{!"_ZTSSt10_Head_baseILm0EPiLb0EE", !129, i64 0}
!129 = !{!"p1 int", !22, i64 0}
!130 = !{!"_ZTSN3re28PODArrayINS_11SparseArrayIiE10IndexValueEEE", !131, i64 0}
!131 = !{!"_ZTSSt10unique_ptrIA_N3re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterEE", !132, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_dataIN3re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterELb1ELb1EE", !133, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_implIN3re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterEE", !134, i64 0}
!134 = !{!"_ZTSSt5tupleIJPN3re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterEEE", !135, i64 0}
!135 = !{!"_ZTSSt11_Tuple_implILm0EJPN3re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterEEE", !136, i64 0, !139, i64 8}
!136 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayINS0_11SparseArrayIiE10IndexValueEE7DeleterEEE", !137, i64 0}
!137 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayINS0_11SparseArrayIiE10IndexValueEE7DeleterELb0EE", !138, i64 0}
!138 = !{!"_ZTSN3re28PODArrayINS_11SparseArrayIiE10IndexValueEE7DeleterE", !5, i64 0}
!139 = !{!"_ZTSSt10_Head_baseILm0EPN3re211SparseArrayIiE10IndexValueELb0EE", !140, i64 0}
!140 = !{!"p1 _ZTSN3re211SparseArrayIiE10IndexValueE", !22, i64 0}
!141 = !{!128, !129, i64 0}
!142 = !{!139, !140, i64 0}
!143 = !{!140, !140, i64 0}
!144 = distinct !{!144, !145}
!145 = !{!"llvm.loop.mustprogress"}
!146 = !{!138, !5, i64 0}
!147 = !{!129, !129, i64 0}
!148 = !{!127, !5, i64 0}
!149 = !{!150, !11, i64 0}
!150 = !{!"_ZTSN4absl12lts_2024011618container_internal25internal_compressed_tuple7StorageImLm0ELb0EEE", !11, i64 0}
!151 = !{!152, !156, i64 280}
!152 = !{!"_ZTSN4absl12lts_2024011610FixedArrayISt17basic_string_viewIcSt11char_traitsIcEELm17ESaIS5_EE7StorageE", !153, i64 0, !154, i64 272, !156, i64 280}
!153 = !{!"_ZTSN4absl12lts_2024011610FixedArrayISt17basic_string_viewIcSt11char_traitsIcEELm17ESaIS5_EE22NonEmptyInlinedStorageE", !6, i64 0}
!154 = !{!"_ZTSN4absl12lts_2024011618container_internal15CompressedTupleIJmSaISt17basic_string_viewIcSt11char_traitsIcEEEEEE", !155, i64 0}
!155 = !{!"_ZTSN4absl12lts_2024011618container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJmSaISt17basic_string_viewIcSt11char_traitsIcEEEEEESt16integer_sequenceImJLm0ELm1EEELb1EEE", !150, i64 0}
end_hunk_1
