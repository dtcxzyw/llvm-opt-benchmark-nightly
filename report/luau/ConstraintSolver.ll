inline.NumInlined: 8092
inline.NumDeleted: 3246
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4Luau16ConstraintSolver15unpackAndAssignESt6vectorIPKNS_4TypeESaIS4_EEPKNS_11TypePackVarENS_7NotNullIKNS_10ConstraintEEE:bb.a
          to label %.critedge49 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #35
  unreachable

.critedge47:                                      ; preds = %_ZNSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  %i.cp = load i32, ptr %4, align 8, !tbaa !55
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE9tableDtorE, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !17
  invoke void %i.cs(ptr noundef nonnull %i.s)
          to label %.critedge49 unwind label %bb.z

bb.z:                                             ; preds = %.critedge47
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #35
  unreachable

.critedge49:                                      ; preds = %bb.x, %.critedge47
  %.pn3898 = phi { ptr, i32 } [ %i.co, %.critedge47 ], [ %i.ch, %bb.x ]
  resume { ptr, i32 } %.pn3898

_ZN4Luau10getMutableINS_11BlockedTypeEEEPT_PKNS_4TypeE.exit: ; preds = %.critedge45, %_ZN4Luau10getMutableINS_11BlockedTypeEEEPT_PKNS_4TypeE.exit
  %.sroa.068.0100 = phi ptr [ %i.cy, %_ZN4Luau10getMutableINS_11BlockedTypeEEEPT_PKNS_4TypeE.exit ], [ %i.ce, %.critedge45 ] ; 2 uses
  %i.cv = load ptr, ptr %.sroa.068.0100, align 8, !tbaa !53
  %i.cw = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.cv) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw) ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  call void @_ZN4Luau11BlockedType12replaceOwnerEPKNS_10ConstraintE(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef %storemerge95)
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.068.0100, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cy, %i.cg
  br i1 %.not, label %._crit_edge, label %_ZN4Luau10getMutableINS_11BlockedTypeEEEPT_PKNS_4TypeE.exit
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau9TypeArena11addTypePackINS_15BlockedTypePackEEEPKNS_11TypePackVarET_(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %1, ptr %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::TypePackVar", align 8 ; 6 uses
  %4 = alloca %"class.Luau::Variant.707", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i32 6, ptr %4, align 8, !tbaa !697
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !381
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !148
  invoke void @_ZN4Luau11TypePackVarC1EONS_7VariantIJNS_9Unifiable5BoundIPKS0_EENS2_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef ptr @_ZN4Luau9TypeArena11addTypePackENS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %3, align 8, !tbaa !697
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void %i.f(ptr noundef nonnull %i.g)
          to label %_ZN4Luau11TypePackVarD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #35
  unreachable

_ZN4Luau11TypePackVarD2Ev.exit:                   ; preds = %bb.c
  %i.j = load i32, ptr %4, align 8, !tbaa !697
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  invoke void %i.m(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11TypePackVarD2Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #35
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit: ; preds = %_ZN4Luau11TypePackVarD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret ptr %i.b

bb.f:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau11TypePackVarD2Ev.exit4

bb.g:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i32, ptr %3, align 8, !tbaa !697
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void %i.u(ptr noundef nonnull %i.v)
          to label %_ZN4Luau11TypePackVarD2Ev.exit4 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #35
  unreachable

_ZN4Luau11TypePackVarD2Ev.exit4:                  ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.q, %bb.g ]
  %i.y = load i32, ptr %4, align 8, !tbaa !697
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17
  invoke void %i.ab(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit5 unwind label %bb.i

bb.i:                                             ; preds = %_ZN4Luau11TypePackVarD2Ev.exit4
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #35
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit5: ; preds = %_ZN4Luau11TypePackVarD2Ev.exit4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %.pn
}

declare void @_ZN4Luau15BlockedTypePackC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau22FunctionCallConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !353  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !354
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #36
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !355  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !356
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !769  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorISt8optionalIPKN4Luau4TypeEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !772
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #36
  br label %_ZNSt6vectorISt8optionalIPKN4Luau4TypeEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIPKN4Luau4TypeEESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %bb.d
  ret void
}

