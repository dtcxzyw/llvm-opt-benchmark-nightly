inline.NumInlined: 4097
inline.NumDeleted: 2192
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !174
  %i.l = load ptr, ptr %0, align 8, !tbaa !156
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_9UnionTypeEPNS_21TypeFunctionUnionTypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !421    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !421  ; 2 uses
  %.not10 = icmp eq ptr %i.a, %i.c
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit
  %.sroa.07.011 = phi ptr [ %i.a, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.07.011, align 8, !tbaa !84
  %i.g = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.f) ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !423  ; 4 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !222
  %.not.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.h, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.d, align 8, !tbaa !423
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8, !tbaa !220    ; 4 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #28
  unreachable

_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #29 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %i.g, ptr %i.w, align 8, !tbaa !87
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #27
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.v, ptr %2, align 8, !tbaa !220
  store ptr %i.y, ptr %i.d, align 8, !tbaa !423
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.z, ptr %i.e, align 8, !tbaa !222
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_16IntersectionTypeEPNS_28TypeFunctionIntersectionTypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !421    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !421  ; 2 uses
  %.not10 = icmp eq ptr %i.a, %i.c
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit
  %.sroa.07.011 = phi ptr [ %i.a, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.07.011, align 8, !tbaa !84
  %i.g = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.f) ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !423  ; 4 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !222
  %.not.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.h, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.d, align 8, !tbaa !423
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8, !tbaa !220    ; 4 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #28
  unreachable

