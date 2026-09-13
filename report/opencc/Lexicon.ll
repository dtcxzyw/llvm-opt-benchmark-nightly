Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/Lexicon?download=true
inline.NumInlined: 825
inline.NumDeleted: 322
begin_hunk_0_@_ZNK6opencc22StrMultiValueDictEntry10GetDefaultB5cxx11Ev:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !13
  %i.i = load ptr, ptr %spec.select, align 8, !tbaa !17 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.k, ptr %i.a, align 8, !tbaa !15
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !17
  %i.n = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.n, ptr %i.h, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.h, %bb.a ] ; 2 uses
  switch i64 %i.k, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !18
  store i8 %i.p, ptr %i.o, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.q = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !19
  %i.s = load ptr, ptr %0, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK6opencc22StrMultiValueDictEntry9NumValuesEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  ret i64 %i.h
}

declare void @_ZNK6opencc19MultiValueDictEntry8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !13
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !17 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.e, ptr %i.a, align 8, !tbaa !15
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !17
  %i.h = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.h, ptr %i.b, align 8, !tbaa !18
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !18
  store i8 %i.j, ptr %i.i, align 1, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !19
  %i.m = load ptr, ptr %.014, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !146

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #25 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #28
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !147
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !48   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !147
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph55

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEET_SK_SK_T0_.exit
  %i.h = icmp eq i64 %i.ao, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph55, !llvm.loop !148

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa49 = phi i64 [ %i.d, %.lr.ph ], [ %i.bp, %bb.b ] ; 2 uses
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = add nsw i64 %.lcssa49, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit13.i.i, %._crit_edge
  %.010.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.q, %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit13.i.i ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  store ptr null, ptr %i.k, align 8, !tbaa !23
  store i64 %i.l, ptr %4, align 8, !tbaa !23
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_T0_SL_T1_T2_(ptr nonnull %0, i64 noundef %.010.i.i, i64 noundef %.lcssa49, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %4, ptr %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %4, align 8, !tbaa !23     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit13.i.i, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i: ; preds = %bb.d
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #25, !inline_history !149
  br label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit13.i.i

_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit13.i.i: ; preds = %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i, %bb.d
  %.not.i.i = icmp eq i64 %.010.i.i, 0
  %i.q = add nsw i64 %.010.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_T0_.exit, label %bb.c, !llvm.loop !150

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %.not.i14.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i14.i.i, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.e, %bb.g
  %.sink46 = phi ptr [ %i.al, %bb.g ], [ %i.s, %bb.e ] ; 2 uses
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.r, %bb.e ]
  %i.t = load ptr, ptr %.sink46, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %.sink46) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.ak, %bb.g ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_T0_.exit: ; preds = %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit13.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.w, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_RT0_.exit.i.i ], [ %storemerge23.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_T0_.exit ]
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  store ptr null, ptr %i.w, align 8, !tbaa !23
  %i.y = load ptr, ptr %0, align 8, !tbaa !23
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !23   ; 3 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !23
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #25, !inline_history !151
  br label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i

_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ad, %i.a                     ; 2 uses
  %i.af = ashr exact i64 %i.ae, 3
  store i64 %i.x, ptr %5, align 8, !tbaa !23
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_T0_SL_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.af, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %5, ptr %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i
  %i.ag = load ptr, ptr %5, align 8, !tbaa !23    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_RT0_.exit.i.i, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i: ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #25, !inline_history !152
  br label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_RT0_.exit.i.i

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %.not.i6.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i6.i.i.i, label %common.resume, label %common.resume.sink.split

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_RT0_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.am = icmp sgt i64 %i.ae, 8
  br i1 %i.am, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_T0_.exit, !llvm.loop !153

.lr.ph55:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2354 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02453 = phi i64 [ %i.ao, %bb.b ], [ %2, %.lr.ph ]
  %i.an = phi i64 [ %i.bp, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ao = add nsw i64 %.02453, -1                 ; 3 uses
  %i.ap = lshr i64 %i.an, 1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap ; 7 uses
  %i.ar = getelementptr inbounds i8, ptr %storemerge2354, i64 -8 ; 8 uses
  %i.as = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.aq), !inline_history !154
  br i1 %i.as, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph55
  %i.at = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ar), !inline_history !154
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %0, align 8, !tbaa !23
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !23
  store ptr %i.av, ptr %0, align 8, !tbaa !23
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.aw = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.ar), !inline_history !154
  %i.ax = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !23
  store ptr %i.ay, ptr %0, align 8, !tbaa !23
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !23
  store ptr %i.az, ptr %0, align 8, !tbaa !23
  store ptr %i.ax, ptr %i.f, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph55
  %i.ba = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.ar), !inline_history !154
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = load <2 x ptr>, ptr %0, align 8, !tbaa !23
  %i.bc = shufflevector <2 x ptr> %i.bb, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bc, ptr %0, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bd = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ar), !inline_history !154
  %i.be = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !23
  store ptr %i.bf, ptr %0, align 8, !tbaa !23
  store ptr %i.be, ptr %i.ar, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.aq, align 8, !tbaa !23
  store ptr %i.bg, ptr %0, align 8, !tbaa !23
  store ptr %i.be, ptr %i.aq, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2354, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.bi, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i.preheader ]
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i ], [ %i.bi, %bb.r ] ; 9 uses
  %i.bh = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !155
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.bh, label %bb.r, label %.preheader.i.i, !llvm.loop !156

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 6 uses
  %i.bj = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.09.1.i.i), !inline_history !155
  br i1 %i.bj, label %.preheader.i.i, label %bb.s, !llvm.loop !157

