inline.NumInlined: 8298
inline.NumDeleted: 1222
begin_hunk_0_@ada_search_params_sort:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ada_search_params_reset(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit, label %bb.b

_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit: ; preds = %bb.a
  tail call void @_ZN3ada17url_search_params5resetESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %2, ptr %1)
  br label %bb.b

bb.b:                                             ; preds = %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada17url_search_params5resetESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, ptr %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %3 = alloca %class.anon.298, align 8            ; 8 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #34
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !531

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i
  %i.p = icmp eq i64 %1, 0
  br i1 %i.p, label %.thread29.i, label %bb.b

.thread29.i:                                      ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  br label %_ZN3ada17url_search_params10initializeESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.b:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit
  %i.q = load i8, ptr %2, align 1
  %i.r = icmp eq i8 %i.q, 63
  br i1 %i.r, label %bb.c, label %.thread32.i

.thread32.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %0, ptr %3, align 8
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.t = add i64 %1, -1                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %0, ptr %3, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN3ada17url_search_params10initializeESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i.preheader

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i.preheader: ; preds = %bb.c, %.thread32.i
  %.sroa.0.125.i.ph = phi i64 [ %i.t, %bb.c ], [ %1, %.thread32.i ]
  %.sroa.11.124.i.ph = phi ptr [ %i.s, %bb.c ], [ %2, %.thread32.i ]
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i.preheader, %bb.e
  %.sroa.0.125.i = phi i64 [ %i.ab, %bb.e ], [ %.sroa.0.125.i.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i.preheader ] ; 4 uses
  %.sroa.11.124.i = phi ptr [ %i.aa, %bb.e ], [ %.sroa.11.124.i.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i.preheader ] ; 5 uses
  %i.v = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.sroa.11.124.i, i32 noundef 38, i64 noundef %.sroa.0.125.i) #31 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.v, null
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %.sroa.11.124.i to i64
  %i.y = sub i64 %i.w, %i.x
  %.0.i.i = select i1 %.not.i.i3, i64 -1, i64 %i.y ; 3 uses
  switch i64 %.0.i.i, label %bb.d [
    i64 -1, label %.thread.i
    i64 0, label %bb.e
  ]

.thread.i:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i
  call void @_ZZN3ada17url_search_params10initializeESt17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clES4_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %.sroa.0.125.i, ptr nonnull %.sroa.11.124.i)
  br label %_ZN3ada17url_search_params10initializeESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.sroa.0.125.i, i64 %.0.i.i)
  call void @_ZZN3ada17url_search_params10initializeESt17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clES4_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %.sroa.speculated.i.i, ptr nonnull %.sroa.11.124.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i
  %i.z = add nuw i64 %.0.i.i, 1                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.11.124.i, i64 %i.z
  %i.ab = sub i64 %.sroa.0.125.i, %i.z            ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZN3ada17url_search_params10initializeESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i

