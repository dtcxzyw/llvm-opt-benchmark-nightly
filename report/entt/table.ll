Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/table?download=true
inline.NumInlined: 4860
inline.NumDeleted: 1708
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt6vectorIcSaIcEEC2ESt16initializer_listIcERKS0_:bb.a
  resume { ptr, i32 } %i.h
}

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !47
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !45     ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt6vectorIiSaIiEES0_IcSaIcEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #30
  br label %_ZNSt11_Tuple_implILm0EJSt6vectorIiSaIiEES0_IcSaIcEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt6vectorIiSaIiEES0_IcSaIcEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEC2ISaIvEEERKS3_RKS5_RKT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !39     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_RKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !69

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
          to label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i unwind label %bb.j ; 6 uses

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 3 uses
  %i.k = icmp samesign ugt i64 %i.f, 4
  br i1 %i.k, label %bb.c, label %bb.d, !prof !70

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_RKS0_.exit

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i
  %i.l = icmp eq i64 %i.f, 4
  br i1 %i.l, label %bb.e, label %_ZNSt6vectorIiSaIiEEC2ERKS1_RKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.c, align 4, !tbaa !41
  store i32 %i.m, ptr %i.i, align 4, !tbaa !41
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_RKS0_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_RKS0_.exit:           ; preds = %bb.e, %bb.d, %bb.c, %.thread
  %i.n = phi ptr [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %i.j, %bb.e ], [ %i.g, %.thread ] ; 2 uses
  %i.o = phi ptr [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ null, %.thread ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48   ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !45     ; 4 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 6 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i6, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_RKS0_.exit
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %.noexc.i.i7, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !69

.noexc.i.i7:                                      ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc8 unwind label %bb.j

.noexc8:                                          ; preds = %.noexc.i.i7
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #28
          to label %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.i unwind label %bb.j ; 5 uses

_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u ; 2 uses
  %i.y = icmp samesign ugt i64 %i.u, 1
  br i1 %i.y, label %bb.g, label %bb.i, !prof !70

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.r, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_RKS0_.exit
  %i.z = getelementptr inbounds i8, ptr null, i64 %i.u
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.i
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !47
  store i8 %i.aa, ptr %i.w, align 1, !tbaa !47
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %bb.g, %bb.h
  %i.ab = phi ptr [ %i.x, %bb.g ], [ %i.z, %bb.h ], [ %i.x, %bb.i ] ; 2 uses
  %i.ac = phi ptr [ %i.w, %bb.g ], [ null, %bb.h ], [ %i.w, %bb.i ]
  store ptr %i.ac, ptr %0, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.o, ptr %i.af, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.ag, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !40
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i7, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN41TableDeathTest_DISABLED_Constructors_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 10 uses
  %2 = alloca %"class.std::vector.3", align 8     ; 10 uses
  %3 = alloca %"class.entt::basic_table", align 16 ; 32 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %4 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %5 = alloca %"class.entt::basic_table", align 16 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %10 = alloca %"class.entt::basic_table", align 16 ; 9 uses
  %11 = alloca %"class.std::vector.3", align 16   ; 8 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %12 = alloca %"class.std::allocator", align 1   ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %16 = alloca %"class.testing::Matcher", align 8 ; 4 uses
  %17 = alloca %"class.entt::basic_table", align 16 ; 8 uses
  %18 = alloca %"class.std::allocator.21", align 1 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = alloca ptr, align 8                      ; 11 uses
  %22 = alloca %"class.testing::Matcher", align 8 ; 4 uses
  %23 = alloca %"class.entt::basic_table", align 16 ; 9 uses
  %24 = alloca %"class.std::vector.3", align 16   ; 8 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %25 = alloca %"class.std::allocator", align 1   ; 4 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.g = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #28 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !40
  store i32 0, ptr %i.g, align 4, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %i.k = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.c, label %bb.as

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  invoke void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %4, ptr noundef nonnull @.str.13)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.12, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull @.str.2, i32 noundef 46, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %4, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = atomicrmw sub ptr %i.r, i32 1 acq_rel, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.g, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !47
  invoke void %i.w(ptr noundef %i.x)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.h, !inline_history !1

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #29, !inline_history !77
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.e, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.f, %bb.g
  br i1 %i.l, label %bb.l, label %bb.aq

