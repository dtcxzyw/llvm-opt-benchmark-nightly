Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/bpe_model_trainer?download=true
inline.NumInlined: 3027
inline.NumDeleted: 1351
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImPN13sentencepiece3bpe7Trainer6SymbolEEEJEE5clearEv:bb.a
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %notmask.i.i.i, -281474976710657
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i64 %i.a, 254
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %i.a, 130817
  store i64 %i.j, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i64 %notmask.i.i.i, -129
  tail call void @_ZN4absl12lts_2026052618container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImPN13sentencepiece3bpe7Trainer6SymbolEEEJEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

declare void @_ZN13sentencepiece16TrainerInterface13LoadSentencesEv(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8, ptr noundef nonnull align 8 dereferenceable(672)) local_unnamed_addr #1

declare void @_ZN13sentencepiece16TrainerInterface26SplitSentencesByWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(672)) local_unnamed_addr #1

declare noundef ptr @_ZN13sentencepiece20SentencePieceTrainer26GetPretokenizerForTrainingEv() local_unnamed_addr #1

; Function Attrs: cold
declare void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #4

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

declare void @_ZNK13sentencepiece12pretokenizer32PretokenizerForTrainingInterface11PreTokenizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::vector.30") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !137    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !133 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !22
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !7

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !137
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #33
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN4absl12lts_2026052613StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr, ptr, i64) local_unnamed_addr #1

declare void @_ZN13sentencepiece11string_util17UTF8ToUnicodeTextESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14priority_queueIN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS3_SaIS3_EENS2_20QueueEntryComparatorEE4pushEOS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !131
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !150
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !151
  %.pre = load ptr, ptr %0, align 8, !tbaa !149
  br label %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !130    ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #32
  unreachable

_ZNKSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 5 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !150
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #33
  br label %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !130
  store ptr %i.u, ptr %i.a, align 8, !tbaa !151
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.c, align 8, !tbaa !131
  br label %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.w = phi ptr [ %i.f, %bb.b ], [ %i.u, %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 3 uses
  %i.x = phi ptr [ %.pre, %bb.b ], [ %i.r, %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.sroa.02.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !28 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !53 ; 3 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 4                 ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 2 uses
  %i.ae = icmp sgt i64 %i.ac, 1
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEENS4_20QueueEntryComparatorEEvT_SC_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE9push_backEOS3_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 24
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i.i, %.lr.ph.i.i
  %.025.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.0926.i78.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i.i ] ; 6 uses
  %.0926.in.i.i = add nsw i64 %.025.i.i, -1
  %.0926.i78.i = lshr i64 %.0926.in.i.i, 1        ; 3 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.0926.i78.i ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !146 ; 2 uses
  %.not.i.i.i.i3 = icmp eq i64 %i.ai, %.sroa.02.0.copyload.i
  br i1 %.not.i.i.i.i3, label %bb.h, label %.split.i.i

.split.i.i:                                       ; preds = %bb.g
  %i.aj = icmp ult i64 %i.ai, %.sroa.02.0.copyload.i
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEENS4_20QueueEntryComparatorEEvT_SC_T0_.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !147 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !56 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2                 ; 2 uses
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !57 ; 3 uses
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !56 ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 2                 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.at, %i.az
  br i1 %.not13.i.i.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i.i

bb.i:                                             ; preds = %bb.h
  %.not22.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.au
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.i, %bb.k
  %.01924.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.k ], [ %i.ap, %bb.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.be, %bb.k ], [ %i.av, %bb.i ] ; 2 uses
  %i.ba = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !21 ; 2 uses
  %i.bb = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !21 ; 2 uses
  %i.bc = icmp ult i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = icmp ult i32 %i.bb, %i.ba
  br i1 %i.bd, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEENS4_20QueueEntryComparatorEEvT_SC_T0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, %i.au
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.k, %bb.i
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.i ], [ %i.bf, %bb.k ]
  %.not.i.i4 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.ao
  br i1 %.not.i.i4, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEENS4_20QueueEntryComparatorEEvT_SC_T0_.exit, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i.i: ; preds = %bb.h
  %i.bg = icmp ugt i64 %i.at, %i.az
  br i1 %i.bg, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEENS4_20QueueEntryComparatorEEvT_SC_T0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i.i, %.critedge.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.x, i64 %.025.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !150
  %.not.i = icmp eq i64 %.0926.i78.i, 0
  br i1 %.not.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEENS4_20QueueEntryComparatorEEvT_SC_T0_.exit, label %bb.g, !llvm.loop !9

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEENS4_20QueueEntryComparatorEEvT_SC_T0_.exit: ; preds = %.split.i.i, %.critedge.i.i.i.i.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i.i, %bb.j, %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE9push_backEOS3_.exit
  %.022.i.i = phi i64 [ %.025.i.i, %bb.j ], [ %i.ad, %_ZNSt6vectorIN13sentencepiece3bpe7Trainer10QueueEntryESaIS3_EE9push_backEOS3_.exit ], [ %.025.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i.i ], [ 0, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i.i ], [ %.025.i.i, %.split.i.i ], [ %.025.i.i, %.critedge.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.x, i64 %.022.i.i ; 2 uses
  store i64 %.sroa.02.0.copyload.i, ptr %i.bi, align 8, !tbaa !28
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNO4absl12lts_2026052613StatusBuilderlsIA20_cEEOS1_RKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNR4absl12lts_2026052613StatusBuilderlsIA20_cEERS1_RKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.d = load i8, ptr %i.c, align 8, !tbaa !100, !range !72, !noundef !73
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.b)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104, !nonnull !73, !align !105
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %1) #28
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 noundef %i.i) ; 0 uses
  br label %_ZNR4absl12lts_2026052613StatusBuilderlsIA20_cEERS1_RKT_.exit

