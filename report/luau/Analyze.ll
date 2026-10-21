Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Analyze?download=true
inline.NumInlined: 2341
inline.NumDeleted: 1374
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Luau15UserCancelErrorD0Ev:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4Luau21InternalCompilerErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !31
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #32
  br label %_ZN4Luau21InternalCompilerErrorD2Ev.exit

_ZN4Luau21InternalCompilerErrorD2Ev.exit:         ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(100) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7Require12ErrorHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7Require12ErrorHandler11reportErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7Require17NavigationContextD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4Luau7Require17NavigationContextE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7Require17NavigationContextD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Luau7Require17NavigationContext15toAliasOverrideERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Luau7Require17NavigationContext15toAliasFallbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Luau7Require17NavigationContext15getConfigStatusEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Luau7Require17NavigationContext17getConfigBehaviorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7Require17NavigationContext8getAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.118") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK4Luau7Require17NavigationContext9getConfigB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.118") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !89
  ret void
}

declare void @_ZN4Luau6ConfigC1Ev(ptr noundef nonnull align 8 dereferenceable(280)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17CliConfigResolverD0Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN17CliConfigResolverD2Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 368) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(280) ptr @_ZNK17CliConfigResolver9getConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4Luau15TypeCheckLimitsE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::optional.118", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.a = load ptr, ptr %1, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !30
  call void @_Z13getParentPathB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.118") align 8 %3, i64 %i.c, ptr %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !89, !range !33, !noundef !34
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(280) ptr @_ZNK17CliConfigResolver13readConfigRecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4Luau15TypeCheckLimitsE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.e unwind label %bb.c       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load i8, ptr %i.d, align 8, !tbaa !89, !range !33, !noundef !34
  %i.k = trunc nuw i8 %i.j to i1
  store i8 0, ptr %i.d, align 8, !tbaa !89
  br i1 %i.k, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !31
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #32
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.d, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.b
  %.pre = load i8, ptr %i.d, align 8, !tbaa !89, !range !33
  %i.q = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.d, align 8, !tbaa !89
  br i1 %i.q, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5: ; preds = %bb.f
  %i.u = load i64, ptr %i.s, align 8, !tbaa !31
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #32
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7: ; preds = %bb.f, %.thread, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5
  %.013 = phi ptr [ %i.g, %.thread ], [ %i.h, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5 ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret ptr %.013
}

