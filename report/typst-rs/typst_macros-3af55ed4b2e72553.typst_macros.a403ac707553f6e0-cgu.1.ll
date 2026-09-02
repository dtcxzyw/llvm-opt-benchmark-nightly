Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_macros-3af55ed4b2e72553.typst_macros.a403ac707553f6e0-cgu.1?download=true
inline.NumInlined: 39
inline.NumDeleted: 34
begin_hunk_0_@_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCse52LceO7DeS_12typst_macros:bb.a
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  br i1 %i.ca, label %bb.ai, label %bb.ah

bb.aa:                                            ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCse52LceO7DeS_12typst_macros.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load <2 x i64>, ptr %i.k, align 8
  store <2 x i64> %i.ck, ptr %i.cj, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCse52LceO7DeS_12typst_macros.exit
  store i64 0, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ah, %bb.ai, %bb.af, %bb.ag, %bb.aa, %bb.ab, %bb.ad
  ret void

bb.ad:                                            ; preds = %bb.y
  store i64 0, ptr %0, align 8
  br label %bb.ac

bb.ae:                                            ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = load i8, ptr %i.cn, align 8
  %i.cp = sub nuw i64 %i.bu, %i.bw
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.bw
  %i.cr = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCse52LceO7DeS_12typst_macros(i8 %i.co, ptr %i.cq, i64 %i.cp) #20 ; 2 uses
  %i.cs = extractvalue { i64, i64 } %i.cr, 0
  %i.ct = trunc nuw i64 %i.cs to i1
  br i1 %i.ct, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cu = extractvalue { i64, i64 } %i.cr, 1
  %i.cv = load i64, ptr %i.bv, align 8
  %i.cw = add i64 %i.cv, %i.cu                    ; 2 uses
  %i.cx = add i64 %i.cw, 1                        ; 2 uses
  store i64 %i.cx, ptr %i.bv, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cw, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cx, ptr %i.cz, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ac

bb.ag:                                            ; preds = %bb.ae
  store i64 %i.bu, ptr %i.bv, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ac

bb.ah:                                            ; preds = %bb.z
  tail call void @_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscVvfRCjUNk2_11proc_macro2(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.bx, ptr %i.cc, i64 %i.ce, ptr %i.cg, i64 %i.ci, i1 zeroext false) #20
  br label %bb.ac

