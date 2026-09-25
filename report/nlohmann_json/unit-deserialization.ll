Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-deserialization?download=true
inline.NumInlined: 24803
inline.NumDeleted: 2361
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsS5_IDsSaIDsEEEEEEDsEEE3getEv:bb.a
bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !608  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !609
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8nlohmann16json_abi_v3_12_06detail25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEEEDsE13get_characterEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail24wide_string_input_helperINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEEELm2EE11fill_bufferERSC_RSt5arrayIiLm4EERmSI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %._ZN8nlohmann16json_abi_v3_12_06detail25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEEEDsE11fill_bufferILm2EEEvv.exit_crit_edge.i unwind label %bb.e

._ZN8nlohmann16json_abi_v3_12_06detail25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEEEDsE11fill_bufferILm2EEEvv.exit_crit_edge.i: ; preds = %bb.d
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !608
  br label %_ZN8nlohmann16json_abi_v3_12_06detail25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEEEDsE13get_characterEv.exit

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #30
  unreachable

_ZN8nlohmann16json_abi_v3_12_06detail25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEEEDsE13get_characterEv.exit: ; preds = %bb.c, %._ZN8nlohmann16json_abi_v3_12_06detail25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEEEDsE11fill_bufferILm2EEEvv.exit_crit_edge.i
  %i.p = phi i64 [ %.pre.i, %._ZN8nlohmann16json_abi_v3_12_06detail25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEEEDsE11fill_bufferILm2EEEvv.exit_crit_edge.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = add i64 %i.p, 1
  store i64 %i.r, ptr %i.h, align 8, !tbaa !608
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p
  %i.t = load i32, ptr %i.s, align 4, !tbaa !58   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.t, ptr %i.u, align 4, !tbaa !602
  br label %bb.f

bb.f:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEEEDsE13get_characterEv.exit, %bb.b
  %i.v = phi i32 [ %i.t, %_ZN8nlohmann16json_abi_v3_12_06detail25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEEEDsE13get_characterEv.exit ], [ %.pre, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.not = icmp eq i32 %i.v, -1
  br i1 %.not, label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.thread, label %bb.g, !prof !117

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.y = trunc i32 %i.v to i8                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !296 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72
  %.not.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !46
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !296
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !296
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.i:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !71  ; 4 uses
  %i.ag = ptrtoint ptr %i.aa to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 8 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775807
  br i1 %i.aj, label %bb.j, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.221) #35
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.ak = add i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.ai
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 9223372036854775807)
  %i.an = select i1 %i.al, i64 9223372036854775807, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #32 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ai ; 2 uses
  store i8 %i.y, ptr %i.ap, align 1, !tbaa !46
  %i.aq = icmp sgt i64 %i.ai, 0
  br i1 %i.aq, label %bb.k, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %i.af, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #33
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ao, ptr %i.x, align 8, !tbaa !71
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !296
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store ptr %i.as, ptr %i.ab, align 8, !tbaa !72
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.h
  %.pr = load i32, ptr %i.w, align 4, !tbaa !602  ; 2 uses
  %i.at = icmp eq i32 %.pr, 10
  br i1 %i.at, label %bb.m, label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.thread

bb.m:                                             ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !607
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !607
  store i64 0, ptr %i.b, align 8, !tbaa !606
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.thread

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.thread:    ; preds = %bb.f, %bb.m, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %i.ax = phi i32 [ %.pr, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ 10, %bb.m ], [ -1, %bb.f ]
  ret i32 %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail24wide_string_input_helperINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEEELm2EE11fill_bufferERSC_RSt5arrayIiLm4EERmSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  store i64 0, ptr %2, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !580    ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !580  ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEE13get_characterEv.exit, !prof !117

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %1, align 4, !tbaa !58
  br label %bb.j

_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEE13get_characterEv.exit: ; preds = %bb.a
  %i.e = load i16, ptr %i.b, align 2, !tbaa !2335 ; 2 uses
  %i.f = icmp eq i16 %i.e, -1
  %spec.select.i.i = select i1 %i.f, i16 -3, i16 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !2336
  %i.h = zext i16 %spec.select.i.i to i32         ; 8 uses
  %i.i = icmp ult i16 %spec.select.i.i, 128
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEE13get_characterEv.exit
  store i32 %i.h, ptr %1, align 4, !tbaa !58
  br label %bb.j

bb.d:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEE13get_characterEv.exit
  %i.j = icmp ult i16 %spec.select.i.i, 2048
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = lshr i32 %i.h, 6
  %i.l = or disjoint i32 %i.k, 192
  store i32 %i.l, ptr %1, align 4, !tbaa !58
  %i.m = and i32 %i.h, 63
  %i.n = or disjoint i32 %i.m, 128
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.n, ptr %i.o, align 4, !tbaa !58
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.p = add i16 %spec.select.i.i, 8192
  %or.cond = icmp ult i16 %i.p, -2048
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = lshr i32 %i.h, 12
  %i.r = or disjoint i32 %i.q, 224
  store i32 %i.r, ptr %1, align 4, !tbaa !58
  %i.s = lshr i32 %i.h, 6
  %i.t = and i32 %i.s, 63
  %i.u = or disjoint i32 %i.t, 128
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !58
  %i.w = and i32 %i.h, 63
  %i.x = or disjoint i32 %i.w, 128
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.x, ptr %i.y, align 4, !tbaa !58
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.z = icmp eq ptr %i.g, %i.c
  br i1 %i.z, label %bb.i, label %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEE13get_characterEv.exit43, !prof !110

