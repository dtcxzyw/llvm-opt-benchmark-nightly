Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeArena?download=true
inline.NumInlined: 845
inline.NumDeleted: 470
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN4LuauL8fnVisitVIRZNS_9TypeArena20recordSingletonStatsENS_7NotNullINS_13SingletonTypeEEEE3$_0NS_16BooleanSingletonEEEvRT_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE":bb.a

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4LuauL8fnVisitVIRZNS_9TypeArena20recordSingletonStatsENS_7NotNullINS_13SingletonTypeEEEE3$_0NS_15StringSingletonEEEvRT_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::optional", align 8     ; 14 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !136   ; 4 uses
  %.val2 = load ptr, ptr %1, align 8              ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.b, align 8, !tbaa !63 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !210
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !210
  %i.f = icmp eq i64 %.val3, 0
  br i1 %i.f, label %"_ZZN4Luau9TypeArena20recordSingletonStatsENS_7NotNullINS_13SingletonTypeEEEENK3$_0clIRNS_15StringSingletonEEEDaOT_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %.val3, ptr %i.a, align 8, !tbaa !154
  %i.i = icmp ugt i64 %.val3, 15
  br i1 %i.i, label %._crit_edge.i.i.i.i.i.i.i.i.thread.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.thread.i:             ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !62
  %i.k = load i64, ptr %i.a, align 8, !tbaa !154
  store i64 %i.k, ptr %i.h, align 8, !tbaa !64
  br label %bb.d

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.b
  %cond.i = icmp eq i64 %.val3, 1
  br i1 %cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.l = load i8, ptr %.val2, align 1, !tbaa !64
  store i8 %i.l, ptr %i.h, align 8, !tbaa !64
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.thread.i
  %i.m = phi ptr [ %i.j, %._crit_edge.i.i.i.i.i.i.i.i.thread.i ], [ %i.h, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr readonly align 1 %.val2, i64 %.val3, i1 false)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !154
  %.pre4 = load ptr, ptr %2, align 8, !tbaa !62
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit.i: ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %.pre4, %bb.d ], [ %i.h, %bb.c ]
  %i.o = phi i64 [ %.pre, %bb.d ], [ 1, %bb.c ]   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  store i8 1, ptr %i.r, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.t = load i64, ptr %i.s, align 8, !tbaa !155
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.v = load i64, ptr %i.u, align 8, !tbaa !156
  %i.w = mul i64 %i.v, 3
  %i.x = lshr i64 %i.w, 2
  %.not.i.i.i = icmp ult i64 %i.t, %i.x
  br i1 %.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE14rehash_if_fullERKS9_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit.i
  %i.y = invoke noundef ptr @_ZNK4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE4findERKS9_(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  %.not2.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not2.i.i.i, label %bb.f, label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE14rehash_if_fullERKS9_.exit.i.i

bb.f:                                             ; preds = %.noexc.i
  invoke void @_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE14rehash_if_fullERKS9_.exit.i.i unwind label %bb.h

_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE14rehash_if_fullERKS9_.exit.i.i: ; preds = %bb.f, %.noexc.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit.i
  %i.z = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE13insert_unsafeERKS9_(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN4Luau12DenseHashSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt4hashIS8_ESt8equal_toIS8_EE6insertERKS8_.exit.i unwind label %bb.h ; 0 uses

_ZN4Luau12DenseHashSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt4hashIS8_ESt8equal_toIS8_EE6insertERKS8_.exit.i: ; preds = %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE14rehash_if_fullERKS9_.exit.i.i
  %i.aa = load i8, ptr %i.r, align 8, !tbaa !57, !range !24, !noundef !25
  %i.ab = trunc nuw i8 %i.aa to i1
  store i8 0, ptr %i.r, align 8, !tbaa !57
  br i1 %i.ab, label %bb.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.g:                                             ; preds = %_ZN4Luau12DenseHashSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt4hashIS8_ESt8equal_toIS8_EE6insertERKS8_.exit.i
  %i.ac = load ptr, ptr %2, align 8, !tbaa !62    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.h
  br i1 %i.ad, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !64
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZN4Luau12DenseHashSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt4hashIS8_ESt8equal_toIS8_EE6insertERKS8_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %"_ZZN4Luau9TypeArena20recordSingletonStatsENS_7NotNullINS_13SingletonTypeEEEENK3$_0clIRNS_15StringSingletonEEEDaOT_.exit"

bb.h:                                             ; preds = %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE14rehash_if_fullERKS9_.exit.i.i, %bb.f, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load i8, ptr %i.r, align 8, !tbaa !57, !range !24, !noundef !25
  %i.ai = trunc nuw i8 %i.ah to i1
  store i8 0, ptr %i.r, align 8, !tbaa !57
  br i1 %i.ai, label %bb.i, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit8.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %2, align 8, !tbaa !62    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.h
  br i1 %i.ak, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6.i: ; preds = %bb.i
  %i.al = load i64, ptr %i.h, align 8, !tbaa !64
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit8.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit8.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.ag

"_ZZN4Luau9TypeArena20recordSingletonStatsENS_7NotNullINS_13SingletonTypeEEEENK3$_0clIRNS_15StringSingletonEEEDaOT_.exit": ; preds = %bb.a, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !57
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !64
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE13insert_unsafeERKS9_(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !156
  %i.c = add i64 %i.b, -1                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !57, !range !24, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63
  %i.j = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.g, i64 noundef %i.i, i64 noundef 3339675911)
          to label %_ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #20
  unreachable

_ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ -3333, %bb.a ], [ %i.j, %bb.b ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !157
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i8, ptr %i.p, align 8, !tbaa !57, !range !24, !noundef !25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28.thread30
  %.pn = phi i64 [ %i.m, %_ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit ], [ %i.as, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28.thread30 ]
  %.02036 = phi i64 [ 0, %_ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit ], [ %i.ar, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28.thread30 ]
  %.02137 = and i64 %.pn, %i.c                    ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.02137 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i8, ptr %i.u, align 8, !tbaa !57, !range !24, !noundef !25 ; 3 uses
  %2 = trunc nuw i8 %i.v to i1                    ; 2 uses
  %i.w = icmp eq i8 %i.v, %i.q                    ; 2 uses
  %brmerge.not.i.i = and i1 %i.w, %2
  br i1 %brmerge.not.i.i, label %bb.e, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !63   ; 3 uses
  %i.z = load i64, ptr %i.r, align 8, !tbaa !63
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.f, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread29

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %.split

.split:                                           ; preds = %bb.f
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !62
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ad, ptr %i.ac, i64 %i.y)
  %i.ae = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ae, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread29

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit: ; preds = %bb.d
  br i1 %i.w, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread29

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread: ; preds = %bb.f, %.split, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !155
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !155
  br label %.thread

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread29: ; preds = %bb.e, %.split, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit
  %i.ai = load i8, ptr %i.d, align 8, !tbaa !57, !range !24, !noundef !25
  %3 = icmp eq i8 %i.v, %i.ai                     ; 2 uses
  %brmerge.not.i.i26 = and i1 %3, %2
  br i1 %brmerge.not.i.i26, label %bb.g, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28

bb.g:                                             ; preds = %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !63 ; 3 uses
  %i.al = load i64, ptr %i.s, align 8, !tbaa !63
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28.thread30

bb.h:                                             ; preds = %bb.g
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %.thread, label %.split31

.split31:                                         ; preds = %bb.h
  %i.ao = load ptr, ptr %1, align 8, !tbaa !62
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !62
  %bcmp.i.i.i27 = tail call i32 @bcmp(ptr %i.ap, ptr %i.ao, i64 %i.ak)
  %i.aq = icmp eq i32 %bcmp.i.i.i27, 0
  br i1 %i.aq, label %.thread, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28.thread30

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28: ; preds = %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread29
  br i1 %3, label %.thread, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28.thread30

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28.thread30: ; preds = %bb.g, %.split31, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28
  %i.ar = add i64 %.02036, 1                      ; 3 uses
  %i.as = add i64 %i.ar, %.02137
  %.not = icmp ugt i64 %i.ar, %i.c
  br i1 %.not, label %.thread, label %bb.d, !llvm.loop !211

.thread:                                          ; preds = %bb.h, %.split31, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28.thread30, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread
  %spec.select = phi ptr [ %i.t, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread ], [ %i.t, %bb.h ], [ %i.t, %.split31 ], [ %i.t, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28 ], [ null, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit28.thread30 ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE4findERKS9_(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !155
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !57, !range !24, !noundef !25 ; 2 uses
  %2 = trunc nuw i8 %i.f to i1                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !57, !range !24, !noundef !25
  %i.i = icmp eq i8 %i.f, %i.h                    ; 2 uses
  %brmerge.not.i.i = and i1 %i.i, %2
  br i1 %brmerge.not.i.i, label %bb.c, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !63   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !63
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %.split

.split:                                           ; preds = %bb.d
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.q = load ptr, ptr %1, align 8, !tbaa !62
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.p, i64 %i.k)
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %.thread

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit: ; preds = %bb.b
  br i1 %i.i, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %bb.e

.thread:                                          ; preds = %.split, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !156
  %i.u = add i64 %i.t, -1
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !156
  %i.x = add i64 %i.w, -1                         ; 2 uses
  br i1 %2, label %._crit_edge, label %_ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.thread
  %i.y = phi i64 [ %i.k, %.thread ], [ %.pre, %._crit_edge ]
  %i.z = phi i64 [ %i.u, %.thread ], [ %i.x, %._crit_edge ]
  %i.aa = load ptr, ptr %1, align 8, !tbaa !62
  %i.ab = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.aa, i64 noundef %i.y, i64 noundef 3339675911)
          to label %._ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit_crit_edge unwind label %bb.g

._ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit_crit_edge: ; preds = %bb.f
  %.pre43 = load i8, ptr %i.e, align 8, !tbaa !57, !range !24
  br label %_ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #20
  unreachable

_ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit: ; preds = %._ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit_crit_edge, %bb.e
  %i.ae = phi i8 [ 0, %bb.e ], [ %.pre43, %._ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit_crit_edge ]
  %i.af = phi i64 [ %i.x, %bb.e ], [ %i.z, %._ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit_crit_edge ] ; 2 uses
  %i.ag = phi i64 [ -3333, %bb.e ], [ %i.ab, %._ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit_crit_edge ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !157
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29.thread33
  %.pn = phi i64 [ %i.ag, %_ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit ], [ %i.bg, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29.thread33 ]
  %.01841 = phi i64 [ 0, %_ZNKSt25__optional_hash_call_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_Lb1EEclERKSt8optionalIS5_E.exit ], [ %i.bf, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29.thread33 ]
  %.01942 = and i64 %.pn, %i.af                   ; 2 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %.01942 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i8, ptr %i.al, align 8, !tbaa !57, !range !24, !noundef !25 ; 3 uses
  %3 = trunc nuw i8 %i.am to i1                   ; 2 uses
  %i.an = icmp eq i8 %i.am, %i.ae                 ; 2 uses
  %brmerge.not.i.i24 = and i1 %i.an, %3
  br i1 %brmerge.not.i.i24, label %bb.i, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit26

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !63 ; 3 uses
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !63
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.j, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit26.thread31

bb.j:                                             ; preds = %bb.i
  %i.as = icmp eq i64 %i.ap, 0
  br i1 %i.as, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %.split32

.split32:                                         ; preds = %bb.j
  %i.at = load ptr, ptr %1, align 8, !tbaa !62
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !62
  %bcmp.i.i.i25 = tail call i32 @bcmp(ptr %i.au, ptr %i.at, i64 %i.ap)
  %i.av = icmp eq i32 %bcmp.i.i.i25, 0
  br i1 %i.av, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit26.thread31

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit26: ; preds = %bb.h
  br i1 %i.an, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit26.thread31

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit26.thread31: ; preds = %bb.i, %.split32, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit26
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !57, !range !24, !noundef !25
  %4 = icmp eq i8 %i.am, %i.aw                    ; 2 uses
  %brmerge.not.i.i27 = and i1 %4, %3
  br i1 %brmerge.not.i.i27, label %bb.k, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29

bb.k:                                             ; preds = %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit26.thread31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !63 ; 3 uses
  %i.az = load i64, ptr %i.aj, align 8, !tbaa !63
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.l, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29.thread33

bb.l:                                             ; preds = %bb.k
  %i.bb = icmp eq i64 %i.ay, 0
  br i1 %i.bb, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %.split34

.split34:                                         ; preds = %bb.l
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !62
  %bcmp.i.i.i28 = tail call i32 @bcmp(ptr %i.bd, ptr %i.bc, i64 %i.ay)
  %i.be = icmp eq i32 %bcmp.i.i.i28, 0
  br i1 %i.be, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29.thread33

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29: ; preds = %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit26.thread31
  br i1 %4, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29.thread33

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29.thread33: ; preds = %bb.k, %.split34, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29
  %i.bf = add i64 %.01841, 1                      ; 3 uses
  %i.bg = add i64 %i.bf, %.01942
  %.not = icmp ugt i64 %i.bf, %i.af
  br i1 %.not, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %bb.h, !llvm.loop !212

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread: ; preds = %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29.thread33, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit26, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29, %.split32, %.split34, %bb.j, %bb.l, %bb.d, %.split, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit, %bb.a
  %.4 = phi ptr [ null, %bb.d ], [ null, %bb.a ], [ null, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit ], [ null, %.split ], [ null, %bb.l ], [ null, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29 ], [ %i.ak, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit26 ], [ %i.ak, %.split32 ], [ %i.ak, %bb.j ], [ null, %.split34 ], [ null, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit29.thread33 ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(66) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Luau::detail::DenseHashTable", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EEC2ERKS9_m(ptr noundef nonnull align 8 dereferenceable(66) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %spec.select)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.ay, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread ] ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !214    ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !214
  store ptr %i.j, ptr %0, align 8, !tbaa !214
  store ptr %i.i, ptr %1, align 8, !tbaa !214
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !154
  store i64 %i.l, ptr %i.a, align 8, !tbaa !154
  store i64 %.lcssa, ptr %i.k, align 8, !tbaa !154
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not.i.i.i = icmp eq i64 %.lcssa, 0
  br i1 %.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE7destroyEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i
  %.04.i.i.i = phi i64 [ %i.v, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.04.i.i.i ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !57, !range !24, !noundef !25
  %i.p = trunc nuw i8 %i.o to i1
  store i8 0, ptr %i.n, align 8, !tbaa !57
  br i1 %i.p, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.r, align 8, !tbaa !64
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = add nuw i64 %.04.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.v, %.lcssa
  br i1 %exitcond.not.i.i.i, label %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyEPS9_m.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyEPS9_m.exit.loopexit.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !157
  br label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE7destroyEv.exit.i

_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE7destroyEv.exit.i: ; preds = %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyEPS9_m.exit.loopexit.i.i, %bb.b
  %i.w = phi ptr [ %.pre.i.i, %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyEPS9_m.exit.loopexit.i.i ], [ %i.i, %bb.b ]
  call void @_ZdlPv(ptr noundef %i.w) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %1, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE7destroyEv.exit.i, %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !57, !range !24, !noundef !25
  %i.z = trunc nuw i8 %i.y to i1
  store i8 0, ptr %i.x, align 8, !tbaa !57
  br i1 %i.z, label %bb.e, label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !64
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #23
  br label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EED2Ev.exit: ; preds = %bb.e, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread
  %i.ag = phi i64 [ %i.f, %.lr.ph ], [ %i.ay, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread ] ; 3 uses
  %.01116 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread ] ; 3 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !157
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %.01116 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !57, !range !24, !noundef !25 ; 2 uses
  %2 = trunc nuw i8 %i.ak to i1
  %3 = load i8, ptr %i.g, align 8, !tbaa !57, !range !24, !noundef !25
  %i.al = icmp eq i8 %i.ak, %3                    ; 2 uses
  %brmerge.not.i.i = and i1 %i.al, %2
  br i1 %brmerge.not.i.i, label %bb.g, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !63 ; 3 uses
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !63
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.h, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread14

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %.split

.split:                                           ; preds = %bb.h
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !62
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.as, ptr %i.ar, i64 %i.an)
  %i.at = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.at, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread14

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit: ; preds = %bb.f
  br i1 %i.al, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread14

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread14: ; preds = %bb.g, %.split, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit
  %i.au = invoke noundef ptr @_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE13insert_unsafeERKS9_(ptr noundef nonnull align 8 dereferenceable(66) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ai)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread14
  %i.av = load ptr, ptr %0, align 8, !tbaa !157
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %.01116
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.aw) #21
  %.pre = load i64, ptr %i.a, align 8, !tbaa !156
  br label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread

bb.j:                                             ; preds = %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread14
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.ax

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread: ; preds = %bb.h, %.split, %bb.i, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit
  %i.ay = phi i64 [ %i.ag, %bb.h ], [ %i.ag, %.split ], [ %.pre, %bb.i ], [ %i.ag, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit ] ; 3 uses
  %i.az = add nuw i64 %.01116, 1                  ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  br i1 %i.ba, label %bb.f, label %._crit_edge, !llvm.loop !213
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EEC2ERKS9_m(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.f, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.g = load i8, ptr %i.e, align 8, !tbaa !57, !range !24, !noundef !25
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !60
  %i.j = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !63   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.l, ptr %i.b, align 8, !tbaa !154
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !62
  %i.o = load i64, ptr %i.b, align 8, !tbaa !154
  store i64 %i.o, ptr %i.i, align 8, !tbaa !64
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.b
  %i.p = phi ptr [ %i.n, %.noexc.i.i.i.i.i.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !64
  store i8 %i.q, ptr %i.p, align 1, !tbaa !64
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.r = load i64, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.r, ptr %i.s, align 8, !tbaa !63
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  store i8 1, ptr %i.f, align 8, !tbaa !57
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4fillEPS9_mRKS9_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %i.v = mul i64 %2, 40
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24
          to label %.lr.ph.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

.lr.ph.i:                                         ; preds = %bb.e
  store ptr %i.w, ptr %0, align 8, !tbaa !157
  store i64 %2, ptr %i.c, align 8, !tbaa !156
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.e, align 8, !tbaa !57, !range !24, !noundef !25
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.lr.ph.i.split, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader: ; preds = %.lr.ph.i
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.aa = icmp ult i64 %2, 8
  br i1 %i.aa, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil.preheader, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader.new

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader.new: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader
  %unroll_iter = and i64 %2, -8
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader.new
  %.05.i.us = phi i64 [ 0, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader.new ], [ %i.ar, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us ] ; 9 uses
  %niter = phi i64 [ 0, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader.new ], [ %niter.next.7, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us ]
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i8 0, ptr %i.ac, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i8 0, ptr %i.ae, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  store i8 0, ptr %i.ag, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  store i8 0, ptr %i.ai, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  store i8 0, ptr %i.ak, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  store i8 0, ptr %i.am, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 272
  store i8 0, ptr %i.ao, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 312
  store i8 0, ptr %i.aq, align 8, !tbaa !57
  %i.ar = add nuw i64 %.05.i.us, 8                ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4fillEPS9_mRKS9_.exit.loopexit14.unr-lcssa, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us, !llvm.loop !215

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i
  %.05.i = phi i64 [ %i.bi, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !57
  %i.au = load i8, ptr %i.e, align 8, !tbaa !57, !range !24, !noundef !25
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.f, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.split
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !60
  %i.ax = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.ay = load i64, ptr %i.x, align 8, !tbaa !63  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !154
  %i.az = icmp ugt i64 %i.ay, 15
  br i1 %i.az, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f
  %i.ba = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  store ptr %i.ba, ptr %i.as, align 8, !tbaa !62
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !154
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !64
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc, %bb.f
  %i.bc = phi ptr [ %i.ba, %.noexc ], [ %i.aw, %bb.f ] ; 2 uses
  switch i64 %i.ay, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !64
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !64
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.ax, i64 %i.ay, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.be = load i64, ptr %i.a, align 8, !tbaa !154 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !63
  %i.bg = load ptr, ptr %i.as, align 8, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.at, align 8, !tbaa !57
end_hunk_0