_ZN3ada17url_search_params10initializeESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.e, %.thread29.i, %bb.c, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ada_search_params_append(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %"class.std::basic_string_view.2", align 8 ; 6 uses
  %6 = alloca %"class.std::basic_string_view.2", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit, label %bb.d

_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %2, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.d, align 8
  store i64 %4, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRKSt17basic_string_viewIcS3_ESB_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISC_SD_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %i.k, ptr %i.f, align 8
  br label %_ZN3ada17url_search_params6appendESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

bb.c:                                             ; preds = %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRKSt17basic_string_viewIcS4_ESE_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN3ada17url_search_params6appendESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

_ZN3ada17url_search_params6appendESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.d

bb.d:                                             ; preds = %_ZN3ada17url_search_params6appendESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ada_search_params_set(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit, label %bb.b

_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit: ; preds = %bb.a
  tail call void @_ZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %2, ptr %1, i64 %4, ptr %3)
  br label %bb.b

bb.b:                                             ; preds = %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::basic_string_view.2", align 8 ; 7 uses
  %6 = alloca %"class.std::basic_string_view.2", align 8 ; 4 uses
  %.sroa.01.0.copyload.i.i.i.fr.i.i = freeze i64 %1 ; 4 uses
  store i64 %.sroa.01.0.copyload.i.i.i.fr.i.i, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  store i64 %3, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.b, align 8
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 7 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZNKSt6ranges12__find_if_fnclITkNS_11input_rangeERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZN3ada17url_search_params3setESt17basic_string_viewIcS7_ESR_EUlRKSI_E_EENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_T1_SL_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.fr.i.i, 0
  br i1 %i.g, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.02.05.us.i.i = phi ptr [ %i.k, %bb.b ], [ %i.c, %.lr.ph.i.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.05.us.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt6ranges12__find_if_fnclITkNS_11input_rangeERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZN3ada17url_search_params3setESt17basic_string_viewIcS7_ESR_EUlRKSI_E_EENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_T1_SL_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.05.us.i.i, i64 64 ; 3 uses
  %i.l = icmp eq ptr %i.k, %i.e
  br i1 %i.l, label %_ZNKSt6ranges12__find_if_fnclITkNS_11input_rangeERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZN3ada17url_search_params3setESt17basic_string_viewIcS7_ESR_EUlRKSI_E_EENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_T1_SL_.exit, label %.lr.ph.split.us.i.i, !llvm.loop !540

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.02.05.i.i = phi ptr [ %i.r, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %.sroa.01.0.copyload.i.i.i.fr.i.i, %i.n
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, label %bb.c

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i
  %i.p = load ptr, ptr %.sroa.02.05.i.i, align 8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %2, ptr %i.p, i64 %.sroa.01.0.copyload.i.i.i.fr.i.i)
  %i.q = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNKSt6ranges12__find_if_fnclITkNS_11input_rangeERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZN3ada17url_search_params3setESt17basic_string_viewIcS7_ESR_EUlRKSI_E_EENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_T1_SL_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.split.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 64 ; 3 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNKSt6ranges12__find_if_fnclITkNS_11input_rangeERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZN3ada17url_search_params3setESt17basic_string_viewIcS7_ESR_EUlRKSI_E_EENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_T1_SL_.exit, label %.lr.ph.split.i.i, !llvm.loop !540

_ZNKSt6ranges12__find_if_fnclITkNS_11input_rangeERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZN3ada17url_search_params3setESt17basic_string_viewIcS7_ESR_EUlRKSI_E_EENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_T1_SL_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.split.us.i.i, %bb.b, %bb.a
  %.sroa.02.0.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %.sroa.02.05.us.i.i, %.lr.ph.split.us.i.i ], [ %i.k, %bb.b ], [ %.sroa.02.05.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %i.r, %bb.c ] ; 4 uses
  %i.t = icmp eq ptr %.sroa.02.0.lcssa.i.i, %i.e
  br i1 %i.t, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNKSt6ranges12__find_if_fnclITkNS_11input_rangeERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZN3ada17url_search_params3setESt17basic_string_viewIcS7_ESR_EUlRKSI_E_EENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_T1_SL_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %.not.i = icmp eq ptr %i.e, %i.v
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRKSt17basic_string_viewIcS3_ESB_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISC_SD_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr %i.x, ptr %i.d, align 8
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRKSt17basic_string_viewIcS4_ESE_EEERS7_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRKSt17basic_string_viewIcS4_ESE_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRKSt17basic_string_viewIcS4_ESE_EEERS7_DpOT_.exit

bb.g:                                             ; preds = %_ZNKSt6ranges12__find_if_fnclITkNS_11input_rangeERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZN3ada17url_search_params3setESt17basic_string_viewIcS7_ESR_EUlRKSI_E_EENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_T1_SL_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i, i64 40
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef 0, i64 noundef %i.aa, ptr noundef %4, i64 noundef %3) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i, i64 64
  %i.ad = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.ae = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcS6_ESK_EUlRKT_E_EEESL_SL_SL_T0_St26random_access_iterator_tag(ptr nonnull %i.ac, ptr %i.ad, ptr nonnull %5) ; 5 uses
  %i.af = icmp eq ptr %i.ae, %i.ad
  %.sroa.07.016.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.07.016.i.i, %i.ad
  %or.cond = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEZN3ada17url_search_params3setESt17basic_string_viewIcS6_ESI_EUlRKT_E_ESJ_SJ_SJ_T0_.exit, label %.lr.ph.i.i7.preheader