_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEE13get_characterEv.exit43: ; preds = %bb.h
  %i.aa = load i16, ptr %i.g, align 2, !tbaa !2335 ; 2 uses
  %i.ab = icmp eq i16 %i.aa, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.ac, ptr %0, align 8, !tbaa !2336
  %i.ad = shl nuw nsw i32 %i.h, 10
  %i.ae = and i32 %i.ad, 1047552
  %i.af = and i16 %i.aa, 1023
  %i.ag = select i1 %i.ab, i16 1021, i16 %i.af
  %i.ah = zext nneg i16 %i.ag to i32              ; 2 uses
  %i.ai = or disjoint i32 %i.ae, %i.ah            ; 2 uses
  %i.aj = add nuw nsw i32 %i.ai, 65536            ; 2 uses
  %i.ak = lshr i32 %i.aj, 18
  %i.al = lshr i32 %i.aj, 12
  %i.am = lshr i32 %i.ai, 6
  %i.an = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.al, i64 1
  %i.ap = insertelement <4 x i32> %i.ao, i32 %i.am, i64 2
  %i.aq = insertelement <4 x i32> %i.ap, i32 %i.ah, i64 3
  %i.ar = and <4 x i32> %i.aq, <i32 -1, i32 63, i32 63, i32 63>
  %i.as = or disjoint <4 x i32> %i.ar, <i32 240, i32 128, i32 128, i32 128>
  store <4 x i32> %i.as, ptr %1, align 4, !tbaa !58
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.h, ptr %1, align 4, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.g, %bb.i, %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEE13get_characterEv.exit43, %bb.e, %bb.b
  %.sink = phi i64 [ 1, %bb.c ], [ 3, %bb.g ], [ 1, %bb.i ], [ 4, %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsSt6vectorIDsSaIDsEEEEE13get_characterEv.exit43 ], [ 2, %bb.e ], [ 1, %bb.b ]
  store i64 %.sink, ptr %3, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsS5_IDsSaIDsEEEEEEDsEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.b, align 8, !tbaa !64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !65
  store i8 0, ptr %i.c, align 1, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !296  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.e, ptr %i.f, align 8, !tbaa !296
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit

_ZNSt6vectorIcSaIcEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.h = phi ptr [ %i.g, %bb.a ], [ %i.e, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 -1, ptr %i.i, align 8, !tbaa !589
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !58
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72
  %.not.i.i1 = icmp eq ptr %i.h, %i.n
  br i1 %.not.i.i1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit
  store i8 %i.l, ptr %i.h, align 1, !tbaa !46
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !296
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %i.f, align 8, !tbaa !296
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = ptrtoint ptr %i.e to i64
  %i.s = sub i64 %i.q, %i.r                       ; 8 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775807
  br i1 %i.t, label %bb.d, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.221) #35
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.u = add i64 %.sroa.speculated.i.i.i.i, %i.s  ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.s
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807)
  %i.x = select i1 %i.v, i64 9223372036854775807, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #32
          to label %.noexc2 unwind label %bb.g    ; 4 uses

.noexc2:                                          ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s ; 2 uses
  store i8 %i.l, ptr %i.z, align 1, !tbaa !46
  %i.aa = icmp sgt i64 %i.s, 0
  br i1 %i.aa, label %bb.e, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %.noexc2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.e, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %.noexc2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.s) #33
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.y, ptr %i.d, align 8, !tbaa !71
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !296
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !72
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.b
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i, %bb.d
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsS5_IDsSaIDsEEEEEEDsEEE3addEi(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64   ; 4 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a
  %i.h = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.h)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !tbaa !46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.j = phi i64 [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.k = icmp ugt i64 %i.d, %i.j
  br i1 %i.k, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.c, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.b
  %i.l = phi ptr [ %.pre.i, %bb.b ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.m = trunc i32 %1 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  store i8 %i.m, ptr %i.n, align 1, !tbaa !46
  store i64 %i.d, ptr %i.b, align 8, !tbaa !64
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.d
  store i8 0, ptr %i.p, align 1, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsS5_IDsSaIDsEEEEEEDsEEE13get_codepointEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.b = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsS5_IDsSaIDsEEEEEEDsEEE3getEv(ptr noundef nonnull align 8 dereferenceable(192) %0) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !602  ; 5 uses
  %i.d = add i32 %i.c, -48                        ; 2 uses
  %or.cond = icmp ult i32 %i.d, 10
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.c, -65
  %or.cond28 = icmp ult i32 %i.e, 6
  br i1 %or.cond28, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.c, -55
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = add i32 %i.c, -97
  %or.cond29 = icmp ult i32 %i.g, 6
  br i1 %or.cond29, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.h = add nsw i32 %i.c, -87
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.c
  %.pn27 = phi i32 [ %i.h, %bb.e ], [ %i.f, %bb.c ], [ %i.d, %bb.a ]
  %.pn = shl nuw nsw i32 %.pn27, 12
  %i.i = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_25wide_string_input_adapterINS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKDsS5_IDsSaIDsEEEEEEDsEEE3getEv(ptr noundef nonnull align 8 dereferenceable(192) %0) ; 0 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !602  ; 5 uses
  %i.k = add i32 %i.j, -48                        ; 2 uses
  %or.cond.1 = icmp ult i32 %i.k, 10
  br i1 %or.cond.1, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = add i32 %i.j, -65
  %or.cond28.1 = icmp ult i32 %i.l, 6
  br i1 %or.cond28.1, label %bb.j, label %bb.h
end_hunk_0
