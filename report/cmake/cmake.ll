Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmake?download=true
inline.NumInlined: 11246
inline.NumDeleted: 4087
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@"_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP5cmakeEZNS8_7SetArgsERKSt6vectorIS5_SaIS5_EEE4$_18E9_M_invokeERKSt9_Any_dataS7_OS9_":bb.a
  %.val4 = load ptr, ptr %2, align 8, !tbaa !527
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !3296
  invoke void @_Z10cmTokenizeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt20back_insert_iteratorISt6vectorIS5_SaIS5_EEEcEvT0_St17basic_string_viewIcS3_ET1_15cmTokenizerMode(ptr nonnull align 8 %3, i64 %.val3, ptr %.val, i8 noundef signext 44, i32 noundef 0)
          to label %_Z10cmTokenizeIcESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_ET_15cmTokenizerMode.exit.i.i.i unwind label %bb.b

common.resume.i.i.i:                              ; preds = %bb.j, %bb.b
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn.i.i.i, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  br label %common.resume.i.i.i

_Z10cmTokenizeIcESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_ET_15cmTokenizerMode.exit.i.i.i: ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.491, i64 noundef 67)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i: ; preds = %_Z10cmTokenizeIcESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_ET_15cmTokenizerMode.exit.i.i.i
  %i.e = load ptr, ptr %3, align 8, !tbaa !237    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !237  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val4, i64 2216
  br label %bb.d

._crit_edge.i.i.i:                                ; preds = %_ZN5cmake22SetDebugFindOutputPkgsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.261, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %._crit_edge.i.i.i, %_Z10cmTokenizeIcESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_ET_15cmTokenizerMode.exit.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZN5cmake22SetDebugFindOutputPkgsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.01.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.x, %_ZN5cmake22SetDebugFindOutputPkgsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !17
  %i.k = load ptr, ptr @_ZSt4cout, align 8, !tbaa !212
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !456
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.q, %bb.e ], [ @_ZSt4cout, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = load ptr, ptr %.sroa.01.05.i.i.i, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i: ; preds = %bb.g
  %i.w = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_emplace_uniqueIJRKS5_EEESt4pairISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.05.i.i.i)
          to label %_ZN5cmake22SetDebugFindOutputPkgsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i unwind label %bb.h ; 0 uses

_ZN5cmake22SetDebugFindOutputPkgsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.g
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.d

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %bb.g, %bb.f, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i.i.i: ; preds = %._crit_edge.i.i.i
  %i.z = load ptr, ptr %3, align 8, !tbaa !224    ; 3 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !225 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i.i.i ] ; 3 uses
  %i.ab = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !17
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !379

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !224
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i.i.i
  %i.ah = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i.i.i.i, label %"_ZSt10__invoke_rIbRZN5cmake7SetArgsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE4$_18JRKS7_PS0_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit", label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !223
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #35
  br label %"_ZSt10__invoke_rIbRZN5cmake7SetArgsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE4$_18JRKS7_PS0_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit"

bb.j:                                             ; preds = %bb.h, %bb.c
  %.pn.i.i.i = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.j, %bb.c ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %common.resume.i.i.i

"_ZSt10__invoke_rIbRZN5cmake7SetArgsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE4$_18JRKS7_PS0_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit": ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP5cmakeEZNS8_7SetArgsERKSt6vectorIS5_SaIS5_EEE4$_18E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN5cmake7SetArgsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE4$_18E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN5cmake7SetArgsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE4$_18E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN5cmake7SetArgsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE4$_18E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN5cmake7SetArgsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE4$_18E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN5cmake7SetArgsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE4$_18", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !2252
  br label %"_ZNSt14_Function_base13_Base_managerIZN5cmake7SetArgsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE4$_18E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN5cmake7SetArgsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE4$_18E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN5cmake7SetArgsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE4$_18E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10cmTokenizeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt20back_insert_iteratorISt6vectorIS5_SaIS5_EEEcEvT0_St17basic_string_viewIcS3_ET1_15cmTokenizerMode(ptr %0, i64 %1, ptr %2, i8 noundef signext %3, i32 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not65 = icmp eq i64 %1, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.06.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.06.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !17
  %i.d = icmp eq i8 %i.c, %3
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = add nuw i64 %.06.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.e, %1
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph.i, !llvm.loop !3299

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i
  %.not2079 = icmp eq i64 %.06.i, -1
  br i1 %.not2079, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %.06.i
  %i.g = sext i8 %3 to i32
  %i.h = sub nuw i64 %1, %.06.i
  %i.i = tail call ptr @memchr(ptr noundef nonnull %i.f, i32 noundef %i.g, i64 noundef %i.h) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %2 to i64
  %i.l = sub i64 %i.j, %i.k
  %.1.i.i = select i1 %.not.i.i, i64 -1, i64 %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = sext i8 %3 to i32
  %i.r = ptrtoint ptr %2 to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit34, %bb.l, %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not2079115 = phi i1 [ false, %bb.l ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.a ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit34 ], [ true, %bb.b ]
  %i.s = icmp eq i32 %4, 0
  %or.cond = and i1 %i.s, %.not2079115
  br i1 %or.cond, label %bb.n, label %bb.s