bb.i:                                             ; preds = %bb.ev, %bb.db, %bb.bb, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.j:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.k:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  br label %bb.ar

bb.l:                                             ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !79  ; 9 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.bb, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  switch i32 %i.ah, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread [
    i32 0, label %bb.p
    i32 1, label %bb.t
  ]

bb.o:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit134

bb.p:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !79  ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.ao = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.an)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i1 noundef zeroext %i.ao)
          to label %bb.s unwind label %bb.o

bb.s:                                             ; preds = %bb.r
  br i1 %i.as, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit

bb.t:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !79  ; 4 uses
  %i.au = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  br i1 %i.au, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNSt11_Tuple_implILm0EJSt6vectorIiSaIiEES0_IcSaIcEEEEC2ERKS2_RKS4_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEC2ERKS3_RKS5_.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #29
  unreachable

_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEC2ERKS3_RKS5_.exit: ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.bb = load <2 x ptr>, ptr %i.ba, align 16, !tbaa !80
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !40
  %i.bd = load <2 x ptr>, ptr %i.ay, align 16, !tbaa !80
  store <2 x ptr> %i.bb, ptr %i.ay, align 16, !tbaa !80
  store <2 x ptr> %i.bd, ptr %i.ba, align 16, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %5, align 16, !tbaa !49
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 16, !tbaa !81
  %i.bi = load <2 x ptr>, ptr %3, align 16, !tbaa !49
  %i.bj = load ptr, ptr %3, align 16, !tbaa !45
  store <2 x ptr> %i.bf, ptr %3, align 16, !tbaa !49
  store <2 x ptr> %i.bi, ptr %5, align 16, !tbaa !49
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !39 ; 3 uses
  %i.bl = load <2 x ptr>, ptr %i.be, align 16, !tbaa !81
  store <2 x ptr> %i.bh, ptr %i.be, align 16, !tbaa !81
  store <2 x ptr> %i.bl, ptr %i.bg, align 16, !tbaa !81
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEC2ERKS3_RKS5_.exit
  %i.bm = ptrtoint ptr %i.bc to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #30
  %.pr = load ptr, ptr %5, align 16, !tbaa !45
  br label %_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit.i.i

_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit.i.i: ; preds = %bb.x, %_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEC2ERKS3_RKS5_.exit
  %i.bp = phi ptr [ %.pr, %bb.x ], [ %i.bj, %_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEC2ERKS3_RKS5_.exit ] ; 3 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit.i.i
  %i.bq = load ptr, ptr %i.bg, align 16, !tbaa !46
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #30
  br label %_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEED2Ev.exit

_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit.i.i, %bb.y
end_hunk_0
begin_hunk_1_@_ZN41TableDeathTest_DISABLED_Constructors_Test8TestBodyEv:bb.a
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.dy = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 46, ptr noundef %i.dy)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.dz = load ptr, ptr %7, align 8, !tbaa !68    ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aw
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !25
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(128) %i.dz) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.aw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.gs

bb.ax:                                            ; preds = %bb.as
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit138

bb.ay:                                            ; preds = %bb.au, %bb.at
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #27
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn80 = phi { ptr, i32 } [ %i.ef, %bb.az ], [ %i.ee, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.eg = load ptr, ptr %7, align 8, !tbaa !68    ; 3 uses
  %.not.i.i136 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i136, label %_ZN7testing7MessageD2Ev.exit138, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.ba
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !25
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(128) %i.eg) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit138

_ZN7testing7MessageD2Ev.exit138:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, %bb.ba, %bb.ax
  %.pn80.pn = phi { ptr, i32 } [ %i.ed, %bb.ax ], [ %.pn80, %bb.ba ], [ %.pn80, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.gx

bb.bb:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ek = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.bc unwind label %bb.i

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.ek, label %bb.bd, label %bb.cs

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  invoke void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull @.str.13)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.el = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.15, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.2, i32 noundef 47, ptr noundef nonnull %i.b)
          to label %bb.bf unwind label %bb.bk

bb.bf:                                            ; preds = %bb.be
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %9, align 8, !tbaa !25
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i139, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit142, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i140

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i140: ; preds = %bb.bf
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !76
  %.not.i.i141 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i141, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit142, label %bb.bg

bb.bg:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i140
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !47
  %i.es = atomicrmw sub ptr %i.er, i32 1 acq_rel, align 4
  %i.et = icmp eq i32 %i.es, 1
  br i1 %i.et, label %bb.bh, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit142

