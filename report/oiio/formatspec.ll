inline.NumInlined: 8159
inline.NumDeleted: 2480
begin_hunk_0_@_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_M_realloc_insertIJRNS1_17basic_string_viewIcSt11char_traitsIcEEESA_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #42 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.r = load ptr, ptr %2, align 8, !tbaa !103
  store ptr %i.r, ptr %4, align 8, !tbaa !103
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !105
  store i64 %i.u, ptr %i.s, align 8, !tbaa !105
  %i.v = load ptr, ptr %3, align 8, !tbaa !103
  store ptr %i.v, ptr %5, align 8, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !105
  store i64 %i.y, ptr %i.w, align 8, !tbaa !105
  call void @_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(39) %i.q, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.z = call noundef ptr @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p, ptr noundef nonnull align 1 dereferenceable(1) %0) #39
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = call noundef ptr @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.aa, ptr noundef nonnull align 1 dereferenceable(1) %0) #39
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !110
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #40
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !107
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_M_realloc_insertIJRNS1_17basic_string_viewIcSt11char_traitsIcEEERNS1_7ustringEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::ustring", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.289) #41
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #42 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !105
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.0.0.copyload.i, ptr %5, align 8
  store ptr null, ptr %i.q, align 8, !tbaa !111
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.u, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !94
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.w, i8 0, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.r, ptr %4, align 8, !tbaa !103
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.t, ptr %i.x, align 8, !tbaa !105
  %i.y = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %4)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #37
  unreachable

bb.e:                                             ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.ab = phi ptr [ null, %_ZNKSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.y, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %i.q, ptr %i.ab, i64 269, i32 noundef 1, ptr nonnull %5, i64 8, i8 1, i8 1) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ac = call noundef ptr @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p, ptr noundef nonnull align 1 dereferenceable(1) %0) #39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = call noundef ptr @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.ad, ptr noundef nonnull align 1 dereferenceable(1) %0) #39
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !110
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ai) #40
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %bb.e, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !107
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !109
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !122
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39, !inline_history !1262
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39, !inline_history !1262
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !126

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEEC2EPKcS6_RKSt6localeNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::allocator.144", align 1 ; 3 uses
  %6 = alloca %"class.std::locale", align 8       ; 4 uses
  %i.a = and i32 %4, 1008
  switch i32 %i.a, label %bb.c [
    i32 16, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 32, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 64, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 128, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 256, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 512, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %4, 16
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 14, ptr noundef nonnull @.str.292) #41
  unreachable

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0.i = phi i32 [ %i.b, %bb.b ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ] ; 2 uses
  store i32 %.0.i, ptr %0, align 8, !tbaa !1263
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  invoke void @_ZNSt8__detail8_ScannerIcEC2EPKcS3_NSt15regex_constants18syntax_option_typeESt6locale(ptr noundef nonnull align 8 dereferenceable(248) %i.c, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i, ptr noundef nonnull %6)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !1281
  store ptr null, ptr %i.d, align 8, !tbaa !1284, !alias.scope !1281
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvEJRKSt6localeRNSt15regex_constants18syntax_option_typeEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %0)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !1281
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.h, align 8, !tbaa !67
  store i8 0, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 noundef 0)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit unwind label %bb.r

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !1284
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr %i.l, ptr %i.j, align 8, !tbaa !1285
  %i.m = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #39
  %i.n = load ptr, ptr %3, align 8, !tbaa !458
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !464
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !465  ; 2 uses
  %.not.not.i = icmp eq ptr %i.r, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit
  invoke void @_ZSt16__throw_bad_castv() #41
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.r, ptr %i.s, align 8, !tbaa !1286
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !1284 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1287
  %i.w = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE23_M_insert_subexpr_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %i.t)
          to label %bb.g unwind label %bb.t       ; 2 uses

bb.g:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1293
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.w, ptr %i.aa, align 8, !tbaa !1296
  invoke void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1299
  %i.ad = icmp eq i32 %i.ac, 27
  br i1 %i.ad, label %bb.i, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %.noexc18 unwind label %bb.t

.noexc18:                                         ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1300
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1301
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc18
  store i32 27, ptr %i.ab, align 8, !tbaa !1299
  br label %bb.u

bb.k:                                             ; preds = %.noexc18
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1302
  switch i32 %i.al, label %bb.u [
    i32 0, label %bb.l
    i32 2, label %bb.m
    i32 1, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.c)
          to label %bb.u unwind label %bb.t

bb.m:                                             ; preds = %bb.k
  invoke void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.c)
          to label %bb.u unwind label %bb.t

bb.n:                                             ; preds = %bb.k
  invoke void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.c)
          to label %bb.u unwind label %bb.t

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %bb.h
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 5) #41
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  unreachable

bb.p:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #39
  br label %_ZNSt8__detail8_ScannerIcED2Ev.exit

