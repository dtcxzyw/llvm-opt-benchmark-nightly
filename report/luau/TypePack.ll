Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypePack?download=true
inline.NumInlined: 578
inline.NumDeleted: 292
begin_hunk_0_@_ZN4Luau13sliceTypePackEmPKNS_11TypePackVarERKSt6vectorIPKNS_4TypeESaIS6_EESt8optionalIS2_ENS_7NotNullINS_12BuiltinTypesEEENSD_INS_9TypeArenaEEE:bb.a
  store ptr %.sroa.12.0, ptr %i.w, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %.sroa.12.0, ptr %i.x, align 8, !tbaa !58
  %i.y = invoke noundef ptr @_ZN4Luau9TypeArena11addTypePackESt6vectorIPKNS_4TypeESaIS4_EESt8optionalIPKNS_11TypePackVarEE(ptr noundef nonnull align 8 dereferenceable(184) %i.a, ptr noundef nonnull align 8 %7, ptr %3, i8 %4)
          to label %bb.g unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEvEET_SC_RKS4_.exit
  %i.z = load ptr, ptr %7, align 8, !tbaa !56     ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit22, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !58
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #28
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit22

bb.i:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEvEET_SC_RKS4_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %7, align 8, !tbaa !56    ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i23, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !58
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #28
  br label %.body

.body:                                            ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.ae

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit22:   ; preds = %bb.g, %bb.h, %bb.a, %bb.c
  %.0 = phi ptr [ %1, %bb.a ], [ %.0.i, %bb.c ], [ %i.y, %bb.h ], [ %i.y, %bb.g ]
  ret ptr %.0
}

declare noundef ptr @_ZN4Luau9TypeArena11addTypePackESt6vectorIPKNS_4TypeESaIS4_EESt8optionalIPKNS_11TypePackVarEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef align 8, ptr, i8) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeISt4pairIPKvS2_ES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150
  tail call void @_ZNSt8_Rb_treeISt4pairIPKvS2_ES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #28
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !149

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Luau::Variant", align 8     ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.a = load i32, ptr %0, align 8, !tbaa !45
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  invoke void %i.d(ptr noundef nonnull %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %2, align 8, !tbaa !45     ; 3 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  switch i32 %i.f, label %default.switch.case.unreachable.i [
    i32 0, label %call.0.i
    i32 1, label %call.1.i
    i32 2, label %call.2.i
    i32 3, label %call.3.i
    i32 4, label %call.4.i
    i32 5, label %call.5.i
    i32 6, label %call.6.i
    i32 7, label %call.7.i
  ], !prof !46

default.switch.case.unreachable.i:                ; preds = %bb.b
  unreachable

call.0.i:                                         ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !tbaa !48
  store i64 %i.h, ptr %i.e, align 8, !tbaa !48
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.1.i:                                         ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.2.i:                                         ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !tbaa.struct !51
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.3.i:                                         ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.e, ptr noundef nonnull align 8 dereferenceable(58) %i.g, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !32
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %call.3.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !35   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.r, i1 false)
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnMoveISA_EEvPvSH_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %call.3.i
  store ptr %i.l, ptr %i.i, align 8, !tbaa !33
  %i.s = load i64, ptr %i.m, align 8, !tbaa !34
  store i64 %i.s, ptr %i.k, align 8, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !35
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnMoveISA_EEvPvSH_.exit.i

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnMoveISA_EEvPvSH_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.t = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.t, ptr %i.v, align 8, !tbaa !35
  store ptr %i.m, ptr %i.j, align 8, !tbaa !33
  store i64 0, ptr %i.u, align 8, !tbaa !35
  store i8 0, ptr %i.m, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.y = load i16, ptr %i.x, align 8
  store i16 %i.y, ptr %i.w, align 8
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.4.i:                                         ; preds = %bb.b
  %i.z = load <2 x ptr>, ptr %i.g, align 8, !tbaa !59
  store <2 x ptr> %i.z, ptr %i.e, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.5.i:                                         ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !64
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.6.i:                                         ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !66
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.7.i:                                         ; preds = %bb.b
  %i.af = load i64, ptr %i.g, align 8, !tbaa !68
  store i64 %i.af, ptr %i.e, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !59
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !59
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %3 = load ptr, ptr %i.ak, align 8, !tbaa !58
  store ptr %3, ptr %i.aj, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.al = load <2 x ptr>, ptr %5, align 8, !tbaa !70
  store <2 x ptr> %i.al, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  store ptr %8, ptr %6, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