_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #29 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %i.g, ptr %i.w, align 8, !tbaa !87
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #27
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.v, ptr %2, align 8, !tbaa !220
  store ptr %i.y, ptr %i.d, align 8, !tbaa !423
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.z, ptr %i.e, align 8, !tbaa !222
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_9TableTypeEPNS_21TypeFunctionTableTypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not42 = icmp eq ptr %i.b, %i.c
  br i1 %.not42, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i8, ptr %i.d, align 8, !tbaa !424, !range !75, !noundef !76
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.024.043 = phi ptr [ %i.u, %bb.e ], [ %i.b, %bb.a ] ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.024.043, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.024.043, i64 216
  %i.i = load i8, ptr %i.h, align 8, !tbaa !426, !range !75, !noundef !76
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.024.043, i64 208
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.m = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.035.1 = phi ptr [ %i.m, %bb.b ], [ undef, %.lr.ph ]
  %.sroa.436.0 = phi i8 [ 1, %bb.b ], [ 0, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.024.043, i64 232
  %i.o = load i8, ptr %i.n, align 8, !tbaa !426, !range !75, !noundef !76
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.024.043, i64 224
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !84
  %i.s = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.r)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.425.0 = phi i8 [ 1, %bb.d ], [ 0, %bb.c ]
  %.sroa.024.0 = phi ptr [ %i.s, %bb.d ], [ undef, %bb.c ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.g) ; 4 uses
  store ptr %.sroa.035.1, ptr %i.t, align 8
  %.sroa.027.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 %.sroa.436.0, ptr %.sroa.027.sroa.4.0..sroa_idx, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.024.0, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i8 %.sroa.425.0, ptr %.sroa.529.0..sroa_idx, align 8
  %i.u = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.024.043) #31 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !427
  %i.x = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !429
  %i.aa = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.z)
  %i.ab = load i8, ptr @_ZN5FFlag38LuauTypeFunctionTableIndexerIsReadOnlyE, align 8, !tbaa !72, !range !75, !noundef !76
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !430, !range !75, !noundef !76
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.af = phi i8 [ %i.ae, %bb.g ], [ 0, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !232, !range !75, !noundef !76
  %i.aj = trunc nuw i8 %i.ai to i1
  store ptr %i.x, ptr %i.ag, align 8, !tbaa !87
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx18, align 8, !tbaa !87
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i8 %i.af, ptr %.sroa.6.0..sroa_idx20, align 8, !tbaa !219
  br i1 %i.aj, label %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ah, align 8, !tbaa !232
  br label %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %bb.h, %bb.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_13MetatableTypeEPNS_21TypeFunctionTableTypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !431
  %i.b = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.a) ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !186
  %i.d = icmp eq i32 %i.c, 9
  br i1 %i.d, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_9TableTypeEPNS_21TypeFunctionTableTypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull %i.e, ptr noundef %2)
  br label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !437
  %i.h = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.h, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_12FunctionTypeEPNS_24TypeFunctionFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !438  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !440  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !222
  %i.l = load ptr, ptr %2, align 8, !tbaa !220    ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !423
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.n                       ; 3 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #29 ; 4 uses
  %i.v = icmp sgt i64 %i.t, 0
  br i1 %i.v, label %bb.d, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.l, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.l, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #27
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !421
  %.pre61.pre = load ptr, ptr %i.c, align 8, !tbaa !421
  br label %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %.pre61 = phi ptr [ %.pre61.pre, %bb.e ], [ %i.d, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.e, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  store ptr %i.u, ptr %2, align 8, !tbaa !220
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.w, ptr %i.q, align 8, !tbaa !423
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.h
  store ptr %i.x, ptr %i.j, align 8, !tbaa !222
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.y = phi ptr [ %i.d, %bb.c ], [ %.pre61, %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %i.z = phi ptr [ %i.e, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %.not51 = icmp eq ptr %i.z, %i.y
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !441 ; 3 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !444 ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ugt i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #28
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !332
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !340 ; 4 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ai
  br i1 %i.aq, label %_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !445
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.ao                    ; 3 uses
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #29 ; 4 uses
  %i.aw = icmp sgt i64 %i.au, 0
  br i1 %i.aw, label %bb.h, label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.am, i64 %i.au, i1 false)
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.h, %_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i28 = icmp eq ptr %i.am, null
  br i1 %.not.i8.i28, label %_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ap) #27
  %.pre62.pre = load ptr, ptr %i.ac, align 8, !tbaa !446
  %.pre63.pre = load ptr, ptr %i.ad, align 8, !tbaa !446
  br label %_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %.pre63 = phi ptr [ %.pre63.pre, %bb.i ], [ %i.ae, %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  %.pre62 = phi ptr [ %.pre62.pre, %bb.i ], [ %i.af, %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  store ptr %i.av, ptr %i.ab, align 8, !tbaa !340
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !445
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ai
  store ptr %i.ay, ptr %i.ak, align 8, !tbaa !332
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE7reserveEm.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE13_M_deallocateEPS3_m.exit.i
end_hunk_0
begin_hunk_1_@_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_12FunctionTypeEPNS_24TypeFunctionFunctionTypeE:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !253
  %i.cg = load i8, ptr @_ZN5FFlag33LuauTypeFunctionSerializeArgNamesE, align 8, !tbaa !72, !range !75, !noundef !76
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.v, label %.loopexit

bb.p:                                             ; preds = %.lr.ph55, %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE9push_backEOS3_.exit
  %.sroa.040.054 = phi ptr [ %i.ba, %.lr.ph55 ], [ %i.dd, %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.ci = load ptr, ptr %.sroa.040.054, align 8, !tbaa !90
  %i.cj = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.ci) ; 2 uses
  %i.ck = load ptr, ptr %i.bb, align 8, !tbaa !445 ; 4 uses
  %i.cl = load ptr, ptr %i.ak, align 8, !tbaa !332
  %.not.i.i29 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i.i29, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !93
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cm, ptr %i.bb, align 8, !tbaa !445
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE9push_backEOS3_.exit

bb.r:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %i.ab, align 8, !tbaa !340 ; 4 uses
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 6 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775800
  br i1 %i.cr, label %bb.s, label %_ZNKSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #28
  unreachable

_ZNKSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.cs = ashr exact i64 %i.cq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i30 = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i.i30, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 1152921504606846975)
  %i.cw = select i1 %i.cu, i64 1152921504606846975, i64 %i.cv ; 3 uses
  %.not.i.i.i.i31 = icmp ne i64 %i.cw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i31)
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #29 ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %i.cq ; 2 uses
  store ptr %i.cj, ptr %i.cz, align 8, !tbaa !93
  %i.da = icmp sgt i64 %i.cq, 0
  br i1 %i.da, label %bb.t, label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.t:                                             ; preds = %_ZNKSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr align 8 %i.cn, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.t, %_ZNKSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.not.i17.i.i.i32 = icmp eq ptr %i.cn, null
  br i1 %.not.i17.i.i.i32, label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cq) #27
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.cy, ptr %i.ab, align 8, !tbaa !340
  store ptr %i.db, ptr %i.bb, align 8, !tbaa !445
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  store ptr %i.dc, ptr %i.ak, align 8, !tbaa !332
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.q, %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.040.054, i64 8 ; 2 uses
  %.not49 = icmp eq ptr %i.dd, %i.az
  br i1 %.not49, label %._crit_edge56, label %bb.p

