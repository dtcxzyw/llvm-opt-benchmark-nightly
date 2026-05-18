inline.NumInlined: 6020
inline.NumDeleted: 2067
begin_hunk_0_@_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev:bb.a
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEESt14default_deleteISG_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost13re_detail_50014repeater_countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !87
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36, !call_target !90, !inline_history !2305
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36, !call_target !122, !inline_history !2305
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !15

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !54   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNKSt14default_deleteIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEEEclEPSG_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !159
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #39
  br label %_ZNKSt14default_deleteIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEEEclEPSG_.exit.i

_ZNKSt14default_deleteIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEEEclEPSG_.exit.i: ; preds = %bb.j, %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 80) #39
  br label %_ZNSt10unique_ptrIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEESt14default_deleteISG_EED2Ev.exit

_ZNSt10unique_ptrIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEESt14default_deleteISG_EED2Ev.exit: ; preds = %_ZN5boost13re_detail_50014repeater_countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit, %_ZNKSt14default_deleteIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEEEclEPSG_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14construct_initERKNS_11basic_regexIcSJ_EENS_15regex_constants12_match_flagsE(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::invalid_argument", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !265    ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit.thread, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1684
  %.not17 = icmp eq i32 %i.c, 0
  br i1 %.not17, label %bb.d, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit.thread

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit.thread: ; preds = %bb.a, %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.263)
  invoke void @_ZN5boost15throw_exceptionISt16invalid_argumentEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %3) #35
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit.thread
  unreachable

bb.c:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit.thread
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.e, align 8, !tbaa !2306
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store i32 %2, ptr %i.f, align 8, !tbaa !2307
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.019.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.i = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.j = ptrtoint ptr %.sroa.019.0.copyload.i to i64
  %i.k = sub i64 %i.i, %i.j
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2308
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !265  ; 5 uses
  %.not.i.i = icmp eq ptr %i.n, null              ; 2 uses
  br i1 %.not.i.i, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4sizeEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1714
  %i.q = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4sizeEv.exit.i

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4sizeEv.exit.i: ; preds = %bb.e, %bb.d
  %spec.store.select2.i = phi i64 [ %i.q, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %i.r = sdiv i64 9223372036854775807, %spec.store.select2.i
  %i.s = icmp slt i64 %i.r, %spec.store.select2.i
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4sizeEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 100000000, ptr %i.t, align 8, !tbaa !2309
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

bb.g:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4sizeEv.exit.i
  %i.u = mul nsw i64 %spec.store.select2.i, %spec.store.select2.i ; 2 uses
  %i.v = sdiv i64 9223372036854775807, %spec.store.select.i ; 2 uses
  %i.w = icmp slt i64 %i.v, %i.u
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 100000000, ptr %i.x, align 8, !tbaa !2309
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

bb.i:                                             ; preds = %bb.g
  %i.y = mul nsw i64 %i.u, %spec.store.select.i   ; 3 uses
  %i.z = icmp sgt i64 %i.y, 9223372036854675807
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 100000000, ptr %i.aa, align 8, !tbaa !2309
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = add nsw i64 %i.y, 100000
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !2309
  %i.ad = icmp slt i64 %i.v, %spec.store.select.i
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 100000000, ptr %i.ac, align 8, !tbaa !2309
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = mul nsw i64 %spec.store.select.i, %spec.store.select.i ; 2 uses
  %i.af = icmp samesign ugt i64 %i.ae, 9223372036854675807
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 100000000, ptr %i.ac, align 8, !tbaa !2309
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

bb.o:                                             ; preds = %bb.m
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 99900000) ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, %i.y
  br i1 %i.ah, label %bb.p, label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