declare void @_ZN4Luau11BlockedType12replaceOwnerEPKNS_10ConstraintE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau16ConstraintSolver15lookupTablePropENS_7NotNullIKNS_10ConstraintEEEPKNS_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12ValueContextEbbRNS_3SetIS7_NS_16DenseHashPointerEEE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::TablePropLookupResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1104) %1, ptr %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(48) %8) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"struct.Luau::ScopedSeenSet", align 8 ; 7 uses
  %10 = alloca %"struct.Luau::SingletonType", align 8 ; 7 uses
  %11 = alloca %"class.Luau::Variant.834", align 8 ; 9 uses
  %12 = alloca %"struct.Luau::StringSingleton", align 8 ; 12 uses
  %13 = alloca %"struct.Luau::Property", align 8  ; 7 uses
  %14 = alloca %"struct.Luau::TablePropLookupResult", align 8 ; 17 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::allocator.42", align 1 ; 4 uses
  %17 = alloca %"struct.Luau::TypePack", align 8  ; 7 uses
  %18 = alloca %"class.std::vector.546", align 8  ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::allocator.42", align 1 ; 4 uses
  %21 = alloca %"struct.Luau::TableType", align 8 ; 4 uses
  %22 = alloca %"struct.Luau::Property", align 8  ; 7 uses
  %23 = alloca %"struct.Luau::Property", align 8  ; 7 uses
  %24 = alloca %"class.std::vector.27", align 8   ; 14 uses
  %25 = alloca %"class.std::set", align 8         ; 11 uses
  %26 = alloca %"struct.Luau::TypeIterator.804", align 8 ; 11 uses
  %27 = alloca %"struct.Luau::TypeIterator.804", align 8 ; 9 uses
  %28 = alloca %"struct.Luau::TablePropLookupResult", align 8 ; 11 uses
  %29 = alloca %"struct.Luau::IntersectionType", align 8 ; 6 uses
  %30 = alloca %"class.std::allocator.29", align 1 ; 4 uses
  %31 = alloca %"struct.Luau::UnionType", align 8 ; 6 uses
  %32 = alloca %"class.std::allocator.29", align 1 ; 4 uses
  %33 = alloca %"class.std::vector.27", align 8   ; 14 uses
  %34 = alloca %"class.std::set", align 8         ; 11 uses
  %35 = alloca %"struct.Luau::TypeIterator", align 8 ; 11 uses
  %36 = alloca %"struct.Luau::TypeIterator", align 8 ; 9 uses
  %37 = alloca %"struct.Luau::TablePropLookupResult", align 8 ; 11 uses
  %38 = alloca %"struct.Luau::IntersectionType", align 8 ; 6 uses
  %39 = alloca %"class.std::allocator.29", align 1 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1146
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNK4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEE8containsERKS3_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = icmp eq ptr %3, %i.f
  br i1 %i.g, label %_ZNK4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEE8containsERKS3_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1147
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = ptrtoint ptr %3 to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = load ptr, ptr %8, align 8, !tbaa !503
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.u, %bb.f ]
  %.02028.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.t, %bb.f ]
  %.02129.i.i.i.i = and i64 %.pn.i.i.i.i, %i.j    ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.02129.i.i.i.i ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %i.r = icmp eq ptr %i.q, %3
  br i1 %i.r, label %_ZNK4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEE8containsERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq ptr %i.q, %i.f
  br i1 %i.s, label %_ZNK4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEE8containsERKS3_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %.02028.i.i.i.i, 1               ; 3 uses
  %i.u = add i64 %i.t, %.02129.i.i.i.i
  %.not.i.i.i.i = icmp ugt i64 %i.t, %i.j
  br i1 %.not.i.i.i.i, label %_ZNK4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEE8containsERKS3_.exit.thread, label %bb.d, !llvm.loop !1148

_ZNK4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEE8containsERKS3_.exit: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load i8, ptr %i.v, align 1, !tbaa !104, !range !35, !noundef !36
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %_ZNK4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEE8containsERKS3_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEE8containsERKS3_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.x, align 8, !tbaa !451
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.y, align 8, !tbaa !963
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.jk

_ZNK4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEE8containsERKS3_.exit.thread: ; preds = %bb.e, %bb.f, %bb.a, %bb.b, %_ZNK4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEE8containsERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8, !tbaa !53
  store ptr %8, ptr %9, align 8, !tbaa !1195
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %3, ptr %i.z, align 8, !tbaa !1197
  %i.aa = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !104, !range !35, !noundef !36
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN4Luau13ScopedSeenSetINS_3SetIPKNS_4TypeENS_16DenseHashPointerEEES4_EC2ERS6_S4_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEE8containsERKS3_.exit.thread
  store i8 1, ptr %i.aa, align 1, !tbaa !104
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !945
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !945
  br label %_ZN4Luau13ScopedSeenSetINS_3SetIPKNS_4TypeENS_16DenseHashPointerEEES4_EC2ERS6_S4_.exit