bb.bh:                                            ; preds = %bb.bg
  %i.eu = load ptr, ptr %i.em, align 8, !tbaa !74
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !76
  %i.ex = load ptr, ptr %i.eq, align 8, !tbaa !47
  invoke void %i.ew(ptr noundef %i.ex)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit142 unwind label %bb.bi, !inline_history !1

bb.bi:                                            ; preds = %bb.bh
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #29, !inline_history !77
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit142: ; preds = %bb.bf, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i140, %bb.bg, %bb.bh
  br i1 %i.el, label %bb.bl, label %bb.cq

bb.bj:                                            ; preds = %bb.bd
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.bk:                                            ; preds = %bb.be
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #27
  br label %bb.cr

bb.bl:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit142
  %i.fc = load ptr, ptr %i.b, align 8, !tbaa !79  ; 9 uses
  %.not83 = icmp eq ptr %i.fc, null
  br i1 %.not83, label %bb.db, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !25
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = invoke noundef i32 %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  switch i32 %i.fg, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit154.thread [
    i32 0, label %bb.bp
    i32 1, label %bb.bt
  ]

bb.bo:                                            ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bm
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit157

bb.bp:                                            ; preds = %bb.bn
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !79  ; 4 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !25
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = invoke noundef i32 %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fi)
          to label %bb.bq unwind label %bb.bo

bb.bq:                                            ; preds = %bb.bp
  %i.fn = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.fm)
          to label %bb.br unwind label %bb.bo

bb.br:                                            ; preds = %bb.bq
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !25
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = invoke noundef zeroext i1 %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, i1 noundef zeroext %i.fn)
          to label %bb.bs unwind label %bb.bo

bb.bs:                                            ; preds = %bb.br
  br i1 %i.fr, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit154.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit154

bb.bt:                                            ; preds = %bb.bn
  %i.fs = load ptr, ptr %i.b, align 8, !tbaa !79  ; 4 uses
  %i.ft = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.ft, label %bb.bv, label %bb.cd

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i8 0, ptr %i.c, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  invoke void @_ZNSt6vectorIcSaIcEEC2ESt16initializer_listIcERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr nonnull %i.c, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.bw unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit146

bb.bw:                                            ; preds = %bb.bv
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 16, !tbaa !46
  %29 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %30 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gc = load <2 x ptr>, ptr %11, align 16, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %31 = load ptr, ptr %i.fy, align 8, !tbaa !39
  %i.gd = load ptr, ptr %i.fz, align 16, !tbaa !42
  %32 = load ptr, ptr %i.ga, align 8, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, i8 0, i64 24, i1 false)
  store ptr %31, ptr %29, align 8, !tbaa !39
  store ptr %i.gd, ptr %30, align 16, !tbaa !42
  store ptr %32, ptr %i.fx, align 8, !tbaa !40
  %i.ge = load ptr, ptr %i.gb, align 16, !tbaa !46
  store ptr %i.fw, ptr %i.gb, align 16, !tbaa !46
  %i.gf = load <2 x ptr>, ptr %3, align 16, !tbaa !49
  store <2 x ptr> %i.gc, ptr %3, align 16, !tbaa !49
  store <2 x ptr> %i.gf, ptr %10, align 16, !tbaa !49
  store ptr %i.ge, ptr %i.fu, align 16, !tbaa !46
  call void @_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #27
  %i.gg = load ptr, ptr %11, align 16, !tbaa !45  ; 3 uses
  %.not.i.i.i143 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gh = load ptr, ptr %i.fv, align 16, !tbaa !46
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gk) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.cd

bb.by:                                            ; preds = %bb.bt
  %i.gl = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.bz

_ZNSt6vectorIiSaIiEED2Ev.exit146:                 ; preds = %bb.bv
  %i.gm = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit146, %bb.by
  %.pn84 = phi { ptr, i32 } [ %i.gm, %_ZNSt6vectorIiSaIiEED2Ev.exit146 ], [ %i.gl, %bb.by ] ; 2 uses
  %.7 = extractvalue { ptr, i32 } %.pn84, 0
  %.739 = extractvalue { ptr, i32 } %.pn84, 1
  %i.gn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #27
  %i.go = icmp eq i32 %.739, %i.gn
  %i.gp = call ptr @__cxa_begin_catch(ptr %.7) #27 ; 2 uses
  br i1 %i.go, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %bb.bz
  %i.gq = load ptr, ptr @stderr, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull @.str.2, i32 noundef 47)
          to label %bb.cb unwind label %bb.ck