bb.c:                                             ; preds = %.lr.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit34
  %.01781 = phi i64 [ %.1.i.i, %.lr.ph ], [ %.1.i.i31, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit34 ] ; 3 uses
  %.01880 = phi i64 [ %.06.i, %.lr.ph ], [ %.06.i28, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit34 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.t = icmp ugt i64 %.01880, %1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.433, ptr noundef nonnull @.str.432, i64 noundef %.01880, i64 noundef %1) #33
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = sub i64 %.01781, %.01880
  %i.v = sub nuw i64 %1, %.01880
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.v, i64 %i.u) ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.01880 ; 2 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %.sroa.speculated.i, ptr %i.a, align 8, !tbaa !13
  %i.x = icmp ugt i64 %.sroa.speculated.i, 15
  br i1 %i.x, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23 unwind label %.loopexit ; 2 uses

.noexc23:                                         ; preds = %.noexc.i.i.i
  store ptr %i.y, ptr %5, align 8, !tbaa !15
  %i.z = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.z, ptr %i.m, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc23, %bb.e
  %i.aa = phi ptr [ %i.y, %.noexc23 ], [ %i.m, %bb.e ] ; 2 uses
  switch i64 %.sroa.speculated.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !17
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !17
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.w, i64 %.sroa.speculated.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  store i64 %i.ac, ptr %i.n, align 8, !tbaa !18
  %i.ad = load ptr, ptr %5, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !225 ; 6 uses
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !223
  %.not.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !9
  %i.ai = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.m
  br i1 %i.aj, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %i.n, align 8, !tbaa !18  ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.am, i1 false)
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !15
  %i.an = load i64, ptr %i.m, align 8, !tbaa !17
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !17
  %.pre = load i64, ptr %i.n, align 8, !tbaa !18
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ao = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ak, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !18
  store ptr %i.m, ptr %5, align 8, !tbaa !15
  store i64 0, ptr %i.n, align 8, !tbaa !18
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !225
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ar, ptr %i.o, align 8, !tbaa !225
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.af, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit unwind label %bb.m

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit: ; preds = %bb.k
  %.pre88 = load ptr, ptr %5, align 8, !tbaa !15  ; 2 uses
  %i.as = icmp eq ptr %.pre88, %i.m
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit
  %i.at = load i64, ptr %i.m, align 8, !tbaa !17
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %.pre88, i64 noundef %i.au) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.av = icmp ult i64 %.01781, %1
  br i1 %i.av, label %.lr.ph.i27, label %._crit_edge