.lr.ph.i.i7.preheader:                            ; preds = %bb.g
  %.sroa.01.0.copyload.i.i.i.i.pre19 = load i64, ptr %5, align 8
  br label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %.lr.ph.i.i7.preheader, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.i.i
  %.sroa.01.0.copyload.i.i.i.i = phi i64 [ %.sroa.01.0.copyload.i.i.i.i20, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.pre19, %.lr.ph.i.i7.preheader ] ; 4 uses
  %.sroa.013.018.i.i.a = phi ptr [ %.sroa.07.0.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.i.i ], [ %.sroa.07.016.i.i, %.lr.ph.i.i7.preheader ] ; 4 uses
  %.pn17.i.i.a = phi ptr [ %.sroa.013.1.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.i.i ], [ %i.ae, %.lr.ph.i.i7.preheader ] ; 4 uses
  %.pn17.i.i = phi ptr [ %.sroa.013.018.i.i.a, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.i.i ], [ %i.ae, %.lr.ph.i.i7.preheader ]
  %.sroa.22.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8
  %i.ah = load ptr, ptr %.sroa.013.018.i.i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn17.i.i, i64 72
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i7
  %i.al = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, 0
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.h
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i, ptr %i.ah, i64 %.sroa.01.0.copyload.i.i.i.i)
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i7
  %i.an = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %.pn17.i.i.a, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.013.018.i.i.a) #31 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn17.i.i.a, i64 64
  %.sroa.01.0.copyload.i.i.i.i.pre = load i64, ptr %5, align 8
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.i.i: ; preds = %bb.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.h
  %.sroa.01.0.copyload.i.i.i.i20 = phi i64 [ %.sroa.01.0.copyload.i.i.i.i.pre, %bb.i ], [ 0, %bb.h ], [ %.sroa.01.0.copyload.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %i.ao, %bb.i ], [ %.pn17.i.i.a, %bb.h ], [ %.pn17.i.i.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.07.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.018.i.i.a, i64 64 ; 2 uses
  %i.ap = icmp eq ptr %.sroa.07.0.i.i, %i.ad
  br i1 %i.ap, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEZN3ada17url_search_params3setESt17basic_string_viewIcS6_ESI_EUlRKT_E_ESJ_SJ_SJ_T0_.exit, label %.lr.ph.i.i7, !llvm.loop !541

_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEZN3ada17url_search_params3setESt17basic_string_viewIcS6_ESI_EUlRKT_E_ESJ_SJ_SJ_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.i.i, %bb.g
  %.sroa.013.2.i.i = phi ptr [ %i.ae, %bb.g ], [ %.sroa.013.1.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ar = icmp eq ptr %.sroa.013.2.i.i, %i.aq
  br i1 %i.ar, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRKSt17basic_string_viewIcS4_ESE_EEERS7_DpOT_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i: ; preds = %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEZN3ada17url_search_params3setESt17basic_string_viewIcS6_ESI_EUlRKT_E_ESJ_SJ_SJ_T0_.exit
  %i.as = load ptr, ptr %0, align 8               ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %.sroa.013.2.i.i to i64
  %i.av = sub i64 %i.au, %i.at
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 %i.av ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bi, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i ], [ %i.aw, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = load i64, ptr %i.az, align 8
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bd = load ptr, ptr %.05.i.i.i.i.i, align 8   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.bg = load i64, ptr %i.be, align 8
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #34
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bi, %i.aq
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !531

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i
  store ptr %i.aw, ptr %i.d, align 8
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRKSt17basic_string_viewIcS4_ESE_EEERS7_DpOT_.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRKSt17basic_string_viewIcS4_ESE_EEERS7_DpOT_.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i.i, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEZN3ada17url_search_params3setESt17basic_string_viewIcS6_ESI_EUlRKT_E_ESJ_SJ_SJ_T0_.exit, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ada_search_params_remove(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %"class.std::basic_string_view.2", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit, label %bb.b

_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %2, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.d, align 8
  %i.e = call noundef i64 @_ZSt8erase_ifISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EZN3ada17url_search_params6removeESt17basic_string_viewIcS4_EEUlRKT_E_ENSt6vectorISD_T0_E9size_typeERSJ_T1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.b

bb.b:                                             ; preds = %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ada_search_params_remove_value(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %class.anon.314, align 8            ; 5 uses
  %6 = alloca %"class.std::basic_string_view.2", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view.2", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit, label %bb.c

_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %2, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.d, align 8
  store i64 %4, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %6, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %7, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %0, align 8
  %i.j = call ptr @_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcS6_ESL_EUlRKT_E_EEEESM_SM_SM_T0_(ptr %i.i, ptr %i.h, ptr nonnull %5) ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.h
  br i1 %i.k, label %_ZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit
  %i.l = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %_ZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i: ; preds = %bb.b
  %.pre20.i.i = load ptr, ptr %0, align 8         ; 2 uses
  %i.n = ptrtoint ptr %.pre20.i.i to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.o, %i.n
  %i.q = getelementptr inbounds i8, ptr %.pre20.i.i, i64 %i.p ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i.i ], [ %i.q, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.x = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #34
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !531

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i.i
  store ptr %i.q, ptr %i.g, align 8
  br label %_ZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

_ZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit, %bb.b, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.c

bb.c:                                             ; preds = %_ZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @ada_search_params_has(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit, label %bb.d

_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN3ada17url_search_params3hasESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2tl8expectedIN3ada17url_search_paramsENS1_6errorsEEptEv.exit
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.02.05.us.i.i.i = phi ptr [ %i.l, %bb.b ], [ %i.d, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.05.us.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN3ada17url_search_params3hasESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.05.us.i.i.i, i64 64 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZN3ada17url_search_params3hasESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.split.us.i.i.i, !llvm.loop !542

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.02.05.i.i.i = phi ptr [ %i.s, %bb.c ], [ %i.d, %.lr.ph.i.i.i ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcS6_ESK_EUlRKT_E_EEESL_SL_SL_T0_St26random_access_iterator_tag:bb.a
bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.067.097.us, i64 136
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit83, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.067.097.us, i64 200
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit87, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.067.097.us, i64 256
  %i.u = add nsw i64 %.098.us, -1
  %i.v = icmp sgt i64 %.098.us, 1
  br i1 %i.v, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !646

.lr.ph.split.split.split:                         ; preds = %.lr.ph, %bb.i
  %.098 = phi i64 [ %i.au, %bb.i ], [ %i.d, %.lr.ph ] ; 2 uses
  %.sroa.067.097 = phi ptr [ %i.at, %bb.i ], [ %0, %.lr.ph ] ; 13 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %.sroa.01.0.copyload.i.i.fr, %i.x
  br i1 %i.y, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, label %bb.f

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.split.split.split
  %i.z = load ptr, ptr %.sroa.067.097, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i, ptr %i.z, i64 %.sroa.01.0.copyload.i.i.fr)
  %i.aa = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 72
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %.sroa.01.0.copyload.i.i.fr, %i.ac
  br i1 %i.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i19, label %bb.g

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i19: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 64
  %i.af = load ptr, ptr %i.ae, align 8
  %bcmp.i.i.i20 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i, ptr %i.af, i64 %.sroa.01.0.copyload.i.i.fr)
  %i.ag = icmp eq i32 %bcmp.i.i.i20, 0
  br i1 %i.ag, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit81, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i19
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 136
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp eq i64 %.sroa.01.0.copyload.i.i.fr, %i.ai
  br i1 %i.aj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i26, label %bb.h

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i26: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 128
  %i.al = load ptr, ptr %i.ak, align 8
  %bcmp.i.i.i27 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i, ptr %i.al, i64 %.sroa.01.0.copyload.i.i.fr)
  %i.am = icmp eq i32 %bcmp.i.i.i27, 0
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit85, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i26
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 200
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp eq i64 %.sroa.01.0.copyload.i.i.fr, %i.ao
  br i1 %i.ap, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i33, label %bb.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i33: ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 192
  %i.ar = load ptr, ptr %i.aq, align 8
  %bcmp.i.i.i34 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i, ptr %i.ar, i64 %.sroa.01.0.copyload.i.i.fr)
  %i.as = icmp eq i32 %bcmp.i.i.i34, 0
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit89, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i33
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 256
  %i.au = add nsw i64 %.098, -1
  %i.av = icmp sgt i64 %.098, 1
  br i1 %i.av, label %.lr.ph.split.split.split, label %._crit_edge, !llvm.loop !646

._crit_edge:                                      ; preds = %bb.i, %bb.e, %bb.a
  %.sroa.067.0.lcssa = phi ptr [ %0, %bb.a ], [ %scevgep211, %bb.e ], [ %scevgep211, %bb.i ] ; 8 uses
  %i.aw = ptrtoint ptr %.sroa.067.0.lcssa to i64
  %i.ax = sub i64 %i.a, %i.aw
  %i.ay = ashr exact i64 %i.ax, 6
  switch i64 %i.ay, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit [
    i64 3, label %bb.j
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge214
  ]

._crit_edge._crit_edge214:                        ; preds = %._crit_edge
  %.sroa.01.0.copyload.i.i51.pre = load i64, ptr %2, align 8
  %.sroa.22.0..sroa_idx.i.i52.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i.i53.pre = load ptr, ptr %.sroa.22.0..sroa_idx.i.i52.phi.trans.insert, align 8
  br label %bb.p

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.sroa.01.0.copyload.i.i44.pre = load i64, ptr %2, align 8
  %.sroa.22.0..sroa_idx.i.i45.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i.i46.pre = load ptr, ptr %.sroa.22.0..sroa_idx.i.i45.phi.trans.insert, align 8
  br label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %.sroa.01.0.copyload.i.i37 = load i64, ptr %2, align 8 ; 4 uses
  %.sroa.22.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i.i39 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i38, align 8 ; 2 uses
  %i.az = load ptr, ptr %.sroa.067.0.lcssa, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.067.0.lcssa, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = icmp eq i64 %.sroa.01.0.copyload.i.i37, %i.bb
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i64 %.sroa.01.0.copyload.i.i37, 0
  br i1 %i.bd, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i40

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i40: ; preds = %bb.k
  %bcmp.i.i.i41 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i39, ptr %i.az, i64 %.sroa.01.0.copyload.i.i37)
  %i.be = icmp eq i32 %bcmp.i.i.i41, 0
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit, label %bb.l

bb.l:                                             ; preds = %bb.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i40
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.067.0.lcssa, i64 64
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge._crit_edge, %bb.l
  %.sroa.22.0.copyload.i.i46 = phi ptr [ %.sroa.22.0.copyload.i.i39, %bb.l ], [ %.sroa.22.0.copyload.i.i46.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.01.0.copyload.i.i44 = phi i64 [ %.sroa.01.0.copyload.i.i37, %bb.l ], [ %.sroa.01.0.copyload.i.i44.pre, %._crit_edge._crit_edge ] ; 4 uses
  %.sroa.067.1 = phi ptr [ %i.bf, %bb.l ], [ %.sroa.067.0.lcssa, %._crit_edge._crit_edge ] ; 5 uses
  %i.bg = load ptr, ptr %.sroa.067.1, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.067.1, i64 8
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp eq i64 %.sroa.01.0.copyload.i.i44, %i.bi
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = icmp eq i64 %.sroa.01.0.copyload.i.i44, 0
  br i1 %i.bk, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i47

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i47: ; preds = %bb.n
  %bcmp.i.i.i48 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i46, ptr %i.bg, i64 %.sroa.01.0.copyload.i.i44)
  %i.bl = icmp eq i32 %bcmp.i.i.i48, 0
  br i1 %i.bl, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit, label %bb.o

bb.o:                                             ; preds = %bb.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i47
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.067.1, i64 64
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge._crit_edge214, %bb.o
  %.sroa.22.0.copyload.i.i53 = phi ptr [ %.sroa.22.0.copyload.i.i46, %bb.o ], [ %.sroa.22.0.copyload.i.i53.pre, %._crit_edge._crit_edge214 ]
  %.sroa.01.0.copyload.i.i51 = phi i64 [ %.sroa.01.0.copyload.i.i44, %bb.o ], [ %.sroa.01.0.copyload.i.i51.pre, %._crit_edge._crit_edge214 ] ; 3 uses
  %.sroa.067.2 = phi ptr [ %i.bm, %bb.o ], [ %.sroa.067.0.lcssa, %._crit_edge._crit_edge214 ] ; 4 uses
  %i.bn = load ptr, ptr %.sroa.067.2, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.067.2, i64 8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = icmp eq i64 %.sroa.01.0.copyload.i.i51, %i.bp
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = icmp eq i64 %.sroa.01.0.copyload.i.i51, 0
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54: ; preds = %bb.q
  %bcmp.i.i.i55 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i53, ptr %i.bn, i64 %.sroa.01.0.copyload.i.i51)
  %i.bs = icmp eq i32 %bcmp.i.i.i55, 0
  br i1 %i.bs, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit, label %bb.r

bb.r:                                             ; preds = %bb.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit

_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit79: ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.067.097.us, i64 64
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit

_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit81: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i19
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 64
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit

_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit83: ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.067.097.us, i64 128
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit

_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit85: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i26
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 128
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit

_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit87: ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.067.097.us, i64 192
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit

_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit89: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i33
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 192
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit

_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph.split.us, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit79, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit81, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit83, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit85, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit87, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit89, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54, %bb.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i47, %bb.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i40, %bb.k, %._crit_edge, %bb.r
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.067.0.lcssa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i40 ], [ %1, %._crit_edge ], [ %.sroa.067.0.lcssa, %bb.k ], [ %.sroa.067.1, %bb.n ], [ %.sroa.067.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i47 ], [ %.sroa.067.2, %bb.q ], [ %.sroa.067.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54 ], [ %1, %bb.r ], [ %i.bw, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit85 ], [ %i.bu, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit81 ], [ %.sroa.067.097.us, %.lr.ph.split.us ], [ %i.by, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit89 ], [ %i.bx, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit87 ], [ %i.bv, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit83 ], [ %i.bt, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada17url_search_params3setESt17basic_string_viewIcSt11char_traitsIcEES7_EUlRKT_E_EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS6_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbS8_.exit.loopexit.split.loop.exit79 ], [ %.sroa.067.097, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8erase_ifISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EZN3ada17url_search_params6removeESt17basic_string_viewIcS4_EEUlRKT_E_ENSt6vectorISD_T0_E9size_typeERSJ_T1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #11 comdat {
bb.a:
  %2 = alloca %class.anon.311, align 8            ; 4 uses
  store ptr %1, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 6
  %i.h = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcS6_EEUlRKT_E_EEEESM_SM_SM_T0_St26random_access_iterator_tag(ptr %i.c, ptr %i.b, ptr nonnull %2) ; 5 uses
  %i.i = icmp eq ptr %i.h, %i.b
  %.sroa.07.016.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.j = icmp eq ptr %.sroa.07.016.i, %i.b
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcS6_EEUlRKT_E_EEEESM_SM_SM_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.pre20 = load ptr, ptr %2, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.i
  %.sroa.07.019.i.a = phi ptr [ %3, %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.i ], [ %.pre20, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.013.018.i.a = phi ptr [ %.sroa.07.0.i, %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.i ], [ %.sroa.07.016.i, %.lr.ph.i.preheader ] ; 4 uses
  %.pn17.i.a = phi ptr [ %.sroa.013.1.i, %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.i ], [ %i.h, %.lr.ph.i.preheader ] ; 4 uses
  %.pn17.i = phi ptr [ %.sroa.013.018.i.a, %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.i ], [ %i.h, %.lr.ph.i.preheader ]
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.07.019.i.a, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.a, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8
  %i.k = load ptr, ptr %.sroa.013.018.i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 72
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %i.k, i64 %.sroa.01.0.copyload.i.i.i.i.i.i)
  %i.p = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %.lr.ph.i
  %i.q = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %.pn17.i.a, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.013.018.i.a) #31 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pn17.i.a, i64 64
  %.pre = load ptr, ptr %2, align 8
  br label %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.i

