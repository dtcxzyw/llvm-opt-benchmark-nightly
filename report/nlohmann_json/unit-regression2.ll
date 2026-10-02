Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-regression2?download=true
inline.NumInlined: 24436
inline.NumDeleted: 5451
loop-unroll.NumCompletelyUnrolled: 259
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 281
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10basic_jsonIS1_St6vectorS7_blmdSaNS0_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS7_SD_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPSI_S9_ISI_SJ_EEESP_:bb.a
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapESt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEESE_ISJ_SaISJ_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !284    ; 2 uses
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 48                  ; 2 uses
  %i.r = icmp ugt i64 %i.e, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nsw i64 0, %i.e
  tail call void @_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s)
  br label %_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.c
  %i.t = sub nuw nsw i64 %i.q, %i.e
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.t ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE6resizeEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.u, %bb.e ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.x = load i8, ptr %i.v, align 8, !tbaa !222
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef zeroext %i.x)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i unwind label %bb.f, !inline_history !3068

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #39, !inline_history !3068
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = load ptr, ptr %.05.i.i.i, align 8, !tbaa !139 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !140
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #38, !inline_history !3069
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESH_EvT_SJ_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESH_EvT_SJ_RSaIT0_E.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  store ptr %i.u, ptr %i.i, align 8, !tbaa !286
  br label %_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE6resizeEm.exit

_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE6resizeEm.exit: ; preds = %bb.d, %bb.e, %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESH_EvT_SJ_RSaIT0_E.exit.i.i
  %i.ag = load ptr, ptr %0, align 8, !tbaa !230
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.h
  br label %bb.m

bb.g:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapESt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEESE_ISJ_SaISJ_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 40
  %i.ak = load i8, ptr %i.ai, align 8, !tbaa !222
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i8 noundef zeroext %i.ak)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i unwind label %bb.h, !inline_history !287

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #39, !inline_history !287
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i: ; preds = %bb.g
  %i.an = load ptr, ptr %.sroa.018.0, align 8, !tbaa !139 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 16 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapESt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEESE_ISJ_SaISJ_EEEElEvRT_T0_St26random_access_iterator_tag.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !140
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #38, !inline_history !288
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapESt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEESE_ISJ_SaISJ_EEEElEvRT_T0_St26random_access_iterator_tag.exit14

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapESt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEESE_ISJ_SaISJ_EEEElEvRT_T0_St26random_access_iterator_tag.exit14: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.as = getelementptr inbounds i8, ptr %.sroa.018.0, i64 %i.d ; 4 uses
  store ptr %i.ao, ptr %.sroa.018.0, align 8, !tbaa !135
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !139 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !141 ; 8 uses
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %bb.i, label %._crit_edge.i.i.i

bb.i:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapESt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEESE_ISJ_SaISJ_EEEElEvRT_T0_St26random_access_iterator_tag.exit14
  %i.ax = icmp slt i64 %i.av, 0
  br i1 %i.ax, label %.noexc.i.i, label %bb.j

.noexc.i.i:                                       ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #36
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ay = add nuw i64 %i.av, 1                    ; 2 uses
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !136

.noexc6.i.i:                                      ; preds = %bb.j
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.j
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #37 ; 2 uses
  store ptr %i.ba, ptr %.sroa.018.0, align 8, !tbaa !139
  store i64 %i.av, ptr %i.ao, align 8, !tbaa !140
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapESt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEESE_ISJ_SaISJ_EEEElEvRT_T0_St26random_access_iterator_tag.exit14
  %i.bb = phi ptr [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.ao, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapESt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEESE_ISJ_SaISJ_EEEElEvRT_T0_St26random_access_iterator_tag.exit14 ] ; 3 uses
  switch i64 %i.av, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEEC2EOSG_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = load i8, ptr %i.at, align 1, !tbaa !140
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !140
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEEC2EOSG_.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr align 1 %i.at, i64 %i.av, i1 false)
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEEC2EOSG_.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEEC2EOSG_.exit: ; preds = %._crit_edge.i.i.i, %bb.k, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 8
  store i64 %i.av, ptr %i.bd, align 8, !tbaa !141
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.av
  store i8 0, ptr %i.be, align 1, !tbaa !140
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !159
  store i8 0, ptr %i.bf, align 8, !tbaa !218
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store ptr null, ptr %i.bg, align 8, !tbaa !140
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 48
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapESt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEESE_ISJ_SaISJ_EEEElEvRT_T0_St26random_access_iterator_tag.exit, !llvm.loop !3070

