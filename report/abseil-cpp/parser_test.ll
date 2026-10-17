Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/parser_test?download=true
inline.NumInlined: 2681
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7testing8internal18CmpHelperEQFailureIA1_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_:bb.a
  %i.s = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !49
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EENS_15AssertionResultEPKcSA_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES7_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES7_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES7_RKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !46     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !49
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.f = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !49
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES7_RKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !46     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !49
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.r = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !49
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIA15_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !542
  store ptr %3, ptr %i.a, align 8, !tbaa !53, !noalias !543
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !542
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA15_cEES7_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA15_cEES7_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA15_cEES7_RKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !46     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !49
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.g = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !49
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA15_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !46     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !49
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.s = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !49
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.c = load ptr, ptr %1, align 8, !tbaa !129    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130
  %i.i = load ptr, ptr %0, align 8, !tbaa !129    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !96

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 3 uses
  %i.o = add i64 %i.d, -32
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -32
  %i.r = add i64 %i.q, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !129      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !130
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #23
  br label %_ZNSt12_Vector_baseIN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !129
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !130
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !132
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 32
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !98

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 32
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !tbaa.struct !545
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.k:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.aa, 32
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !98

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemES5_ET0_T_S7_S6_.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = icmp eq i64 %i.aa, 32
  br i1 %i.ae, label %bb.n, label %_ZSt4copyIPN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemES5_ET0_T_S7_S6_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !tbaa.struct !545
  br label %_ZSt4copyIPN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemES5_ET0_T_S7_S6_.exit

_ZSt4copyIPN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemES5_ET0_T_S7_S6_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.af = load ptr, ptr %1, align 8, !tbaa !129
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !132 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !129
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !132 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemES5_ET0_T_S7_S6_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZSt4copyIPN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemES5_ET0_T_S7_S6_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %_ZSt4copyIPN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemES5_ET0_T_S7_S6_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0810.i.i.i.i, i64 32, i1 false), !tbaa.struct !545
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !544

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemES5_ET0_T_S7_S6_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE13_M_deallocateEPS4_m.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !129
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !132
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052619str_format_internal16ParsedFormatBase14ConversionItemESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129ParsedFormatTest_Parsing_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129ParsedFormatTest_Parsing_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129ParsedFormatTest_Parsing_TestE, i64 16), ptr %i.a, align 8, !tbaa !18
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129ParsedFormatTest_Parsing_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129ParsedFormatTest_Parsing_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [6 x %"struct.absl::lts_20260526::str_format_internal::(anonymous namespace)::ExpectParse"], align 16 ; 25 uses
  %i.a = alloca [1 x i64], align 8                ; 5 uses
  %i.b = alloca [1 x i64], align 8                ; 5 uses
  %i.c = alloca [1 x i64], align 8                ; 5 uses
  %2 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::ParsedFormatBase", align 8 ; 9 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr @.str.27, ptr %1, align 16, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @.str.27, ptr %i.e, align 8, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @.str.272, ptr %i.f, align 16, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @.str.273, ptr %i.h, align 8, !tbaa !139
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @.str.274, ptr %i.i, align 16, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 8, ptr %i.a, align 8, !tbaa !115
  store ptr %i.a, ptr %i.j, align 8, !tbaa !140
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 1, ptr %i.k, align 16, !tbaa !141
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr @.str.275, ptr %i.l, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr @.str.276, ptr %i.m, align 16, !tbaa !138
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 8, ptr %i.b, align 8, !tbaa !115
  store ptr %i.b, ptr %i.n, align 8, !tbaa !140
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 1, ptr %i.o, align 16, !tbaa !141
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr @.str.277, ptr %i.p, align 8, !tbaa !139
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr @.str.278, ptr %i.q, align 16, !tbaa !138
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 8, ptr %i.c, align 8, !tbaa !115
  store ptr %i.c, ptr %i.r, align 8, !tbaa !140
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 1, ptr %i.s, align 16, !tbaa !141
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr @.str.279, ptr %i.t, align 8, !tbaa !139
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr @.str.280, ptr %i.u, align 16, !tbaa !138
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr @.str.281, ptr %i.w, align 8, !tbaa !139
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit
  %.016.idx36 = phi i64 [ 0, %bb.a ], [ %.016.add, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  %.016.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.016.idx36 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ad = load ptr, ptr %.016.ptr, align 16, !tbaa !138
end_hunk_0
