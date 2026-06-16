inline.NumInlined: 674
inline.NumDeleted: 188
begin_hunk_0_@_ZN8facebook5velox6Status7InvalidIJRA55_KcRKiS7_EEES1_DpOT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !59, !noalias !109
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #12
  br label %_ZN8facebook5velox6Status8fromArgsIJRKiS4_EEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !63, !noalias !109 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !59, !noalias !109
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !109
  resume { ptr, i32 } %i.j

_ZN8facebook5velox6Status8fromArgsIJRKiS4_EEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !109
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Status7InvalidIJRA56_KcRKimEEES1_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.15", align 16 ; 6 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11, !noalias !115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !121
  store i32 %i.b, ptr %5, align 16, !tbaa !59, !alias.scope !118, !noalias !115
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = load i64, ptr %3, align 8, !tbaa !22, !noalias !121
  store i64 %i.d, ptr %i.c, align 16, !tbaa !59, !alias.scope !118, !noalias !115
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 65, ptr nonnull %5), !noalias !115
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 9, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !63, !noalias !115 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN8facebook5velox6Status8fromArgsIJRKimEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !59, !noalias !115
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #12
  br label %_ZN8facebook5velox6Status8fromArgsIJRKimEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !63, !noalias !115 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !59, !noalias !115
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !115
  resume { ptr, i32 } %i.j

_ZN8facebook5velox6Status8fromArgsIJRKimEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox10serializer6presto6detail17PrestoVectorLexer6commitENS2_9TokenTypeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 2 uses
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE9push_backERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 6 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !132
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !135
  %i.s = add i32 %i.r, %i.h
  store i32 %i.s, ptr %i.q, align 4, !tbaa !135
  br label %_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE9push_backERKS4_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.5.0.insert.ext = shl i64 %i.g, 32
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.l, align 4
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !136
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.k, align 8, !tbaa !136
  br label %_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.x = ptrtoint ptr %i.l to i64
  %i.y = ptrtoint ptr %i.j to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.h, label %_ZNKSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #13
  unreachable

_ZNKSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #14 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  %.sroa.5.0.insert.ext13 = shl i64 %i.g, 32
  %.sroa.0.0.insert.ext9 = zext i32 %1 to i64
  %.sroa.0.0.insert.insert11 = or disjoint i64 %.sroa.5.0.insert.ext13, %.sroa.0.0.insert.ext9
  store i64 %.sroa.0.0.insert.insert11, ptr %i.ai, align 4
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.i, label %_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %i.j, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.not.i17.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.z) #12
  br label %_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !35
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !136
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.al, ptr %i.t, align 8, !tbaa !38
  br label %_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIN8facebook5velox10serializer6presto5TokenESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.f, %bb.d, %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox10serializer6presto6detail17PrestoVectorLexer16lexColumEncodingERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.f = load i64, ptr %1, align 8, !tbaa !14, !noalias !137 ; 3 uses
  %i.g = icmp ult i64 %i.f, 4
  br i1 %i.g, label %_ZN8facebook5velox6StatusD2Ev.exit, label %_ZN8facebook5velox6StatusD2Ev.exit16, !prof !21

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11, !noalias !137
  store i64 %i.f, ptr %i.c, align 8, !tbaa !22, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11, !noalias !137
  store i64 4, ptr %i.d, align 8, !tbaa !22, !noalias !137
  call void @_ZN8facebook5velox6Status7InvalidIJRA40_KcmmEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(40) @.str.27, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11, !noalias !137
  %.pr = load ptr, ptr %3, align 8, !tbaa !10, !noalias !140 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  store ptr %.pr, ptr %0, align 8, !tbaa !10, !alias.scope !140
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.h = icmp eq ptr %.pr, null
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread64, label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread64: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !57
  store i8 0, ptr %i.i, align 8, !tbaa !59
  br label %bb.d

