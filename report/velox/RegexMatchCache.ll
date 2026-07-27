inline.NumInlined: 9148
inline.NumDeleted: 3321
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt6vectorIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE17_M_realloc_insertIJSJ_EEEvNS5_IPSJ_SL_EEDpOT_:bb.a
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #42
  br label %_ZSt8_DestroyIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEEEvPT_.exit.i.i: ; preds = %bb.v, %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bs, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEEEvT_SL_.exit, label %.lr.ph.i.i, !llvm.loop !21010

_ZSt8_DestroyIPN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEEEvT_SL_.exit: ; preds = %_ZSt8_DestroyIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESK_SaISJ_EET0_T_SN_SM_RT1_.exit37
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE13_M_deallocateEPSJ_m.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEEEvT_SL_.exit
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !21011
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bw) #42
  br label %_ZNSt12_Vector_baseIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE13_M_deallocateEPSJ_m.exit

_ZNSt12_Vector_baseIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE13_M_deallocateEPSJ_m.exit: ; preds = %_ZSt8_DestroyIPN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEEEvT_SL_.exit, %bb.w
  store ptr %i.p, ptr %0, align 8, !tbaa !21007
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !21008
  %i.bx = getelementptr inbounds nuw [112 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !21011
  ret void

bb.x:                                             ; preds = %_ZNKSt6vectorIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE12_M_check_lenEmS7_.exit
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.z

bb.y:                                             ; preds = %bb.g
  %i.bz = extractvalue { ptr, i32 } %i.ae, 0
  %i.ca = tail call ptr @__cxa_begin_catch(ptr %i.bz) #41 ; 0 uses
  tail call void @_ZSt10destroy_atIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEEEvPT_(ptr noundef nonnull %i.q)
  br label %_ZSt8_DestroyIPN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESJ_EvT_SL_RSaIT0_E.exit

bb.z:                                             ; preds = %bb.x, %bb.m
  %.0.lpad-body.ph = phi ptr [ %i.ah, %bb.m ], [ %i.p, %bb.x ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.by, %bb.x ]
  %i.cb = extractvalue { ptr, i32 } %eh.lpad-body.ph, 0
  %i.cc = tail call ptr @__cxa_begin_catch(ptr %i.cb) #41 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEEEvT_SL_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.lpad-body.ph)
          to label %_ZSt8_DestroyIPN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESJ_EvT_SL_RSaIT0_E.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZSt8_DestroyIPN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESJ_EvT_SL_RSaIT0_E.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

_ZSt8_DestroyIPN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESJ_EvT_SL_RSaIT0_E.exit: ; preds = %bb.y, %bb.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #42
  invoke void @__cxa_rethrow() #44
          to label %bb.ad unwind label %bb.aa

bb.ab:                                            ; preds = %bb.aa
  resume { ptr, i32 } %i.cd

bb.ac:                                            ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #43
  unreachable

bb.ad:                                            ; preds = %_ZSt8_DestroyIPN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESJ_EvT_SL_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16skip_until_parenEib(ptr noundef nonnull align 8 dereferenceable(236) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20996 ; 2 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 229
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 230
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.g = phi ptr [ %i.b, %.lr.ph ], [ %i.ab, %.backedge ] ; 7 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20409
  switch i32 %i.h, label %bb.l [
    i32 1, label %bb.c
    i32 6, label %.loopexit
    i32 0, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !20412
  %i.k = icmp eq i32 %i.j, %1
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13match_endmarkEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19748
  store ptr %i.n, ptr %i.a, align 8, !tbaa !20996
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.o = tail call noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13match_endmarkEv(ptr noundef nonnull align 8 dereferenceable(236) %0) ; 0 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !20996 ; 2 uses
  %.not7 = icmp eq ptr %i.p, null
  br i1 %.not7, label %bb.h, label %.backedge

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.c, align 4, !tbaa !21074
  store i8 0, ptr %i.d, align 1, !tbaa !21075
  store i8 0, ptr %i.e, align 2, !tbaa !21076
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !21077
  %i.r = load i32, ptr %i.q, align 8, !tbaa !19748
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_tableB5cxx11, i64 %i.s
  %.unpack.i = load i64, ptr %i.t, align 16, !tbaa !19748
  %i.u = inttoptr i64 %.unpack.i to ptr
  %i.v = load i8, ptr %i.c, align 4, !tbaa !21074, !range !20415, !noundef !180
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.w), !inline_history !21078
  br i1 %i.x, label %bb.i, label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit, !llvm.loop !21079

_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit: ; preds = %bb.i
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !20996 ; 2 uses
  %.not8 = icmp eq ptr %i.y, null
  br i1 %.not8, label %bb.j, label %.backedge

bb.j:                                             ; preds = %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19748 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !20996
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.j, %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit, %bb.k, %bb.l
  %i.ab = phi ptr [ %i.p, %bb.g ], [ %i.aa, %bb.j ], [ %i.y, %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit ], [ %.pre, %bb.k ], [ %i.ai, %bb.l ] ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !21210

bb.k:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !20412
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19748
  store ptr %i.af, ptr %i.a, align 8, !tbaa !20996
  %i.ag = tail call noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16skip_until_parenEib(ptr noundef nonnull align 8 dereferenceable(236) %0, i32 noundef %i.ad, i1 noundef zeroext false) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !20996
  br label %.backedge

bb.l:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19748 ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !20996
  br label %.backedge

.loopexit:                                        ; preds = %bb.b, %.backedge, %bb.a, %bb.f, %bb.e
  %.0 = phi i1 [ %i.l, %bb.e ], [ true, %bb.f ], [ true, %bb.a ], [ true, %.backedge ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10unwind_endEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.a, align 8, !tbaa !20996
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12unwind_parenEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21077 ; 7 uses
  br i1 %1, label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE10set_secondESB_mbb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21004 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !19977 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21153 ; 3 uses
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !19969 ; 4 uses
  %i.j = icmp eq i32 %i.g, 0
  %i.k = getelementptr [24 x i8], ptr %i.i, i64 %i.h ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 48
  store ptr %.sroa.01.0.copyload, ptr %i.l, align 8, !tbaa !19977
  br i1 %i.j, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !19977
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !21211, !range !20415, !noundef !180
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.g, ptr %i.p, align 8, !tbaa !21068
  br label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE10set_secondESB_mbb.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %.sroa.01.0.copyload, ptr %i.r, align 8, !tbaa !19977
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !19977
  %i.t = icmp ne ptr %i.s, %.sroa.01.0.copyload
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.v = zext i1 %i.t to i8
  store i8 %i.v, ptr %i.u, align 8, !tbaa !21065
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload11 = load ptr, ptr %i.w, align 8, !tbaa !19977
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.y = load i8, ptr %i.x, align 8, !tbaa !21211, !range !20415, !noundef !180
  br label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE10set_secondESB_mbb.exit.sink.split

_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE10set_secondESB_mbb.exit.sink.split: ; preds = %bb.c, %.thread.i
  %.sroa.0.0.copyload.sink = phi ptr [ %.sroa.0.0.copyload, %.thread.i ], [ %.sroa.0.0.copyload11, %bb.c ]
  %.sink = phi i8 [ %i.o, %.thread.i ], [ %i.y, %bb.c ]
  %i.z = getelementptr i8, ptr %i.k, i64 56
  store ptr %.sroa.0.0.copyload.sink, ptr %i.z, align 8, !tbaa !19977
  %i.aa = getelementptr i8, ptr %i.k, i64 64
  store i8 %.sink, ptr %i.aa, align 8, !tbaa !21065
  br label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE10set_secondESB_mbb.exit

_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE10set_secondESB_mbb.exit: ; preds = %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE10set_secondESB_mbb.exit.sink.split, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !21077
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24unwind_recursion_stopperEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21077
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !21077
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.d, align 8, !tbaa !20996
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16unwind_assertionEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21077 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21146
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.d, ptr %i.e, align 8, !tbaa !20996
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19977
  store i64 %i.h, ptr %i.g, align 8, !tbaa !19977
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !21149, !range !20415, !noundef !180 ; 2 uses
  %i.k = zext i1 %1 to i8
  %i.l = icmp ne i8 %i.j, %i.k
  %i.m = trunc nuw i8 %i.j to i1
  %i.n = xor i1 %1, %i.m
  %i.o = xor i1 %i.n, true
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.q = zext i1 %i.o to i8
  store i8 %i.q, ptr %i.p, align 4, !tbaa !21074
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.r, ptr %i.a, align 8, !tbaa !21077
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 229
  store i8 1, ptr %i.s, align 1, !tbaa !21075
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10unwind_altEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21077 ; 3 uses
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21146
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.d, ptr %i.e, align 8, !tbaa !20996
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19977
  store i64 %i.h, ptr %i.g, align 8, !tbaa !19977
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !21077
  %i.j = xor i1 %1, true
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 230
  %i.l = zext i1 %i.j to i8
  store i8 %i.l, ptr %i.k, align 2, !tbaa !21076
  ret i1 %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE23unwind_repeater_counterEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21077 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20989 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5boost13re_detail_50015inplace_destroyINS0_14saved_repeaterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20988
  store ptr %i.d, ptr %i.f, align 8, !tbaa !20992
  br label %_ZN5boost13re_detail_50015inplace_destroyINS0_14saved_repeaterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvPT_.exit

_ZN5boost13re_detail_50015inplace_destroyINS0_14saved_repeaterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvPT_.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.g, ptr %i.a, align 8, !tbaa !21077
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18unwind_extra_blockEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21063
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !21063
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21077
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21143
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !21062
  store <2 x ptr> %i.i, ptr %i.f, align 8, !tbaa !21062
  %i.j = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.b, label %_ZN5boost13re_detail_50013put_mem_blockEPv.exit, !prof !20034

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #41
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN5boost13re_detail_50013put_mem_blockEPv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #41
  br label %_ZN5boost13re_detail_50013put_mem_blockEPv.exit

_ZN5boost13re_detail_50013put_mem_blockEPv.exit:  ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN5boost13re_detail_50015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr noundef %i.g)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE27unwind_greedy_single_repeatEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21077 ; 5 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.a, align 8, !tbaa !21077
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21175 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21172
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20511 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20997
  %i.l = and i32 %i.k, 8192
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !19977
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !19977
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.r, align 1, !tbaa !21083
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.s, align 8, !tbaa !19977
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.promoted.cast = inttoptr i64 %i.u to ptr
  %.promoted26 = load i64, ptr %i.v, align 8, !tbaa !21064
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.promoted.cast, i64 -1 ; 3 uses
  store ptr %i.x, ptr %i.t, align 8, !tbaa !21160
  %i.y = xor i64 %i.i, -1
  %i.z = add i64 %i.g, %i.y                       ; 2 uses
  %i.aa = add nsw i64 %.promoted26, 1             ; 2 uses
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !21064
  %cond39 = icmp eq i64 %i.z, 0
  br i1 %cond39, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds i8, ptr %i.ag, i64 -1 ; 3 uses
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !21160
  %i.ac = add i64 %i.af, -1                       ; 2 uses
  %i.ad = add nsw i64 %i.ae, 1                    ; 2 uses
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !21064
  %cond = icmp eq i64 %i.ac, 0
  br i1 %cond, label %._crit_edge, label %.lr.ph, !llvm.loop !21212

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.ae = phi i64 [ %i.ad, %bb.g ], [ %i.aa, %bb.f ]
end_hunk_0
