Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-vocab?download=true
inline.NumInlined: 5573
inline.NumDeleted: 1989
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN18llm_tokenizer_rwkvC2ERK11llama_vocab:bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.z = sext i32 %.027 to i64                    ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.u, %i.z
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.293, i64 noundef %i.z, i64 noundef %i.u) #33
          to label %.noexc14 unwind label %bb.j

.noexc14:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke fastcc void @_ZL25llama_unescape_rwkv_tokenRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %2, align 8, !tbaa !236   ; 6 uses
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !235
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae
  invoke void @_ZN10naive_trie6insertEPKcmi(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.ab, i64 noundef %i.af, i32 noundef %.027)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i15 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !237
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ai) #35
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.aj = add nuw i32 %.027, 1                    ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !166   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 216
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !98
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !99 ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 40                ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = icmp ult i32 %i.aj, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !667

bb.j:                                             ; preds = %bb.e, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit17

bb.l:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIhSaIhEED2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !237
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ba) #35
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit17

_ZNSt6vectorIhSaIhEED2Ev.exit17:                  ; preds = %bb.m, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ax, %bb.l ], [ %i.ax, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit17, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit17 ], [ %i.av, %bb.j ]
  tail call void @_ZN10naive_trieD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN18llm_tokenizer_rwkvD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV18llm_tokenizer_rwkv, i64 16), ptr %0, align 8, !tbaa !130
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.c)
          to label %_ZN10naive_trieD2Ev.exit unwind label %bb.b, !inline_history !16

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #36, !inline_history !16
  unreachable

_ZN10naive_trieD2Ev.exit:                         ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN18llm_tokenizer_rwkvD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV18llm_tokenizer_rwkv, i64 16), ptr %0, align 8, !tbaa !130
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.c)
          to label %_ZN18llm_tokenizer_rwkvD2Ev.exit unwind label %bb.b, !inline_history !668

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #36, !inline_history !668
  unreachable

_ZN18llm_tokenizer_rwkvD2Ev.exit:                 ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN20llm_tokenizer_plamo25buildERK11llama_vocab(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, int>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %3 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, float>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, float>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::unordered_map.390", align 8 ; 22 uses
  %5 = alloca %"class.std::unordered_map.45", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::vector.304", align 8   ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::vector.69", align 8   ; 20 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::unordered_map.45", align 8 ; 18 uses
  %17 = alloca %"class.std::vector.304", align 8  ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::vector.64", align 8   ; 9 uses
  %23 = alloca %"class.std::vector.304", align 8  ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.g, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !39
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !155
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !133
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !132  ; 7 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp ult i64 %i.v, 1024
  br i1 %i.w, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, label %bb.c

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i:          ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.x = tail call noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #37 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.x, i8 0, i64 1024, i1 false), !tbaa !97
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1024 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.x, ptr %i.p, align 8, !tbaa !132
  store ptr %i.y, ptr %i.z, align 8, !tbaa !136
  store ptr %i.y, ptr %i.q, align 8, !tbaa !133
  %.not.i.i.i.i386 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i386, label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.v) #35
  br label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !136 ; 5 uses
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = sub i64 %i.ac, %i.u                     ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 1024
  br i1 %i.ae, label %bb.d, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i

bb.d:                                             ; preds = %bb.c
  %.not5.i.i.i.i.i = icmp eq ptr %i.s, %i.ab
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.af = and i64 %i.ad, 1020
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %i.af, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  %i.ag = add i64 %i.u, 1020
  %i.ah = sub i64 %i.ag, %i.ac
  %i.ai = and i64 %i.ah, -4
  %i.aj = add i64 %i.ai, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %i.aj, i1 false), !tbaa !97
  %.idx.i.i.i.i.i.i = sub nuw nsw i64 1024, %i.ad
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !136
  br label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i:            ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.s, i8 0, i64 1024, i1 false), !tbaa !97
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 1024 ; 2 uses
  %.not.i.i383 = icmp eq ptr %i.ab, %i.al
  br i1 %.not.i.i383, label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i
  store ptr %i.al, ptr %i.aa, align 8, !tbaa !136
  br label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit

_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit:   ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, %bb.b, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !316 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.ao, %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit ] ; 2 uses
  %i.ap = load ptr, ptr %.06.i.i.i, align 8, !tbaa !137 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #35
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !19