bb.cb:                                            ; preds = %bb.ca
  %i.gr = load ptr, ptr %13, align 8, !tbaa !66
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !25
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call noundef ptr %i.gu(ptr noundef nonnull align 8 dereferenceable(8) %i.gp) #27
  %i.gw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gq, ptr noundef nonnull @.str.14, ptr noundef %i.gr, ptr noundef %i.gv) #32 ; 0 uses
  %i.gx = load ptr, ptr %13, align 8, !tbaa !66   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.cb
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !47
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.hd = call i32 @fflush(ptr noundef %i.hc)     ; 0 uses
  %i.he = load ptr, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !25
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8
  invoke void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.he, i32 noundef 1)
          to label %bb.cc unwind label %bb.cl

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.cm

bb.cd:                                            ; preds = %bb.cc, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bu, %bb.ch
  %i.hi = load ptr, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !25
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8
  invoke void %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, i32 noundef 2)
          to label %bb.ce unwind label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  %i.hm = load ptr, ptr %i.fs, align 8, !tbaa !25
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.ho = load ptr, ptr %i.hn, align 8
  invoke void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit154.thread unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  call void @__clang_call_terminate(ptr %i.hq) #29
  unreachable

bb.cg:                                            ; preds = %bb.bz
  %i.hr = load ptr, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !25
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %i.hu = load ptr, ptr %i.ht, align 8
  invoke void %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, i32 noundef 1)
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.co unwind label %bb.ha

bb.cj:                                            ; preds = %bb.ch, %bb.cd
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.ck:                                            ; preds = %bb.ca
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cn

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cc
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl, %bb.ck
  %.pn86 = phi { ptr, i32 } [ %i.hy, %bb.cl ], [ %i.hx, %bb.ck ]
  invoke void @__cxa_end_catch()
          to label %bb.co unwind label %bb.ha

bb.co:                                            ; preds = %bb.cm, %bb.cn, %bb.ci, %bb.cj
  %.pn90 = phi { ptr, i32 } [ %i.hw, %bb.cj ], [ %i.hv, %bb.ci ], [ %i.hz, %bb.cm ], [ %.pn86, %bb.cn ]
  %i.ia = load ptr, ptr %i.fs, align 8, !tbaa !25
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.ic = load ptr, ptr %i.ib, align 8
  invoke void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit157 unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #29
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit154.thread: ; preds = %bb.bn, %bb.bs, %bb.ce
  %i.if = load ptr, ptr %i.fc, align 8, !tbaa !25
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.fc) #27, !inline_history !2
  br label %bb.db

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit154: ; preds = %bb.bs
  %i.ii = load ptr, ptr %i.fc, align 8, !tbaa !25
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %i.fc) #27, !inline_history !2
  br label %bb.cq

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit157: ; preds = %bb.co, %bb.bo
  %.pn92 = phi { ptr, i32 } [ %i.fh, %bb.bo ], [ %.pn90, %bb.co ]
  %i.il = load ptr, ptr %i.fc, align 8, !tbaa !25
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(8) %i.fc) #27, !inline_history !2
  br label %bb.cr

bb.cq:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit154, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.cs

bb.cr:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit157, %bb.bk, %bb.bj
  %.pn92.pn = phi { ptr, i32 } [ %.pn92, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit157 ], [ %i.fb, %bb.bk ], [ %i.fa, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
end_hunk_1
begin_hunk_2_@_ZN41TableDeathTest_DISABLED_Constructors_Test8TestBodyEv:bb.a

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit171.thread: ; preds = %bb.dk, %bb.dp, %bb.dy
  %i.mb = load ptr, ptr %i.je, align 8, !tbaa !25
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load ptr, ptr %i.mc, align 8
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(8) %i.je) #27, !inline_history !2
  br label %bb.ev

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit171: ; preds = %bb.dp
  %i.me = load ptr, ptr %i.je, align 8, !tbaa !25
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(8) %i.je) #27, !inline_history !2
  br label %bb.ek

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit174: ; preds = %bb.ei, %bb.dl
  %.pn105 = phi { ptr, i32 } [ %i.jj, %bb.dl ], [ %.pn103, %bb.ei ]
  %i.mh = load ptr, ptr %i.je, align 8, !tbaa !25
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(8) %i.je) #27, !inline_history !2
  br label %bb.el