bb.ai:                                            ; preds = %bb.z
  tail call void @_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscVvfRCjUNk2_11proc_macro2(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.bx, ptr %i.cc, i64 %i.ce, ptr %i.cg, i64 %i.ci, i1 zeroext true) #20
  br label %bb.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_5chain5ChainINtNtBb_6option4IterNtNtCse52LceO7DeS_12typst_macros4func5ParamEINtNtNtBb_5slice4iter4IterB1u_EENCNvB1w_16create_func_data0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1y_(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6cloned6ClonedINtNtCsjMPGGl8VONr_3syn10punctuated4IterNtNtB1h_4item5FnArgEENCNvNtCse52LceO7DeS_12typst_macros5scope22rewrite_primitive_base0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB2h_(ptr %0, ptr align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_IBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1M_NtB1M_4Elem11real_fields0ENCNvB2w_13struct_fields0ENCNvB1M_15create_new_func0ENCB3u_s_0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1O_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_IBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1M_NtB1M_4Elem11real_fields0ENCNvB2w_13struct_fields0ENCNvB2w_15accessor_fields0ENvB1M_24create_with_field_methodENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1O_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_IBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1M_NtB1M_4Elem11real_fields0ENCNvB2w_16construct_fields0ENCNvB2w_10set_fields0ENCNvB1M_15create_set_impl0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1O_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1I_NtB1I_4Elem11real_fields0ENCNvB2s_13struct_fields0ENCNvB1I_15create_new_funcs0_0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1K_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1I_NtB1I_4Elem11real_fields0ENCNvB2s_13struct_fields0ENCNvB1I_21create_construct_impls_0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1K_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1I_NtB1I_4Elem11real_fields0ENCNvB2s_13struct_fields0ENvB1I_12create_fieldENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1K_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1I_NtB1I_4Elem11real_fields0ENCNvB2s_16construct_fields0ENCNvB1I_21create_construct_impl0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1K_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtCscVvfRCjUNk2_11proc_macro25IdentENCNvNtCse52LceO7DeS_12typst_macros4elem19create_capable_func0ENCB2e_s_0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB2i_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvB1E_23create_native_elem_impl0ENCB2m_s_0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1G_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvB1E_23create_native_elem_impls0_0ENCB2m_s1_0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1G_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1E_NtB1E_4Elem11real_fields0ENCNvB1E_20create_inherent_impl0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1G_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4func5ParamENCNvB1E_22create_wrapper_closure0ENvB1E_19create_param_parserENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1G_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4func5ParamENCNvB1E_22create_wrapper_closures5_0ENvB1E_4bindENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1G_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvB1i_6create0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1k_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCse52LceO7DeS_12typst_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = load i64, ptr %1, align 8, !noalias !61
  switch i64 %i.o, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.l, align 2, !noalias !61
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.i, align 8, !noalias !61 ; 3 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit.thread, label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.b, align 8, !noalias !61 ; 5 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit.thread, label %bb.v

bb.g:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.m, align 1, !noalias !61 ; 2 uses
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %i.x = and i8 %i.v, 1
  %i.y = xor i8 %i.x, 1
  store i8 %i.y, ptr %i.m, align 1, !noalias !61
  %i.z = load i64, ptr %i.i, align 8, !noalias !61 ; 3 uses
  %i.aa = load ptr, ptr %i.d, align 8, !noalias !61 ; 2 uses
  %i.ab = load i64, ptr %i.e, align 8, !noalias !61 ; 2 uses
  %i.ac = call { ptr, i64 } @_RNvXs8_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCse52LceO7DeS_12typst_macros(i64 %i.z, ptr %i.aa, i64 %i.ab) #20, !noalias !61 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store ptr %i.ad, ptr %i.a, align 8, !noalias !61
  store ptr %i.af, ptr %i.n, align 8, !noalias !61
  %i.ag = call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsjMPGGl8VONr_3syn(ptr nonnull align 8 %i.a) #20, !noalias !61 ; 2 uses
  %i.ah = extractvalue { i32, i32 } %i.ag, 0
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr %i.aa, i64 %i.ab, i64 0, i64 %i.z, ptr nonnull align 8 @74) #19, !noalias !61
  unreachable

bb.j:                                             ; preds = %bb.h
  br i1 %i.w, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit, label %bb.m

bb.k:                                             ; preds = %bb.h
  br i1 %i.w, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.l, align 2, !noalias !61
  br label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.aj = extractvalue { i32, i32 } %i.ag, 1      ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 128
  br i1 %i.ak, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = icmp ult i32 %i.aj, 2048
  br i1 %i.al, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = icmp ult i32 %i.aj, 65536
  %..i = select i1 %i.am, i64 -3, i64 -4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.01.0.neg.i = phi i64 [ -2, %bb.n ], [ %..i, %bb.o ], [ -1, %bb.m ]
  %i.an = load i64, ptr %i.i, align 8, !noalias !61
  %i.ao = add i64 %i.an, %.sroa.01.0.neg.i        ; 2 uses
  store i64 %i.ao, ptr %i.i, align 8, !noalias !61
  br label %bb.ak

bb.q:                                             ; preds = %bb.e
  %i.ap = load i64, ptr %i.e, align 8, !noalias !61 ; 3 uses
  %i.aq = add i64 %i.r, -1                        ; 5 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  br i1 %i.ar, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.as = load ptr, ptr %i.d, align 8, !noalias !61 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  %i.au = load i8, ptr %i.at, align 1, !noalias !61
  %i.av = load i8, ptr %i.k, align 8, !noalias !61
  %i.aw = icmp eq i8 %i.au, %i.av
  br i1 %i.aw, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.aq, i64 %i.ap, ptr nonnull align 8 @75) #19, !noalias !61
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ax = call i64 @_RNvMNtCs3oUPovFnLWP_4core3stre19floor_char_boundaryCse52LceO7DeS_12typst_macros(ptr nonnull %i.as, i64 %i.ap, i64 %i.aq) #20, !noalias !61 ; 2 uses
  store i64 %i.ax, ptr %i.i, align 8, !noalias !61
  br label %bb.ak

bb.u:                                             ; preds = %bb.r
  store i64 %i.aq, ptr %i.i, align 8, !noalias !61
  br label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit

bb.v:                                             ; preds = %bb.f
  %i.ay = load i64, ptr %i.c, align 8, !noalias !61
  %i.az = icmp eq i64 %i.ay, -1                   ; 6 uses
  %i.ba = load ptr, ptr %i.d, align 8, !noalias !61 ; 3 uses
  %i.bb = load i64, ptr %i.e, align 8, !noalias !61 ; 2 uses
  %i.bc = load ptr, ptr %i.f, align 8, !noalias !61 ; 2 uses
  %i.bd = load i64, ptr %i.g, align 8, !noalias !61 ; 13 uses
  %i.be = sub i64 %i.t, %i.bd                     ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  br i1 %i.bf, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.v, %bb.z
  store i64 0, ptr %i.b, align 8, !noalias !62
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.v, %bb.z
  %i.bg = phi i64 [ %i.bp, %bb.z ], [ %i.be, %bb.v ] ; 4 uses
  %i.bh = phi i64 [ %i.bo, %bb.z ], [ %i.t, %bb.v ] ; 2 uses
  %.not.i.i = icmp eq i64 %i.t, %i.bh
  br i1 %.not.i.i, label %bb.w, label %.loopexit.i

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bg
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !62
  %i.bk = load i64, ptr %i.h, align 8, !noalias !62
  %i.bl = and i8 %i.bj, 63
  %i.bm = zext nneg i8 %i.bl to i64
  %2 = shl nuw i64 1, %i.bm
  %3 = and i64 %2, %i.bk
  %.not16.i.i = icmp eq i64 %3, 0
  br i1 %.not16.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 %i.bg, ptr %i.b, align 8, !noalias !62
  br i1 %i.az, label %bb.z, label %.sink.split.i.i

bb.y:                                             ; preds = %bb.w
  %i.bn = load i64, ptr %i.i, align 8, !noalias !62 ; 2 uses
  br i1 %i.az, label %bb.ab, label %bb.aa

.sink.split.i.i:                                  ; preds = %bb.aj, %.split28.us.i, %bb.x
  %.sink61.i.i = phi i64 [ %i.cq, %bb.aj ], [ %i.bd, %.split28.us.i ], [ %i.bd, %bb.x ]
  %.ph.i.i = phi i64 [ %i.cr, %bb.aj ], [ %i.cd, %.split28.us.i ], [ %i.bg, %bb.x ]
  store i64 %.sink61.i.i, ptr %i.j, align 8, !noalias !62
  br label %bb.z

bb.z:                                             ; preds = %bb.aj, %.split28.us.i, %.sink.split.i.i, %bb.x
  %i.bo = phi i64 [ %i.cd, %.split28.us.i ], [ %i.cr, %bb.aj ], [ %i.bg, %bb.x ], [ %.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bd                    ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bb
  br i1 %i.bq, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.aa:                                            ; preds = %bb.y
  %i.br = load i64, ptr %i.j, align 8, !noalias !62
  %i.bs = call i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3minCscVvfRCjUNk2_11proc_macro2(i64 %i.bn, i64 %i.br) #20, !noalias !62
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.sroa.01.0.i.i = phi i64 [ %i.bs, %bb.aa ], [ %i.bn, %bb.y ] ; 3 uses
  %i.bt = add i64 %.sroa.01.0.i.i, -1             ; 2 uses
  %.first_iter.i.i = icmp ult i64 %i.bt, %i.bd
  %.first_iter.i.fr.i = freeze i1 %.first_iter.i.i
  %.not17.i.us.i205 = icmp eq i64 %.sroa.01.0.i.i, 0 ; 2 uses
  br i1 %.first_iter.i.fr.i, label %.split.us.i.preheader, label %.split.i

.split.us.i.preheader:                            ; preds = %bb.ab
  br i1 %.not17.i.us.i205, label %.split26.us.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.split.us.i.preheader
  %i.bu = load i64, ptr %i.b, align 8, !noalias !62 ; 2 uses
  %i.bv = sub i64 %i.bu, %i.bd
  %i.bw = getelementptr i8, ptr %i.ba, i64 %i.bv
  br label %.lr.ph

.split.us.i:                                      ; preds = %.lr.ph
  %.not17.i.us.i = icmp eq i64 %i.bx, 0
  br i1 %.not17.i.us.i, label %.split26.us.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.split.us.i
  %.sroa.2.0.i.us.i206 = phi i64 [ %i.bx, %.split.us.i ], [ %.sroa.01.0.i.i, %.lr.ph.preheader ]
  %i.bx = add i64 %.sroa.2.0.i.us.i206, -1        ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !62
  %i.ca = getelementptr i8, ptr %i.bw, i64 %i.bx
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !62
  %.not19.i.us.i = icmp eq i8 %i.bz, %i.cb
  br i1 %.not19.i.us.i, label %.split.us.i, label %.split28.us.i

.split28.us.i:                                    ; preds = %.lr.ph
  %i.cc = load i64, ptr %i.i, align 8, !noalias !62
  %.neg.i.i = add i64 %i.bu, %i.bx
  %i.cd = sub i64 %.neg.i.i, %i.cc                ; 3 uses
  store i64 %i.cd, ptr %i.b, align 8, !noalias !62
  br i1 %i.az, label %bb.z, label %.sink.split.i.i

.split.i:                                         ; preds = %bb.ab
  br i1 %.not17.i.us.i205, label %.split26.us.i, label %bb.ac

.split26.us.i:                                    ; preds = %.split.us.i, %.split.us.i.preheader, %.split.i
  br i1 %i.az, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %.split.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.bt, i64 %i.bd, ptr nonnull align 8 @4) #19, !noalias !62
  unreachable

