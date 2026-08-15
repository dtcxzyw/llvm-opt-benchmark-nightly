inline.NumInlined: 4097
inline.NumDeleted: 2192
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau14TypedAllocatorINS_16TypeFunctionTypeEE8allocateIJNS_28TypeFunctionIntersectionTypeEEEEPS1_DpOT_:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !204
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %i.d ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !222
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load <2 x ptr>, ptr %1, align 8, !tbaa !204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i32 6, ptr %i.i, align 8, !tbaa !205
  store <2 x ptr> %i.m, ptr %i.l, align 8, !tbaa !204
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.k, ptr %i.n, align 8, !tbaa !222
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store i8 0, ptr %i.o, align 8, !tbaa !209
  %i.p = load i64, ptr %i.a, align 8, !tbaa !196
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.a, align 8, !tbaa !196
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau14TypedAllocatorINS_16TypeFunctionTypeEE8allocateIJNS_24TypeFunctionNegationTypeEEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !196  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 214
  br i1 %i.c, label %bb.b, label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau14TypedAllocatorINS_16TypeFunctionTypeEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !196
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit

_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit: ; preds = %bb.b, %bb.a
  %i.d = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !204
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %i.d ; 4 uses
  %i.j = load i64, ptr %1, align 8, !tbaa !87
  store i32 7, ptr %i.i, align 8, !tbaa !205
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store i8 0, ptr %i.l, align 8, !tbaa !209
  %i.m = add i64 %i.d, 1
  store i64 %i.m, ptr %i.a, align 8, !tbaa !196
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau14TypedAllocatorINS_16TypeFunctionTypeEE8allocateIJNS_21TypeFunctionTableTypeEEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Luau::Variant.151", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !196  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 214
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau14TypedAllocatorINS_16TypeFunctionTypeEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !196
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !204
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %i.d ; 13 uses
  store i32 9, ptr %2, align 8, !tbaa !205
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !320  ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !321
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.l, ptr %i.o, align 8, !tbaa !320
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !225
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !230
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.j, ptr %i.t, align 8, !tbaa !322
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !231
  store ptr null, ptr %i.k, align 8, !tbaa !320
  store ptr %i.m, ptr %i.p, align 8, !tbaa !225
  store ptr %i.m, ptr %i.r, align 8, !tbaa !230
  store i64 0, ptr %i.u, align 8, !tbaa !231
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEC2ISA_EEOT_PNSt9enable_ifIXgecl9getTypeIdISF_EELi0EEvE4typeE.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.w, align 8, !tbaa !320
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEC2ISA_EEOT_PNSt9enable_ifIXgecl9getTypeIdISF_EELi0EEvE4typeE.exit

_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEC2ISA_EEOT_PNSt9enable_ifIXgecl9getTypeIdISF_EELi0EEvE4typeE.exit: ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.j, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.y = phi ptr [ %i.j, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.z = phi i64 [ 0, %bb.e ], [ %i.v, %bb.d ]    ; 2 uses
  %i.aa = phi i32 [ 0, %bb.e ], [ %i.n, %bb.d ]   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !225
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !230
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i64 %i.z, ptr %i.ad, align 8, !tbaa !231
  store i32 %i.aa, ptr %i.j, align 8, !tbaa !321
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false)
  store i32 9, ptr %i.i, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEC2ISA_EEOT_PNSt9enable_ifIXgecl9getTypeIdISF_EELi0EEvE4typeE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.l, ptr %i.ai, align 8, !tbaa !320
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.x, ptr %i.aj, align 8, !tbaa !225
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.y, ptr %i.ak, align 8, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ag, ptr %i.al, align 8, !tbaa !322
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %i.z, ptr %i.am, align 8, !tbaa !231
  store ptr null, ptr %i.ah, align 8, !tbaa !320
  store ptr %i.j, ptr %i.ab, align 8, !tbaa !225
  store ptr %i.j, ptr %i.ac, align 8, !tbaa !230
  store i64 0, ptr %i.ad, align 8, !tbaa !231
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnMoveISA_EEvPvSF_.exit

bb.g:                                             ; preds = %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEC2ISA_EEOT_PNSt9enable_ifIXgecl9getTypeIdISF_EELi0EEvE4typeE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr null, ptr %i.an, align 8, !tbaa !320
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.ag, ptr %i.ao, align 8, !tbaa !225
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.ag, ptr %i.ap, align 8, !tbaa !230
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 0, ptr %i.aq, align 8, !tbaa !231
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnMoveISA_EEvPvSF_.exit

_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnMoveISA_EEvPvSF_.exit: ; preds = %bb.f, %bb.g
  %.sink.i.i.i.i.i.i9 = phi i32 [ 0, %bb.g ], [ %i.aa, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sink.i.i.i.i.i.i9, ptr %i.ag, align 8, !tbaa !321
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store i8 0, ptr %i.at, align 8, !tbaa !209
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(96) %i.ar, ptr noundef null)
          to label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorISA_EEvPv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnMoveISA_EEvPvSF_.exit
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #26
  unreachable

_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorISA_EEvPv.exit: ; preds = %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnMoveISA_EEvPvSF_.exit
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !196
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !196
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau21TypeFunctionTableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !320
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau14TypedAllocatorINS_23TypeFunctionTypePackVarEE8allocateIJNS_20TypeFunctionTypePackEEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !323  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 681
  br i1 %i.c, label %bb.b, label %_ZN4Luau7VariantIJNS_20TypeFunctionTypePackENS_28TypeFunctionVariadicTypePackENS_27TypeFunctionGenericTypePackEEE6fnDtorIS1_EEvPv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau14TypedAllocatorINS_23TypeFunctionTypePackVarEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !323
  br label %_ZN4Luau7VariantIJNS_20TypeFunctionTypePackENS_28TypeFunctionVariadicTypePackENS_27TypeFunctionGenericTypePackEEE6fnDtorIS1_EEvPv.exit

