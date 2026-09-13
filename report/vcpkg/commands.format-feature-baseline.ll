Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.format-feature-baseline?download=true
inline.NumInlined: 354
inline.NumDeleted: 167
begin_hunk_0_@_ZN5vcpkg15ParsedArgumentsD2Ev:bb.a

bb.e:                                             ; preds = %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEED2Ev.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #16
  unreachable

_ZNSt3setIN5vcpkg13StringLiteralESt4lessIvESaIS1_EED2Ev.exit: ; preds = %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEED2Ev.exit
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESt10_Select1stISD_ESt4lessIvESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESt10_Select1stISD_ESt4lessIvESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESt10_Select1stISD_ESt4lessIvESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESt10_Select1stISD_ESt4lessIvESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !30
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !14
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph
  %i.o = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.f, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESt10_Select1stISD_ESt4lessIvESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #17
  br label %_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESt10_Select1stISD_ESt4lessIvESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit

_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESt10_Select1stISD_ESt4lessIvESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #17
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESt10_Select1stISD_ESt4lessIvESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 64 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !30
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #17
  br label %_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #17
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #17
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store i32 239, ptr %1, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.3, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @__func__._ZNKR5vcpkg9ExpectedTISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15LocalizedStringEE5errorEv, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !22, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNK5vcpkg9ExpectedTISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15LocalizedStringEE24unreachable_if_not_errorERKNS_8LineInfoE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #16
  unreachable

_ZNK5vcpkg9ExpectedTISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15LocalizedStringEE24unreachable_if_not_errorERKNS_8LineInfoE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph121

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEET_SI_SI_T0_.exit
  %i.j = icmp eq i64 %i.cg, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph121, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.gf, %bb.b ] ; 2 uses
  %storemerge34.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.027.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.k = add nsw i64 %.lcssa, -2
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_RT0_.exit.i.i.a, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ah, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_RT0_.exit.i.i.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.q = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  store ptr %i.s, ptr %i.q, align 8, !tbaa !29
  store i64 0, ptr %i.u, align 8, !tbaa !38
  store i8 0, ptr %i.s, align 8, !tbaa !30
  store ptr %i.o, ptr %6, align 8, !tbaa !39
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %bb.c
  %i.y = load i64, ptr %i.s, align 8, !tbaa !30   ; 2 uses
  store i64 %i.y, ptr %i.m, align 8, !tbaa !30
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !38 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !29
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !38
  store i8 0, ptr %i.s, align 8, !tbaa !30
  store ptr %i.o, ptr %6, align 8, !tbaa !39
  %i.z = icmp eq ptr %i.r, %i.m
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %.pre.i.i = add nuw nsw i64 %.pre.i.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ]
  %i.aa = phi i64 [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ] ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %.pre-phi.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.r, ptr %6, align 8, !tbaa !29
  store i64 %i.y, ptr %i.o, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i, %bb.d
  %i.ac = phi i64 [ %i.aa, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i ]
  store i64 %i.ac, ptr %i.p, align 8, !tbaa !38
  store ptr %i.m, ptr %5, align 8, !tbaa !29
  store i64 0, ptr %i.n, align 8, !tbaa !38
  store i8 0, ptr %i.m, align 8, !tbaa !30
  call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_T0_SJ_T1_T2_(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa, ptr noundef align 8 %6)
  %i.ad = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.o
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.af = load i64, ptr %i.o, align 8, !tbaa !30
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ah = add nsw i64 %.010.i.i.i, -1
  %i.ai = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.m
  br i1 %i.aj, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_RT0_.exit.i.i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !30
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #17
  br label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_RT0_.exit.i.i.a

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_RT0_.exit.i.i.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br i1 %.not.i.i.i, label %.lr.ph.i9.i.preheader, label %bb.c, !llvm.loop !54

