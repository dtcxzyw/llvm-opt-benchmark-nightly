Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeFunctionRuntimeBuilder?download=true
inline.NumInlined: 4097
inline.NumDeleted: 2192
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_9UnionTypeEPNS_21TypeFunctionUnionTypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !422    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !422  ; 2 uses
  %.not10 = icmp eq ptr %i.a, %i.c
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit
  %.sroa.07.011 = phi ptr [ %i.a, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.07.011, align 8, !tbaa !85
  %i.g = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.f) ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !424  ; 4 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !223
  %.not.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.h, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.d, align 8, !tbaa !424
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8, !tbaa !221    ; 4 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
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
  store ptr %i.g, ptr %i.w, align 8, !tbaa !88
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
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !223
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ab) #27
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.v, ptr %2, align 8, !tbaa !221
  store ptr %i.y, ptr %i.d, align 8, !tbaa !424
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ac, ptr %i.e, align 8, !tbaa !223
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_16IntersectionTypeEPNS_28TypeFunctionIntersectionTypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !422    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !422  ; 2 uses
  %.not10 = icmp eq ptr %i.a, %i.c
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit
  %.sroa.07.011 = phi ptr [ %i.a, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.07.011, align 8, !tbaa !85
  %i.g = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.f) ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !424  ; 4 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !223
  %.not.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.h, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.d, align 8, !tbaa !424
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8, !tbaa !221    ; 4 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
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
  store ptr %i.g, ptr %i.w, align 8, !tbaa !88
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
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !223
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ab) #27
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.v, ptr %2, align 8, !tbaa !221
  store ptr %i.y, ptr %i.d, align 8, !tbaa !424
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ac, ptr %i.e, align 8, !tbaa !223
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_9TableTypeEPNS_21TypeFunctionTableTypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !226  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not42 = icmp eq ptr %i.b, %i.c
  br i1 %.not42, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i8, ptr %i.d, align 8, !tbaa !425, !range !76, !noundef !77
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.024.043 = phi ptr [ %i.u, %bb.e ], [ %i.b, %bb.a ] ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.024.043, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.024.043, i64 216
  %i.i = load i8, ptr %i.h, align 8, !tbaa !427, !range !76, !noundef !77
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.024.043, i64 208
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85
  %i.m = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.035.1 = phi ptr [ %i.m, %bb.b ], [ undef, %.lr.ph ]
  %.sroa.436.0 = phi i8 [ 1, %bb.b ], [ 0, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.024.043, i64 232
  %i.o = load i8, ptr %i.n, align 8, !tbaa !427, !range !76, !noundef !77
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.024.043, i64 224
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !85
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !428
  %i.x = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !430
  %i.aa = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.z)
  %i.ab = load i8, ptr @_ZN5FFlag38LuauTypeFunctionTableIndexerIsReadOnlyE, align 8, !tbaa !73, !range !76, !noundef !77
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !431, !range !76, !noundef !77
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.af = phi i8 [ %i.ae, %bb.g ], [ 0, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !233, !range !76, !noundef !77
  %i.aj = trunc nuw i8 %i.ai to i1
  store ptr %i.x, ptr %i.ag, align 8, !tbaa !88
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx18, align 8, !tbaa !88
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i8 %i.af, ptr %.sroa.6.0..sroa_idx20, align 8, !tbaa !220
  br i1 %i.aj, label %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ah, align 8, !tbaa !233
  br label %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %bb.h, %bb.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_13MetatableTypeEPNS_21TypeFunctionTableTypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !432
  %i.b = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.a) ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !187
  %i.d = icmp eq i32 %i.c, 9
  br i1 %i.d, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_9TableTypeEPNS_21TypeFunctionTableTypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull %i.e, ptr noundef %2)
  br label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !438
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !439  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !441  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !223
  %i.l = load ptr, ptr %2, align 8, !tbaa !221
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !424
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.n
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #29 ; 4 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !221    ; 4 uses
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !424
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %bb.d, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.v, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.v, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !223
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ad) #27
  br label %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.u, ptr %2, align 8, !tbaa !221
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !424
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.h
  store ptr %i.af, ptr %i.j, align 8, !tbaa !223
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !422
  %.pre61 = load ptr, ptr %i.c, align 8, !tbaa !422
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.ag = phi ptr [ %i.d, %bb.c ], [ %.pre61, %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %i.ah = phi ptr [ %i.e, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %.not51 = icmp eq ptr %i.ah, %i.ag
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !442 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !445 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp ugt i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #28
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !333
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !341
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ult i64 %i.ax, %i.aq
  br i1 %i.ay, label %_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !446
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.aw
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #29 ; 4 uses
  %i.be = load ptr, ptr %i.aj, align 8, !tbaa !341 ; 4 uses
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !446
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %bb.h, label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %i.be, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.h, %_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i28 = icmp eq ptr %i.be, null
  br i1 %.not.i8.i28, label %_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !333
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bm) #27
  br label %_ZNSt12_Vector_baseIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE13_M_deallocateEPS3_m.exit.i
end_hunk_0
begin_hunk_1_@_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_12FunctionTypeEPNS_24TypeFunctionFunctionTypeE:bb.a
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.v, label %.loopexit

bb.p:                                             ; preds = %.lr.ph55, %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE9push_backEOS3_.exit
  %.sroa.040.054 = phi ptr [ %i.bq, %.lr.ph55 ], [ %i.dz, %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.db = load ptr, ptr %.sroa.040.054, align 8, !tbaa !91
  %i.dc = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.db) ; 2 uses
  %i.dd = load ptr, ptr %i.br, align 8, !tbaa !446 ; 4 uses
  %i.de = load ptr, ptr %i.as, align 8, !tbaa !333
  %.not.i.i29 = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i.i29, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !94
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.df, ptr %i.br, align 8, !tbaa !446
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE9push_backEOS3_.exit

bb.r:                                             ; preds = %bb.p
  %i.dg = load ptr, ptr %i.aj, align 8, !tbaa !341 ; 4 uses
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 5 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775800
  br i1 %i.dk, label %bb.s, label %_ZNKSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #28
  unreachable

_ZNKSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.dl = ashr exact i64 %i.dj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i30 = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i30, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = tail call i64 @llvm.umin.i64(i64 %i.dm, i64 1152921504606846975)
  %i.dp = select i1 %i.dn, i64 1152921504606846975, i64 %i.do ; 3 uses
  %.not.i.i.i.i31 = icmp ne i64 %i.dp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i31)
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #29 ; 4 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.dj ; 2 uses
  store ptr %i.dc, ptr %i.ds, align 8, !tbaa !94
  %i.dt = icmp sgt i64 %i.dj, 0
  br i1 %i.dt, label %bb.t, label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.t:                                             ; preds = %_ZNKSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr align 8 %i.dg, i64 %i.dj, i1 false)
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.t, %_ZNKSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.not.i17.i.i.i32 = icmp eq ptr %i.dg, null
  br i1 %.not.i17.i.i.i32, label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.dv = load ptr, ptr %i.as, align 8, !tbaa !333
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dx) #27
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.dr, ptr %i.aj, align 8, !tbaa !341
  store ptr %i.du, ptr %i.br, align 8, !tbaa !446
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.dy, ptr %i.as, align 8, !tbaa !333
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.q, %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.040.054, i64 8 ; 2 uses
  %.not49 = icmp eq ptr %i.dz, %i.bp
  br i1 %.not49, label %._crit_edge56, label %bb.p