bb.d:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #27
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit: ; preds = %call.0.i, %call.1.i, %call.2.i, %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnMoveISA_EEvPvSH_.exit.i, %call.4.i, %call.5.i, %call.6.i, %call.7.i
  %i.ao = zext nneg i32 %i.f to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !78
  invoke void %i.aq(ptr noundef nonnull %i.g)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #27
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit: ; preds = %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorIS6_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorIS8_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorIS9_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorISA_EEvPv(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau15GenericTypePackD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !34
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZN4Luau15GenericTypePackD2Ev.exit

_ZN4Luau15GenericTypePackD2Ev.exit:               ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorISB_EEvPv(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau8TypePackD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #28
  br label %_ZN4Luau8TypePackD2Ev.exit

_ZN4Luau8TypePackD2Ev.exit:                       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorISC_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorISD_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorISE_EEvPv(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau28TypeFunctionInstanceTypePackD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZN4Luau28TypeFunctionInstanceTypePackD2Ev.exit

_ZN4Luau28TypeFunctionInstanceTypePackD2Ev.exit:  ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau28TypeFunctionInstanceTypePackC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !68
  store i64 %i.a, ptr %0, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !58
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !59   ; 3 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.d, label %bb.e, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !62
  store ptr %i.w, ptr %i.l, align 8, !tbaa !62
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.t
  store ptr %i.x, ptr %i.m, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !152 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !98  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i5 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i5, label %.noexc7, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit
  %i.ag = icmp ugt i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %.noexc.i.i6, label %_ZNSt15__new_allocatorIPKN4Luau11TypePackVarEE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i6:                                      ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i6
  unreachable

_ZNSt15__new_allocatorIPKN4Luau11TypePackVarEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #30
          to label %.noexc7 unwind label %bb.l

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIPKN4Luau11TypePackVarEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit
  %i.ai = phi ptr [ null, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIPKN4Luau11TypePackVarEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !98
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !152
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !72
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !70  ; 3 uses
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp sgt i64 %i.aq, 8
  br i1 %i.ar, label %bb.h, label %bb.i, !prof !60

bb.h:                                             ; preds = %.noexc7
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.am, i64 %i.aq, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc7
  %i.as = icmp eq i64 %i.aq, 8
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !48
  store ptr %i.at, ptr %i.ai, align 8, !tbaa !48
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.au = getelementptr inbounds i8, ptr %i.ai, i64 %i.aq
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !152
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIPKN4Luau11TypePackVarEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i6
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !56  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #28
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.av
}

declare noundef ptr @_ZNK4Luau6TxnLog7pendingEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { allocsize(0) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !31}
!1 = distinct !{!1, !31}
!2 = distinct !{!2, !31}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"_ZTSN4Luau9TypeLevelE", !9, i64 0, !9, i64 4}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTSN4Luau5ScopeE", !14, i64 0}
!16 = !{!"_ZTSN4Luau8PolarityE", !8, i64 0}
!17 = !{!"_ZTSN4Luau12FreeTypePackE", !9, i64 0, !13, i64 4, !15, i64 16, !16, i64 24}
!18 = !{!17, !9, i64 0}
!19 = !{!17, !15, i64 16}
!20 = !{!17, !16, i64 24}
!21 = !{!13, !9, i64 0}
!22 = !{!13, !9, i64 4}
!23 = !{!"p1 omnipotent char", !14, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!"long", !8, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !25, i64 8, !8, i64 16}
!27 = !{!"bool", !8, i64 0}
!28 = !{!"_ZTSN4Luau15GenericTypePackE", !9, i64 0, !13, i64 4, !15, i64 16, !26, i64 24, !27, i64 56, !16, i64 57}
!29 = !{!28, !9, i64 0}
!30 = !{!28, !15, i64 16}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!24, !23, i64 0}
!33 = !{!26, !23, i64 0}
!34 = !{!8, !8, i64 0}
!35 = !{!26, !25, i64 8}
!36 = !{!28, !27, i64 56}
!37 = !{!28, !16, i64 57}
!38 = !{!25, !25, i64 0}
!39 = !{!"p1 _ZTSN4Luau10ConstraintE", !14, i64 0}
!40 = !{!"_ZTSN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEE", !9, i64 0, !8, i64 8}
!41 = !{!"p1 _ZTSN4Luau9TypeArenaE", !14, i64 0}
!42 = !{!"_ZTSN4Luau11TypePackVarE", !40, i64 0, !27, i64 72, !41, i64 80}
!43 = !{!42, !27, i64 72}
!44 = !{!42, !41, i64 80}
!45 = !{!40, !9, i64 0}
!46 = !{!"unknown", !"jump-table-to-switch"}
!47 = !{!"p1 _ZTSN4Luau11TypePackVarE", !14, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!15, !15, i64 0}
!50 = !{!16, !16, i64 0}
!51 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12, i64 16, i64 8, !49, i64 24, i64 1, !50}
!52 = !{!"any p2 pointer", !14, i64 0}
!53 = !{!"p2 _ZTSN4Luau4TypeE", !52, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!54, !53, i64 8}
!56 = !{!54, !53, i64 0}
!57 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!58 = !{!54, !53, i64 16}
!59 = !{!53, !53, i64 0}
!60 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!61 = !{!"p1 _ZTSN4Luau4TypeE", !14, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!27, !27, i64 0}
!64 = !{i64 0, i64 8, !62, i64 8, i64 1, !63}
!65 = !{!39, !39, i64 0}
!66 = !{i64 0, i64 8, !38, i64 8, i64 8, !65}
!67 = !{!"p1 _ZTSN4Luau16TypePackFunctionE", !14, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"p2 _ZTSN4Luau11TypePackVarE", !52, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIPKN4Luau11TypePackVarESaIS3_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!72 = !{!71, !69, i64 16}
!73 = !{!"_ZTSSt14_Rb_tree_color", !8, i64 0}
!74 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!75 = !{!"_ZTSSt18_Rb_tree_node_base", !73, i64 0, !74, i64 8, !74, i64 16, !74, i64 24}
!76 = !{!"_ZTSSt15_Rb_tree_header", !75, i64 0, !25, i64 32}
!77 = !{!76, !74, i64 8}
!78 = !{!14, !14, i64 0}
!79 = !{!"p1 _ZTSN4Luau8TypePackE", !14, i64 0}
!80 = !{!"p1 _ZTSN4Luau6TxnLogE", !14, i64 0}
!81 = !{!"_ZTSN4Luau16TypePackIteratorE", !47, i64 0, !47, i64 8, !79, i64 16, !25, i64 24, !80, i64 32}
!82 = !{!81, !47, i64 0}
!83 = !{!81, !47, i64 8}
!84 = !{!81, !80, i64 32}
!85 = !{!81, !79, i64 16}
!86 = !{!81, !25, i64 24}
!87 = !{!"_ZTSSt22_Optional_payload_baseIPKN4Luau11TypePackVarEE", !8, i64 0, !27, i64 8}
!88 = !{!87, !27, i64 8}
!89 = !{i8 0, i8 2}
!90 = !{}
!91 = !{!"vtable pointer", !7, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !8, i64 0, !27, i64 32}
!94 = !{!93, !27, i64 32}
!95 = !{!"_ZTSN4Luau16VariadicTypePackE", !61, i64 0, !27, i64 8}
!96 = !{!95, !27, i64 8}
!97 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!98 = !{!71, !69, i64 0}
!99 = distinct !{!99, !"_ZNSt7__cxx119to_stringEi"}
!100 = distinct !{!100, !99, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!101 = distinct !{!101, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!102 = distinct !{!102, !101, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!103 = !{!100}
!104 = !{!102}
!105 = distinct !{!105, !"_ZNSt7__cxx119to_stringEi"}
!106 = distinct !{!106, !105, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!107 = distinct !{!107, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!108 = distinct !{!108, !107, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!109 = !{!106}
!110 = !{!108}
!111 = distinct !{!111, !"_ZNSt7__cxx119to_stringEi"}
!112 = distinct !{!112, !111, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!113 = distinct !{!113, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!114 = distinct !{!114, !113, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!115 = !{!112}
!116 = !{!114}
!117 = !{!"_ZTSN4Luau15BlockedTypePackE", !25, i64 0, !39, i64 8}
!118 = !{!117, !25, i64 0}
!119 = !{!117, !39, i64 8}
!120 = !{!76, !73, i64 0}
!121 = !{!76, !74, i64 16}
!122 = !{!76, !74, i64 24}
!123 = !{!76, !25, i64 32}
!124 = distinct !{!124, !31, !125}
!125 = !{!"llvm.loop.peeled.count", i32 1}
!126 = !{!"_ZTSSt22_Optional_payload_baseIN4Luau8LocationEE", !8, i64 0, !27, i64 16}
!127 = !{!126, !27, i64 16}
!128 = !{!79, !79, i64 0}
!129 = !{!80, !80, i64 0}
!130 = !{i64 0, i64 8, !48, i64 8, i64 8, !48, i64 16, i64 8, !128, i64 24, i64 8, !38, i64 32, i64 8, !129}
!131 = distinct !{!131, !31}
!132 = distinct !{!132, !31}
!133 = distinct !{null}
!134 = !{ptr @_ZN4Luau4sizeERKNS_8TypePackEPNS_6TxnLogE}
!135 = distinct !{!135, !"_ZN4Luau5beginEPKNS_11TypePackVarE"}
!136 = distinct !{!136, !135, !"_ZN4Luau5beginEPKNS_11TypePackVarE: argument 0"}
!137 = !{!136}
!138 = distinct !{!138, !31}
!139 = distinct !{!139, !31}
!140 = distinct !{!140, !"_ZN4Luau5beginEPKNS_11TypePackVarE"}
!141 = distinct !{!141, !140, !"_ZN4Luau5beginEPKNS_11TypePackVarE: argument 0"}
!142 = distinct !{!142, !31}
!143 = !{!141}
!144 = !{!"_ZTSN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEE", !9, i64 0, !8, i64 8}
!145 = !{!144, !9, i64 0}
!146 = !{!95, !61, i64 0}
!147 = !{!"_ZTSN4Luau9Unifiable5BoundIPKNS_11TypePackVarEEE", !47, i64 0}
!148 = !{!147, !47, i64 0}
!149 = distinct !{!149, !31}
!150 = !{!75, !74, i64 24}
!151 = !{!75, !74, i64 16}
!152 = !{!71, !69, i64 8}
end_hunk_0