_ZN8facebook5velox6StatusD2Ev.exit16:             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26, !noalias !137 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %i.l, align 1, !noalias !137 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store ptr %i.m, ptr %i.k, align 8, !tbaa !26, !noalias !137
  %i.n = add i64 %i.f, -4
  store i64 %i.n, ptr %1, align 8, !tbaa !14, !noalias !137
  store i32 %.0.copyload.i.i.i, ptr %i.e, align 4, !tbaa !3, !noalias !137
  tail call void @_ZN8facebook5velox10serializer6presto6detail17PrestoVectorLexer6commitENS2_9TokenTypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2), !noalias !137
  store ptr null, ptr %0, align 8, !tbaa !10, !alias.scope !143
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.o = icmp ugt i32 %.0.copyload.i.i.i, 100
  br i1 %i.o, label %bb.b, label %bb.c, !prof !145

bb.b:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit16
  call void @_ZN8facebook5velox6Status7InvalidIJRA35_KcRiEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(35) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  br label %.critedge

bb.c:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.q, align 8, !tbaa !57
  store i8 0, ptr %i.p, align 8, !tbaa !59
  %i.r = zext nneg i32 %.0.copyload.i.i.i to i64  ; 4 uses
  %.not = icmp eq i32 %.0.copyload.i.i.i, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4, !tbaa !3, !noalias !146
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp samesign ugt i32 %.0.copyload.i.i.i, 15
  br i1 %.not.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.s = icmp samesign ult i32 %.0.copyload.i.i.i, 30
  %i.t = add nuw nsw i64 %i.r, 1
  %spec.select = select i1 %i.s, i64 31, i64 %i.t
  %i.u = call noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #14 ; 2 uses
  %spec.select4041 = call i32 @llvm.umax.i32(i32 %.0.copyload.i.i.i, i32 30)
  %spec.select40 = zext nneg i32 %spec.select4041 to i64
  store ptr %i.u, ptr %4, align 8, !tbaa !63
  store i64 %spec.select40, ptr %i.p, align 8, !tbaa !59
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %cond.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i, 1
  br i1 %cond.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.v = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread64 ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  %i.w = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread64 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  %i.x = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread64 ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ] ; 3 uses
  store i8 0, ptr %i.x, align 1, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.y = phi ptr [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.d, %bb.e
  %i.z = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %i.aa = phi i64 [ %i.r, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %i.ab = phi ptr [ %i.p, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.ac = phi ptr [ %i.y, %bb.e ], [ %i.x, %bb.d ]
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !59
  %.pre = load i32, ptr %i.e, align 4, !tbaa !3   ; 3 uses
  %.pre42 = load ptr, ptr %4, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.pre, ptr %i.a, align 4, !tbaa !3, !noalias !149
  %i.ae = icmp slt i32 %.pre, 0
  br i1 %i.ae, label %bb.f, label %bb.g, !prof !151

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  invoke void @_ZN8facebook5velox6Status7InvalidIJRA41_KcRiEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(41) @.str.10, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN8facebook5velox6StatusD2Ev.exit23 unwind label %bb.s

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.af = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ] ; 3 uses
  %i.ag = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.thread ], [ %.pre42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ] ; 3 uses
  %i.ah = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.thread ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ] ; 4 uses
  %i.ai = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ] ; 2 uses
  %i.aj = zext nneg i32 %i.af to i64              ; 4 uses
  %i.ak = load i64, ptr %1, align 8, !tbaa !14, !noalias !149 ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  br i1 %i.al, label %bb.h, label %bb.i, !prof !21

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11, !noalias !149
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !22, !noalias !149
  invoke void @_ZN8facebook5velox6Status7InvalidIJRA54_KcRimEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(54) @.str.11, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc20 unwind label %bb.s

.noexc20:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11, !noalias !149
  br label %_ZN8facebook5velox6StatusD2Ev.exit23

bb.i:                                             ; preds = %bb.g
  %.not.i18 = icmp eq ptr %i.ag, null
  br i1 %.not.i18, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26, !noalias !149 ; 2 uses
  %i.ao = icmp samesign ugt i32 %i.af, 1
  br i1 %i.ao, label %bb.k, label %bb.l, !prof !34

bb.k:                                             ; preds = %bb.j
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.an, i64 %i.aj, i1 false), !noalias !149
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp eq i32 %i.af, 1
  br i1 %i.ap, label %bb.m, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !59, !noalias !149
  store i8 %i.aq, ptr %i.ag, align 1, !tbaa !59, !noalias !149
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i:               ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26, !noalias !149
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !26, !noalias !149
  %i.au = load i64, ptr %1, align 8, !tbaa !14, !noalias !149
  %i.av = sub i64 %i.au, %i.aj
  store i64 %i.av, ptr %1, align 8, !tbaa !14, !noalias !149
  invoke void @_ZN8facebook5velox10serializer6presto6detail17PrestoVectorLexer6commitENS2_9TokenTypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2)
          to label %_ZN8facebook5velox6StatusD2Ev.exit23.thread unwind label %bb.s