bb.ek:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit171, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.em

bb.el:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit174, %bb.dh, %bb.dg
  %.pn105.pn = phi { ptr, i32 } [ %.pn105, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit174 ], [ %i.jd, %bb.dh ], [ %i.jc, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.gx

bb.em:                                            ; preds = %bb.ek, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.en unwind label %bb.er

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.mk = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.eo unwind label %bb.es

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 49, ptr noundef %i.mk)
          to label %bb.ep unwind label %bb.es

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.eq unwind label %bb.et

bb.eq:                                            ; preds = %bb.ep
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  %i.ml = load ptr, ptr %20, align 8, !tbaa !68   ; 3 uses
  %.not.i.i175 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i175, label %_ZN7testing7MessageD2Ev.exit177, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176: ; preds = %bb.eq
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !25
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr noundef nonnull align 8 dereferenceable(128) %i.ml) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit177

_ZN7testing7MessageD2Ev.exit177:                  ; preds = %bb.eq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.gs

bb.er:                                            ; preds = %bb.em
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit180

bb.es:                                            ; preds = %bb.eo, %bb.en
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.et:                                            ; preds = %bb.ep
  %i.mr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #27
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.pn108 = phi { ptr, i32 } [ %i.mr, %bb.et ], [ %i.mq, %bb.es ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  %i.ms = load ptr, ptr %20, align 8, !tbaa !68   ; 3 uses
  %.not.i.i178 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i178, label %_ZN7testing7MessageD2Ev.exit180, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179: ; preds = %bb.eu
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !25
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(128) %i.ms) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit180

_ZN7testing7MessageD2Ev.exit180:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179, %bb.eu, %bb.er
  %.pn108.pn = phi { ptr, i32 } [ %i.mp, %bb.er ], [ %.pn108, %bb.eu ], [ %.pn108, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.gx

bb.ev:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit171.thread, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.mw = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.ew unwind label %bb.i

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.mw, label %bb.ex, label %bb.gj

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  invoke void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %22, ptr noundef nonnull @.str.13)
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.mx = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.17, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull @.str.2, i32 noundef 50, ptr noundef nonnull %i.e)
          to label %bb.ez unwind label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #27
  br i1 %i.mx, label %bb.fc, label %bb.gh

bb.fa:                                            ; preds = %bb.ex
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.fb:                                            ; preds = %bb.ey
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #27
  br label %bb.gi

bb.fc:                                            ; preds = %bb.ez
  %i.na = load ptr, ptr %i.e, align 8, !tbaa !79  ; 9 uses
  %.not111 = icmp eq ptr %i.na, null
  br i1 %.not111, label %.thread262, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !25
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = invoke noundef i32 %i.nd(ptr noundef nonnull align 8 dereferenceable(8) %i.na)
          to label %bb.fe unwind label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  switch i32 %i.ne, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit194.thread [
    i32 0, label %bb.fg
    i32 1, label %bb.fk
  ]

bb.ff:                                            ; preds = %bb.fi, %bb.fh, %bb.fg, %bb.fd
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197

bb.fg:                                            ; preds = %bb.fe
  %i.ng = load ptr, ptr %i.e, align 8, !tbaa !79  ; 4 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !25
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = invoke noundef i32 %i.nj(ptr noundef nonnull align 8 dereferenceable(8) %i.ng)
          to label %bb.fh unwind label %bb.ff

bb.fh:                                            ; preds = %bb.fg
  %i.nl = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.nk)
          to label %bb.fi unwind label %bb.ff

bb.fi:                                            ; preds = %bb.fh
  %i.nm = load ptr, ptr %i.ng, align 8, !tbaa !25
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  %i.no = load ptr, ptr %i.nn, align 8
  %i.np = invoke noundef zeroext i1 %i.no(ptr noundef nonnull align 8 dereferenceable(8) %i.ng, i1 noundef zeroext %i.nl)
          to label %bb.fj unwind label %bb.ff

bb.fj:                                            ; preds = %bb.fi
  br i1 %i.np, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit194.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit194