_ZN4Luau13ScopedSeenSetINS_3SetIPKNS_4TypeENS_16DenseHashPointerEEES4_EC2ERS6_S4_.exit: ; preds = %_ZNK4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEE8containsERKS3_.exit.thread, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %3)
          to label %bb.i unwind label %bb.r       ; 22 uses

bb.i:                                             ; preds = %_ZN4Luau13ScopedSeenSetINS_3SetIPKNS_4TypeENS_16DenseHashPointerEEES4_EC2ERS6_S4_.exit
  %i.ah = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.ag)
          to label %.noexc unwind label %bb.r     ; 6 uses

.noexc:                                           ; preds = %bb.i
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !591
  switch i32 %i.ai, label %_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit [
    i32 20, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.i
    i32 6, label %.loopexit
    i32 7, label %.loopexit
  ]

_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.i: ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 232
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !669
  %.not11.i = icmp eq i32 %i.ak, 0
  br i1 %.not11.i, label %bb.k, label %_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit

bb.k:                                             ; preds = %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.an = load i64, ptr %i.am, align 8, !tbaa !691
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %i.ar = icmp eq ptr %i.ah, %i.aq
  br i1 %i.ar, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.at = load i64, ptr %i.as, align 8, !tbaa !692
  %i.au = add i64 %i.at, -1                       ; 2 uses
  %i.av = ptrtoint ptr %i.ah to i64
  %i.aw = mul i64 %i.av, -4658895280553007687     ; 2 uses
  %i.ax = lshr i64 %i.aw, 31
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !538
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.pn.i.i.i = phi i64 [ %i.ay, %bb.m ], [ %i.be, %bb.p ]
  %.02032.i.i.i = phi i64 [ 0, %bb.m ], [ %i.bd, %bb.p ]
  %.02133.i.i.i = and i64 %.pn.i.i.i, %i.au       ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.02133.i.i.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp eq ptr %i.bb, %i.ah
  br i1 %.not.i, label %_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq ptr %i.bb, %i.aq
  br i1 %i.bc, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = add i64 %.02032.i.i.i, 1                ; 3 uses
  %i.be = add i64 %i.bd, %.02133.i.i.i
  %.not.i.i13.i = icmp ugt i64 %i.bd, %i.au
  br i1 %.not.i.i13.i, label %.loopexit, label %bb.n, !llvm.loop !693

.loopexit:                                        ; preds = %bb.p, %bb.o, %bb.j, %bb.j, %bb.l, %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bf = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %bb.q unwind label %bb.s       ; 3 uses

bb.q:                                             ; preds = %.loopexit
  store ptr %i.bf, ptr %0, align 8, !tbaa !355
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !356
  store ptr %i.ag, ptr %i.bf, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !393
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.bj, align 8, !tbaa !451
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.bk, align 8, !tbaa !963
  br label %.critedge461

bb.r:                                             ; preds = %bb.i, %_ZN4Luau13ScopedSeenSetINS_3SetIPKNS_4TypeENS_16DenseHashPointerEEES4_EC2ERS6_S4_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.s:                                             ; preds = %.loopexit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit: ; preds = %bb.n, %bb.j, %.noexc, %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.i
  %.not.i.i = icmp eq ptr %i.ag, null             ; 2 uses
  br i1 %.not.i.i, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit
  %i.bn = load i32, ptr %i.ag, align 8, !tbaa !591 ; 2 uses
  switch i32 %i.bn, label %.thread662 [
    i32 12, label %_ZN4Luau3getINS_7AnyTypeEEEPKT_PKNS_4TypeE.exit
    i32 17, label %_ZN4Luau3getINS_7AnyTypeEEEPKT_PKNS_4TypeE.exit
  ]

.thread662:                                       ; preds = %bb.t
  %i.bo = load i8, ptr @_ZN5FFlag31LuauIndexingIntoErrorGivesErrorE, align 8, !tbaa !31, !range !35, !noundef !36
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = icmp eq i32 %i.bn, 1
  %or.cond807 = and i1 %i.bq, %i.bp
  br i1 %or.cond807, label %_ZN4Luau3getINS_7AnyTypeEEEPKT_PKNS_4TypeE.exit, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit.thread

_ZN4Luau3getINS_7AnyTypeEEEPKT_PKNS_4TypeE.exit:  ; preds = %.thread662, %bb.t, %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %i.ag, ptr %i.br, align 8, !tbaa !61
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.bs, align 8, !tbaa !451
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.bt, align 8, !tbaa !963
  br label %.critedge461

_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit.thread: ; preds = %_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit, %.thread662
  %i.bu = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.ag)
          to label %.noexc466 unwind label %bb.x  ; 9 uses