bb.m:                                             ; preds = %bb.a, %_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE6resizeEm.exit
  %.sroa.09.0 = phi ptr [ %i.ah, %_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE6resizeEm.exit ], [ %1, %bb.a ]
  ret ptr %.sroa.09.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !284    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !285
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 48                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 192153584101141162, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.01012.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.p, ptr %.013.i.i.i.prol, align 8, !tbaa !135
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !141
  store i8 0, ptr %i.p, align 8, !tbaa !140
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 32
  store i8 0, ptr %i.r, align 8, !tbaa !222
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 40
  store ptr null, ptr %i.s, align 8, !tbaa !140
  %i.t = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !3071

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %i.v = icmp ult i64 %1, 4
  br i1 %i.v, label %_ZSt27__uninitialized_default_n_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEmSH_ET_SJ_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 21 uses
  %.01012.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16 ; 2 uses
  store ptr %i.w, ptr %.013.i.i.i, align 8, !tbaa !135
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !141
  store i8 0, ptr %i.w, align 8, !tbaa !140
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  store i8 0, ptr %i.y, align 8, !tbaa !222
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  store ptr null, ptr %i.z, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 64 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  store i64 0, ptr %i.ac, align 8, !tbaa !141
  store i8 0, ptr %i.ab, align 8, !tbaa !140
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  store i8 0, ptr %i.ad, align 8, !tbaa !222
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 88
  store ptr null, ptr %i.ae, align 8, !tbaa !140
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !135
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  store i64 0, ptr %i.ah, align 8, !tbaa !141
  store i8 0, ptr %i.ag, align 8, !tbaa !140
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 128
  store i8 0, ptr %i.ai, align 8, !tbaa !222
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 136
  store ptr null, ptr %i.aj, align 8, !tbaa !140
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 160 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 152
  store i64 0, ptr %i.am, align 8, !tbaa !141
  store i8 0, ptr %i.al, align 8, !tbaa !140
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 176
  store i8 0, ptr %i.an, align 8, !tbaa !222
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 184
  store ptr null, ptr %i.ao, align 8, !tbaa !140
  %i.ap = add i64 %.01012.i.i.i, -4               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEmSH_ET_SJ_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !3072

_ZSt27__uninitialized_default_n_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEmSH_ET_SJ_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aq, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !286
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.ar = icmp ult i64 %i.n, %1
  br i1 %i.ar, label %bb.d, label %_ZNKSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.414) #36
  unreachable

_ZNKSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.as = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.as, i64 192153584101141162) ; 2 uses
  %i.au = mul nuw nsw i64 %i.at, 48               ; 2 uses
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #37 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.f ; 5 uses
  %xtraiter61 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph.i.i.i40.prol.loopexit, label %.lr.ph.i.i.i40.prol