bb.fk:                                            ; preds = %bb.fe
  %i.nq = load ptr, ptr %i.e, align 8, !tbaa !79  ; 4 uses
  %i.nr = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.fl unwind label %bb.fp

bb.fl:                                            ; preds = %bb.fk
  br i1 %i.nr, label %bb.fm, label %bb.fu

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i8 0, ptr %i.f, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  invoke void @_ZNSt6vectorIcSaIcEEC2ESt16initializer_listIcERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr nonnull %i.f, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.fn unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit186

bb.fn:                                            ; preds = %bb.fm
  %i.ns = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 16, !tbaa !46
  %33 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %34 = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.nu = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.nv = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.nz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.oa = load <2 x ptr>, ptr %24, align 16, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  %35 = load ptr, ptr %i.nw, align 8, !tbaa !39
  %i.ob = load ptr, ptr %i.nx, align 16, !tbaa !42
  %36 = load ptr, ptr %i.ny, align 8, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nw, i8 0, i64 24, i1 false)
  store ptr %35, ptr %34, align 8, !tbaa !39
  store ptr %i.ob, ptr %i.nu, align 16, !tbaa !42
  store ptr %36, ptr %i.nv, align 8, !tbaa !40
  %i.oc = load ptr, ptr %i.nz, align 16, !tbaa !46
  store ptr %i.nt, ptr %i.nz, align 16, !tbaa !46
  %i.od = load <2 x ptr>, ptr %3, align 16, !tbaa !49
  store <2 x ptr> %i.oa, ptr %3, align 16, !tbaa !49
  store <2 x ptr> %i.od, ptr %23, align 16, !tbaa !49
  store ptr %i.oc, ptr %33, align 16, !tbaa !46
  call void @_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %23) #27
  %i.oe = load ptr, ptr %24, align 16, !tbaa !45  ; 3 uses
  %.not.i.i.i181 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i.i181, label %_ZNSt6vectorIiSaIiEED2Ev.exit184, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.of = load ptr, ptr %i.ns, align 16, !tbaa !46
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = ptrtoint ptr %i.oe to i64
  %i.oi = sub i64 %i.og, %i.oh
  call void @_ZdlPvm(ptr noundef nonnull %i.oe, i64 noundef %i.oi) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit184

_ZNSt6vectorIiSaIiEED2Ev.exit184:                 ; preds = %bb.fo, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.fu

bb.fp:                                            ; preds = %bb.fk
  %i.oj = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.fq

_ZNSt6vectorIiSaIiEED2Ev.exit186:                 ; preds = %bb.fm
  %i.ok = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.fq

bb.fq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit186, %bb.fp
  %.pn112 = phi { ptr, i32 } [ %i.ok, %_ZNSt6vectorIiSaIiEED2Ev.exit186 ], [ %i.oj, %bb.fp ] ; 2 uses
  %.22 = extractvalue { ptr, i32 } %.pn112, 0
  %.2254 = extractvalue { ptr, i32 } %.pn112, 1
  %i.ol = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #27
  %i.om = icmp eq i32 %.2254, %i.ol
  %i.on = call ptr @__cxa_begin_catch(ptr %.22) #27 ; 2 uses
  br i1 %i.om, label %bb.fr, label %bb.fx

bb.fr:                                            ; preds = %bb.fq
  %i.oo = load ptr, ptr @stderr, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull @.str.2, i32 noundef 50)
          to label %bb.fs unwind label %bb.gb

bb.fs:                                            ; preds = %bb.fr
  %i.op = load ptr, ptr %26, align 8, !tbaa !66
  %i.oq = load ptr, ptr %i.on, align 8, !tbaa !25
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = call noundef ptr %i.os(ptr noundef nonnull align 8 dereferenceable(8) %i.on) #27
  %i.ou = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oo, ptr noundef nonnull @.str.14, ptr noundef %i.op, ptr noundef %i.ot) #32 ; 0 uses
  %i.ov = load ptr, ptr %26, align 8, !tbaa !66   ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ox = icmp eq ptr %i.ov, %i.ow
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.fs
  %i.oy = load i64, ptr %i.ow, align 8, !tbaa !47
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.pa = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.pb = call i32 @fflush(ptr noundef %i.pa)     ; 0 uses
  %i.pc = load ptr, ptr %i.e, align 8, !tbaa !79  ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !25
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 40
  %i.pf = load ptr, ptr %i.pe, align 8
  invoke void %i.pf(ptr noundef nonnull align 8 dereferenceable(8) %i.pc, i32 noundef 1)
          to label %bb.ft unwind label %bb.gc