_ZNR4absl12lts_2026052613StatusBuilderlsIA20_cEERS1_RKT_.exit: ; preds = %bb.a, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNO4absl12lts_2026052613StatusBuilderlsIA22_cEEOS1_RKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(22) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNR4absl12lts_2026052613StatusBuilderlsIA22_cEERS1_RKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.d = load i8, ptr %i.c, align 8, !tbaa !100, !range !72, !noundef !73
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.b)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104, !nonnull !73, !align !105
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %1) #28
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(22) %1, i64 noundef %i.i) ; 0 uses
  br label %_ZNR4absl12lts_2026052613StatusBuilderlsIA22_cEERS1_RKT_.exit

_ZNR4absl12lts_2026052613StatusBuilderlsIA22_cEERS1_RKT_.exit: ; preds = %bb.a, %bb.d
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN13sentencepiece6SortedIDilEESt6vectorISt4pairIT_T0_ESaIS5_EERKN4absl12lts_2026052613flat_hash_mapIS3_S4_NS9_18container_internal17FlatHashMapPolicyIS3_S4_E11DefaultHashENSD_9DefaultEqENSD_12DefaultAllocEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.108") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.108", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i.i = icmp samesign ult i64 %i.a, 131072
  br i1 %.not.i.i.i, label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE5beginEv.exit.thread, label %bb.b, !prof !25

_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE5beginEv.exit.thread: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE14const_iteratorppEv.exit.i.i.i.i.i.i.thread

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 254
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.d, label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE5beginEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !22, !nonnull !73, !noundef !73 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %i.g = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 1, !tbaa !171
  %i.h = icmp slt i8 %i.g, -1
  br i1 %i.h, label %.lr.ph.i.i.i, label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE5beginEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ]
  %i.j = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1, !tbaa !171
  %i.n = icmp slt i8 %i.m, -1
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE5beginEv.exit, !llvm.loop !318