declare void @_Z13getParentPathB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::optional.118") align 8, i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(280) ptr @_ZNK17CliConfigResolver13readConfigRecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4Luau15TypeCheckLimitsE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::function.264", align 16 ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::optional.118", align 8 ; 10 uses
  %5 = alloca %"struct.Luau::Config", align 8     ; 9 uses
  %6 = alloca %"class.std::optional.118", align 8 ; 18 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::optional.118", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::optional.118", align 8 ; 10 uses
  %12 = alloca %"struct.Luau::ConfigOptions::AliasOptions", align 8 ; 15 uses
  %13 = alloca %"struct.Luau::ConfigOptions", align 8 ; 13 uses
  %14 = alloca %"class.std::optional.118", align 8 ; 11 uses
  %15 = alloca %"class.std::optional.118", align 8 ; 10 uses
  %16 = alloca %"struct.Luau::ConfigOptions::AliasOptions", align 8 ; 14 uses
  %17 = alloca %"struct.Luau::InterruptCallbacks", align 16 ; 15 uses
  %18 = alloca %struct.LuauConfigInterruptInfo, align 8 ; 12 uses
  %19 = alloca %"class.std::optional.118", align 8 ; 11 uses
  %20 = alloca %"class.std::optional.280", align 8 ; 14 uses
  %21 = alloca %"struct.Luau::InterruptCallbacks", align 8 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.f = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau6ConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  br label %bb.dr

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.h = load ptr, ptr %1, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  call void @_Z13getParentPathB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.118") align 8 %4, i64 %i.j, ptr %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !89, !range !33, !noundef !34
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 dereferenceable(280) ptr @_ZNK17CliConfigResolver13readConfigRecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4Luau15TypeCheckLimitsE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.f unwind label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  invoke void @_ZN4Luau6ConfigC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(280) %5, ptr noundef nonnull align 8 dereferenceable(280) %i.p)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.q = load ptr, ptr %1, align 8, !tbaa !36
  %i.r = load i64, ptr %i.i, align 8, !tbaa !30
  invoke void @_Z9joinPathsB5cxx11St17basic_string_viewIcSt11char_traitsIcEES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i64 %i.r, ptr %i.q, i64 7, ptr nonnull @.str.91)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.s, ptr %6, align 8, !tbaa !27
  %i.t = load ptr, ptr %7, align 8, !tbaa !36     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  store ptr %i.t, ptr %6, align 8, !tbaa !36
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !31
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ab = phi i64 [ %i.x, %bb.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 8 uses
  store i8 1, ptr %i.ad, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ae = invoke noundef zeroext i1 @_Z6isFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.ae, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i8, ptr %i.ad, align 8, !tbaa !89, !range !33, !noundef !34
  %i.ag = trunc nuw i8 %i.af to i1
  store i8 0, ptr %i.ad, align 8, !tbaa !89
  br i1 %i.ag, label %bb.l, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.s
  br i1 %i.ai, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.aj = load i64, ptr %i.s, align 8, !tbaa !31
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #32
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.m:                                             ; preds = %bb.f, %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.n:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit141

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.ao = load ptr, ptr %1, align 8, !tbaa !36
  %i.ap = load i64, ptr %i.i, align 8, !tbaa !30
  invoke void @_Z9joinPathsB5cxx11St17basic_string_viewIcSt11char_traitsIcEES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i64 %i.ap, ptr %i.ao, i64 12, ptr nonnull @.str.92)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.aq, ptr %8, align 8, !tbaa !27
  %i.ar = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i48

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !30 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i48: ; preds = %bb.p
  store ptr %i.ar, ptr %8, align 8, !tbaa !36
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !31
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !31
  %.phi.trans.insert152 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre153 = load i64, ptr %.phi.trans.insert152, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i48
  %i.az = phi i64 [ %i.av, %bb.q ], [ %.pre153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i48 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 8 uses
  store i8 1, ptr %i.bb, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.bc = invoke noundef zeroext i1 @_Z6isFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  br i1 %i.bc, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit55, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = load i8, ptr %i.bb, align 8, !tbaa !89, !range !33, !noundef !34
  %i.be = trunc nuw i8 %i.bd to i1
  store i8 0, ptr %i.bb, align 8, !tbaa !89
  br i1 %i.be, label %bb.t, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit55

bb.t:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.aq
  br i1 %i.bg, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53: ; preds = %bb.t
  %i.bh = load i64, ptr %i.aq, align 8, !tbaa !31
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #32
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit55

bb.u:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit138

bb.v:                                             ; preds = %bb.dg, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau6ConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit55: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53, %bb.s, %bb.r
  %i.bl = load i8, ptr %i.ad, align 8, !tbaa !89, !range !33, !noundef !34
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = load i8, ptr %i.bb, align 8, !tbaa !89, !range !33, !noundef !34
  %i.bo = trunc nuw i8 %i.bn to i1                ; 2 uses
  br i1 %i.bm, label %bb.w, label %bb.bc

bb.w:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit55
  br i1 %i.bo, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  invoke void (ptr, ptr, ...) @_ZN4Luau6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRS6_S6_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.z unwind label %bb.ab      ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.br = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.z
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !31
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.dg

bb.aa:                                            ; preds = %bb.x
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.ab:                                            ; preds = %bb.y
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.ab
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !31
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.aa
  %.pn36 = phi { ptr, i32 } [ %i.bw, %bb.aa ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.bx, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.dl

bb.ac:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  invoke void @_Z8readFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.118") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ad unwind label %bb.an

bb.ad:                                            ; preds = %bb.ac
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 5 uses
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !89, !range !33, !noundef !34
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.ae, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit82

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 6 uses
  store i8 0, ptr %i.cg, align 8, !tbaa !89
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 12 uses
  store ptr %i.ch, ptr %12, align 8, !tbaa !27
  %i.ci = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.cj = load i64, ptr %i.ac, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i64 %i.cj, ptr %i.d, align 8, !tbaa !35
  %i.ck = icmp ugt i64 %i.cj, 15
  br i1 %i.ck, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.ae
  %i.cl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc62 unwind label %bb.ao  ; 2 uses

.noexc62:                                         ; preds = %.noexc.i.i.i.i.i
  store ptr %i.cl, ptr %12, align 8, !tbaa !36
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !35
  store i64 %i.cm, ptr %i.ch, align 8, !tbaa !31
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc62, %bb.ae
  %i.cn = phi ptr [ %i.cl, %.noexc62 ], [ %i.ch, %bb.ae ] ; 2 uses
  switch i64 %i.cj, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.co = load i8, ptr %i.ci, align 1, !tbaa !31
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !31
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %i.ci, i64 %i.cj, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i.i.i, %bb.af, %bb.ag
  %i.cp = load i64, ptr %i.d, align 8, !tbaa !35  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !30
  %i.cr = load ptr, ptr %12, align 8, !tbaa !36
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp
  store i8 0, ptr %i.cs, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  store i8 1, ptr %i.cg, align 8, !tbaa !89
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i8 1, ptr %i.ct, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  store i8 0, ptr %13, align 8, !tbaa !430
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !27
  %i.cy = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ch
  br i1 %i.cz, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.da = load i64, ptr %i.cq, align 8, !tbaa !30 ; 3 uses
  %i.db = icmp ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.db)
  %i.dc = add nuw nsw i64 %i.da, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cx, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.dc, i1 false)
  br label %_ZNSt19_Optional_base_implIN4Luau13ConfigOptions12AliasOptionsESt14_Optional_baseIS2_Lb0ELb0EEE12_M_constructIJS2_EEEvDpOT_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  store ptr %i.cy, ptr %i.cv, align 8, !tbaa !36
  %i.dd = load i64, ptr %i.ch, align 8, !tbaa !31
  store i64 %i.dd, ptr %i.cx, align 8, !tbaa !31
  %.pre155 = load i64, ptr %i.cq, align 8, !tbaa !30
  br label %_ZNSt19_Optional_base_implIN4Luau13ConfigOptions12AliasOptionsESt14_Optional_baseIS2_Lb0ELb0EEE12_M_constructIJS2_EEEvDpOT_.exit.i