.lr.ph.i9.i.preheader:                            ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_RT0_.exit.i.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_RT0_.exit
  %.sroa.0.03.i.i = phi ptr [ %i.ar, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_RT0_.exit ], [ %storemerge34.lcssa, %.lr.ph.i9.i.preheader ] ; 5 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %i.am, ptr %3, align 8, !tbaa !39
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 9 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i9.i
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !38 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.as, ptr %3, align 8, !tbaa !29
  %i.az = load i64, ptr %i.at, align 8, !tbaa !30
  store i64 %i.az, ptr %i.am, align 8, !tbaa !30
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ba = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aw, %bb.e ]
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 3 uses
  store i64 %i.ba, ptr %i.an, align 8, !tbaa !38
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !29
  store i64 0, ptr %i.bb, align 8, !tbaa !38
  store i8 0, ptr %i.at, align 8, !tbaa !30
  %i.bc = load ptr, ptr %0, align 8, !tbaa !29    ; 5 uses
  %i.bd = icmp eq ptr %i.bc, %i.ao
  br i1 %i.bd, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.be = load i64, ptr %i.h, align 8, !tbaa !38  ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %.not21.i.i = icmp eq ptr %0, %i.ar
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.g, !prof !40

bb.g:                                             ; preds = %bb.f
  switch i64 %i.be, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !30
  store i8 %i.bg, ptr %i.at, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 1 %i.bc, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bh = load i64, ptr %i.h, align 8, !tbaa !38  ; 2 uses
  store i64 %i.bh, ptr %i.bb, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bh
  store i8 0, ptr %i.bi, align 1, !tbaa !30
  %.pre.i.i16 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  store ptr %i.bc, ptr %i.ar, align 8, !tbaa !29
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !38
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !38
  %i.bk = load i64, ptr %i.ao, align 8, !tbaa !30
  store i64 %i.bk, ptr %i.at, align 8, !tbaa !30
  store ptr %i.ao, ptr %0, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f
  %i.bl = phi ptr [ %.pre.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.ao, %bb.j ], [ %i.bc, %bb.f ]
  store i64 0, ptr %i.h, align 8, !tbaa !38
  store i8 0, ptr %i.bl, align 1, !tbaa !30
  %i.bm = ptrtoint ptr %i.ar to i64
  %i.bn = sub i64 %i.bm, %i.a                     ; 2 uses
  %i.bo = ashr exact i64 %i.bn, 5
  store ptr %i.ap, ptr %4, align 8, !tbaa !39
  %i.bp = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.am
  br i1 %i.bq, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.br = load i64, ptr %i.an, align 8, !tbaa !38 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.bt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  store ptr %i.bp, ptr %4, align 8, !tbaa !29
  %i.bu = load i64, ptr %i.am, align 8, !tbaa !30
  store i64 %i.bu, ptr %i.ap, align 8, !tbaa !30
  %.pre5.i = load i64, ptr %i.an, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %bb.k
  %i.bv = phi i64 [ %i.br, %bb.k ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  store i64 %i.bv, ptr %i.aq, align 8, !tbaa !38
  store ptr %i.am, ptr %3, align 8, !tbaa !29
  store i64 0, ptr %i.an, align 8, !tbaa !38
  store i8 0, ptr %i.am, align 8, !tbaa !30
  call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_T0_SJ_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bo, ptr noundef align 8 %4)
  %i.bw = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ap
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.by = load i64, ptr %i.ap, align 8, !tbaa !30
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ca = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.am
  br i1 %i.cb, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_RT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cc = load i64, ptr %i.am, align 8, !tbaa !30
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #17
  br label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_RT0_.exit

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_RT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ce = icmp sgt i64 %i.bn, 32
  br i1 %i.ce, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_T0_.exit, !llvm.loop !55