_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE5beginEv.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c
  %.sroa.6.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ], [ %i.e, %bb.b ], [ %i.l, %.lr.ph.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.c ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.b ], [ %i.k, %.lr.ph.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE5beginEv.exit
  %.09.i.i.i = phi i64 [ %i.x, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i ], [ 0, %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE5beginEv.exit ] ; 2 uses
  %.sroa.02.07.i.i.i = phi ptr [ %.sroa.02.1.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i, %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE5beginEv.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i, i64 1 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !171   ; 2 uses
  %i.q = icmp slt i8 %i.p, -1
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i.i.i.i
  %i.r = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i7 ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !171   ; 2 uses
  %i.u = icmp slt i8 %i.t, -1
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i, !llvm.loop !318

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i7
  %.sroa.02.1.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i7 ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.v = phi i8 [ %i.p, %.lr.ph.i.i.i7 ], [ %i.t, %.lr.ph.i.i.i.i.i.i ]
  %i.w = icmp eq i8 %i.v, -1
  %i.x = add nuw nsw i64 %.09.i.i.i, 1            ; 3 uses
  br i1 %i.w, label %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIDilEEJEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i7, !prof !25, !llvm.loop !319

_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIDilEEJEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i
  %i.y = icmp samesign ugt i64 %.09.i.i.i, 576460752303423486
  br i1 %i.y, label %.noexc.i, label %_ZNSt12_Vector_baseISt4pairIDilESaIS1_EE11_M_allocateEm.exit.i.i

.noexc.i:                                         ; preds = %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIDilEEJEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #32
  unreachable

_ZNSt12_Vector_baseISt4pairIDilESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIDilEEJEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i
  %i.z = shl nuw nsw i64 %i.x, 4
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #31 ; 3 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !166
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !167
  br label %.lr.ph.i.i.i.i12.i.i

.lr.ph.i.i.i.i12.i.i:                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIDilESaIS1_EE11_M_allocateEm.exit.i.i
  %.016.i.i.i.i.i.i = phi ptr [ %i.at, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i ], [ %i.aa, %_ZNSt12_Vector_baseISt4pairIDilESaIS1_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.sroa.6.015.i.i.i.i.i.i = phi ptr [ %.sroa.6.1.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.6.0.i.i, %_ZNSt12_Vector_baseISt4pairIDilESaIS1_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.sroa.08.014.i.i.i.i.i.i = phi ptr [ %.sroa.08.1.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i, %_ZNSt12_Vector_baseISt4pairIDilESaIS1_EE11_M_allocateEm.exit.i.i ]
  %i.ad = load i32, ptr %.sroa.6.015.i.i.i.i.i.i, align 8, !tbaa !322
  store i32 %i.ad, ptr %.016.i.i.i.i.i.i, align 8, !tbaa !169
  %i.ae = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.6.015.i.i.i.i.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !323
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !172
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i.i.i.i.i.i, i64 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.6.015.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !171 ; 2 uses
  %i.ak = icmp slt i8 %i.aj, -1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i12.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i12.i.i ]
  %i.am = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ah, %.lr.ph.i.i.i.i12.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !171 ; 2 uses
  %i.aq = icmp slt i8 %i.ap, -1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i, !llvm.loop !318
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052616strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEvEESA_T_SH_St17basic_string_viewIcS8_ENS1_11NoFormatterE:bb.a
  %i.o = load i64, ptr %i.c, align 8, !tbaa !132
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.n, i64 %i.o, i1 false)
  br i1 %.not2930, label %_ZZN4absl12lts_2026052616strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEvEESA_T_SH_St17basic_string_viewIcS8_ENS1_11NoFormatterEENKUlPcmE_clESL_m.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc14
  %i.p = load i64, ptr %i.c, align 8, !tbaa !132
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.r = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.y, %bb.f ] ; 3 uses
  %.014.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %.sroa.0.013.i.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.i ], [ %i.r, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.014.i.i.i.i, ptr align 1 %4, i64 %3, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %3 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !133
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i.i, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !132
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.t, i64 %i.v, i1 false)
  %i.w = load i64, ptr %i.u, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i.i, label %_ZZN4absl12lts_2026052616strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEvEESA_T_SH_St17basic_string_viewIcS8_ENS1_11NoFormatterEENKUlPcmE_clESL_m.exit.i.i.i, label %bb.f, !llvm.loop !404

_ZZN4absl12lts_2026052616strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEvEESA_T_SH_St17basic_string_viewIcS8_ENS1_11NoFormatterEENKUlPcmE_clESL_m.exit.i.i.i: ; preds = %bb.f, %.noexc14
  %i.z = load i64, ptr %i.b, align 8, !tbaa !132  ; 2 uses
  %i.aa = icmp ugt i64 %.013.lcssa, %i.z
  br i1 %i.aa, label %bb.g, label %_ZN4absl12lts_2026052624StringResizeAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_16strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKS7_St6vectorIS7_SaIS7_EEEEvEES7_T_SI_St17basic_string_viewIcS5_ENS8_11NoFormatterEEUlPcmE_EEvRSI_NSI_9size_typeET0_.exit

bb.g:                                             ; preds = %_ZZN4absl12lts_2026052616strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEvEESA_T_SH_St17basic_string_viewIcS8_ENS1_11NoFormatterEENKUlPcmE_clESL_m.exit.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i64 noundef %.013.lcssa, i64 noundef %i.z) #32
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.g
  unreachable