bb.ad:                                            ; preds = %.split26.us.i
  %i.ce = load i64, ptr %i.j, align 8, !noalias !62
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.split26.us.i
  %.sroa.06.0.i.i = phi i64 [ %i.ce, %bb.ad ], [ %i.bd, %.split26.us.i ] ; 2 uses
  %i.cf = load i64, ptr %i.i, align 8, !noalias !62 ; 4 uses
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 %i.bd) ; 2 uses
  %umax41.i.i = call i64 @llvm.umax.i64(i64 %.sroa.06.0.i.i, i64 %i.cf)
  %exitcond.not.i.i207.not = icmp ult i64 %i.cf, %.sroa.06.0.i.i
  br i1 %exitcond.not.i.i207.not, label %.lr.ph209, label %._crit_edge

bb.af:                                            ; preds = %bb.ah
  %i.cg = add i64 %.sroa.07.0.i.i208, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cg, %umax41.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge, label %.lr.ph209

._crit_edge:                                      ; preds = %bb.ae, %bb.af
  %i.ch = load i64, ptr %i.b, align 8, !noalias !62
  %i.ci = sub i64 %i.ch, %i.bd
  store i64 %i.ci, ptr %i.b, align 8, !noalias !62
  br i1 %i.az, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit, label %bb.ag

.lr.ph209:                                        ; preds = %bb.ae, %bb.af
  %.sroa.07.0.i.i208 = phi i64 [ %i.cg, %bb.af ], [ %i.cf, %bb.ae ] ; 4 uses
  %exitcond42.not.i.i = icmp eq i64 %.sroa.07.0.i.i208, %umax.i.i
  br i1 %exitcond42.not.i.i, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge
  store i64 %i.bd, ptr %i.j, align 8, !noalias !62
  br label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit

bb.ah:                                            ; preds = %.lr.ph209
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.07.0.i.i208
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !62
  %i.cl = load i64, ptr %i.b, align 8, !noalias !62 ; 2 uses
  %i.cm = sub i64 %i.cl, %i.bd
  %i.cn = getelementptr i8, ptr %i.ba, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 %.sroa.07.0.i.i208
  %i.cp = load i8, ptr %i.co, align 1, !noalias !62
  %.not18.i.i = icmp eq i8 %i.ck, %i.cp
  br i1 %.not18.i.i, label %bb.af, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph209
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %umax.i.i, i64 %i.bd, ptr nonnull align 8 @3) #19, !noalias !62
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cq = load i64, ptr %i.k, align 8, !noalias !62 ; 2 uses
  %i.cr = sub i64 %i.cl, %i.cq                    ; 3 uses
  store i64 %i.cr, ptr %i.b, align 8, !noalias !62
  br i1 %i.az, label %bb.z, label %.sink.split.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %._crit_edge.i.i
  %.sink59.i.ph.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.bh, %.lr.ph.i.i ]
  %i.cs = load ptr, ptr %i.d, align 8, !noalias !61
  %i.ct = load i64, ptr %i.e, align 8, !noalias !61
  %i.cu = call i64 @_RNvMNtCs3oUPovFnLWP_4core3stre19floor_char_boundaryCse52LceO7DeS_12typst_macros(ptr %i.cs, i64 %i.ct, i64 %.sink59.i.ph.i) #20, !noalias !61 ; 2 uses
  %i.cv = load i64, ptr %i.b, align 8, !noalias !61
  %i.cw = call i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3minCscVvfRCjUNk2_11proc_macro2(i64 %i.cu, i64 %i.cv) #20, !noalias !61
  store i64 %i.cw, ptr %i.b, align 8, !noalias !61
  br label %bb.ak