.noexc466:                                        ; preds = %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit.thread
  %.not.i.i465 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i465, label %bb.br, label %bb.u

bb.u:                                             ; preds = %.noexc466
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !591
  %i.bw = icmp eq i32 %i.bv, 9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  br i1 %i.bw, label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit, label %bb.br

_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit: ; preds = %bb.u
  %i.by = invoke ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.v unwind label %bb.y       ; 7 uses

bb.v:                                             ; preds = %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %.not724 = icmp eq ptr %i.by, %i.bz
  br i1 %.not724, label %.critedge443, label %bb.w

bb.w:                                             ; preds = %bb.v
  switch i32 %5, label %.critedge443 [
    i32 1, label %bb.z
    i32 0, label %bb.ab
  ]

bb.x:                                             ; preds = %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit.thread, %bb.ad
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.y:                                             ; preds = %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.z:                                             ; preds = %bb.w
  %.sroa.5622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 216
  %.sroa.5622.0.copyload = load i8, ptr %.sroa.5622.0..sroa_idx, align 8
  %i.cc = trunc nuw i8 %.sroa.5622.0.copyload to i1
  br i1 %i.cc, label %bb.aa, label %.critedge443

bb.aa:                                            ; preds = %bb.z
  %.sroa.6625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 217
  %.sroa.6625.sroa.0.0.copyload = load <7 x i8>, ptr %.sroa.6625.0..sroa_idx, align 1
  %40 = getelementptr inbounds nuw i8, ptr %i.by, i64 208
  %.sroa.0620.0.copyload = load ptr, ptr %40, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %.sroa.0620.0.copyload, ptr %i.cd, align 8
  %.sroa.5622.0..sroa_idx623 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %.sroa.5622.0..sroa_idx623, align 8
  %.sroa.6625.0..sroa_idx626 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store <7 x i8> %.sroa.6625.sroa.0.0.copyload, ptr %.sroa.6625.0..sroa_idx626, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.ce, align 8, !tbaa !963
  br label %.critedge461

bb.ab:                                            ; preds = %bb.w
  %.sroa.5615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 232
  %.sroa.5615.0.copyload = load i8, ptr %.sroa.5615.0..sroa_idx, align 8
  %i.cf = trunc nuw i8 %.sroa.5615.0.copyload to i1
  br i1 %i.cf, label %bb.ac, label %.critedge443

bb.ac:                                            ; preds = %bb.ab
  %.sroa.6618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 233
  %.sroa.6618.sroa.0.0.copyload = load <7 x i8>, ptr %.sroa.6618.0..sroa_idx, align 1
  %41 = getelementptr inbounds nuw i8, ptr %i.by, i64 224
  %.sroa.0613.0.copyload = load ptr, ptr %41, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %.sroa.0613.0.copyload, ptr %i.cg, align 8
  %.sroa.5615.0..sroa_idx616 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %.sroa.5615.0..sroa_idx616, align 8
  %.sroa.6618.0..sroa_idx619 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store <7 x i8> %.sroa.6618.sroa.0.0.copyload, ptr %.sroa.6618.0..sroa_idx619, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.ch, align 8, !tbaa !963
  br label %.critedge461

.critedge443:                                     ; preds = %bb.ab, %bb.z, %bb.w, %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 56 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !780, !range !35, !noundef !36
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.ad, label %.critedge445

bb.ad:                                            ; preds = %.critedge443
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !971
  %i.cn = invoke noundef zeroext i1 @_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1104) %1, ptr noundef %i.cm)
          to label %bb.ae unwind label %bb.x

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.cn, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !971
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.cp = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %bb.ag unwind label %bb.ah     ; 3 uses

bb.ag:                                            ; preds = %bb.af
  store ptr %i.cp, ptr %0, align 8, !tbaa !355
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !356
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !393
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ct, align 8, !tbaa !451
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.cu, align 8, !tbaa !963
  br label %.critedge461

bb.ah:                                            ; preds = %bb.af
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.ai:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %1, align 8, !tbaa !500
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.aj unwind label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  store i32 1, ptr %11, align 8, !tbaa !1199
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 8 uses
  %i.cz = load ptr, ptr %12, align 8, !tbaa !373  ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !92 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  %i.df = add nuw nsw i64 %i.dd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cy, ptr noundef nonnull align 8 dereferenceable(1) %i.da, i64 %i.df, i1 false)
  br label %call.1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !373
  %i.dg = load i64, ptr %i.da, align 8, !tbaa !61
  store i64 %i.dg, ptr %i.cy, align 8, !tbaa !61
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !92
  br label %call.1.i.i