_ZN4Luau7VariantIJNS_20TypeFunctionTypePackENS_28TypeFunctionVariadicTypePackENS_27TypeFunctionGenericTypePackEEE6fnDtorIS1_EEvPv.exit: ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !329
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.d ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !222
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load <2 x ptr>, ptr %1, align 8, !tbaa !204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  store i32 0, ptr %i.i, align 8, !tbaa !330
  store <2 x ptr> %i.n, ptr %i.m, align 8, !tbaa !204
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.k, ptr %i.o, align 8, !tbaa !222
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  %i.q = load i64, ptr %i.a, align 8, !tbaa !323
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.a, align 8, !tbaa !323
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau14TypedAllocatorINS_16TypeFunctionTypeEE8allocateIJNS_24TypeFunctionFunctionTypeEEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7 = alloca [16 x i8], align 8            ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !196  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 214
  br i1 %i.c, label %bb.b, label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorIS9_EEvPv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau14TypedAllocatorINS_16TypeFunctionTypeEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !196
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorIS9_EEvPv.exit

_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorIS9_EEvPv.exit: ; preds = %bb.b, %bb.a
  %i.d = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !204
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %i.d ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !222
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load <2 x ptr>, ptr %1, align 8, !tbaa !204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !332
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.v = load <2 x ptr>, ptr %i.l, align 8, !tbaa !329
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !333
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.aa = load <2 x ptr>, ptr %i.o, align 8, !tbaa !334
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store i32 8, ptr %i.i, align 8, !tbaa !205
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !204
  store ptr %i.k, ptr %i.t, align 8, !tbaa !222
  store <2 x ptr> %i.v, ptr %i.u, align 8, !tbaa !329
  store ptr %i.s, ptr %i.x, align 8, !tbaa !332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  store <2 x ptr> %i.aa, ptr %i.z, align 8, !tbaa !334
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store ptr %i.w, ptr %i.ab, align 8, !tbaa !333
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store i8 0, ptr %i.ac, align 8, !tbaa !209
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !196
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !196
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau24TypeFunctionFunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !335  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !336  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !337, !range !75, !noundef !76
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.e, align 8, !tbaa !337
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = load ptr, ptr %.05.i.i.i, align 8, !tbaa !156 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !159
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !339

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !335
  br label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.n = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !333
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #27
  br label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !340  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !332
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #27
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !220   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !222
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau14TypedAllocatorINS_16TypeFunctionTypeEE8allocateIJNS_22TypeFunctionExternTypeEEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Luau::Variant.151", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !196  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 214
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau14TypedAllocatorINS_16TypeFunctionTypeEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !196
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !204
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %i.d ; 13 uses
  store i32 10, ptr %2, align 8, !tbaa !205
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !320  ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !321
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.l, ptr %i.o, align 8, !tbaa !320
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !225
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !230
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.j, ptr %i.t, align 8, !tbaa !322
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !231
  store ptr null, ptr %i.k, align 8, !tbaa !320
  store ptr %i.m, ptr %i.p, align 8, !tbaa !225
  store ptr %i.m, ptr %i.r, align 8, !tbaa !230
  store i64 0, ptr %i.u, align 8, !tbaa !231
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEC2ISB_EEOT_PNSt9enable_ifIXgecl9getTypeIdISF_EELi0EEvE4typeE.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.w, align 8, !tbaa !320
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEC2ISB_EEOT_PNSt9enable_ifIXgecl9getTypeIdISF_EELi0EEvE4typeE.exit

_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEC2ISB_EEOT_PNSt9enable_ifIXgecl9getTypeIdISF_EELi0EEvE4typeE.exit: ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.j, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.y = phi ptr [ %i.j, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.z = phi i64 [ 0, %bb.e ], [ %i.v, %bb.d ]    ; 2 uses
  %i.aa = phi i32 [ 0, %bb.e ], [ %i.n, %bb.d ]   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !225
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !230
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i64 %i.z, ptr %i.ad, align 8, !tbaa !231
  store i32 %i.aa, ptr %i.j, align 8, !tbaa !321
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ae, ptr noundef nonnull align 8 dereferenceable(88) %i.af, i64 88, i1 false)
  store i32 10, ptr %i.i, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEC2ISB_EEOT_PNSt9enable_ifIXgecl9getTypeIdISF_EELi0EEvE4typeE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.l, ptr %i.ai, align 8, !tbaa !320
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.x, ptr %i.aj, align 8, !tbaa !225
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.y, ptr %i.ak, align 8, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ag, ptr %i.al, align 8, !tbaa !322
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %i.z, ptr %i.am, align 8, !tbaa !231
  store ptr null, ptr %i.ah, align 8, !tbaa !320
  store ptr %i.j, ptr %i.ab, align 8, !tbaa !225
  store ptr %i.j, ptr %i.ac, align 8, !tbaa !230
  store i64 0, ptr %i.ad, align 8, !tbaa !231
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnMoveISB_EEvPvSF_.exit

bb.g:                                             ; preds = %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEC2ISB_EEOT_PNSt9enable_ifIXgecl9getTypeIdISF_EELi0EEvE4typeE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr null, ptr %i.an, align 8, !tbaa !320
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.ag, ptr %i.ao, align 8, !tbaa !225
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.ag, ptr %i.ap, align 8, !tbaa !230
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 0, ptr %i.aq, align 8, !tbaa !231
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnMoveISB_EEvPvSF_.exit

_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnMoveISB_EEvPvSF_.exit: ; preds = %bb.f, %bb.g
  %.sink.i.i.i.i.i.i9 = phi i32 [ 0, %bb.g ], [ %i.aa, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