_ZNSt19_Optional_base_implIN4Luau13ConfigOptions12AliasOptionsESt14_Optional_baseIS2_Lb0ELb0EEE12_M_constructIJS2_EEEvDpOT_.exit.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.de = phi i64 [ %.pre155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.da, %bb.ai ]
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.de, ptr %i.df, align 8, !tbaa !30
  store ptr %i.ch, ptr %12, align 8, !tbaa !36
  store i64 0, ptr %i.cq, align 8, !tbaa !30
  store i8 0, ptr %i.ch, align 8, !tbaa !31
  store i8 1, ptr %i.cw, align 8, !tbaa !89
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i8 1, ptr %i.dg, align 8, !tbaa !423
  store i8 1, ptr %i.cu, align 8, !tbaa !431
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  invoke void @_ZN4Luau11parseConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6ConfigERKNS_13ConfigOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.118") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(280) %5, ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %_ZNSt19_Optional_base_implIN4Luau13ConfigOptions12AliasOptionsESt14_Optional_baseIS2_Lb0ELb0EEE12_M_constructIJS2_EEEvDpOT_.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 5 uses
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !89, !range !33, !noundef !34
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ak, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRS6_SB_EEERS7_DpOT_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !184 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !185
  %.not.i = icmp eq ptr %i.dl, %i.dn
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_(ptr noundef nonnull align 8 dereferenceable(64) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.noexc63 unwind label %bb.aq

.noexc63:                                         ; preds = %bb.al
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !184
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  store ptr %i.dp, ptr %i.dk, align 8, !tbaa !184
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRS6_SB_EEERS7_DpOT_.exit

bb.am:                                            ; preds = %bb.ak
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 344
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRS6_SB_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRS6_SB_EEERS7_DpOT_.exit unwind label %bb.aq

bb.an:                                            ; preds = %bb.ac
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79

bb.ao:                                            ; preds = %.noexc.i.i.i.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ap:                                            ; preds = %_ZNSt19_Optional_base_implIN4Luau13ConfigOptions12AliasOptionsESt14_Optional_baseIS2_Lb0ELb0EEE12_M_constructIJS2_EEEvDpOT_.exit.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.aq:                                            ; preds = %bb.am, %bb.al
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dv = load i8, ptr %i.dh, align 8, !tbaa !89, !range !33, !noundef !34
  %i.dw = trunc nuw i8 %i.dv to i1
  store i8 0, ptr %i.dh, align 8, !tbaa !89
  br i1 %i.dw, label %bb.ar, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.ar:                                            ; preds = %bb.aq
  %i.dx = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i65: ; preds = %bb.ar
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !31
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #32
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRS6_SB_EEERS7_DpOT_.exit: ; preds = %bb.am, %.noexc63, %bb.aj
  %i.ec = load i8, ptr %i.dh, align 8, !tbaa !89, !range !33, !noundef !34
  %i.ed = trunc nuw i8 %i.ec to i1
  store i8 0, ptr %i.dh, align 8, !tbaa !89
  br i1 %i.ed, label %bb.as, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit69

bb.as:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRS6_SB_EEERS7_DpOT_.exit
  %i.ee = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i67: ; preds = %bb.as
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !31
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #32
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit69

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit69: ; preds = %bb.as, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRS6_SB_EEERS7_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  %i.ej = load i8, ptr %i.cu, align 8, !tbaa !431, !range !33, !noundef !34
  %i.ek = trunc nuw i8 %i.ej to i1
  store i8 0, ptr %i.cu, align 8, !tbaa !431
  br i1 %i.ek, label %bb.at, label %_ZN4Luau13ConfigOptionsD2Ev.exit

bb.at:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit69
  %i.el = load i8, ptr %i.cw, align 8, !tbaa !89, !range !33, !noundef !34
  %i.em = trunc nuw i8 %i.el to i1
  store i8 0, ptr %i.cw, align 8, !tbaa !89
  br i1 %i.em, label %bb.au, label %_ZN4Luau13ConfigOptionsD2Ev.exit

bb.au:                                            ; preds = %bb.at
  %i.en = load ptr, ptr %i.cv, align 8, !tbaa !36 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %22
  br i1 %i.eo, label %_ZN4Luau13ConfigOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.au
  %i.ep = load i64, ptr %22, align 8, !tbaa !31
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #32
  br label %_ZN4Luau13ConfigOptionsD2Ev.exit

_ZN4Luau13ConfigOptionsD2Ev.exit:                 ; preds = %bb.au, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit69, %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.er = load i8, ptr %i.cg, align 8, !tbaa !89, !range !33, !noundef !34
  %i.es = trunc nuw i8 %i.er to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !89
  br i1 %i.es, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

bb.av:                                            ; preds = %_ZN4Luau13ConfigOptionsD2Ev.exit
  %i.et = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.ch
  br i1 %i.eu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i70: ; preds = %bb.av
  %i.ev = load i64, ptr %i.ch, align 8, !tbaa !31
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i65, %bb.aq, %bb.ap
  %.pn32 = phi { ptr, i32 } [ %i.dt, %bb.ap ], [ %i.du, %bb.aq ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i65 ], [ %i.du, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  %i.ex = load i8, ptr %i.cu, align 8, !tbaa !431, !range !33, !noundef !34
  %i.ey = trunc nuw i8 %i.ex to i1
  store i8 0, ptr %i.cu, align 8, !tbaa !431
  br i1 %i.ey, label %bb.aw, label %_ZN4Luau13ConfigOptionsD2Ev.exit73

bb.aw:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.ez = load i8, ptr %i.cw, align 8, !tbaa !89, !range !33, !noundef !34
  %i.fa = trunc nuw i8 %i.ez to i1
  store i8 0, ptr %i.cw, align 8, !tbaa !89
  br i1 %i.fa, label %bb.ax, label %_ZN4Luau13ConfigOptionsD2Ev.exit73

bb.ax:                                            ; preds = %bb.aw
  %i.fb = load ptr, ptr %i.cv, align 8, !tbaa !36 ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %23
  br i1 %i.fc, label %_ZN4Luau13ConfigOptionsD2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i71: ; preds = %bb.ax
  %i.fd = load i64, ptr %23, align 8, !tbaa !31
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #32
  br label %_ZN4Luau13ConfigOptionsD2Ev.exit73

_ZN4Luau13ConfigOptionsD2Ev.exit73:               ; preds = %bb.ax, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4Luau13ConfigOptionsD2Ev.exit73, %bb.ao
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %_ZN4Luau13ConfigOptionsD2Ev.exit73 ], [ %i.ds, %bb.ao ] ; 3 uses
  %i.ff = load i8, ptr %i.cg, align 8, !tbaa !89, !range !33, !noundef !34
  %i.fg = trunc nuw i8 %i.ff to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !89
  br i1 %i.fg, label %bb.az, label %_ZN4Luau13ConfigOptions12AliasOptionsD2Ev.exit76

bb.az:                                            ; preds = %bb.ay
  %i.fh = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.ch
  br i1 %i.fi, label %_ZN4Luau13ConfigOptions12AliasOptionsD2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74: ; preds = %bb.az
  %i.fj = load i64, ptr %i.ch, align 8, !tbaa !31
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #32
  br label %_ZN4Luau13ConfigOptions12AliasOptionsD2Ev.exit76

_ZN4Luau13ConfigOptions12AliasOptionsD2Ev.exit76: ; preds = %bb.az, %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.fl = load i8, ptr %i.cd, align 8, !tbaa !89, !range !33, !noundef !34
  %i.fm = trunc nuw i8 %i.fl to i1
  store i8 0, ptr %i.cd, align 8, !tbaa !89
  br i1 %i.fm, label %bb.ba, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79

bb.ba:                                            ; preds = %_ZN4Luau13ConfigOptions12AliasOptionsD2Ev.exit76
  %i.fn = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i77: ; preds = %bb.ba
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !31
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #32
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i70, %_ZN4Luau13ConfigOptionsD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %.pre156 = load i8, ptr %i.cd, align 8, !tbaa !89, !range !33
  %i.fs = trunc nuw i8 %.pre156 to i1
  store i8 0, ptr %i.cd, align 8, !tbaa !89
  br i1 %i.fs, label %bb.bb, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit82

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.ft = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i80: ; preds = %bb.bb
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !31
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #32
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit82

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit82: ; preds = %bb.bb, %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.dg

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i77, %_ZN4Luau13ConfigOptions12AliasOptionsD2Ev.exit76, %bb.an
  %.pn32.pn.pn = phi { ptr, i32 } [ %i.dr, %bb.an ], [ %.pn32.pn, %_ZN4Luau13ConfigOptions12AliasOptionsD2Ev.exit76 ], [ %.pn32.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i77 ], [ %.pn32.pn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.dl

bb.bc:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit55
  br i1 %i.bo, label %bb.bd, label %bb.dg

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  invoke void @_Z8readFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.118") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.be unwind label %bb.ce

bb.be:                                            ; preds = %bb.bd
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 5 uses
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !89, !range !33, !noundef !34
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.bf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit125

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.gb = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 7 uses
  store i8 0, ptr %i.gb, align 8, !tbaa !89
  %i.gc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.gc, ptr %16, align 8, !tbaa !27
  %i.gd = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.ge = load i64, ptr %i.ac, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i64 %i.ge, ptr %i.c, align 8, !tbaa !35
  %i.gf = icmp ugt i64 %i.ge, 15
  br i1 %i.gf, label %.noexc.i.i.i.i.i85, label %._crit_edge.i.i.i.i.i.i83

.noexc.i.i.i.i.i85:                               ; preds = %bb.bf
  %i.gg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc87 unwind label %bb.cf  ; 2 uses

.noexc87:                                         ; preds = %.noexc.i.i.i.i.i85
  store ptr %i.gg, ptr %16, align 8, !tbaa !36
  %i.gh = load i64, ptr %i.c, align 8, !tbaa !35
  store i64 %i.gh, ptr %i.gc, align 8, !tbaa !31
  br label %._crit_edge.i.i.i.i.i.i83

._crit_edge.i.i.i.i.i.i83:                        ; preds = %.noexc87, %bb.bf
  %i.gi = phi ptr [ %i.gg, %.noexc87 ], [ %i.gc, %bb.bf ] ; 2 uses
  switch i64 %i.ge, label %bb.bh [
    i64 1, label %bb.bg
    i64 0, label %bb.bi
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i.i.i.i.i83
  %i.gj = load i8, ptr %i.gd, align 1, !tbaa !31
  store i8 %i.gj, ptr %i.gi, align 1, !tbaa !31
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge.i.i.i.i.i.i83
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gi, ptr align 1 %i.gd, i64 %i.ge, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %._crit_edge.i.i.i.i.i.i83
  %i.gk = load i64, ptr %i.c, align 8, !tbaa !35  ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !30
  %i.gm = load ptr, ptr %16, align 8, !tbaa !36
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gk
  store i8 0, ptr %i.gn, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  store i8 1, ptr %i.gb, align 8, !tbaa !89
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  store i8 1, ptr %i.go, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %17, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 32, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !72 ; 2 uses
  %i.gu = load <2 x ptr>, ptr %i.gq, align 8, !tbaa !23
  store <2 x ptr> %i.gu, ptr %i.gp, align 8, !tbaa !23
  %.not.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau15TypeCheckLimitsC2ERKS0_.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 3 uses
  %i.gw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i = icmp eq i8 %i.gw, 0
  br i1 %.not.i.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gx = load i32, ptr %i.gv, align 4, !tbaa !21
  %i.gy = add nsw i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gv, align 4, !tbaa !21
  br label %_ZN4Luau15TypeCheckLimitsC2ERKS0_.exit

bb.bl:                                            ; preds = %bb.bj
  %i.gz = atomicrmw volatile add ptr %i.gv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4Luau15TypeCheckLimitsC2ERKS0_.exit

_ZN4Luau15TypeCheckLimitsC2ERKS0_.exit:           ; preds = %bb.bi, %bb.bk, %bb.bl
  %i.ha = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 5 uses
  store ptr %i.hb, ptr %i.ha, align 8, !tbaa !27
  %i.hc = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.hd = load i64, ptr %i.ba, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.hd, ptr %i.b, align 8, !tbaa !35
  %i.he = icmp ugt i64 %i.hd, 15
  br i1 %i.he, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN4Luau15TypeCheckLimitsC2ERKS0_.exit
  %i.hf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ha, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc89 unwind label %bb.cg  ; 2 uses

.noexc89:                                         ; preds = %.noexc.i
  store ptr %i.hf, ptr %i.ha, align 8, !tbaa !36
  %i.hg = load i64, ptr %i.b, align 8, !tbaa !35
  store i64 %i.hg, ptr %i.hb, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc89, %_ZN4Luau15TypeCheckLimitsC2ERKS0_.exit
  %i.hh = phi ptr [ %i.hf, %.noexc89 ], [ %i.hb, %_ZN4Luau15TypeCheckLimitsC2ERKS0_.exit ] ; 2 uses
  switch i64 %i.hd, label %bb.bn [
    i64 1, label %bb.bm
    i64 0, label %bb.bo
  ]

bb.bm:                                            ; preds = %._crit_edge.i.i
  %i.hi = load i8, ptr %i.hc, align 1, !tbaa !31
  store i8 %i.hi, ptr %i.hh, align 1, !tbaa !31
  br label %bb.bo

end_hunk_0