bb.ft:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  invoke void @__cxa_end_catch()
          to label %bb.fu unwind label %bb.gd

bb.fu:                                            ; preds = %bb.ft, %_ZNSt6vectorIiSaIiEED2Ev.exit184, %bb.fl, %bb.fy
  %i.pg = load ptr, ptr %i.e, align 8, !tbaa !79  ; 2 uses
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !25
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 40
  %i.pj = load ptr, ptr %i.pi, align 8
  invoke void %i.pj(ptr noundef nonnull align 8 dereferenceable(8) %i.pg, i32 noundef 2)
          to label %bb.fv unwind label %bb.ga

bb.fv:                                            ; preds = %bb.fu
  %i.pk = load ptr, ptr %i.nq, align 8, !tbaa !25
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 40
  %i.pm = load ptr, ptr %i.pl, align 8
  invoke void %i.pm(ptr noundef nonnull align 8 dereferenceable(8) %i.nq, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit194.thread unwind label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.pn = landingpad { ptr, i32 }
          catch ptr null
  %i.po = extractvalue { ptr, i32 } %i.pn, 0
  call void @__clang_call_terminate(ptr %i.po) #29
  unreachable

bb.fx:                                            ; preds = %bb.fq
  %i.pp = load ptr, ptr %i.e, align 8, !tbaa !79  ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !25
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 40
  %i.ps = load ptr, ptr %i.pr, align 8
  invoke void %i.ps(ptr noundef nonnull align 8 dereferenceable(8) %i.pp, i32 noundef 1)
          to label %bb.fy unwind label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  invoke void @__cxa_end_catch()
          to label %bb.fu unwind label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  %i.pt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.gf unwind label %bb.ha

bb.ga:                                            ; preds = %bb.fy, %bb.fu
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.gb:                                            ; preds = %bb.fr
  %i.pv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.ge

bb.gc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.gd:                                            ; preds = %bb.ft
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gc, %bb.gb
  %.pn114 = phi { ptr, i32 } [ %i.pw, %bb.gc ], [ %i.pv, %bb.gb ]
  invoke void @__cxa_end_catch()
          to label %bb.gf unwind label %bb.ha

bb.gf:                                            ; preds = %bb.gd, %bb.ge, %bb.fz, %bb.ga
  %.pn118 = phi { ptr, i32 } [ %i.pu, %bb.ga ], [ %i.pt, %bb.fz ], [ %i.px, %bb.gd ], [ %.pn114, %bb.ge ]
  %i.py = load ptr, ptr %i.nq, align 8, !tbaa !25
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 40
  %i.qa = load ptr, ptr %i.pz, align 8
  invoke void %i.qa(ptr noundef nonnull align 8 dereferenceable(8) %i.nq, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197 unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.qb = landingpad { ptr, i32 }
          catch ptr null
  %i.qc = extractvalue { ptr, i32 } %i.qb, 0
  call void @__clang_call_terminate(ptr %i.qc) #29
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit194.thread: ; preds = %bb.fe, %bb.fj, %bb.fv
  %i.qd = load ptr, ptr %i.na, align 8, !tbaa !25
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(8) %i.na) #27, !inline_history !2
  br label %.thread262

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit194: ; preds = %bb.fj
  %i.qg = load ptr, ptr %i.na, align 8, !tbaa !25
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(8) %i.na) #27, !inline_history !2
  br label %bb.gh

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197: ; preds = %bb.gf, %bb.ff
  %.pn120 = phi { ptr, i32 } [ %i.nf, %bb.ff ], [ %.pn118, %bb.gf ]
  %i.qj = load ptr, ptr %i.na, align 8, !tbaa !25
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8
  call void %i.ql(ptr noundef nonnull align 8 dereferenceable(8) %i.na) #27, !inline_history !2
  br label %bb.gi

.thread262:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit194.thread, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.gs

bb.gh:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit194, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.gj

bb.gi:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197, %bb.fb, %bb.fa
  %.pn120.pn = phi { ptr, i32 } [ %.pn120, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197 ], [ %i.mz, %bb.fb ], [ %i.my, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.gx

end_hunk_2