_ZN4absl12lts_2026052624StringResizeAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_16strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKS7_St6vectorIS7_SaIS7_EEEEvEES7_T_SI_St17basic_string_viewIcS5_ENS8_11NoFormatterEEUlPcmE_EEvRSI_NSI_9size_typeET0_.exit: ; preds = %_ZZN4absl12lts_2026052616strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEvEESA_T_SH_St17basic_string_viewIcS8_ENS1_11NoFormatterEENKUlPcmE_clESL_m.exit.i.i.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !133
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013.lcssa
  store i64 %.013.lcssa, ptr %i.b, align 8, !tbaa !132
  store i8 0, ptr %i.ac, align 1, !tbaa !22
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %0, align 8, !tbaa !133   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !22
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %_ZN4absl12lts_2026052624StringResizeAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_16strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKS7_St6vectorIS7_SaIS7_EEEEvEES7_T_SI_St17basic_string_viewIcS5_ENS8_11NoFormatterEEUlPcmE_EEvRSI_NSI_9size_typeET0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4absl12lts_2026052619ThrowStdLengthErrorEPKc(ptr noundef) local_unnamed_addr #22

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IPN13sentencepiece3bpe7Trainer6SymbolESaIS4_EESaIS6_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !80     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIPN13sentencepiece3bpe7Trainer6SymbolESaIS5_EEmS7_ET_S9_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIPN13sentencepiece3bpe7Trainer6SymbolESaIS5_EEmS7_ET_S9_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !127
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IPN13sentencepiece3bpe7Trainer6SymbolESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #32
  unreachable

_ZNKSt6vectorIS_IPN13sentencepiece3bpe7Trainer6SymbolESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #31 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IPN13sentencepiece3bpe7Trainer6SymbolESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IPN13sentencepiece3bpe7Trainer6SymbolESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IPN13sentencepiece3bpe7Trainer6SymbolESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IPN13sentencepiece3bpe7Trainer6SymbolESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !140, !alias.scope !410, !noalias !409
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !140, !alias.scope !409, !noalias !410
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !93, !alias.scope !410, !noalias !409
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !93, !alias.scope !409, !noalias !410
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !410, !noalias !409
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IPN13sentencepiece3bpe7Trainer6SymbolESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !408

_ZNSt6vectorIS_IPN13sentencepiece3bpe7Trainer6SymbolESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IPN13sentencepiece3bpe7Trainer6SymbolESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorIPN13sentencepiece3bpe7Trainer6SymbolESaIS5_EESaIS7_EE13_M_deallocateEPS7_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IPN13sentencepiece3bpe7Trainer6SymbolESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !174
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #33
  br label %_ZNSt12_Vector_baseISt6vectorIPN13sentencepiece3bpe7Trainer6SymbolESaIS5_EESaIS7_EE13_M_deallocateEPS7_m.exit37

_ZNSt12_Vector_baseISt6vectorIPN13sentencepiece3bpe7Trainer6SymbolESaIS5_EESaIS7_EE13_M_deallocateEPS7_m.exit37: ; preds = %_ZNSt6vectorIS_IPN13sentencepiece3bpe7Trainer6SymbolESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !80
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !127
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !174
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIPN13sentencepiece3bpe7Trainer6SymbolESaIS5_EEmS7_ET_S9_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIPN13sentencepiece3bpe7Trainer6SymbolESaIS5_EESaIS7_EE13_M_deallocateEPS7_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS4_20QueueEntryComparatorEEEEvT_T0_SG_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, i64 %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread39
  %.047 = phi i64 [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread39 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.047, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 5 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !tbaa !146  ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !146  ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, %i.j
  br i1 %.not.i.i, label %bb.b, label %.split

.split:                                           ; preds = %.lr.ph
  %i.k = icmp ult i64 %i.i, %i.j
  %cond.fr42 = freeze i1 %i.k
  br i1 %cond.fr42, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread39

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !147  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !56   ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !147  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 3 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !56  ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2                 ; 2 uses
  %.not13.i.i = icmp eq i64 %i.u, %i.ae
  br i1 %.not13.i.i, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

bb.c:                                             ; preds = %bb.b
  %.not22.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.c, %bb.e
  %.01924.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.q, %bb.c ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.aa, %bb.c ] ; 2 uses
  %i.af = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i, align 4, !tbaa !21 ; 2 uses
  %i.ag = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i, align 4, !tbaa !21 ; 2 uses
  %i.ah = icmp ult i32 %i.af, %i.ag
  br i1 %i.ah, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ai = icmp ult i32 %i.ag, %i.af
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread39, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.z
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.e, %bb.c
  %.019.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.ak, %bb.e ]
  %i.al = icmp ne ptr %.019.lcssa.i.i.i.i.i.i.i.i.i, %i.p
  %cond.fr43 = freeze i1 %i.al
  br i1 %cond.fr43, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread39

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit: ; preds = %bb.b
  %i.am = icmp ugt i64 %i.u, %i.ae
  %cond.fr = freeze i1 %i.am
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread39

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread39

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread39: ; preds = %bb.d, %.critedge.i.i.i.i.i.i.i.i.i, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread
  %i.an = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit ], [ %i.e, %.critedge.i.i.i.i.i.i.i.i.i ], [ %i.e, %.split ], [ %i.e, %bb.d ] ; 4 uses
  %i.ao = getelementptr inbounds [16 x i8], ptr %0, i64 %i.an
  %i.ap = getelementptr inbounds [16 x i8], ptr %0, i64 %.047
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !150
  %i.aq = icmp slt i64 %i.an, %i.b
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !411

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread39, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread39 ] ; 5 uses
  %i.ar = and i64 %2, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.at = add nsw i64 %2, -2
  %i.au = ashr exact i64 %i.at, 1
  %i.av = icmp eq i64 %.0.lcssa, %i.au
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = shl nsw i64 %.0.lcssa, 1
  %i.ax = or disjoint i64 %i.aw, 1                ; 2 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ax
  %i.az = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !150
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge
  %.1 = phi i64 [ %i.ax, %bb.g ], [ %.0.lcssa, %bb.f ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ba = icmp sgt i64 %.1, %1
  br i1 %i.ba, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS4_20QueueEntryComparatorEEEEvT_T0_SG_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i, %.lr.ph.i
  %.025.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0926.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i ] ; 6 uses
  %.0926.in.i = add nsw i64 %.025.i, -1
  %.0926.i = sdiv i64 %.0926.in.i, 2              ; 4 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %0, i64 %.0926.i ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !146 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.be, %3
  br i1 %.not.i.i.i, label %bb.j, label %.split.i