bb.p:                                             ; preds = %bb.o
  %spec.store.select1.i = add nuw nsw i64 %i.ag, 100000
  store i64 %spec.store.select1.i, ptr %i.ac, align 8, !tbaa !2309
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o, %bb.p
  br i1 %.not.i.i, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1656
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit: ; preds = %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit, %bb.q
  %i.ak = phi i32 [ %i.aj, %bb.q ], [ 0, %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = lshr i32 %i.ak, 20
  %i.an = trunc i32 %i.am to i8
  %i.ao = and i8 %i.an, 1
  store i8 %i.ao, ptr %i.al, align 8, !tbaa !2310
  %i.ap = and i32 %2, 196608
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %.sink.split, label %bb.r

.sink.split:                                      ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit
  %4 = insertelement <3 x i32> poison, i32 %i.ak, i64 0
  %5 = shufflevector <3 x i32> %4, <3 x i32> poison, <3 x i32> zeroinitializer
  %.fr36 = freeze <3 x i32> %5
  %6 = and <3 x i32> %.fr36, <i32 515, i32 4099, i32 3>
  %7 = icmp eq <3 x i32> %6, <i32 0, i32 4097, i32 2>
  %8 = bitcast <3 x i1> %7 to i3
  %.not37 = icmp eq i3 %8, 0
  %.sink33 = select i1 %.not37, i32 131072, i32 65536
  %i.aq = or disjoint i32 %2, %.sink33            ; 2 uses
  store i32 %i.aq, ptr %i.f, align 8, !tbaa !2311
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit
  %i.ar = phi i32 [ %2, %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit ], [ %i.aq, %.sink.split ]
  %i.as = and i32 %i.ar, 131072
  %.not12 = icmp eq i32 %i.as, 0
  br i1 %.not12, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(77) %i.at, i8 0, i64 49, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  store i8 1, ptr %i.av, align 4, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2275 ; 5 uses
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !2275
  %.not.i.i16 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i16, label %_ZNSt10unique_ptrIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEESt14default_deleteISG_EE5resetEPSG_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !84 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ba, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !87
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #36, !call_target !90, !inline_history !2312
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !88
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #36, !call_target !122, !inline_history !2312
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.x ], [ %i.bn, %bb.y ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.z, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !15

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #36
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.v, %bb.t
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !54 ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNKSt14default_deleteIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEEEclEPSG_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !159
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #39
  br label %_ZNKSt14default_deleteIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEEEclEPSG_.exit.i.i

_ZNKSt14default_deleteIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEEEclEPSG_.exit.i.i: ; preds = %bb.aa, %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 80) #39
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !2275
  %.pre18.pre = load ptr, ptr %i.l, align 8, !tbaa !2308
  %.pre19.pre = load ptr, ptr %.pre18.pre, align 8, !tbaa !265
  %.pre20.pre = load ptr, ptr %1, align 8, !tbaa !265
  br label %_ZNSt10unique_ptrIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEESt14default_deleteISG_EE5resetEPSG_.exit

bb.ab:                                            ; preds = %bb.r
  %i.bv = load ptr, ptr %0, align 8, !tbaa !2313, !nonnull !52, !align !1694
  br label %_ZNSt10unique_ptrIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEESt14default_deleteISG_EE5resetEPSG_.exit

_ZNSt10unique_ptrIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEESt14default_deleteISG_EE5resetEPSG_.exit: ; preds = %_ZNKSt14default_deleteIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEEEclEPSG_.exit.i.i, %bb.s, %bb.ab
  %.sink = phi ptr [ %i.bv, %bb.ab ], [ %i.at, %bb.s ], [ %.pre, %_ZNKSt14default_deleteIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEEEclEPSG_.exit.i.i ]
  %i.bw = phi ptr [ %i.a, %bb.ab ], [ %i.a, %bb.s ], [ %.pre20.pre, %_ZNKSt14default_deleteIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEEEclEPSG_.exit.i.i ]
  %i.bx = phi ptr [ %i.n, %bb.ab ], [ %i.n, %bb.s ], [ %.pre19.pre, %_ZNKSt14default_deleteIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEEEclEPSG_.exit.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.by, align 8, !tbaa !2314
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !1699
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !2315
  %i.cd = and i32 %2, 64
  %.not13 = icmp eq i32 %i.cd, 0
  %i.ce = select i1 %.not13, i8 3, i8 2
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 %i.ce, ptr %i.cf, align 4, !tbaa !2316
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 401
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !1887, !range !51, !noundef !52
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEESt14default_deleteISG_EE5resetEPSG_.exit
  %i.cj = load i32, ptr %i.f, align 8, !tbaa !2311
  %i.ck = and i32 %i.cj, 1073740799
  store i32 %i.ck, ptr %i.f, align 8, !tbaa !2311
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNSt10unique_ptrIN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISC_EEEEESt14default_deleteISG_EE5resetEPSG_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2317   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2318 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESJ_EvT_SL_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !87
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36, !call_target !90, !inline_history !2319
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36, !call_target !122, !inline_history !2319
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !15

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !54   ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !159
end_hunk_0
begin_hunk_1_@_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev:bb.a
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEESt14default_deleteIS7_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost13re_detail_50014repeater_countIPKcED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !87
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36, !call_target !90, !inline_history !2641
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36, !call_target !122, !inline_history !2641
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !15

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !224  ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !225
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #39
  br label %_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i

_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i: ; preds = %bb.j, %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 80) #39
  br label %_ZNSt10unique_ptrIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEESt14default_deleteIS7_EED2Ev.exit