.lr.ph.i27:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l
  %.06.i28 = phi i64 [ %i.az, %bb.l ], [ %.01781, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.06.i28
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17
  %i.ay = icmp eq i8 %i.ax, %3
  br i1 %i.ay, label %bb.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit30

bb.l:                                             ; preds = %.lr.ph.i27
  %i.az = add i64 %.06.i28, 1                     ; 2 uses
  %exitcond.not.i29 = icmp eq i64 %i.az, %1
  br i1 %exitcond.not.i29, label %._crit_edge, label %.lr.ph.i27, !llvm.loop !3299

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit30: ; preds = %.lr.ph.i27
  %7 = icmp ult i64 %.06.i28, %1
  br i1 %7, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i32, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit34

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i32:   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit30
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %.06.i28
  %i.bb = sub nuw i64 %1, %.06.i28
  %i.bc = call ptr @memchr(ptr noundef nonnull %i.ba, i32 noundef %i.q, i64 noundef %i.bb) #34 ; 2 uses
  %.not.i.i33.a = icmp eq ptr %i.bc, null
  br i1 %.not.i.i33.a, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit34, label %8

8:                                                ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i32
  %9 = ptrtoint ptr %i.bc to i64
  %10 = sub i64 %9, %i.r
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit34

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit34: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit30, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i32, %8
  %.1.i.i31 = phi i64 [ -1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit30 ], [ %10, %8 ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i32 ]
  %.not20 = icmp eq i64 %.06.i28, -1
  br i1 %.not20, label %._crit_edge, label %bb.c, !llvm.loop !3300

.loopexit:                                        ; preds = %.noexc.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.m:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.m
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.m
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !17
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.m, %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %.pn = phi { ptr, i32 } [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %lpad.loopexit, %.loopexit ], [ %i.bd, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.t

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.bi, ptr %6, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !18
  store i8 0, ptr %i.bi, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !225 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !223
  %.not.i.i.i38 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i.i38, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !9
  %i.bp = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bi
  br i1 %i.bq, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39

bb.p:                                             ; preds = %bb.o
  %i.br = load i8, ptr %i.bi, align 8
  store i8 %i.br, ptr %i.bo, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit42.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39: ; preds = %bb.o
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !15
  %i.bs = load i64, ptr %i.bi, align 8, !tbaa !17
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !17
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit42.thread

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit42.thread: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 0, ptr %i.bt, align 8, !tbaa !18
  store i64 0, ptr %i.bj, align 8, !tbaa !18
  %i.bu = load ptr, ptr %i.bk, align 8, !tbaa !225
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %i.bv, ptr %i.bk, align 8, !tbaa !225
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.q:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit42 unwind label %bb.r

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit42: ; preds = %bb.q
  %.pre89 = load ptr, ptr %6, align 8, !tbaa !15  ; 2 uses
  %i.bw = icmp eq ptr %.pre89, %i.bi
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit42
  %i.bx = load i64, ptr %i.bi, align 8, !tbaa !17
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %.pre89, i64 noundef %i.by) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit42, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit42.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bi
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.r
  %i.cc = load i64, ptr %i.bi, align 8, !tbaa !17
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %._crit_edge
  ret void

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP5cmakeEZNS8_7SetArgsERKSt6vectorIS5_SaIS5_EEE4$_19E9_M_invokeERKSt9_Any_dataS7_OS9_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::vector.10", align 8    ; 12 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.b, align 8, !tbaa !18
  %.val4 = load ptr, ptr %2, align 8, !tbaa !527
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !3301
  invoke void @_Z10cmTokenizeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt20back_insert_iteratorISt6vectorIS5_SaIS5_EEEcEvT0_St17basic_string_viewIcS3_ET1_15cmTokenizerMode(ptr nonnull align 8 %3, i64 %.val3, ptr %.val, i8 noundef signext 44, i32 noundef 0)
          to label %_Z10cmTokenizeIcESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_ET_15cmTokenizerMode.exit.i.i.i unwind label %bb.b

common.resume.i.i.i:                              ; preds = %bb.j, %bb.b
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn.i.i.i, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  br label %common.resume.i.i.i

_Z10cmTokenizeIcESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_ET_15cmTokenizerMode.exit.i.i.i: ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.492, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i: ; preds = %_Z10cmTokenizeIcESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_ET_15cmTokenizerMode.exit.i.i.i
  %i.e = load ptr, ptr %3, align 8, !tbaa !237    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !237  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val4, i64 2264
  br label %bb.d

._crit_edge.i.i.i:                                ; preds = %_ZN5cmake22SetDebugFindOutputVarsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.261, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %._crit_edge.i.i.i, %_Z10cmTokenizeIcESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_ET_15cmTokenizerMode.exit.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZN5cmake22SetDebugFindOutputVarsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.01.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.x, %_ZN5cmake22SetDebugFindOutputVarsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !17
  %i.k = load ptr, ptr @_ZSt4cout, align 8, !tbaa !212
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !456
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.q, %bb.e ], [ @_ZSt4cout, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = load ptr, ptr %.sroa.01.05.i.i.i, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i: ; preds = %bb.g
  %i.w = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_emplace_uniqueIJRKS5_EEESt4pairISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.05.i.i.i)
          to label %_ZN5cmake22SetDebugFindOutputVarsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i unwind label %bb.h ; 0 uses

_ZN5cmake22SetDebugFindOutputVarsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.g
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.d

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %bb.g, %bb.f, %bb.e
end_hunk_0
