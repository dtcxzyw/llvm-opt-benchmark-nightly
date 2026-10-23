Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/symbolize_unittest?download=true
inline.NumInlined: 1077
inline.NumDeleted: 427
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt6vectorIN7testing7MatcherIRKPKcEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
  %.not.i.i.i.i.i.i.i.i.i32 = icmp eq ptr %i.am, null
  %i.aq = inttoptr i64 %i.ap to ptr
  br i1 %.not.i.i.i.i.i.i.i.i.i32, label %bb.f, label %_ZNK7testing8internal11MatcherBaseIRKPKcE8IsSharedEv.exit.i.i.i.i.i.i.i.i33

_ZNK7testing8internal11MatcherBaseIRKPKcE8IsSharedEv.exit.i.i.i.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i.i.i29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i.i34 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKPKcE8IsSharedEv.exit.i.i.i.i.i.i.i.i33
  %i.at = atomicrmw add ptr %i.aq, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK7testing8internal11MatcherBaseIRKPKcE8IsSharedEv.exit.i.i.i.i.i.i.i.i33, %.lr.ph.i.i.i.i.i29
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKPKcEE, i64 16), ptr %.015.i.i.i.i.i30, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i.i.i35, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKPKcEES7_SaIS6_EET0_T_SA_S9_RT1_.exit37, label %.lr.ph.i.i.i.i.i29, !llvm.loop !253

_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKPKcEES7_SaIS6_EET0_T_SA_S9_RT1_.exit37: ; preds = %bb.f, %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKPKcEES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %.0.lcssa.i.i.i.i.i36 = phi ptr [ %i.aj, %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKPKcEES7_SaIS6_EET0_T_SA_S9_RT1_.exit ], [ %i.av, %bb.f ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7testing7MatcherIRKPKcEEEvT_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKPKcEES7_SaIS6_EET0_T_SA_S9_RT1_.exit37, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKPKcEES7_SaIS6_EET0_T_SA_S9_RT1_.exit37 ] ; 3 uses
  %i.aw = load ptr, ptr %.05.i.i, align 8, !tbaa !21
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #30, !inline_history !5
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7testing7MatcherIRKPKcEEEvT_S8_.exit, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN7testing7MatcherIRKPKcEEEvT_S8_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKPKcEES7_SaIS6_EET0_T_SA_S9_RT1_.exit37
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseIN7testing7MatcherIRKPKcEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKPKcEEEvT_S8_.exit
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !89
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #31
  br label %_ZNSt12_Vector_baseIN7testing7MatcherIRKPKcEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN7testing7MatcherIRKPKcEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKPKcEEEvT_S8_.exit, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !101
  store ptr %.0.lcssa.i.i.i.i.i36, ptr %i.a, align 8, !tbaa !100
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcvNS_7MatcherIT_EEIRKPKcEEv(ptr dead_on_unwind noalias writable sret(%"class.testing::Matcher") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKPKcEE, i64 16), ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !76
  %i.e = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.g, ptr %i.a, align 8, !tbaa !83
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.i, ptr %i.c, align 8, !tbaa !61
  %i.j = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.j, ptr %i.d, align 8, !tbaa !64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !64
  store i8 %i.l, ptr %i.k, align 1, !tbaa !64
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !77
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i16, ptr %i.r, align 8
  store i16 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZZN7testing8internal11MatcherBaseIRKPKcE9GetVTableINS6_11ValuePolicyIPKNS_16MatcherInterfaceIS5_EELb1EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.t, align 8, !tbaa !71
  %i.v = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 3 uses
  store i32 1, ptr %i.v, align 4, !tbaa !91
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = ptrtoint ptr %i.b to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !93
  store ptr %i.v, ptr %i.u, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKPKcEE, i64 16), ptr %0, align 8, !tbaa !21
  ret void

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #31
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKPKcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKPKcEE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !64
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31
  br label %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKPKcED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKPKcEE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKPKcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !64
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31, !inline_history !254
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKPKcED2Ev.exit

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKPKcED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKPKcE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !85, !range !56, !noundef !57
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @.str.69, ptr @.str.70
  %i.e = select i1 %i.c, i64 3, i64 6
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef %i.e) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.71, i64 noundef 9) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.i = load i8, ptr %i.h, align 1, !tbaa !86, !range !56, !noundef !57
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNK7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.72, i64 noundef 16) ; 0 uses
  br label %_ZNK7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit

_ZNK7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN7testing8internal13PrintStringToERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo(ptr noundef nonnull align 8 dereferenceable(34) %i.l, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKPKcE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !85, !range !56, !noundef !57
  %2 = trunc nuw i8 %i.b to i1                    ; 2 uses
  %i.c = select i1 %2, ptr @.str.70, ptr @.str.69
  %i.d = select i1 %2, i64 6, i64 3
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef %i.d) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.71, i64 noundef 9) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.h = load i8, ptr %i.g, align 1, !tbaa !86, !range !56, !noundef !57
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.72, i64 noundef 16) ; 0 uses
  br label %_ZNK7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit

_ZNK7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN7testing8internal13PrintStringToERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo(ptr noundef nonnull align 8 dereferenceable(34) %i.k, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKPKcE15MatchAndExplainESF_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !65
  %i.c = tail call noundef zeroext i1 @_ZNK7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainIKcEEbPT_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(34) %i.a, ptr noundef %i.b, ptr noundef %2)
  ret i1 %i.c
}

declare void @_ZN7testing8internal13PrintStringToERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainIKcEEbPT_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(34) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !85, !range !56, !noundef !57
  %4 = trunc nuw i8 %i.d to i1
  %5 = xor i1 %4, true
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !76
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8, !tbaa !83
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !61
  %i.i = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.i, ptr %i.e, align 8, !tbaa !64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.e, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !64
  store i8 %i.k, ptr %i.j, align 1, !tbaa !64
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !77
  %i.n = load ptr, ptr %3, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = invoke noundef zeroext i1 @_ZNK7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainIS7_EEbRKT_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(34) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.s = load i64, ptr %i.e, align 8, !tbaa !64
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.h
  %i.x = load i64, ptr %i.e, align 8, !tbaa !64
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.u

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %.07 = phi i1 [ %5, %bb.b ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i1 %.07
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainIS7_EEbRKT_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(34) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !76
  %i.c = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.e, ptr %i.a, align 8, !tbaa !83
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !61
  %i.h = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.h, ptr %i.b, align 8, !tbaa !64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !64
  store i8 %i.j, ptr %i.i, align 1, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !77
  %i.m = load ptr, ptr %3, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.p = load i8, ptr %i.o, align 1, !tbaa !86, !range !56, !noundef !57
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = load i64, ptr %i.l, align 8, !tbaa !77   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !77
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %i.r, 0
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !61
  %i.x = load ptr, ptr %3, align 8, !tbaa !61
  %bcmp.i = call i32 @bcmp(ptr %i.x, ptr %i.w, i64 %i.r)
  %i.y = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = invoke noundef zeroext i1 @_ZN7testing8internal27CaseInsensitiveStringEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SA_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit unwind label %bb.h

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.g
  %i.aa = phi i1 [ %i.z, %bb.g ], [ false, %bb.d ], [ %i.y, %bb.f ], [ true, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !85, !range !56, !noundef !57
  %i.ad = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.b
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.af = load i64, ptr %i.b, align 8, !tbaa !64
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ah = zext i1 %i.aa to i8
  %i.ai = icmp eq i8 %i.ac, %i.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i1 %i.ai

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.b
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.h
  %i.am = load i64, ptr %i.b, align 8, !tbaa !64
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal27CaseInsensitiveStringEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !61
  %i.d = load ptr, ptr %1, align 8, !tbaa !61
  %i.e = tail call noundef zeroext i1 @_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_(ptr noundef %i.c, ptr noundef %i.d)
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 0, i64 noundef 0) #30 ; 4 uses
  %i.g = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 0, i64 noundef 0) #30 ; 4 uses
  %i.h = icmp eq i64 %i.f, -1
  %i.i = icmp eq i64 %i.g, -1
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %i.f, %i.g
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.k = add nuw i64 %i.f, 1                      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77, !noalias !259 ; 3 uses
  %.not = icmp ult i64 %i.f, %i.m
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.73, i64 noundef %i.k, i64 noundef %i.m) #34, !noalias !259
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !76, !alias.scope !259
  %i.o = load ptr, ptr %0, align 8, !tbaa !61, !noalias !259
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %i.q = sub nuw i64 %i.m, %i.k                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !259
  store i64 %i.q, ptr %i.b, align 8, !tbaa !83, !noalias !259
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !61, !alias.scope !259
  %i.t = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !259
  store i64 %i.t, ptr %i.n, align 8, !tbaa !64, !alias.scope !259
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.u = phi ptr [ %i.s, %.noexc10.i.i ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.p, align 1, !tbaa !64
  store i8 %i.v, ptr %i.u, align 1, !tbaa !64
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.w = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !259 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !77, !alias.scope !259
  %i.y = load ptr, ptr %2, align 8, !tbaa !61, !alias.scope !259
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.aa = add nuw i64 %i.g, 1                     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !77, !noalias !260 ; 3 uses
  %.not34 = icmp ult i64 %i.g, %i.ac
end_hunk_0