_ZNSt10unique_ptrIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEESt14default_deleteIS7_EED2Ev.exit: ; preds = %_ZN5boost13re_detail_50014repeater_countIPKcED2Ev.exit, %_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14construct_initERKNS_11basic_regexIcSA_EENS_15regex_constants12_match_flagsE(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::invalid_argument", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !265    ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit.thread, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1684
  %.not17 = icmp eq i32 %i.c, 0
  br i1 %.not17, label %bb.d, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit.thread

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit.thread: ; preds = %bb.a, %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.263)
  invoke void @_ZN5boost15throw_exceptionISt16invalid_argumentEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %3) #35
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit.thread
  unreachable

bb.c:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit.thread
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5emptyEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.e, align 8, !tbaa !2642
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store i32 %2, ptr %i.f, align 8, !tbaa !2643
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2615
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2630
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1) ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2644
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !265  ; 5 uses
  %.not.i.i = icmp eq ptr %i.p, null              ; 2 uses
  br i1 %.not.i.i, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4sizeEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1714
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4sizeEv.exit.i

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4sizeEv.exit.i: ; preds = %bb.e, %bb.d
  %spec.store.select2.i = phi i64 [ %i.s, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %i.t = sdiv i64 9223372036854775807, %spec.store.select2.i
  %i.u = icmp slt i64 %i.t, %spec.store.select2.i
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4sizeEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 100000000, ptr %i.v, align 8, !tbaa !2645
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

bb.g:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4sizeEv.exit.i
  %i.w = mul nsw i64 %spec.store.select2.i, %spec.store.select2.i ; 2 uses
  %i.x = sdiv i64 9223372036854775807, %spec.store.select.i ; 2 uses
  %i.y = icmp slt i64 %i.x, %i.w
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 100000000, ptr %i.z, align 8, !tbaa !2645
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = mul nsw i64 %i.w, %spec.store.select.i  ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 9223372036854675807
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 100000000, ptr %i.ac, align 8, !tbaa !2645
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = add nsw i64 %i.aa, 100000
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !2645
  %i.af = icmp slt i64 %i.x, %spec.store.select.i
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 100000000, ptr %i.ae, align 8, !tbaa !2645
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = mul nsw i64 %spec.store.select.i, %spec.store.select.i ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.ag, 9223372036854675807
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 100000000, ptr %i.ae, align 8, !tbaa !2645
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

bb.o:                                             ; preds = %bb.m
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 99900000) ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, %i.aa
  br i1 %i.aj, label %bb.p, label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

bb.p:                                             ; preds = %bb.o
  %spec.store.select1.i = add nuw nsw i64 %i.ai, 100000
  store i64 %spec.store.select1.i, ptr %i.ae, align 8, !tbaa !2645
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit

_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o, %bb.p
  br i1 %.not.i.i, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1656
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit: ; preds = %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit, %bb.q
  %i.am = phi i32 [ %i.al, %bb.q ], [ 0, %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24estimate_max_state_countEPSt26random_access_iterator_tag.exit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = lshr i32 %i.am, 20
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = and i8 %i.ap, 1
  store i8 %i.aq, ptr %i.an, align 8, !tbaa !2646
  %i.ar = and i32 %2, 196608
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %.sink.split, label %bb.r

.sink.split:                                      ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit
  %4 = insertelement <3 x i32> poison, i32 %i.am, i64 0
  %5 = shufflevector <3 x i32> %4, <3 x i32> poison, <3 x i32> zeroinitializer
  %.fr36 = freeze <3 x i32> %5
  %6 = and <3 x i32> %.fr36, <i32 515, i32 4099, i32 3>
  %7 = icmp eq <3 x i32> %6, <i32 0, i32 4097, i32 2>
  %8 = bitcast <3 x i1> %7 to i3
  %.not37 = icmp eq i3 %8, 0
  %.sink33 = select i1 %.not37, i32 131072, i32 65536
  %i.as = or disjoint i32 %2, %.sink33            ; 2 uses
  store i32 %i.as, ptr %i.f, align 8, !tbaa !2311
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit
  %i.at = phi i32 [ %2, %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit ], [ %i.as, %.sink.split ]
  %i.au = and i32 %i.at, 131072
  %.not12 = icmp eq i32 %i.au, 0
  br i1 %.not12, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(77) %i.av, i8 0, i64 49, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aw, i8 0, i64 20, i1 false)
  store i8 1, ptr %i.ax, align 4, !tbaa !163
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !178 ; 5 uses
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !178
  %.not.i.i16 = icmp eq ptr %i.az, null
  br i1 %.not.i.i16, label %_ZNSt10unique_ptrIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEESt14default_deleteIS7_EE5resetEPS7_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !84 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bc, align 8, !tbaa !85
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !87
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !88
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #36, !call_target !90, !inline_history !2647
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !88
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #36, !call_target !122, !inline_history !2647
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bf, %bb.x ], [ %i.bp, %bb.y ]
  %i.bq = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bq, label %bb.z, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !15

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #36
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.v, %bb.t
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !225
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #39
  br label %_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i.i

_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i.i: ; preds = %bb.aa, %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 80) #39
  %.pre = load ptr, ptr %i.ay, align 8, !tbaa !178
  %.pre18.pre = load ptr, ptr %i.n, align 8, !tbaa !2644
  %.pre19.pre = load ptr, ptr %.pre18.pre, align 8, !tbaa !265
  %.pre20.pre = load ptr, ptr %1, align 8, !tbaa !265
  br label %_ZNSt10unique_ptrIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEESt14default_deleteIS7_EE5resetEPS7_.exit

bb.ab:                                            ; preds = %bb.r
  %i.bx = load ptr, ptr %0, align 8, !tbaa !2648, !nonnull !52, !align !1694
  br label %_ZNSt10unique_ptrIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEESt14default_deleteIS7_EE5resetEPS7_.exit

_ZNSt10unique_ptrIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEESt14default_deleteIS7_EE5resetEPS7_.exit: ; preds = %_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i.i, %bb.s, %bb.ab
  %.sink = phi ptr [ %i.bx, %bb.ab ], [ %i.av, %bb.s ], [ %.pre, %_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i.i ]
  %i.by = phi ptr [ %i.a, %bb.ab ], [ %i.a, %bb.s ], [ %.pre20.pre, %_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i.i ]
  %i.bz = phi ptr [ %i.p, %bb.ab ], [ %i.p, %bb.s ], [ %.pre19.pre, %_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.ca, align 8, !tbaa !2649
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !1699
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !2650
  %i.cf = and i32 %2, 64
  %.not13 = icmp eq i32 %i.cf, 0
  %i.cg = select i1 %.not13, i8 3, i8 2
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 %i.cg, ptr %i.ch, align 4, !tbaa !2651
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 401
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !1887, !range !51, !noundef !52
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEESt14default_deleteIS7_EE5resetEPS7_.exit
  %i.cl = load i32, ptr %i.f, align 8, !tbaa !2311
  %i.cm = and i32 %i.cl, 1073740799
  store i32 %i.cm, ptr %i.f, align 8, !tbaa !2311
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNSt10unique_ptrIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEESt14default_deleteIS7_EE5resetEPS7_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2652   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2653 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost13re_detail_50014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEESA_EvT_SC_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !87
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36, !call_target !90, !inline_history !2654
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36, !call_target !122, !inline_history !2654
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !15

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !224  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !225
end_hunk_1