.lr.ph121:                                        ; preds = %.lr.ph, %bb.b
  %storemerge34120 = phi ptr [ %.sroa.027.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %.035119 = phi i64 [ %i.cg, %bb.b ], [ %2, %.lr.ph ]
  %i.cf = phi i64 [ %i.gf, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cg = add nsw i64 %.035119, -1                ; 3 uses
  %i.ch = lshr i64 %i.cf, 1
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds i8, ptr %storemerge34120, i64 -32 ; 6 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !29 ; 6 uses
  %.val1.i.i.i = load i64, ptr %i.g, align 8, !tbaa !38 ; 3 uses
  %.val2.i.i.i = load ptr, ptr %i.ci, align 8, !tbaa !29 ; 8 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  %.val3.i.i.i = load i64, ptr %i.ck, align 8, !tbaa !38 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 %.val3.i.i.i
  %spec.select.i.i.i.v.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %.val3.i.i.i, i64 %.val1.i.i.i) ; 3 uses
  %spec.select.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %spec.select.i.i.i.v.i.i.i.i
  %.not19.i.i.i.i.i.i = icmp eq i64 %spec.select.i.i.i.v.i.i.i.i, 0
  br i1 %.not19.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.lr.ph121
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.val2.i.i.i, i64 %spec.select.i.i.i.v.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i.i
  %.sroa.015.021.i.i.i.i.i.i = phi ptr [ %i.cw, %bb.m ], [ %.val.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i.i.i = phi ptr [ %i.cx, %bb.m ], [ %.val2.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.cm = load i8, ptr %.sroa.015.021.i.i.i.i.i.i, align 1, !tbaa !30
  %i.cn = load i8, ptr %.sroa.011.020.i.i.i.i.i.i, align 1, !tbaa !30
  %i.co = zext i8 %i.cm to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !30  ; 2 uses
  %i.cr = zext i8 %i.cn to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !30  ; 2 uses
  %i.cu = icmp ult i8 %i.cq, %i.ct
  br i1 %i.cu, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cv = icmp ult i8 %i.ct, %i.cq
  br i1 %i.cv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread95.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cw, %spec.select.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i: ; preds = %bb.m, %.lr.ph121
  %.sroa.011.0.lcssa.i.i.i.i.i.i = phi ptr [ %.val2.i.i.i, %.lr.ph121 ], [ %scevgep.i.i.i.i.i.i, %bb.m ]
  %.not.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i, %i.cl
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread95.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i
  %.val2.i28.i.i = load ptr, ptr %i.cj, align 8, !tbaa !29 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_T0_T1_:bb.a
  br i1 %.not19.i.i.i.i66.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.i.i, label %.lr.ph.preheader.i.i.i.i67.i.i

.lr.ph.preheader.i.i.i.i67.i.i:                   ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread95.i.i
  %scevgep.i.i.i.i68.i.i = getelementptr i8, ptr %.val2.i62.i.i, i64 %spec.select.i.i.i.v.i.i64.i.i
  br label %.lr.ph.i.i.i.i69.i.i

.lr.ph.i.i.i.i69.i.i:                             ; preds = %bb.s, %.lr.ph.preheader.i.i.i.i67.i.i
  %.sroa.015.021.i.i.i.i70.i.i = phi ptr [ %i.ek, %bb.s ], [ %.val.i.i.i, %.lr.ph.preheader.i.i.i.i67.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i71.i.i = phi ptr [ %i.el, %bb.s ], [ %.val2.i62.i.i, %.lr.ph.preheader.i.i.i.i67.i.i ] ; 2 uses
  %i.ea = load i8, ptr %.sroa.015.021.i.i.i.i70.i.i, align 1, !tbaa !30
  %i.eb = load i8, ptr %.sroa.011.020.i.i.i.i71.i.i, align 1, !tbaa !30
  %i.ec = zext i8 %i.ea to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !30  ; 2 uses
  %i.ef = zext i8 %i.eb to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !30  ; 2 uses
  %i.ei = icmp ult i8 %i.ee, %i.eh
  br i1 %i.ei, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i69.i.i
  %i.ej = icmp ult i8 %i.eh, %i.ee
  br i1 %i.ej, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.thread104.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i70.i.i, i64 1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i71.i.i, i64 1
  %.not.i.i.i.i72.i.i = icmp eq ptr %i.ek, %spec.select.i.i.i.i.i65.i.i
  br i1 %.not.i.i.i.i72.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.i.i, label %.lr.ph.i.i.i.i69.i.i, !llvm.loop !1

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.i.i: ; preds = %bb.s, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread95.i.i
  %.sroa.011.0.lcssa.i.i.i.i74.i.i = phi ptr [ %.val2.i62.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread95.i.i ], [ %scevgep.i.i.i.i68.i.i, %bb.s ]
  %.not109.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i74.i.i, %i.dz
  br i1 %.not109.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.thread104.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.thread104.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.i.i
  %spec.select.i.i.i.v.i.i81.i.i = tail call i64 @llvm.smin.i64(i64 %.val3.i63.i.i, i64 %.val3.i.i.i) ; 3 uses
  %spec.select.i.i.i.i.i82.i.i = getelementptr inbounds i8, ptr %.val2.i.i.i, i64 %spec.select.i.i.i.v.i.i81.i.i
  %.not19.i.i.i.i83.i.i = icmp eq i64 %spec.select.i.i.i.v.i.i81.i.i, 0
  br i1 %.not19.i.i.i.i83.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.i.i, label %.lr.ph.preheader.i.i.i.i84.i.i

.lr.ph.preheader.i.i.i.i84.i.i:                   ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.thread104.i.i
  %scevgep.i.i.i.i85.i.i = getelementptr i8, ptr %.val2.i62.i.i, i64 %spec.select.i.i.i.v.i.i81.i.i
  br label %.lr.ph.i.i.i.i86.i.i

.lr.ph.i.i.i.i86.i.i:                             ; preds = %bb.u, %.lr.ph.preheader.i.i.i.i84.i.i
  %.sroa.015.021.i.i.i.i87.i.i = phi ptr [ %i.ew, %bb.u ], [ %.val2.i.i.i, %.lr.ph.preheader.i.i.i.i84.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i88.i.i = phi ptr [ %i.ex, %bb.u ], [ %.val2.i62.i.i, %.lr.ph.preheader.i.i.i.i84.i.i ] ; 2 uses
  %i.em = load i8, ptr %.sroa.015.021.i.i.i.i87.i.i, align 1, !tbaa !30
  %i.en = load i8, ptr %.sroa.011.020.i.i.i.i88.i.i, align 1, !tbaa !30
  %i.eo = zext i8 %i.em to i64
  %i.ep = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !30  ; 2 uses
  %i.er = zext i8 %i.en to i64
  %i.es = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !30  ; 2 uses
  %i.eu = icmp ult i8 %i.eq, %i.et
  br i1 %i.eu, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i86.i.i
  %i.ev = icmp ult i8 %i.et, %i.eq
  br i1 %i.ev, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.thread107.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i87.i.i, i64 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i88.i.i, i64 1
  %.not.i.i.i.i89.i.i = icmp eq ptr %i.ew, %spec.select.i.i.i.i.i82.i.i
  br i1 %.not.i.i.i.i89.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.i.i, label %.lr.ph.i.i.i.i86.i.i, !llvm.loop !1

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.thread104.i.i
  %.sroa.011.0.lcssa.i.i.i.i91.i.i = phi ptr [ %.val2.i62.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.thread104.i.i ], [ %scevgep.i.i.i.i85.i.i, %bb.u ]
  %.not110.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i91.i.i, %i.dz
  br i1 %.not110.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.thread107.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.thread107.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i35.i.i, %.lr.ph.i.i.i.i52.i.i, %.lr.ph.i.i.i.i69.i.i, %.lr.ph.i.i.i.i86.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.thread107.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit59.thread101.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit59.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit42.i.i
  %.sink.i.i = phi ptr [ %i.cj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit59.i.i ], [ %i.ci, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.thread107.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.i.i ], [ %i.ci, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit42.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit59.thread101.i.i ], [ %i.cj, %.lr.ph.i.i.i.i52.i.i ], [ %i.f, %.lr.ph.i.i.i.i69.i.i ], [ %i.cj, %.lr.ph.i.i.i.i86.i.i ], [ %i.cj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.i.i ], [ %i.ci, %.lr.ph.i.i.i.i35.i.i ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.ab, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i
  %.sroa.027.0.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i ], [ %i.gc, %bb.ab ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge34120, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i ], [ %.sroa.0.1.i.i, %bb.ab ]
  %.val2.i.i13.i = load ptr, ptr %0, align 8, !tbaa !29 ; 6 uses
  %.val3.i.i14.i = load i64, ptr %i.h, align 8, !tbaa !38 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val2.i.i13.i, i64 %.val3.i.i14.i
  br label %bb.w

bb.w:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i29.i, %bb.v
  %.sroa.027.1.i.i = phi ptr [ %.sroa.027.0.i.i, %bb.v ], [ %i.fm, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i29.i ] ; 10 uses
  %.val.i.i15.i = load ptr, ptr %.sroa.027.1.i.i, align 8, !tbaa !29 ; 2 uses
  %i.ez = getelementptr i8, ptr %.sroa.027.1.i.i, i64 8
  %.val1.i.i16.i = load i64, ptr %i.ez, align 8, !tbaa !38
  %spec.select.i.i.i.v.i.i.i17.i = tail call i64 @llvm.smin.i64(i64 %.val3.i.i14.i, i64 %.val1.i.i16.i) ; 3 uses
  %spec.select.i.i.i.i.i.i18.i = getelementptr inbounds i8, ptr %.val.i.i15.i, i64 %spec.select.i.i.i.v.i.i.i17.i
  %.not19.i.i.i.i.i19.i = icmp eq i64 %spec.select.i.i.i.v.i.i.i17.i, 0
  br i1 %.not19.i.i.i.i.i19.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i26.i, label %.lr.ph.preheader.i.i.i.i.i20.i

.lr.ph.preheader.i.i.i.i.i20.i:                   ; preds = %bb.w
  %scevgep.i.i.i.i.i21.i = getelementptr i8, ptr %.val2.i.i13.i, i64 %spec.select.i.i.i.v.i.i.i17.i
  br label %.lr.ph.i.i.i.i.i22.i

.lr.ph.i.i.i.i.i22.i:                             ; preds = %bb.y, %.lr.ph.preheader.i.i.i.i.i20.i
  %.sroa.015.021.i.i.i.i.i23.i = phi ptr [ %i.fk, %bb.y ], [ %.val.i.i15.i, %.lr.ph.preheader.i.i.i.i.i20.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i.i24.i = phi ptr [ %i.fl, %bb.y ], [ %.val2.i.i13.i, %.lr.ph.preheader.i.i.i.i.i20.i ] ; 2 uses
  %i.fa = load i8, ptr %.sroa.015.021.i.i.i.i.i23.i, align 1, !tbaa !30
  %i.fb = load i8, ptr %.sroa.011.020.i.i.i.i.i24.i, align 1, !tbaa !30
  %i.fc = zext i8 %i.fa to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !30  ; 2 uses
  %i.ff = zext i8 %i.fb to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !30  ; 2 uses
  %i.fi = icmp ult i8 %i.fe, %i.fh
  br i1 %i.fi, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i29.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i22.i
  %i.fj = icmp ult i8 %i.fh, %i.fe
  br i1 %i.fj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i.i23.i, i64 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i.i24.i, i64 1
  %.not.i.i.i.i.i25.i = icmp eq ptr %i.fk, %spec.select.i.i.i.i.i.i18.i
  br i1 %.not.i.i.i.i.i25.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i26.i, label %.lr.ph.i.i.i.i.i22.i, !llvm.loop !1

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i26.i: ; preds = %bb.y, %bb.w
  %.sroa.011.0.lcssa.i.i.i.i.i27.i = phi ptr [ %.val2.i.i13.i, %bb.w ], [ %scevgep.i.i.i.i.i21.i, %bb.y ]
  %.not.i28.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i27.i, %i.ey
  br i1 %.not.i28.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.preheader, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i29.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i29.i: ; preds = %.lr.ph.i.i.i.i.i22.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i26.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.027.1.i.i, i64 32
  br label %bb.w, !llvm.loop !56

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.preheader: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i26.i, %bb.x
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.backedge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.backedge ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %.val2.i10.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !29 ; 4 uses
  %i.fn = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %.val3.i11.i.i = load i64, ptr %i.fn, align 8, !tbaa !38 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val2.i10.i.i, i64 %.val3.i11.i.i
  %spec.select.i.i.i.v.i.i12.i.i = tail call i64 @llvm.smin.i64(i64 %.val3.i11.i.i, i64 %.val3.i.i14.i) ; 3 uses
  %spec.select.i.i.i.i.i13.i.i = getelementptr inbounds i8, ptr %.val2.i.i13.i, i64 %spec.select.i.i.i.v.i.i12.i.i
  %.not19.i.i.i.i14.i.i = icmp eq i64 %spec.select.i.i.i.v.i.i12.i.i, 0
  br i1 %.not19.i.i.i.i14.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.i.i, label %.lr.ph.preheader.i.i.i.i15.i.i

.lr.ph.preheader.i.i.i.i15.i.i:                   ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i
  %scevgep.i.i.i.i16.i.i = getelementptr i8, ptr %.val2.i10.i.i, i64 %spec.select.i.i.i.v.i.i12.i.i
  br label %.lr.ph.i.i.i.i17.i.i

.lr.ph.i.i.i.i17.i.i:                             ; preds = %bb.aa, %.lr.ph.preheader.i.i.i.i15.i.i
  %.sroa.015.021.i.i.i.i18.i.i = phi ptr [ %i.fz, %bb.aa ], [ %.val2.i.i13.i, %.lr.ph.preheader.i.i.i.i15.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i19.i.i = phi ptr [ %i.ga, %bb.aa ], [ %.val2.i10.i.i, %.lr.ph.preheader.i.i.i.i15.i.i ] ; 2 uses
  %i.fp = load i8, ptr %.sroa.015.021.i.i.i.i18.i.i, align 1, !tbaa !30
  %i.fq = load i8, ptr %.sroa.011.020.i.i.i.i19.i.i, align 1, !tbaa !30
  %i.fr = zext i8 %i.fp to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !30  ; 2 uses
  %i.fu = zext i8 %i.fq to i64
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !30  ; 2 uses
  %i.fx = icmp ult i8 %i.ft, %i.fw
  br i1 %i.fx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.backedge, label %bb.z, !llvm.loop !57

bb.z:                                             ; preds = %.lr.ph.i.i.i.i17.i.i
  %i.fy = icmp ult i8 %i.fw, %i.ft
  br i1 %i.fy, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.thread34.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i18.i.i, i64 1 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i19.i.i, i64 1
  %.not.i.i.i.i20.i.i = icmp eq ptr %i.fz, %spec.select.i.i.i.i.i13.i.i
  br i1 %.not.i.i.i.i20.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.i.i, label %.lr.ph.i.i.i.i17.i.i, !llvm.loop !1

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.i.i: ; preds = %bb.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i
  %.sroa.011.0.lcssa.i.i.i.i22.i.i = phi ptr [ %.val2.i10.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i ], [ %scevgep.i.i.i.i16.i.i, %bb.aa ]
  %.not36.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i22.i.i, %i.fo
  br i1 %.not36.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.thread34.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.backedge

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.backedge: ; preds = %.lr.ph.i.i.i.i17.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i, !llvm.loop !57

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.thread34.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.i.i, %bb.z
  %i.gb = icmp ult ptr %.sroa.027.1.i.i, %.sroa.0.1.i.i
  br i1 %i.gb, label %bb.ab, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEET_SI_SI_T0_.exit

bb.ab:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.thread34.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.027.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i) #14
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.027.1.i.i, i64 32
  br label %bb.v, !llvm.loop !58

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEET_SI_SI_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.thread34.i.i
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_T0_T1_(ptr nonnull %.sroa.027.1.i.i, ptr %storemerge34120, i64 noundef %i.cg)
  %i.gd = ptrtoint ptr %.sroa.027.1.i.i to i64
  %i.ge = sub i64 %i.gd, %i.a
  %i.gf = ashr exact i64 %i.ge, 5                 ; 3 uses
  %i.gg = icmp sgt i64 %i.gf, 16
  br i1 %i.gg, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_T0_.exit, !llvm.loop !53

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEET_SI_SI_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_T0_SJ_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.059 = phi i64 [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.059, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g ; 2 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !29 ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val1.i = load i64, ptr %i.i, align 8, !tbaa !38
  %.val2.i = load ptr, ptr %i.h, align 8, !tbaa !29 ; 4 uses
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val3.i = load i64, ptr %i.j, align 8, !tbaa !38 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.val3.i
  %spec.select.i.i.i.v.i.i = tail call i64 @llvm.smin.i64(i64 %.val3.i, i64 %.val1.i) ; 3 uses
  %spec.select.i.i.i.i.i = getelementptr inbounds i8, ptr %.val.i, i64 %spec.select.i.i.i.v.i.i
  %.not19.i.i.i.i = icmp eq i64 %spec.select.i.i.i.v.i.i, 0
  br i1 %.not19.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val2.i, i64 %spec.select.i.i.i.v.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.preheader.i.i.i.i
  %.sroa.015.021.i.i.i.i = phi ptr [ %i.v, %bb.c ], [ %.val.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i = phi ptr [ %i.w, %bb.c ], [ %.val2.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.l = load i8, ptr %.sroa.015.021.i.i.i.i, align 1, !tbaa !30
  %i.m = load i8, ptr %.sroa.011.020.i.i.i.i, align 1, !tbaa !30
  %i.n = zext i8 %i.l to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !30    ; 2 uses
  %i.q = zext i8 %i.m to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30    ; 2 uses
  %i.t = icmp ult i8 %i.p, %i.s
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = icmp ult i8 %i.s, %i.p
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread54, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.v, %spec.select.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %bb.c, %.lr.ph
  %.sroa.011.0.lcssa.i.i.i.i = phi ptr [ %.val2.i, %.lr.ph ], [ %scevgep.i.i.i.i, %bb.c ]
  %i.x = icmp ne ptr %.sroa.011.0.lcssa.i.i.i.i, %i.k
  %cond.fr = freeze i1 %i.x
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread54

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread54

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread54: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  %i.y = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit ], [ %i.e, %bb.b ] ; 5 uses
  %i.z = getelementptr inbounds [32 x i8], ptr %0, i64 %i.y ; 9 uses
  %i.aa = getelementptr inbounds [32 x i8], ptr %0, i64 %.059 ; 8 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !29  ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %i.ag = icmp eq ptr %i.ae, %i.af                ; 2 uses
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread54
  br i1 %i.ag, label %bb.d, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread54
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !38 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %.not21.i = icmp eq i64 %i.y, %.059
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  switch i64 %i.ai, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !30
  store i8 %i.ak, ptr %i.ab, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ae, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !38
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !30
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ar = load <2 x i64>, ptr %i.aq, align 8, !tbaa !30
  store <2 x i64> %i.ar, ptr %i.ap, align 8, !tbaa !30
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !30
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.av = load <2 x i64>, ptr %i.at, align 8, !tbaa !30
  store <2 x i64> %i.av, ptr %i.au, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !29
  store i64 %i.as, ptr %i.af, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.af, ptr %i.z, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.aw = phi ptr [ %i.ab, %bb.h ], [ %i.af, %bb.i ], [ %i.ae, %bb.d ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 0, ptr %i.ax, align 8, !tbaa !38
  store i8 0, ptr %i.aw, align 1, !tbaa !30
  %i.ay = icmp slt i64 %i.y, %i.b
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 6 uses
  %i.az = and i64 %2, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.j, label %bb.r

bb.j:                                             ; preds = %._crit_edge
  %i.bb = add nsw i64 %2, -2
  %i.bc = ashr exact i64 %i.bb, 1
  %i.bd = icmp eq i64 %.0.lcssa, %i.bc
  br i1 %i.bd, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.be = shl nsw i64 %.0.lcssa, 1
  %i.bf = or disjoint i64 %i.be, 1                ; 3 uses
  %i.bg = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bf ; 9 uses
  %i.bh = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa ; 8 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !29 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !29 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 4 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm                ; 2 uses
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31: ; preds = %bb.k
  br i1 %i.bn, label %bb.l, label %.thread.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25: ; preds = %bb.k
  br i1 %i.bn, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !38 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  tail call void @llvm.assume(i1 %i.bq)
  %.not21.i28 = icmp eq i64 %i.bf, %.0.lcssa
  br i1 %.not21.i28, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33, label %bb.m, !prof !40

bb.m:                                             ; preds = %bb.l
  switch i64 %i.bp, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
end_hunk_1