_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit.thread: ; preds = %bb.d, %bb.e, %bb.f, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.al

_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit: ; preds = %._crit_edge, %bb.ag, %bb.j, %bb.k, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.ak:                                            ; preds = %.loopexit.i, %bb.t, %bb.p
  %.sroa.11.1.ph = phi i64 [ %i.r, %bb.t ], [ %i.z, %bb.p ], [ %i.t, %.loopexit.i ]
  %.sroa.3.1.ph = phi i64 [ %i.ax, %bb.t ], [ %i.ao, %bb.p ], [ %i.cu, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.1.ph, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.1.ph, ptr %i.cy, align 8
  br label %bb.al

bb.al:                                            ; preds = %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit.thread, %bb.ak
  %storemerge = phi i64 [ 1, %bb.ak ], [ 0, %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit.thread ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsjMPGGl8VONr_3syn3pat3PatENtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsjMPGGl8VONr_3syn(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvMNtCsjMPGGl8VONr_3syn5errorNtB4_5Error11new_spanned11new_spanned(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECscIE41xXMWxr_4heck(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscVvfRCjUNk2_11proc_macro211TokenStreamECs5KiAP23wTyQ_5quote(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRNtNtCsjMPGGl8VONr_3syn4attr13MetaNameValueNtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRNtNtCsjMPGGl8VONr_3syn4attr4MetaNtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRNtNtCsjMPGGl8VONr_3syn4item4ItemNtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRNtNtCsjMPGGl8VONr_3syn6derive11DeriveInputNtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRQNtNtCsjMPGGl8VONr_3syn4item10ImplItemFnNtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRQNtNtCsjMPGGl8VONr_3syn4item8ImplItemNtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRRNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRRNtNtCsjMPGGl8VONr_3syn4data5FieldNtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRRNtNtCsjMPGGl8VONr_3syn4expr4ExprNtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRRNtNtCsjMPGGl8VONr_3syn4item10ItemStructNtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRRNtNtCsjMPGGl8VONr_3syn4item6ItemFnNtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRRNtNtCsjMPGGl8VONr_3syn4item8ReceiverNtNtCs5KiAP23wTyQ_5quote9to_tokens8ToTokens17into_token_streamCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from7reserve(ptr sret([40 x i8]) align 8, ptr byval([40 x i8]) align 8, i64) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from4drop(ptr byval([40 x i8]) align 8) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6buffer6BufferECse52LceO7DeS_12typst_macros(ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr align 8) unnamed_addr #11

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3minCscVvfRCjUNk2_11proc_macro2(i64, i64) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64, i64, ptr align 8) unnamed_addr #12

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvNtCs3oUPovFnLWP_4core3ptr19swap_nonoverlappingNtNtCse52LceO7DeS_12typst_macros4elem5FieldEBQ_(ptr, ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() unnamed_addr #9

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtCsjMPGGl8VONr_3syn10punctuated4IterNtNtB8_4data5FieldENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB16_8adapters3map12map_try_foldRBH_INtNtB18_6result6ResultNtNtCse52LceO7DeS_12typst_macros4elem5FieldNtNtB8_5error5ErrorEuINtNtNtB18_3ops12control_flow11ControlFlowIB4d_B3a_EENvB3c_11parse_fieldNCINvXB2c_INtB2c_12GenericShuntINtB2a_3MapB3_B53_EIB2O_zB3R_EEB10_8try_folduNCINvNvB10_12try_for_each4callB3a_B4S_NcNtB4S_5Break0E0B4S_E0E0B4c_EB3e_(ptr sret([920 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECse52LceO7DeS_12typst_macros(ptr, ptr, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1B_8adapters3map8map_foldBX_NtNtBa_6string6StringuNCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB3z_2kw8keywordsE0NCINvNvB1v_8for_each4callB38_NCINvMsk_B8_INtB8_3VecB38_E14extend_trustedINtB2B_3MapBI_B3u_EE0E0E0EB3B_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterTNtCscVvfRCjUNk2_11proc_macro25IdentNtNtCsjMPGGl8VONr_3syn5token5CommaEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2d_8adapters3map8map_foldBX_BY_uNCNvXs8_NtB1B_10punctuatedINtB3W_10PunctuatedBY_B1x_ENtNtB2b_7collect12IntoIterator9into_iter0NCINvNvB27_8for_each4callBY_NCINvMsk_B8_INtB8_3VecBY_E14extend_trustedINtB3d_3MapBI_B3O_EE0E0E0ECse52LceO7DeS_12typst_macros(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXso_NtCs3oUPovFnLWP_4core6resultINtB6_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCse52LceO7DeS_12typst_macros4elem5FieldENtNtCsjMPGGl8VONr_3syn5error5ErrorEINtNtNtNtB8_4iter6traits7collect12FromIteratorIBz_B1i_B20_EE9from_iterINtNtNtB2G_8adapters3map3MapINtNtB24_10punctuated4IterNtNtB24_4data5FieldENvB1k_11parse_fieldEEB1m_(ptr sret([32 x i8]) align 8, ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB19_8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB3M_2kw8keywordsE0EEB3O_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvYNvNtCse52LceO7DeS_12typst_macros4elem11parse_fieldINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTRNtNtCsjMPGGl8VONr_3syn4data5FieldEE8call_mutB6_(ptr sret([920 x i8]) align 8, ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtCsjMPGGl8VONr_3syn10punctuated4IterNtNtB1l_4data5FieldENvNtCse52LceO7DeS_12typst_macros4elem11parse_fieldEINtNtB9_6result6ResultzNtNtB1l_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB3M_12try_for_each4callNtB2g_5FieldINtNtNtB9_3ops12control_flow11ControlFlowB4Y_ENcNtB5a_5Break0E0B5a_E0B2i_(ptr sret([920 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB4_2kw8keywordsE0B6_(ptr sret([24 x i8]) align 8, ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs1xwejQucwHj_5alloc6string6StringNCINvMsk_NtB1j_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB20_9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB4c_2kw8keywordsE0EE0E0B4e_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @_RNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0Cse52LceO7DeS_12typst_macros(ptr align 8, ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterhENCNvNtB1r_3str13replace_ascii0EE0E0Cse52LceO7DeS_12typst_macros(ptr align 8, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNvXs8_NtCsjMPGGl8VONr_3syn10punctuatedINtB7_10PunctuatedNtCscVvfRCjUNk2_11proc_macro25IdentNtNtB9_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter0Cse52LceO7DeS_12typst_macros(ptr sret([24 x i8]) align 8, ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callNtCscVvfRCjUNk2_11proc_macro25IdentNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1X_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB1X_9into_iter8IntoIterTB1f_NtNtCsjMPGGl8VONr_3syn5token5CommaEENCNvXs8_NtB3V_10punctuatedINtB4z_10PunctuatedB1f_B3R_ENtNtBa_7collect12IntoIterator9into_iter0EE0E0Cse52LceO7DeS_12typst_macros(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvMNtCsjMPGGl8VONr_3syn4attrNtB2_9Attribute4path(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RINvMs_NtCsjMPGGl8VONr_3syn4pathNtB5_4Path8is_identeEB7_(ptr align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCscVvfRCjUNk2_11proc_macro2NtB2_11TokenStream3new(ptr sret([32 x i8]) align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs5KiAP23wTyQ_5quote9to_tokensRNtCscVvfRCjUNk2_11proc_macro25IdentNtB2_8ToTokens9to_tokensCse52LceO7DeS_12typst_macros(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs5KiAP23wTyQ_5quote9___private11push_colon2(ptr align 8) unnamed_addr #0
end_hunk_0