_ZN8facebook5velox6StatusD2Ev.exit23.thread:      ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %0, align 8, !tbaa !10, !alias.scope !152
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZN8facebook5velox6StatusD2Ev.exit25

_ZN8facebook5velox6StatusD2Ev.exit23:             ; preds = %bb.f, %.noexc20
  %i.aw = phi ptr [ %i.ab, %bb.f ], [ %i.ah, %.noexc20 ] ; 2 uses
  %i.ax = phi ptr [ %i.z, %bb.f ], [ %i.ai, %.noexc20 ]
  %.pr39 = load ptr, ptr %5, align 8, !tbaa !10, !noalias !155 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  store ptr %.pr39, ptr %0, align 8, !tbaa !10, !alias.scope !155
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.ay = icmp eq ptr %.pr39, null
  br i1 %i.ay, label %_ZN8facebook5velox6StatusD2Ev.exit25, label %.critedge14

_ZN8facebook5velox6StatusD2Ev.exit25:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23, %_ZN8facebook5velox6StatusD2Ev.exit23.thread
  %i.az = phi ptr [ %i.ax, %_ZN8facebook5velox6StatusD2Ev.exit23 ], [ %i.ai, %_ZN8facebook5velox6StatusD2Ev.exit23.thread ] ; 5 uses
  %i.ba = phi ptr [ %i.aw, %_ZN8facebook5velox6StatusD2Ev.exit23 ], [ %i.ah, %_ZN8facebook5velox6StatusD2Ev.exit23.thread ] ; 7 uses
  %i.bb = load ptr, ptr %2, align 8, !tbaa !63    ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  %i.be = load ptr, ptr %4, align 8, !tbaa !63    ; 6 uses
  %i.bf = icmp eq ptr %i.be, %i.ba                ; 2 uses
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25
  br i1 %i.bf, label %bb.n, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25
  br i1 %i.bf, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !57 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %.not21.i = icmp eq ptr %4, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %6, !prof !21

6:                                                ; preds = %bb.n
  switch i64 %i.bg, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %6
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !59
  store i8 %i.bi, ptr %i.bb, align 1, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.p:                                             ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.be, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.p, %bb.o, %6
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !57 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !57
  %i.bl = load ptr, ptr %2, align 8, !tbaa !63
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !59
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.be, ptr %2, align 8, !tbaa !63
  %i.bo = load i64, ptr %i.az, align 8, !tbaa !57
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !57
  %i.bp = load i64, ptr %i.ba, align 8, !tbaa !59
  store i64 %i.bp, ptr %i.bc, align 8, !tbaa !59
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bq = load i64, ptr %i.bc, align 8, !tbaa !59
  store ptr %i.be, ptr %2, align 8, !tbaa !63
  %i.br = load i64, ptr %i.az, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !57
  %i.bt = load i64, ptr %i.ba, align 8, !tbaa !59
  store i64 %i.bt, ptr %i.bc, align 8, !tbaa !59
  %.not.i26 = icmp eq ptr %i.bb, null
  br i1 %.not.i26, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bb, ptr %4, align 8, !tbaa !63
  store i64 %i.bq, ptr %i.ba, align 8, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ba, ptr %4, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %7 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bb, %bb.q ], [ %i.ba, %bb.r ], [ %i.be, %bb.n ]
  store i64 0, ptr %i.az, align 8, !tbaa !57
  store i8 0, ptr %7, align 1, !tbaa !59
  store ptr null, ptr %0, align 8, !tbaa !10, !alias.scope !157
  br label %.critedge14