_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !163
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !164
  %i.at = shl i64 %i.as, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.at, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !291 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !293 ; 2 uses
  %.not.i.i160 = icmp eq ptr %i.ax, %i.av
  br i1 %.not.i.i160, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i161

.lr.ph.i.i.i.i161:                                ; preds = %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE5clearEv.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i162 = phi ptr [ %i.be, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i ], [ %i.av, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE5clearEv.exit ] ; 3 uses
  %i.ay = load ptr, ptr %.05.i.i.i.i162, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i161
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i162, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !133
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #35
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i161
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i162, i64 24 ; 2 uses
  %.not.i.i.i.i163 = icmp eq ptr %i.be, %i.ax
  br i1 %.not.i.i.i.i163, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i161, !llvm.loop !15

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !293
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit:     ; preds = %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE5clearEv.exit, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !318
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 1, ptr %i.bg, align 8, !tbaa !319
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bi, align 8, !tbaa !165
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store ptr %i.bk, ptr %5, align 8, !tbaa !210
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 1, ptr %i.bl, align 8, !tbaa !209
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8, !tbaa !165
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  %i.bp = load ptr, ptr %1, align 8, !tbaa !166   ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 216
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !98
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !99 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 40                ; 2 uses
  %i.by = and i64 %i.bx, 4294967295
  %.not865 = icmp eq i64 %i.by, 0
  br i1 %.not865, label %.preheader, label %.lr.ph830

.lr.ph830:                                        ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 17
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.f

.preheader:                                       ; preds = %.critedge.thread, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit
  %i.cn = load ptr, ptr %i.p, align 8, !tbaa !132 ; 4 uses
  br label %bb.br

bb.f:                                             ; preds = %.lr.ph830, %.critedge.thread
  %i.co = phi i64 [ %i.bx, %.lr.ph830 ], [ %i.mv, %.critedge.thread ] ; 2 uses
  %i.cp = phi ptr [ %i.bt, %.lr.ph830 ], [ %i.mr, %.critedge.thread ]
  %i.cq = phi ptr [ %i.bp, %.lr.ph830 ], [ %i.mn, %.critedge.thread ]
  %.090829 = phi i64 [ 0, %.lr.ph830 ], [ %i.mm, %.critedge.thread ] ; 3 uses
  %i.cr = trunc nuw i64 %.090829 to i32           ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !94
  %.not.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i, label %.invoke, label %bb.g

.invoke:                                          ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEixERSB_.exit, %bb.f
  %i.cu = phi i32 [ 3953, %bb.f ], [ 3129, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEixERSB_.exit ]
  %i.cv = phi ptr [ @.str.262, %bb.f ], [ @.str.226, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEixERSB_.exit ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.118, i32 noundef %i.cu, ptr noundef nonnull @.str.119, ptr noundef nonnull %i.cv) #33
          to label %.cont unwind label %.loopexit.split-lp639

.cont:                                            ; preds = %.invoke
  unreachable

bb.g:                                             ; preds = %bb.f
  %sext = shl nuw i64 %.090829, 32
  %i.cw = ashr exact i64 %sext, 32                ; 4 uses
  %.not.i.i.i164 = icmp ugt i64 %i.co, %i.cw
  br i1 %.not.i.i.i164, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.293, i64 noundef %i.cw, i64 noundef %i.co) #33
          to label %.noexc165 unwind label %.loopexit.split-lp639

.noexc165:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.cp, i64 %i.cw ; 11 uses
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !155 ; 8 uses
  %i.cz = load ptr, ptr %i.bz, align 8, !tbaa !153
  %.not.i166 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.i166, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 3 uses
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !34
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !38 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 %i.dd, ptr %i.e, align 8, !tbaa !36
  %i.de = icmp ugt i64 %i.dd, 15
  br i1 %i.de, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc167 unwind label %.loopexit638 ; 2 uses

.noexc167:                                        ; preds = %.noexc.i.i
  store ptr %i.df, ptr %i.cy, align 8, !tbaa !38
  %i.dg = load i64, ptr %i.e, align 8, !tbaa !36
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !39
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc167, %bb.j
  %i.dh = phi ptr [ %i.df, %.noexc167 ], [ %i.da, %bb.j ] ; 2 uses
  switch i64 %i.dd, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

end_hunk_0
