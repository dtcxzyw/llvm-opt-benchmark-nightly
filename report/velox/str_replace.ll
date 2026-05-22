inline.NumInlined: 247
inline.NumDeleted: 103
begin_hunk_0_@_ZN4absl12lts_2024011613StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE:bb.a
  store ptr %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %i.a, align 8
  call void @_ZN4absl12lts_2024011613StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEENSt7__cxx1112basic_stringIcS6_SaIcEEES7_RKT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2024011613StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEENSt7__cxx1112basic_stringIcS6_SaIcEEES7_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN4absl12lts_2024011616strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !26
  store i8 0, ptr %i.a, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef i32 @_ZN4absl12lts_2024011616strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS1_18ViableSubstitutionESaIS7_EEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !17
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.i = load ptr, ptr %4, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #13
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %4, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #13
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit6

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit6: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2024011613StrReplaceAllESt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr %0, i64 %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::initializer_list", align 8 ; 3 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = call noundef i32 @_ZN4absl12lts_2024011613StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEEiRKT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4absl12lts_2024011613StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEEiRKT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %2 = alloca %"class.std::vector", align 8       ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.b = load ptr, ptr %1, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26
  call void @_ZN4absl12lts_2024011616strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, i64 %i.d, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.e = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 19 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i64 0, ptr %i.j, align 8, !tbaa !26
  store i8 0, ptr %i.i, align 8, !tbaa !17
  %i.k = load i64, ptr %i.c, align 8, !tbaa !26   ; 4 uses
  %.not.i = icmp ugt i64 %i.k, 15
  br i1 %.not.i, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.0.i = call i64 @llvm.umax.i64(i64 %i.k, i64 30) ; 2 uses
  %i.m = add nuw i64 %.0.i, 1                     ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !32

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #12
          to label %.noexc13 unwind label %bb.n

.noexc13:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.d
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #14
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i unwind label %bb.n ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  store i8 0, ptr %i.o, align 1, !tbaa !17
  store ptr %i.o, ptr %3, align 8, !tbaa !29
  store i64 %.0.i, ptr %i.i, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.p = load ptr, ptr %1, align 8, !tbaa !29
  %i.q = invoke noundef i32 @_ZN4absl12lts_2024011616strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS1_18ViableSubstitutionESaIS7_EEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %i.k, ptr %i.p, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit
  %i.r = icmp eq ptr %1, %3
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %1, align 8, !tbaa !29     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.v = load i64, ptr %i.c, align 8, !tbaa !26   ; 8 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = load ptr, ptr %3, align 8, !tbaa !29     ; 3 uses
  %i.y = icmp eq ptr %i.x, %i.i
  br i1 %i.y, label %bb.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.j, align 8, !tbaa !26   ; 5 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %.not.i17 = icmp eq i64 %i.v, 0
  %.not38.i = icmp eq i64 %i.z, 0                 ; 2 uses
  br i1 %.not.i17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not38.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i:       ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = add nuw nsw i64 %i.z, 1                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ab, i1 false)
  %i.ac = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.ac, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.ab, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  br i1 %.not38.i, label %bb.m, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i:       ; preds = %bb.k
  %i.ad = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ad, i1 false)
  store i64 %i.z, ptr %i.c, align 8, !tbaa !26
  store i64 0, ptr %i.j, align 8, !tbaa !26
  store i8 0, ptr %i.x, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i:       ; preds = %bb.j
  %i.ae = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.ae, i1 false)
  store i64 %i.v, ptr %i.j, align 8, !tbaa !26
  store i64 0, ptr %i.c, align 8, !tbaa !26
  store i8 0, ptr %i.s, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i:       ; preds = %bb.h
  %i.af = load i64, ptr %i.i, align 8, !tbaa !17
  %i.ag = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.ag, i1 false)
  store ptr %i.x, ptr %1, align 8, !tbaa !29
  store ptr %i.i, ptr %3, align 8, !tbaa !29
  store i64 %i.af, ptr %i.t, align 8, !tbaa !17
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.t, align 8, !tbaa !17
  %i.ai = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.i
  br i1 %i.aj, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !26  ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.am, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = load i64, ptr %i.i, align 8, !tbaa !17
  store i64 %i.an, ptr %i.t, align 8, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i
  %.sink = phi ptr [ %i.t, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i ]
  store ptr %i.s, ptr %3, align 8, !tbaa !29
  store ptr %.sink, ptr %1, align 8, !tbaa !29
  store i64 %i.ah, ptr %i.i, align 8, !tbaa !17
  %.pre = load i64, ptr %i.c, align 8, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i, %bb.k, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i
  %i.ao = phi i64 [ %.pre, %bb.l ], [ %i.v, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i ], [ 0, %bb.k ], [ %i.v, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i ]
  %i.ap = load i64, ptr %i.j, align 8, !tbaa !26
  store i64 %i.ap, ptr %i.c, align 8, !tbaa !26
  store i64 %i.ao, ptr %i.j, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit: ; preds = %bb.f, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, %bb.m
  %i.aq = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.i
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit
  %i.as = load i64, ptr %i.i, align 8, !tbaa !17
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %.pr = load ptr, ptr %2, align 8, !tbaa !22
  br label %bb.r

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.e, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.av, %bb.o ], [ %i.au, %bb.n ]
  %i.aw = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.i
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.p
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !17
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.ba = load ptr, ptr %2, align 8, !tbaa !22    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #13
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = phi ptr [ %i.e, %bb.a ], [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.not.i.i.i25 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit26, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #13
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit26

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit26: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !29     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !32

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #12
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #14 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !17
  store i8 %i.t, ptr %i.s, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !17
  store i8 %i.x, ptr %i.w, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
end_hunk_0