.lr.ph.i.i.i40.prol:                              ; preds = %_ZNKSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i40.prol
  %.013.i.i.i41.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i40.prol ], [ %i.aw, %_ZNKSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.01012.i.i.i42.prol = phi i64 [ %i.bb, %.lr.ph.i.i.i40.prol ], [ %1, %_ZNKSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE12_M_check_lenEmPKc.exit ]
  %prol.iter63 = phi i64 [ %prol.iter63.next, %.lr.ph.i.i.i40.prol ], [ 0, %_ZNKSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE12_M_check_lenEmPKc.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i41.prol, i64 16 ; 2 uses
  store ptr %i.ax, ptr %.013.i.i.i41.prol, align 8, !tbaa !135
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i41.prol, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !141
  store i8 0, ptr %i.ax, align 8, !tbaa !140
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i41.prol, i64 32
  store i8 0, ptr %i.az, align 8, !tbaa !222
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i41.prol, i64 40
  store ptr null, ptr %i.ba, align 8, !tbaa !140
  %i.bb = add i64 %.01012.i.i.i42.prol, -1        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i41.prol, i64 48 ; 2 uses
  %prol.iter63.next = add i64 %prol.iter63, 1     ; 2 uses
  %prol.iter63.cmp.not = icmp eq i64 %prol.iter63.next, %xtraiter61
  br i1 %prol.iter63.cmp.not, label %.lr.ph.i.i.i40.prol.loopexit, label %.lr.ph.i.i.i40.prol, !llvm.loop !3073

.lr.ph.i.i.i40.prol.loopexit:                     ; preds = %.lr.ph.i.i.i40.prol, %_ZNKSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i41.unr = phi ptr [ %i.aw, %_ZNKSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE12_M_check_lenEmPKc.exit ], [ %i.bc, %.lr.ph.i.i.i40.prol ]
  %.01012.i.i.i42.unr = phi i64 [ %1, %_ZNKSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE12_M_check_lenEmPKc.exit ], [ %i.bb, %.lr.ph.i.i.i40.prol ]
  %i.bd = icmp ult i64 %1, 4
  br i1 %i.bd, label %_ZSt27__uninitialized_default_n_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEmSH_ET_SJ_T0_RSaIT1_E.exit45, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.prol.loopexit, %.lr.ph.i.i.i40
  %.013.i.i.i41 = phi ptr [ %i.by, %.lr.ph.i.i.i40 ], [ %.013.i.i.i41.unr, %.lr.ph.i.i.i40.prol.loopexit ] ; 21 uses
  %.01012.i.i.i42 = phi i64 [ %i.bx, %.lr.ph.i.i.i40 ], [ %.01012.i.i.i42.unr, %.lr.ph.i.i.i40.prol.loopexit ]
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 16 ; 2 uses
  store ptr %i.be, ptr %.013.i.i.i41, align 8, !tbaa !135
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !141
  store i8 0, ptr %i.be, align 8, !tbaa !140
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 32
  store i8 0, ptr %i.bg, align 8, !tbaa !222
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 40
  store ptr null, ptr %i.bh, align 8, !tbaa !140
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 64 ; 2 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !135
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 56
  store i64 0, ptr %i.bk, align 8, !tbaa !141
  store i8 0, ptr %i.bj, align 8, !tbaa !140
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 80
  store i8 0, ptr %i.bl, align 8, !tbaa !222
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 88
  store ptr null, ptr %i.bm, align 8, !tbaa !140
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 96
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 112 ; 2 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !135
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 104
  store i64 0, ptr %i.bp, align 8, !tbaa !141
  store i8 0, ptr %i.bo, align 8, !tbaa !140
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 128
  store i8 0, ptr %i.bq, align 8, !tbaa !222
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 136
  store ptr null, ptr %i.br, align 8, !tbaa !140
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 144
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 160 ; 2 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !135
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 152
  store i64 0, ptr %i.bu, align 8, !tbaa !141
  store i8 0, ptr %i.bt, align 8, !tbaa !140
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 176
  store i8 0, ptr %i.bv, align 8, !tbaa !222
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 184
  store ptr null, ptr %i.bw, align 8, !tbaa !140
  %i.bx = add i64 %.01012.i.i.i42, -4             ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 192
  %.not.i.i.i43.3 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i43.3, label %_ZSt27__uninitialized_default_n_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEmSH_ET_SJ_T0_RSaIT1_E.exit45, label %.lr.ph.i.i.i40, !llvm.loop !3072

_ZSt27__uninitialized_default_n_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEmSH_ET_SJ_T0_RSaIT1_E.exit45: ; preds = %.lr.ph.i.i.i40, %.lr.ph.i.i.i40.prol.loopexit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not14.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEmSH_ET_SJ_T0_RSaIT1_E.exit45, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.ca, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.av, %_ZSt27__uninitialized_default_n_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEmSH_ET_SJ_T0_RSaIT1_E.exit45 ] ; 3 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.bz, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEmSH_ET_SJ_T0_RSaIT1_E.exit45 ] ; 2 uses
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEEC2ERKSG_(ptr noundef nonnull align 8 dereferenceable(48) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.e, !inline_history !4

_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 48 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, %i.b
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !97

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  %i.cd = tail call ptr @__cxa_begin_catch(ptr %i.cc) #35 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_(ptr noundef nonnull %i.av, ptr noundef nonnull %.016.i.i.i.i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #36
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #39
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

.body:                                            ; preds = %bb.g
  %i.ch = extractvalue { ptr, i32 } %i.ce, 0
  %i.ci = tail call ptr @__cxa_begin_catch(ptr %i.ch) #35 ; 0 uses
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %i.aw, i64 %1
  invoke void @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.cj)
          to label %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESH_EvT_SJ_RSaIT0_E.exit.thread unwind label %bb.j