_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.i: ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.b
  %3 = phi ptr [ %.pre, %bb.c ], [ %.sroa.07.019.i.a, %bb.b ], [ %.sroa.07.019.i.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.sroa.013.1.i = phi ptr [ %i.r, %bb.c ], [ %.pn17.i.a, %bb.b ], [ %.pn17.i.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.07.0.i = getelementptr inbounds nuw i8, ptr %.sroa.013.018.i.a, i64 64 ; 2 uses
  %i.s = icmp eq ptr %.sroa.07.0.i, %i.b
  br i1 %i.s, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcS6_EEUlRKT_E_EEEESM_SM_SM_T0_.exit, label %.lr.ph.i, !llvm.loop !647

_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcS6_EEUlRKT_E_EEEESM_SM_SM_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.i, %bb.a
  %.sroa.013.2.i = phi ptr [ %i.h, %bb.a ], [ %.sroa.013.1.i, %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.i ] ; 4 uses
  %i.t = icmp eq ptr %.sroa.013.2.i, %i.b
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcS6_EEUlRKT_E_EEEESM_SM_SM_T0_.exit
  %i.u = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.v = icmp eq ptr %.sroa.013.2.i, %i.u
  %.pre20.a = load ptr, ptr %0, align 8           ; 3 uses
  br i1 %i.v, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS7_S9_EESE_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i: ; preds = %bb.d
  %i.w = ptrtoint ptr %.pre20.a to i64
  %i.x = ptrtoint ptr %.sroa.013.2.i to i64
  %i.y = sub i64 %i.x, %i.w
  %i.z = getelementptr inbounds i8, ptr %.pre20.a, i64 %i.y ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.al, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i ], [ %i.z, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ag = load ptr, ptr %.05.i.i.i.i.i, align 8   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #34
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !531

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i
  store ptr %i.z, ptr %i.a, align 8
  %.pre.a = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS7_S9_EESE_.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS7_S9_EESE_.exit: ; preds = %bb.d, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i.i
  %i.am = phi ptr [ %.pre20.a, %bb.d ], [ %.pre.a, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i.i ]
  %i.an = phi ptr [ %.sroa.013.2.i, %bb.d ], [ %i.z, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_.exit.i.i.i ]
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 6
  %i.as = sub nsw i64 %i.g, %i.ar
  br label %bb.e

bb.e:                                             ; preds = %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcS6_EEUlRKT_E_EEEESM_SM_SM_T0_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS7_S9_EESE_.exit
  %.0 = phi i64 [ %i.as, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS7_S9_EESE_.exit ], [ 0, %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcS6_EEUlRKT_E_EEEESM_SM_SM_T0_.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcS6_EEUlRKT_E_EEEESM_SM_SM_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 8                         ; 3 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !nonnull !74, !align !554 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8
  %.sroa.01.0.copyload.i.i.i.i.i.fr = freeze i64 %.sroa.01.0.copyload.i.i.i.i.i ; 9 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8 ; 4 uses
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.fr, 0
  %i.h = and i64 %i.c, -256
  %scevgep211 = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.098.us = phi i64 [ %i.v, %bb.e ], [ %i.d, %.lr.ph ] ; 2 uses
  %.sroa.067.097.us = phi ptr [ %i.u, %bb.e ], [ %0, %.lr.ph ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.067.097.us, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.067.097.us, i64 72
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.loopexit.split.loop.exit79, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.067.097.us, i64 136
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.loopexit.split.loop.exit83, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.067.097.us, i64 200
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.loopexit.split.loop.exit87, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.067.097.us, i64 256
  %i.v = add nsw i64 %.098.us, -1
  %i.w = icmp sgt i64 %.098.us, 1
  br i1 %i.w, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !648

.lr.ph.split.split.split:                         ; preds = %.lr.ph, %bb.i
  %.098 = phi i64 [ %i.av, %bb.i ], [ %i.d, %.lr.ph ] ; 2 uses
  %.sroa.067.097 = phi ptr [ %i.au, %bb.i ], [ %0, %.lr.ph ] ; 13 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.fr, %i.y
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, label %bb.f

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split
  %i.aa = load ptr, ptr %.sroa.067.097, align 8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %i.aa, i64 %.sroa.01.0.copyload.i.i.i.i.i.fr)
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 72
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.fr, %i.ad
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i19, label %bb.g

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i19: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 64
  %i.ag = load ptr, ptr %i.af, align 8
  %bcmp.i.i.i.i.i.i20 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %i.ag, i64 %.sroa.01.0.copyload.i.i.i.i.i.fr)
  %i.ah = icmp eq i32 %bcmp.i.i.i.i.i.i20, 0
  br i1 %i.ah, label %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.loopexit.split.loop.exit81, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i19
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 136
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.fr, %i.aj
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i26, label %bb.h

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i26: ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 128
  %i.am = load ptr, ptr %i.al, align 8
  %bcmp.i.i.i.i.i.i27 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %i.am, i64 %.sroa.01.0.copyload.i.i.i.i.i.fr)
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i.i27, 0
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.loopexit.split.loop.exit85, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i26
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 200
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.fr, %i.ap
  br i1 %i.aq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i33, label %bb.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i33: ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 192
  %i.as = load ptr, ptr %i.ar, align 8
  %bcmp.i.i.i.i.i.i34 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %i.as, i64 %.sroa.01.0.copyload.i.i.i.i.i.fr)
  %i.at = icmp eq i32 %bcmp.i.i.i.i.i.i34, 0
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit.loopexit.split.loop.exit89, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i33
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 256
  %i.av = add nsw i64 %.098, -1
  %i.aw = icmp sgt i64 %.098, 1
  br i1 %i.aw, label %.lr.ph.split.split.split, label %._crit_edge, !llvm.loop !648

._crit_edge:                                      ; preds = %bb.i, %bb.e, %bb.a
  %.sroa.067.0.lcssa = phi ptr [ %0, %bb.a ], [ %scevgep211, %bb.e ], [ %scevgep211, %bb.i ] ; 8 uses
  %i.ax = ptrtoint ptr %.sroa.067.0.lcssa to i64
  %i.ay = sub i64 %i.a, %i.ax
  %i.az = ashr exact i64 %i.ay, 6
  switch i64 %i.az, label %_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN3ada17url_search_params6removeESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_EEclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS7_SaIcEEESL_ESt6vectorISM_SaISM_EEEEEEbS9_.exit [
    i64 3, label %bb.j
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge214
  ]

._crit_edge._crit_edge214:                        ; preds = %._crit_edge
  %.pre215 = load ptr, ptr %2, align 8            ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i51.pre = load i64, ptr %.pre215, align 8
  %.sroa.22.0..sroa_idx.i.i.i.i.i52.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre215, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i53.pre = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i52.phi.trans.insert, align 8
end_hunk_1