bb.q:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.r:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.s:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.t:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i, %bb.y, %bb.x, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit, %bb.g, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.u:                                             ; preds = %bb.k, %bb.j, %bb.l, %bb.m, %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1303, !noalias !1304 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1309, !noalias !1304 ; 2 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -24
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.as, i64 -16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !114
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.as, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !114
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1310, !noalias !1304
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1311, !noalias !1312 ; 2 uses
  %.sroa.5.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.ba, i64 488
  %.sroa.5.0.copyload24 = load i64, ptr %.sroa.5.0..sroa_idx23, align 8, !tbaa !114
  %.sroa.6.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.ba, i64 496
  %.sroa.6.0.copyload26 = load i64, ptr %.sroa.6.0..sroa_idx25, align 8, !tbaa !114
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef 504) #40, !noalias !1312
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !1313, !noalias !1312
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8 ; 2 uses
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !1310, !noalias !1312
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1311, !noalias !1312 ; 3 uses
  store ptr %i.bd, ptr %i.at, align 8, !tbaa !1309, !noalias !1312
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 504
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1314, !noalias !1312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 480
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload26, %bb.w ], [ %.sroa.6.0.copyload, %bb.v ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload24, %bb.w ], [ %.sroa.5.0.copyload, %bb.v ]
  %storemerge.i.i.i = phi ptr [ %i.bg, %bb.w ], [ %i.aw, %bb.v ]
  store ptr %storemerge.i.i.i, ptr %i.ar, align 8, !tbaa !1315, !noalias !1312
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl:bb.a
  store i64 0, ptr %i.bs, align 8, !tbaa !113
  %i.by = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !1937 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %bb.d
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.ca = load i64, ptr %i.br, align 8, !tbaa !1864
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.ca)
          to label %bb.f unwind label %bb.g, !inline_history !1937

bb.f:                                             ; preds = %.noexc
  %i.cb = load i8, ptr %i.bx, align 4, !tbaa !1862, !range !160, !noundef !161
  %i.cc = trunc nuw i8 %i.cb to i1                ; 2 uses
  br i1 %i.cc, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !1875 ; 2 uses
  %i.ce = load ptr, ptr %2, align 8, !tbaa !1817  ; 5 uses
  %.not = icmp eq ptr %i.cd, %i.ce
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = sdiv exact i64 %i.ch, 24                ; 3 uses
  %i.cj = load ptr, ptr %0, align 8               ; 3 uses
  %xtraiter37 = and i64 %i.ci, 1
  %i.ck = icmp eq i64 %i.ch, 24
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ci, -2
  br label %bb.h

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #39
  br label %.body