bb.v:                                             ; preds = %._crit_edge56
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !473
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !474
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = sdiv exact i64 %i.eh, 56
  tail call void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i64 noundef %i.ei)
  %i.ej = load ptr, ptr %i.eb, align 8, !tbaa !475 ; 2 uses
  %i.ek = load ptr, ptr %i.ec, align 8, !tbaa !475 ; 2 uses
  %.not5057 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not5057, label %.loopexit, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 80
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph60, %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit
  %.sroa.035.058 = phi ptr [ %i.ej, %.lr.ph60 ], [ %i.fk, %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit ] ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.035.058, i64 48
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !476, !range !76, !noundef !77
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !337 ; 12 uses
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !334
  %.not.i = icmp eq ptr %i.eq, %i.er              ; 2 uses
  br i1 %i.ep, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  br i1 %.not.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 3 uses
  store ptr %i.es, ptr %i.eq, align 8, !tbaa !174
  %i.et = load ptr, ptr %.sroa.035.058, align 8, !tbaa !157 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.035.058, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !175 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.ev, ptr %i.a, align 8, !tbaa !176
  %i.ew = icmp ugt i64 %i.ev, 15
  br i1 %i.ew, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.y
  %i.ex = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.eq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ex, ptr %i.eq, align 8, !tbaa !157
  %i.ey = load i64, ptr %i.a, align 8, !tbaa !176
  store i64 %i.ey, ptr %i.es, align 8, !tbaa !160
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.y
  %i.ez = phi ptr [ %i.ex, %.noexc.i.i.i.i.i.i.i.i ], [ %i.es, %bb.y ] ; 2 uses
  switch i64 %i.ev, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.fa = load i8, ptr %i.et, align 1, !tbaa !160
  store i8 %i.fa, ptr %i.ez, align 1, !tbaa !160
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ez, ptr align 1 %i.et, i64 %i.ev, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i: ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.fb = load i64, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !175
  %i.fd = load ptr, ptr %i.eq, align 8, !tbaa !157
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fb
  store i8 0, ptr %i.fe, align 1, !tbaa !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store i8 1, ptr %i.ff, align 8, !tbaa !338
  %i.fg = load ptr, ptr %i.el, align 8, !tbaa !337
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  store ptr %i.fh, ptr %i.el, align 8, !tbaa !337
  br label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit

bb.ab:                                            ; preds = %bb.x
  call void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.058)
  br label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit

bb.ac:                                            ; preds = %bb.w
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store i8 0, ptr %i.fi, align 8, !tbaa !338
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  store ptr %i.fj, ptr %i.el, align 8, !tbaa !337
  br label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit

bb.ae:                                            ; preds = %bb.ac
  call void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr %i.eq)
  br label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit

_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit: ; preds = %bb.ae, %bb.ad, %bb.ab, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.035.058, i64 56 ; 2 uses
  %.not50 = icmp eq ptr %i.fk, %i.ek
  br i1 %.not50, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKS6_EEERS7_DpOT_.exit, %bb.v, %._crit_edge56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau22TypeFunctionSerializer17serializeChildrenEPKNS_10ExternTypeEPNS_22TypeFunctionExternTypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !226  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.not60 = icmp eq ptr %i.b, %i.c
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.e = load i8, ptr %i.d, align 8, !tbaa !425, !range !76, !noundef !77
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.042.061 = phi ptr [ %i.u, %bb.e ], [ %i.b, %bb.a ] ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 216
  %i.i = load i8, ptr %i.h, align 8, !tbaa !427, !range !76, !noundef !77
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 208
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85
  %i.m = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.053.1 = phi ptr [ %i.m, %bb.b ], [ undef, %.lr.ph ]
  %.sroa.454.0 = phi i8 [ 1, %bb.b ], [ 0, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 232
  %i.o = load i8, ptr %i.n, align 8, !tbaa !427, !range !76, !noundef !77
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 224
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !85
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !428
  %i.x = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !430
  %i.aa = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !233, !range !76, !noundef !77
  %i.ae = trunc nuw i8 %i.ad to i1
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !88
  %.sroa.533.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.aa, ptr %.sroa.533.0..sroa_idx34, align 8, !tbaa !88
  %.sroa.6.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i8 0, ptr %.sroa.6.0..sroa_idx36, align 8, !tbaa !220
  br i1 %i.ae, label %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.ac, align 8, !tbaa !233
  br label %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %bb.f, %bb.g, %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !427, !range !76, !noundef !77
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !85
  %i.ak = tail call noundef ptr @_ZN4Luau22TypeFunctionSerializer16shallowSerializeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.ak, ptr %i.al, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i8 1, ptr %.sroa.429.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt8optionalIN4Luau24TypeFunctionTableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.an = load i8, ptr %i.am, align 8, !tbaa !427, !range !76, !noundef !77
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !85
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !321  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !175  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !175  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !157
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !478 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !479

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !175  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !157
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
  store ptr %1, ptr %2, align 8, !tbaa !480
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
  store ptr %0, ptr %5, align 8, !tbaa !481
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29 ; 8 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !483
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
  %i.j = load i64, ptr %i.i, align 8, !tbaa !175  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !175  ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !157
end_hunk_1