.split.i:                                         ; preds = %bb.i
  %i.bf = icmp ult i64 %i.be, %3
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS4_20QueueEntryComparatorEEEEvT_T0_SG_T1_RT2_.exit

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !147 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !57 ; 2 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !56 ; 3 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 2 uses
  %i.bq = load ptr, ptr %i.bc, align 8, !tbaa !57 ; 3 uses
  %i.br = load ptr, ptr %i.bb, align 8, !tbaa !56 ; 3 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 2                 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.bp, %i.bv
  br i1 %.not13.i.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i

bb.k:                                             ; preds = %bb.j
  %.not22.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bq
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.k, %bb.m
  %.01924.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cb, %bb.m ], [ %i.bl, %bb.k ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.m ], [ %i.br, %bb.k ] ; 2 uses
  %i.bw = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !21 ; 2 uses
  %i.bx = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !21 ; 2 uses
  %i.by = icmp ult i32 %i.bw, %i.bx
  br i1 %i.by, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bz = icmp ult i32 %i.bx, %i.bw
  br i1 %i.bz, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS4_20QueueEntryComparatorEEEEvT_T0_SG_T1_RT2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.bq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.m, %bb.k
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %bb.k ], [ %i.cb, %bb.m ]
  %.not.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i, %i.bk
  br i1 %.not.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS4_20QueueEntryComparatorEEEEvT_T0_SG_T1_RT2_.exit, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i: ; preds = %bb.j
  %i.cc = icmp ugt i64 %i.bp, %i.bv
  br i1 %i.cc, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS4_20QueueEntryComparatorEEEEvT_T0_SG_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i, %.critedge.i.i.i.i.i.i.i.i.i.i, %.split.i
  %i.cd = getelementptr inbounds [16 x i8], ptr %0, i64 %.025.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !150
  %i.ce = icmp sgt i64 %.0926.i, %1
  br i1 %i.ce, label %bb.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS4_20QueueEntryComparatorEEEEvT_T0_SG_T1_RT2_.exit, !llvm.loop !9

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN13sentencepiece3bpe7Trainer10QueueEntryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS4_20QueueEntryComparatorEEEEvT_T0_SG_T1_RT2_.exit: ; preds = %.split.i, %.critedge.i.i.i.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i, %bb.l, %bb.h
  %.022.i = phi i64 [ %.025.i, %bb.l ], [ %.1, %bb.h ], [ %.025.i, %.split.i ], [ %.0926.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread.i ], [ %.025.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN13sentencepiece3bpe7Trainer20QueueEntryComparatorEEclINS_17__normal_iteratorIPNS4_10QueueEntryESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i ], [ %.025.i, %.critedge.i.i.i.i.i.i.i.i.i.i ]
  %i.cf = getelementptr inbounds [16 x i8], ptr %0, i64 %.022.i ; 2 uses
  store i64 %3, ptr %i.cf, align 8, !tbaa !28
  %.sroa.3.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %4, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE19EmplaceDecomposableclIS9_JS9_EEESt4pairINSB_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.206", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !417, !nonnull !73, !align !105 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.b = load i64, ptr %i.a, align 8, !noalias !418 ; 2 uses
  %i.c = and i64 %i.b, 254
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %.not.i.i.i = icmp ult i64 %i.b, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !22, !noalias !420 ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !133, !noalias !420
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !132, !noalias !420 ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !133, !noalias !420
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !132, !noalias !420
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %i.i, i64 %i.h), !noalias !420
  %i.n = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.n, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread5, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread5: ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  store ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr %0, align 8, !alias.scope !420
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !420
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.o, align 8, !tbaa !155, !alias.scope !420
  br label %bb.g

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread: ; preds = %bb.b, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !420
  store ptr %i.a, ptr %4, align 8, !tbaa !421, !noalias !420
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !135, !noalias !420
  %i.q = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !420 ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = extractvalue { ptr, ptr } %i.q, 1
  store ptr %i.r, ptr %0, align 8, !alias.scope !420
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !420
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.t, align 8, !tbaa !155, !alias.scope !420
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !420
  br label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit: ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE28find_or_prepare_insert_largeIS9_EESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !155, !range !72
  %i.u = trunc nuw i8 %.pre to i1
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 16 ; 3 uses
  store ptr %i.v, ptr %.sroa.2.0.copyload, align 8, !tbaa !161
  %i.w = load ptr, ptr %3, align 8, !tbaa !133    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !132 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE10emplace_atIJS9_EEEvNSB_8iteratorEDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.w, ptr %.sroa.2.0.copyload, align 8, !tbaa !133
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !22
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !22
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE10emplace_atIJS9_EEEvNSB_8iteratorEDpOT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE10emplace_atIJS9_EEEvNSB_8iteratorEDpOT_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !132
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !132
  store ptr %i.x, ptr %3, align 8, !tbaa !133
  store i64 0, ptr %i.ae, align 8, !tbaa !132
  store i8 0, ptr %i.x, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread5, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE10emplace_atIJS9_EEEvNSB_8iteratorEDpOT_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE28find_or_prepare_insert_largeIS9_EESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.b = load i64, ptr %1, align 8
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.c, 255
  %i.e = load ptr, ptr %2, align 8, !tbaa !133
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !132
  %i.h = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.d, ptr noundef %i.e, i64 noundef %i.g) ; 3 uses
  %i.i = load i64, ptr %1, align 8, !noalias !424
  %i.j = and i64 %i.i, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.l = lshr i64 %i.h, 57
  %i.m = trunc nuw nsw i64 %i.l to i8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !22 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i3 = load ptr, ptr %i.n, align 8, !tbaa !22 ; 4 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.pn = phi i64 [ %i.h, %bb.a ], [ %i.as, %bb.f ]
  %.sroa.14.0 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.f ] ; 2 uses
  %.sroa.639.0 = and i64 %.pn, %i.k               ; 5 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %.sroa.639.0
  tail call void @llvm.prefetch.p0(ptr %i.q, i32 0, i32 3, i32 1)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.639.0
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !22 ; 2 uses
  %i.t = icmp eq <16 x i8> %i.p, %i.s
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32
  %i.w = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.v) #27, !srcloc !23 ; 2 uses
  %.not68 = icmp eq i32 %i.w, 0
  br i1 %.not68, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSI_DpOSJ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = load ptr, ptr %2, align 8, !tbaa !133
  %i.y = load i64, ptr %i.f, align 8, !tbaa !132  ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge.i
  %.sroa.024.069 = phi i32 [ %i.w, %.lr.ph ], [ %i.al, %.critedge.i ] ; 3 uses
  %i.aa = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.069, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = add nuw i64 %.sroa.639.0, %i.ab
  %i.ad = and i64 %i.ac, %i.k                     ; 3 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !133
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !132
  %i.ai = icmp eq i64 %i.ah, %i.y
  br i1 %i.ai, label %bb.d, label %.critedge.i, !prof !425

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEE28find_or_prepare_insert_largeIS9_EESt4pairINSB_8iteratorEbERKT_ENKUlvE_clEv.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.x, i64 %i.y)
  %i.aj = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
end_hunk_1