bb.v:                                             ; preds = %._crit_edge56
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !472
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !473
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 56
  tail call void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 noundef %i.dm)
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !474 ; 2 uses
  %i.do = load ptr, ptr %i.dg, align 8, !tbaa !474 ; 2 uses
  %.not5057 = icmp eq ptr %i.dn, %i.do
  br i1 %.not5057, label %.loopexit, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 80
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph60, %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit
  %.sroa.035.058 = phi ptr [ %i.dn, %.lr.ph60 ], [ %i.eo, %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit ] ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.035.058, i64 48
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !475, !range !75, !noundef !76
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !336 ; 12 uses
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !333
  %.not.i = icmp eq ptr %i.du, %i.dv              ; 2 uses
  br i1 %i.dt, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  br i1 %.not.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 3 uses
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !173
  %i.dx = load ptr, ptr %.sroa.035.058, align 8, !tbaa !156 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.035.058, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !174 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.dz, ptr %i.a, align 8, !tbaa !175
  %i.ea = icmp ugt i64 %i.dz, 15
  br i1 %i.ea, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.y
  %i.eb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.du, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.eb, ptr %i.du, align 8, !tbaa !156
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !175
  store i64 %i.ec, ptr %i.dw, align 8, !tbaa !159
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.y
  %i.ed = phi ptr [ %i.eb, %.noexc.i.i.i.i.i.i.i.i ], [ %i.dw, %bb.y ] ; 2 uses
  switch i64 %i.dz, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ee = load i8, ptr %i.dx, align 1, !tbaa !159
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !159
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr align 1 %i.dx, i64 %i.dz, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i: ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !175 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !174
  %i.eh = load ptr, ptr %i.du, align 8, !tbaa !156
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  store i8 0, ptr %i.ei, align 1, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  store i8 1, ptr %i.ej, align 8, !tbaa !337
  %i.ek = load ptr, ptr %i.dp, align 8, !tbaa !336
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  store ptr %i.el, ptr %i.dp, align 8, !tbaa !336
  br label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit

bb.ab:                                            ; preds = %bb.x
  call void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr %i.du, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.058)
  br label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit

bb.ac:                                            ; preds = %bb.w
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  store i8 0, ptr %i.em, align 8, !tbaa !337
  %i.en = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  store ptr %i.en, ptr %i.dp, align 8, !tbaa !336
  br label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit

bb.ae:                                            ; preds = %bb.ac
  call void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr %i.du)
  br label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit

_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit: ; preds = %bb.ae, %bb.ad, %bb.ab, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.035.058, i64 56 ; 2 uses
  %.not50 = icmp eq ptr %i.eo, %i.do
  br i1 %.not50, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit, %bb.v, %._crit_edge56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_10ExternTypeEPNS_22TypeFunctionExternTypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.not60 = icmp eq ptr %i.b, %i.c
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.e = load i8, ptr %i.d, align 8, !tbaa !424, !range !75, !noundef !76
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.042.061 = phi ptr [ %i.u, %bb.e ], [ %i.b, %bb.a ] ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 216
  %i.i = load i8, ptr %i.h, align 8, !tbaa !426, !range !75, !noundef !76
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 208
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.m = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.053.1 = phi ptr [ %i.m, %bb.b ], [ undef, %.lr.ph ]
  %.sroa.454.0 = phi i8 [ 1, %bb.b ], [ 0, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 232
  %i.o = load i8, ptr %i.n, align 8, !tbaa !426, !range !75, !noundef !76
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 224
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !84
  %i.s = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.r)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.042.1 = phi ptr [ %i.s, %bb.d ], [ undef, %bb.c ]
  %.sroa.443.0 = phi i8 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.g) ; 4 uses
  store ptr %.sroa.053.1, ptr %i.t, align 8
  %.sroa.045.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 %.sroa.454.0, ptr %.sroa.045.sroa.4.0..sroa_idx, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.042.1, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i8 %.sroa.443.0, ptr %.sroa.547.0..sroa_idx, align 8
  %i.u = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.042.061) #31 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !427
  %i.x = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !429
  %i.aa = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !232, !range !75, !noundef !76
  %i.ae = trunc nuw i8 %i.ad to i1
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !87
  %.sroa.533.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.aa, ptr %.sroa.533.0..sroa_idx34, align 8, !tbaa !87
  %.sroa.6.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i8 0, ptr %.sroa.6.0..sroa_idx36, align 8, !tbaa !219
  br i1 %i.ae, label %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.ac, align 8, !tbaa !232
  br label %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %bb.f, %bb.g, %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !426, !range !75, !noundef !76
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !84
  %i.ak = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.ak, ptr %i.al, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i8 1, ptr %.sroa.429.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.an = load i8, ptr %i.am, align 8, !tbaa !426, !range !75, !noundef !76
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !84
  %i.ar = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.aq) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.ar, ptr %i.as, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i8 1, ptr %.sroa.424.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr %i.ar, ptr %i.at, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.303", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.306", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !320  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !174  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !174  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !477 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !478

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !174  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !156
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #25 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %1, ptr %2, align 8, !tbaa !479
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Luau::TypeFunctionProperty>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Luau::TypeFunctionProperty>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %0, ptr %5, align 8, !tbaa !480
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29 ; 8 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !482
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !174  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !174  ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !156
end_hunk_1