bb.s:                                             ; preds = %.preheader.i.i
  %i.bk = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.bk, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEET_SK_SK_T0_.exit

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !23
  %i.bm = load ptr, ptr %.sroa.09.1.i.i, align 8, !tbaa !23
  store ptr %i.bm, ptr %.sroa.012.1.i.i, align 8, !tbaa !23
  store ptr %i.bl, ptr %.sroa.09.1.i.i, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_SK_T0_.exit.i, !llvm.loop !158

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEET_SK_SK_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2354, i64 noundef %i.ao, ptr %3)
  %i.bn = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bo = sub i64 %i.bn, %i.a
  %i.bp = ashr exact i64 %i.bo, 3                 ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, 16
  br i1 %i.bq, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_T0_.exit, !llvm.loop !148

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEET_SK_SK_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_SK_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_T0_SL_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr nofreeobj noundef align 8 dereferenceable(8) %3, ptr %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit
  %.044 = phi i64 [ %spec.select, %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.044, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !159
  %spec.select = select i1 %i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.044 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !23
  store ptr null, ptr %i.j, align 8, !tbaa !23
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !23
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #25, !inline_history !160
  br label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i
  %i.q = icmp slt i64 %spec.select, %i.b
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit ] ; 5 uses
  %i.r = and i64 %2, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit27

bb.b:                                             ; preds = %._crit_edge
  %i.t = add nsw i64 %2, -2
  %i.u = ashr exact i64 %i.t, 1
  %i.v = icmp eq i64 %.0.lcssa, %i.u
  br i1 %i.v, label %bb.c, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit27

bb.c:                                             ; preds = %bb.b
  %i.w = shl nsw i64 %.0.lcssa, 1
  %i.x = or disjoint i64 %i.w, 1                  ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !23
  store ptr null, ptr %i.y, align 8, !tbaa !23
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !23  ; 3 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !23
  %.not.i.i.i.i25 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i25, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit27, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i26

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i26: ; preds = %bb.c
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #25, !inline_history !160
  br label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit27

_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit27: ; preds = %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i26, %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.b ], [ %i.x, %bb.c ], [ %i.x, %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i26 ] ; 3 uses
  %i.af = load i64, ptr %3, align 8, !tbaa !23    ; 2 uses
  store i64 %i.af, ptr %5, align 8, !tbaa !23
  store ptr null, ptr %3, align 8, !tbaa !23
  %i.ag = icmp sgt i64 %.1, %1
  %i.ah = inttoptr i64 %i.af to ptr
  br i1 %i.ag, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit27, %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit.i
  %.021.i = phi i64 [ %.0922.i, %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %.1, %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit27 ] ; 3 uses
  %.0922.in.i = add nsw i64 %.021.i, -1
  %.0922.i = sdiv i64 %.0922.in.i, 2              ; 4 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.0922.i ; 3 uses
  %i.aj = invoke noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %bb.e, !inline_history !162

.noexc:                                           ; preds = %.lr.ph.i
  br i1 %i.aj, label %bb.d, label %.critedge.i.loopexit

bb.d:                                             ; preds = %.noexc
  %i.ak = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !23
  store ptr null, ptr %i.ai, align 8, !tbaa !23
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !23 ; 3 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !23
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit.i, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #25, !inline_history !163
  br label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i, %bb.d
  %i.aq = icmp sgt i64 %.0922.i, %1
  br i1 %i.aq, label %.lr.ph.i, label %.critedge.i.loopexit, !llvm.loop !164

.critedge.i.loopexit:                             ; preds = %.noexc, %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit.i
  %.0.lcssa.i.ph = phi i64 [ %.0922.i, %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %.021.i, %.noexc ]
  %.pre = load ptr, ptr %5, align 8, !tbaa !23
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit27
  %i.ar = phi ptr [ %i.ah, %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit27 ], [ %.pre, %.critedge.i.loopexit ]
  %.0.lcssa.i = phi i64 [ %.1, %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EEaSEOS4_.exit27 ], [ %.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !23
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !23 ; 3 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !23
  %.not.i.i.i.i10.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i10.i, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_comp_valIPFbRKS7_SG_EEEEvT_T0_SL_T1_RT2_.exit

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_comp_valIPFbRKS7_SG_EEEEvT_T0_SL_T1_RT2_.exit: ; preds = %.critedge.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #25, !inline_history !163
  %.pr = load ptr, ptr %5, align 8, !tbaa !23     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i: ; preds = %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_comp_valIPFbRKS7_SG_EEEEvT_T0_SL_T1_RT2_.exit
  %i.ax = load ptr, ptr %.pr, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #25, !inline_history !165
  br label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit: ; preds = %.critedge.i, %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_comp_valIPFbRKS7_SG_EEEEvT_T0_SL_T1_RT2_.exit, %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i
  ret void

bb.e:                                             ; preds = %.lr.ph.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %5, align 8, !tbaa !23    ; 3 uses
  %.not.i28 = icmp eq ptr %i.bb, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit30, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i29

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i29: ; preds = %bb.e
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #25, !inline_history !165
  br label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit30

_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit30: ; preds = %bb.e, %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i29
  resume { ptr, i32 } %i.ba
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6opencc7LexiconEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !52
  store ptr %i.a, ptr %0, align 8, !tbaa !44
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #25 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6opencc7LexiconD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 24) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #24
end_hunk_0