.critedge14:                                      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bu = phi ptr [ %i.aw, %_ZN8facebook5velox6StatusD2Ev.exit23 ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !63    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bu
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge14
  %i.bx = load i64, ptr %i.bu, align 8, !tbaa !59
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.critedge

bb.s:                                             ; preds = %bb.f, %bb.h, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i
  %i.bz = phi ptr [ %i.ah, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i ], [ %i.ah, %bb.h ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %.pre43 = load ptr, ptr %4, align 8, !tbaa !63  ; 2 uses
  %i.cb = icmp eq ptr %.pre43, %i.bz
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.s
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !59
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %.pre43, i64 noundef %i.cd) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  resume { ptr, i32 } %i.ca

.critedge:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Status7InvalidIJRA35_KcRiEEES1_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.16", align 16 ; 5 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11, !noalias !160
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !160
  %.sroa.08.0.insert.ext.i = zext i32 %i.b to i128
  store i128 %.sroa.08.0.insert.ext.i, ptr %4, align 16, !noalias !160
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull %1, i64 %i.a, i64 1, ptr nonnull %4), !noalias !160
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 9, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !63, !noalias !160 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN8facebook5velox6Status8fromArgsIJRiEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !59, !noalias !160
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #12
  br label %_ZN8facebook5velox6Status8fromArgsIJRiEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !63, !noalias !160 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !59, !noalias !160
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !160
  resume { ptr, i32 } %i.h

_ZN8facebook5velox6Status8fromArgsIJRiEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox10serializer6presto6detail17PrestoVectorLexer8lexBytesEiNS2_9TokenTypeEPc(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !3
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  call void @_ZN8facebook5velox6Status7InvalidIJRA41_KcRiEEES1_DpOT_(ptr dead_on_unwind writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(41) @.str.10, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64                  ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 %i.e, ptr %i.b, align 8, !tbaa !22
  call void @_ZN8facebook5velox6Status7InvalidIJRA54_KcRimEEES1_DpOT_(ptr dead_on_unwind writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(54) @.str.11, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = icmp samesign ugt i32 %2, 1
  br i1 %i.i, label %bb.g, label %bb.h, !prof !34

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %4, ptr align 1 %i.h, i64 %i.d, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.f
  %i.j = icmp eq i32 %2, 1
  br i1 %i.j, label %bb.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.h
  %i.k = load i8, ptr %i.h, align 1, !tbaa !59
  store i8 %i.k, ptr %4, align 1, !tbaa !59
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

_ZSt4copyIPKcPcET0_T_S4_S3_.exit:                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  store ptr %i.n, ptr %i.l, align 8, !tbaa !26
  %i.o = load i64, ptr %1, align 8, !tbaa !14
  %i.p = sub i64 %i.o, %i.d
  store i64 %i.p, ptr %1, align 8, !tbaa !14
  tail call void @_ZN8facebook5velox10serializer6presto6detail17PrestoVectorLexer6commitENS2_9TokenTypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %3)
  store ptr null, ptr %0, align 8, !tbaa !10, !alias.scope !163
  br label %bb.j

bb.j:                                             ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10serializer6presto6detail17PrestoVectorLexer13lexFixedArrayIaEENS0_6StatusENS2_9TokenTypeE(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %4 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.f = load i64, ptr %1, align 8, !tbaa !14, !noalias !166 ; 3 uses
  %i.g = icmp ult i64 %i.f, 4
  br i1 %i.g, label %_ZN8facebook5velox6StatusD2Ev.exit, label %_ZN8facebook5velox6StatusD2Ev.exit.thread, !prof !21

_ZN8facebook5velox6StatusD2Ev.exit.thread:        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26, !noalias !166 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %i.i, align 1, !noalias !166
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store ptr %i.j, ptr %i.h, align 8, !tbaa !26, !noalias !166
  %i.k = add i64 %i.f, -4
  store i64 %i.k, ptr %1, align 8, !tbaa !14, !noalias !166
  store i32 %.0.copyload.i.i.i, ptr %i.e, align 4, !tbaa !3, !noalias !166
  tail call void @_ZN8facebook5velox10serializer6presto6detail17PrestoVectorLexer6commitENS2_9TokenTypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 3), !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN8facebook5velox6StatusD2Ev.exit20

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11, !noalias !166
  store i64 %i.f, ptr %i.c, align 8, !tbaa !22, !noalias !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11, !noalias !166
  store i64 4, ptr %i.d, align 8, !tbaa !22, !noalias !166
  call void @_ZN8facebook5velox6Status7InvalidIJRA40_KcmmEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(40) @.str.27, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11, !noalias !166
end_hunk_0