bb.h:                                             ; preds = %bb.l, %.lr.ph.new
  %.024 = phi i64 [ 0, %.lr.ph.new ], [ %i.dh, %bb.l ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.024 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !1866, !range !160, !noundef !161
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.024 ; 3 uses
  %i.cr = load i64, ptr %i.cm, align 8, !tbaa !113
  store i64 %i.cr, ptr %i.cq, align 8, !tbaa !113
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !113
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !113
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i8 1, ptr %i.cv, align 8, !tbaa !1866
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cw = or disjoint i64 %.024, 1                ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cw ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !1866, !range !160, !noundef !161
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.cw ; 3 uses
  %i.dc = load i64, ptr %i.cx, align 8, !tbaa !113
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !113
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !113
  store i64 %i.df, ptr %i.de, align 8, !tbaa !113
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i8 1, ptr %i.dg, align 8, !tbaa !1866
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dh = add nuw i64 %.024, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1938

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.024.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.dh, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod39 = trunc i64 %i.ci to i1
  call void @llvm.assume(i1 %lcmp.mod39)
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.024.epil.init ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !1866, !range !160, !noundef !161
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.epil.preheader
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.024.epil.init ; 3 uses
  %i.dn = load i64, ptr %i.di, align 8, !tbaa !113
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !113
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !113
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !113
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i8 1, ptr %i.dr, align 8, !tbaa !1866
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.m, %.epil.preheader, %.preheader, %bb.f
  %i.ds = load ptr, ptr %i.ag, align 8, !tbaa !1851 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1852
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.n, %.loopexit
  %i.dy = load ptr, ptr %3, align 8, !tbaa !1817  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1820
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #40
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.ee = load ptr, ptr %2, align 8, !tbaa !1817  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.ef = load ptr, ptr %i.r, align 8, !tbaa !1820
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #40
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret i1 %i.cc

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.g ], [ %i.bz, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.ej = load ptr, ptr %2, align 8, !tbaa !1817  ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ek = load ptr, ptr %i.r, align 8, !tbaa !1820
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #40
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21: ; preds = %.body, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  resume { ptr, i32 } %.pn.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_formatspec.cpp() #34 section ".text.startup" {
bb.a:
  store i32 0, ptr @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, align 8, !tbaa !1939
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, i64 8), i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, i64 24), align 8, !tbaa !14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, i64 32), align 8, !tbaa !1940
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_14pugi14xpath_node_setD2Ev, ptr nonnull @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, ptr nonnull @__dso_handle) #39 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #36

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.bswap.v2i32(<2 x i32>) #20

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold noreturn }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #27 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #30 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #37 = { noreturn nounwind }
attributes #38 = { cold nounwind }
attributes #39 = { nounwind }
attributes #40 = { builtin nounwind }
attributes #41 = { noreturn }
attributes #42 = { builtin allocsize(0) }
attributes #43 = { nounwind willreturn memory(read) }
attributes #44 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 8}
!8 = !{!"_ZTSN11OpenImageIO4v3_14pugi17xml_writer_streamE", !9, i64 0, !10, i64 8, !12, i64 16}
!9 = !{!"_ZTSN11OpenImageIO4v3_14pugi10xml_writerE"}
!10 = !{!"p1 _ZTSSo", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTSSt13basic_ostreamIwSt11char_traitsIwEE", !11, i64 0}
!13 = !{!8, !12, i64 16}
!14 = !{!15, !17, i64 24}
!15 = !{!"_ZTSN11OpenImageIO4v3_14pugi14xpath_node_setE", !16, i64 0, !5, i64 8, !17, i64 24, !17, i64 32}
!16 = !{!"_ZTSN11OpenImageIO4v3_14pugi14xpath_node_set6type_tE", !5, i64 0}
!17 = !{!"p1 _ZTSN11OpenImageIO4v3_14pugi10xpath_nodeE", !11, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long long", !5, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!23 = !{!24, !4, i64 20}
!24 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !25, i64 64, !26, i64 72, !31, i64 96, !4, i64 120, !4, i64 124, !36, i64 128, !37, i64 136}
!25 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!26 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !27, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !11, i64 0}
!31 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !32, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!36 = !{!"bool", !5, i64 0}
!37 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !38, i64 0}
!38 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !39, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !11, i64 0}
!43 = !{!24, !4, i64 56}
!44 = !{!24, !4, i64 60}
!45 = !{!24, !4, i64 120}
!46 = !{!24, !4, i64 124}
!47 = !{!24, !36, i64 128}
!48 = !{!24, !4, i64 0}
!49 = !{!24, !4, i64 4}
!50 = !{!24, !4, i64 8}
!51 = !{!24, !4, i64 12}
!52 = !{!24, !4, i64 16}
!53 = !{!24, !4, i64 36}
!54 = !{!24, !4, i64 40}
!55 = !{!34, !35, i64 0}
!56 = !{!34, !35, i64 8}
!57 = !{!58, !60, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !59, i64 0, !61, i64 8, !5, i64 16}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !60, i64 0}
!60 = !{!"p1 omnipotent char", !11, i64 0}
!61 = !{!"long", !5, i64 0}
!62 = !{!5, !5, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!34, !35, i64 16}
!66 = !{!59, !60, i64 0}
!67 = !{!58, !61, i64 8}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA10_cJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!70 = distinct !{!70, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA10_cJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!71 = distinct !{!71, !64}
!72 = !{!73, !4, i64 0}
!73 = !{!"_ZTSN11OpenImageIO4v3_13ROIE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!74 = !{!73, !4, i64 8}
!75 = !{!73, !4, i64 16}
!76 = !{!73, !4, i64 4}
!77 = !{!73, !4, i64 12}
!78 = !{!73, !4, i64 20}
!79 = !{!24, !4, i64 24}
!80 = !{!24, !4, i64 28}
!81 = !{!24, !4, i64 32}
!82 = !{!73, !4, i64 28}
!83 = !{!73, !4, i64 24}
!84 = !{!29, !30, i64 0}
!85 = !{!29, !30, i64 8}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!88 = distinct !{!88, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!91 = !{!87, !90}
!92 = distinct !{!92, !64}
!93 = !{!30, !30, i64 0}
!94 = !{!25, !4, i64 4}
!95 = !{!25, !5, i64 1}
!96 = distinct !{!96, !64}
!97 = distinct !{!97, !64}
!98 = !{!24, !4, i64 48}
!99 = !{!24, !4, i64 52}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRmS6_RNS0_8TypeDescERNS0_17basic_string_viewIcSt11char_traitsIcEEEEEENSt7__cxx1112basic_stringIcSB_SaIcEEERKT_DpOT0_: argument 0"}
!102 = distinct !{!102, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRmS6_RNS0_8TypeDescERNS0_17basic_string_viewIcSt11char_traitsIcEEEEEENSt7__cxx1112basic_stringIcSB_SaIcEEERKT_DpOT0_"}
!103 = !{!104, !60, i64 0}
!104 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !60, i64 0, !61, i64 8}
!105 = !{!104, !61, i64 8}
!106 = !{!42, !42, i64 0}
!107 = !{!41, !42, i64 0}
!108 = distinct !{!108, !64}
!109 = !{!41, !42, i64 8}
!110 = !{!41, !42, i64 16}
!111 = !{!112, !60, i64 0}
!112 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !60, i64 0}
!113 = !{!60, !60, i64 0}
!114 = !{!61, !61, i64 0}
!115 = distinct !{!115, !64}
!116 = distinct !{!116, !64}
!117 = !{!118, !119, i64 0}
!118 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !119, i64 0}
!119 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!120 = !{!121, !4, i64 8}
end_hunk_1