bb.j:                                             ; preds = %.body, %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESH_EvT_SJ_RSaIT0_E.exit.thread
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.o

_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESH_EvT_SJ_RSaIT0_E.exit.thread: ; preds = %.body
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.au) #38
  invoke void @__cxa_rethrow() #36
          to label %bb.p unwind label %bb.j

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.ck

.lr.ph.i.i:                                       ; preds = %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.05.i.i = phi ptr [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.c, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.cn = load i8, ptr %i.cl, align 8, !tbaa !222
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i8 noundef zeroext %i.cn)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i unwind label %bb.l, !inline_history !98

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  tail call void @__clang_call_terminate(ptr %i.cp) #39, !inline_history !98
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i: ; preds = %.lr.ph.i.i
  %i.cq = load ptr, ptr %.05.i.i, align 8, !tbaa !139 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !140
  %i.cu = add i64 %i.ct, 1
  tail call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #38, !inline_history !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cv, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_.exit, label %.lr.ph.i.i, !llvm.loop !13

_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZSt27__uninitialized_default_n_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEmSH_ET_SJ_T0_RSaIT1_E.exit45
  %.not.i47 = icmp eq ptr %i.c, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_EE13_M_deallocateEPSH_m.exit48, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_.exit
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !285
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cy) #38
  br label %_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_EE13_M_deallocateEPSH_m.exit48

_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_EE13_M_deallocateEPSH_m.exit48: ; preds = %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_.exit, %bb.m
  store ptr %i.av, ptr %0, align 8, !tbaa !284
  %i.cz = getelementptr inbounds nuw [48 x i8], ptr %i.aw, i64 %1
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !286
  %i.da = getelementptr inbounds nuw [48 x i8], ptr %i.av, i64 %i.at
  store ptr %i.da, ptr %i.h, align 8, !tbaa !285
  br label %bb.n

bb.n:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEmSH_ET_SJ_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_EE13_M_deallocateEPSH_m.exit48, %bb.a
  ret void

bb.o:                                             ; preds = %bb.j
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  tail call void @__clang_call_terminate(ptr %i.dc) #39
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESH_EvT_SJ_RSaIT0_E.exit.thread
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i8, ptr } @_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE12handle_valueIRdEESt4pairIbPSF_EOT_b(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.39", align 8 ; 17 uses
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.39", align 8 ; 4 uses
  %5 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.39", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.d = zext i32 %.sroa.2.0.copyload.i.i to i64
  %i.e = add nsw i64 %i.d, -1                     ; 3 uses
  %i.f = sdiv i64 %i.e, 64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.f
  %i.h = and i64 %i.e, -9223372036854775745
  %i.i = icmp ugt i64 %i.h, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.i, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.g, i64 %storemerge.idx.i.i.i.i.i
  %i.j = and i64 %i.e, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !182
  %i.m = and i64 %i.k, %i.l
  %.not36 = icmp eq i64 %i.m, 0
  br i1 %.not36, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %3, align 8
  %i.o = load double, ptr %1, align 8, !tbaa !383
  store i8 7, ptr %3, align 8, !tbaa !218
  store double %i.o, ptr %i.n, align 8, !tbaa !140
  br i1 %2, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !684
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !669
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 3
  %i.x = trunc i64 %i.w to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.x, ptr %i.a, align 4, !tbaa !203
  store i8 5, ptr %i.b, align 1, !tbaa !393
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !149
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #36
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !362
end_hunk_0