call.1.i.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ak
  %i.dh = phi ptr [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.cy, %bb.ak ] ; 2 uses
  %i.di = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.dd, %bb.ak ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.da, ptr %12, align 8, !tbaa !373
  store i64 0, ptr %i.dj, align 8, !tbaa !92
  store i8 0, ptr %i.da, align 8, !tbaa !61
  store i32 1, ptr %10, align 8, !tbaa !1199
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !501
  %i.dn = icmp eq ptr %i.dh, %i.cy
  br i1 %i.dn, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.al:                                            ; preds = %call.1.i.i
  %i.do = icmp ult i64 %i.di, 16
  call void @llvm.assume(i1 %i.do)
  %i.dp = add nuw nsw i64 %i.di, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dm, ptr noundef nonnull align 8 dereferenceable(1) %i.cy, i64 %i.dp, i1 false)
  br label %_ZN4Luau13SingletonTypeC2EONS_7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %call.1.i.i
  store ptr %i.dh, ptr %i.dl, align 8, !tbaa !373
  %i.dq = load i64, ptr %i.cy, align 8, !tbaa !61
  store i64 %i.dq, ptr %i.dm, align 8, !tbaa !61
  br label %_ZN4Luau13SingletonTypeC2EONS_7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEEE.exit

_ZN4Luau13SingletonTypeC2EONS_7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEEE.exit: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.di, ptr %i.dr, align 8, !tbaa !92
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !373
  store i64 0, ptr %i.dk, align 8, !tbaa !92
  store i8 0, ptr %i.cy, align 8, !tbaa !61
  %i.ds = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_13SingletonTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %i.cw, ptr noundef nonnull align 8 %10)
          to label %bb.am unwind label %bb.as

bb.am:                                            ; preds = %_ZN4Luau13SingletonTypeC2EONS_7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEEE.exit
  %i.dt = load i32, ptr %10, align 8, !tbaa !1199
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE9tableDtorE, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !17
  invoke void %i.dw(ptr noundef nonnull %i.dl)
          to label %_ZN4Luau13SingletonTypeD2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #35
  unreachable

_ZN4Luau13SingletonTypeD2Ev.exit:                 ; preds = %bb.am
  %i.dz = load i32, ptr %11, align 8, !tbaa !1199
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE9tableDtorE, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !17
  invoke void %i.ec(ptr noundef nonnull %i.cx)
          to label %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEED2Ev.exit unwind label %bb.ao

bb.ao:                                            ; preds = %_ZN4Luau13SingletonTypeD2Ev.exit
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #35
  unreachable

_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEED2Ev.exit: ; preds = %_ZN4Luau13SingletonTypeD2Ev.exit
  %i.ef = load ptr, ptr %12, align 8, !tbaa !373  ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.da
  br i1 %i.eg, label %_ZN4Luau15StringSingletonD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i469: ; preds = %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEED2Ev.exit
  %i.eh = load i64, ptr %i.da, align 8, !tbaa !61
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #36
  br label %_ZN4Luau15StringSingletonD2Ev.exit

_ZN4Luau15StringSingletonD2Ev.exit:               ; preds = %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i469
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.ej = load ptr, ptr %i.ci, align 8, !tbaa !971
  %i.ek = invoke noundef zeroext i1 @_ZN4Luau13fastIsSubtypeEPKNS_4TypeES2_(ptr noundef %i.ds, ptr noundef %i.ej)
          to label %bb.ap unwind label %bb.av

bb.ap:                                            ; preds = %_ZN4Luau15StringSingletonD2Ev.exit
  br i1 %i.ek, label %bb.aq, label %.critedge445

bb.aq:                                            ; preds = %bb.ap
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !53
  store ptr %i.en, ptr %i.el, align 8, !tbaa !61
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.eo, align 8, !tbaa !451
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.ep, align 8, !tbaa !963
  br label %.critedge461

bb.ar:                                            ; preds = %bb.ai
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau15StringSingletonD2Ev.exit474

bb.as:                                            ; preds = %_ZN4Luau13SingletonTypeC2EONS_7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEEE.exit
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load i32, ptr %10, align 8, !tbaa !1199
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE9tableDtorE, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !17
  invoke void %i.ev(ptr noundef nonnull %i.dl)
          to label %_ZN4Luau13SingletonTypeD2Ev.exit470 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #35
  unreachable

_ZN4Luau13SingletonTypeD2Ev.exit470:              ; preds = %bb.as
  %i.ey = load i32, ptr %11, align 8, !tbaa !1199
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE9tableDtorE, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !17
  invoke void %i.fb(ptr noundef nonnull %i.cx)
end_hunk_0
