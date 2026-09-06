Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-custom-base-class?download=true
inline.NumInlined: 5006
inline.NumDeleted: 2260
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataIiEEEESt10_Select1stISJ_ESt4lessIS5_ESaISJ_EE24_M_get_insert_unique_posERS7_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataIiEEEESt10_Select1stISJ_ESt4lessIS5_ESaISJ_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = load i8, ptr %i.c, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext %i.e) #28
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i unwind label %bb.c, !inline_history !4

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #29, !inline_history !4
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataIiEEEESt10_Select1stISJ_ESt4lessIS5_ESaISJ_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISJ_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #32, !inline_history !5
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataIiEEEESt10_Select1stISJ_ESt4lessIS5_ESaISJ_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISJ_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataIiEEEESt10_Select1stISJ_ESt4lessIS5_ESaISJ_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISJ_E.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #32, !inline_history !6
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataIiEEEESt10_Select1stISJ_ESt4lessIS5_ESaISJ_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISJ_E.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEE13json_metadataIiEEEEEPSI_ET0_T_SO_SN_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.016 = phi ptr [ %2, %.lr.ph ], [ %i.k, %bb.e ] ; 4 uses
  %.01215 = phi ptr [ %0, %.lr.ph ], [ %i.j, %bb.e ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.b = getelementptr inbounds nuw i8, ptr %.01215, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150, !noalias !313 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %.01215, align 8, !tbaa !43, !noalias !313
  %i.f = getelementptr inbounds nuw i8, ptr %.01215, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.f, align 8, !tbaa !39, !noalias !313
  %i.g = getelementptr inbounds nuw i8, ptr %.01215, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !37, !noalias !313
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load i32, ptr %3, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.h = phi i32 [ %.pre.i.i, %.noexc ], [ %i.e, %bb.c ]
  store i32 %i.h, ptr %.016, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %.016, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.j = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.016, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.j, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !312

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEEvT_SI_(ptr noundef %2, ptr noundef %.016)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #31
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.k, %bb.e ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.o

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #29
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEEvT_SI_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i2 = icmp eq ptr %0, %1
  br i1 %.not.i2, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEEEEvT_SK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEEvPT_.exit
  %.0.i3 = phi ptr [ %i.f, %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEEvPT_.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i3, i64 16
  %i.c = load i8, ptr %i.a, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext %i.c)
          to label %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEEvPT_.exit unwind label %bb.b, !inline_history !314

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29, !inline_history !314
  unreachable

_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEEvPT_.exit: ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i3, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEEEEvT_SK_.exit, label %.lr.ph, !llvm.loop !7

_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEEEEvT_SK_.exit: ; preds = %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.43", align 8    ; 23 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 7 uses
  %i.a = icmp eq i8 %1, 1
  %i.b = load ptr, ptr %0, align 8                ; 6 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %or.cond31 = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond31, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 2
  %i.e = and i8 %1, -2
  %i.f = icmp eq i8 %i.e, 2
  %i.g = icmp eq i8 %1, 8
  %i.h = or i1 %i.g, %i.f
  %or.cond67 = select i1 %i.h, i1 %i.c, i1 false
  br i1 %or.cond67, label %bb.aq, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i8 %1, -1
  %or.cond = icmp ult i8 %i.i, 2
  br i1 %or.cond, label %bb.d, label %bb.aj

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %i.d, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !159  ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !152  ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp ugt i64 %i.o, 9223372036854775800
  br i1 %i.p, label %.invoke, label %bb.f

.invoke:                                          ; preds = %bb.i, %bb.e, %bb.k
  %i.q = phi ptr [ @.str.52, %bb.k ], [ @.str.52, %bb.e ], [ @.str.53, %bb.i ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.q) #31
          to label %.cont unwind label %.loopexit.split-lp240, !inline_history !315

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not304.a = icmp eq ptr %i.k, %i.l
  br i1 %.not304.a, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30
          to label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit.a unwind label %.loopexit.split-lp240, !inline_history !315 ; 4 uses

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit.a: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EE11_M_allocateEm.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.s, ptr %2, align 8, !tbaa !152
  store ptr %i.s, ptr %i.t, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o ; 2 uses
  store ptr %i.u, ptr %i.r, align 8, !tbaa !158
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit.a, %bb.f
  %4 = phi ptr [ %i.u, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit.a ], [ null, %bb.f ]
  %5 = phi ptr [ %i.s, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit.a ], [ null, %bb.f ] ; 3 uses
  %.not304 = icmp eq ptr %i.k, %i.l
  br i1 %.not304, label %.loopexit, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit
  %i.v = udiv exact i64 %i.o, 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit.i.i, %.lr.ph.i128
  %i.x = phi ptr [ %5, %.lr.ph.i128 ], [ %i.bc, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit.i.i ] ; 6 uses
  %i.y = phi ptr [ %4, %.lr.ph.i128 ], [ %i.bd, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit.i.i ] ; 5 uses
  %i.z = phi ptr [ %5, %.lr.ph.i128 ], [ %i.be, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit.i.i ] ; 4 uses
  %.0.i12.i129 = phi i64 [ %i.v, %.lr.ph.i128 ], [ %i.bg, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit.i.i ] ; 2 uses
  %.05.i11.i = phi ptr [ %i.l, %.lr.ph.i128 ], [ %i.bf, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit.i.i ] ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %.05.i11.i, align 8, !tbaa !43
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.ac, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 16
  store ptr null, ptr %i.ad, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !159
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = ptrtoint ptr %i.x to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %.invoke, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.aj = sdiv exact i64 %i.ah, 24                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 384307168202282325)
  %i.an = select i1 %i.al, i64 384307168202282325, i64 %i.am ; 3 uses
  %.not.i.i153 = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i153)
  %i.ao = mul nuw nsw i64 %i.an, 24
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #30
          to label %.noexc157 unwind label %.loopexit239, !inline_history !316 ; 6 uses

.noexc157:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE12_M_check_lenEmPKc.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah ; 2 uses
  %i.ar = load i32, ptr %.05.i11.i, align 8, !tbaa !43
  store i32 %i.ar, ptr %i.aq, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.at, align 8, !tbaa !39
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 16
  store ptr null, ptr %i.au, align 8, !tbaa !37
  %.not.i1728.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i1728.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i154

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i154: ; preds = %.noexc157, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i154
  %.0.i30.i = phi ptr [ %i.ba, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i154 ], [ %i.ap, %.noexc157 ] ; 3 uses
  %.09.i29.i = phi ptr [ %i.az, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i154 ], [ %i.x, %.noexc157 ] ; 4 uses
  %i.av = load i32, ptr %.09.i29.i, align 8, !tbaa !43
  store i32 %i.av, ptr %.0.i30.i, align 8, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.ax, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 16
  store ptr null, ptr %i.ay, align 8, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 24 ; 2 uses
  %.not.i17.i = icmp eq ptr %i.az, %i.y
  br i1 %.not.i17.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i154, !llvm.loop !317

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i154, %.noexc157
  %.0.i.lcssa.i = phi ptr [ %i.ap, %.noexc157 ], [ %i.ba, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i154 ]
  %.0.i1931.i = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 24 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.x, null
  br i1 %.not.i16.i, label %.noexc130, label %bb.j

bb.j:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #32, !inline_history !316
  br label %.noexc130

.noexc130:                                        ; preds = %bb.j, %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i
  store ptr %i.ap, ptr %2, align 8, !tbaa !152
  store ptr %.0.i1931.i, ptr %i.w, align 8, !tbaa !159
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.an ; 2 uses
  store ptr %i.bb, ptr %i.r, align 8, !tbaa !158
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit.i.i

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit.i.i: ; preds = %.noexc130, %bb.h
  %i.bc = phi ptr [ %i.ap, %.noexc130 ], [ %i.x, %bb.h ]
  %i.bd = phi ptr [ %i.bb, %.noexc130 ], [ %i.y, %bb.h ]
  %i.be = phi ptr [ %.0.i1931.i, %.noexc130 ], [ %i.ae, %bb.h ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 24
  %i.bg = add nsw i64 %.0.i12.i129, -1
  %i.bh = icmp sgt i64 %.0.i12.i129, 1
  br i1 %i.bh, label %bb.g, label %.loopexit, !llvm.loop !318

.loopexit239:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit241 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp240:                            ; preds = %.invoke, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EE11_M_allocateEm.exit.i132
  %lpad.loopexit.split-lp242 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.k:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !113 ; 4 uses
  %i.bk = icmp ugt i64 %i.bj, 384307168202282325
  br i1 %i.bk, label %.invoke, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not303 = icmp eq i64 %i.bj, 0
  br i1 %.not303, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit146, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EE11_M_allocateEm.exit.i132

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EE11_M_allocateEm.exit.i132: ; preds = %bb.l
  %i.bm = mul nuw nsw i64 %i.bj, 24
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #30
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EE13_M_deallocateEPSG_m.exit.i143 unwind label %.loopexit.split-lp240, !inline_history !315 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EE13_M_deallocateEPSG_m.exit.i143: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EE11_M_allocateEm.exit.i132
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bn, ptr %2, align 8, !tbaa !152
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !159
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bj ; 2 uses
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !158
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit146

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit146: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EE13_M_deallocateEPSG_m.exit.i143, %bb.l
  %i.bq = phi ptr [ %i.bp, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EE13_M_deallocateEPSG_m.exit.i143 ], [ null, %bb.l ]
  %i.br = phi ptr [ %i.bn, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EE13_M_deallocateEPSG_m.exit.i143 ], [ null, %bb.l ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !93 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not83 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not83, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit146
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit
  %i.bw = phi ptr [ %i.br, %.lr.ph ], [ %i.dc, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit ] ; 6 uses
  %i.bx = phi ptr [ %i.bq, %.lr.ph ], [ %i.dd, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit ] ; 5 uses
  %i.by = phi ptr [ %i.br, %.lr.ph ], [ %i.de, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit ] ; 4 uses
  %.sroa.061.084 = phi ptr [ %i.bt, %.lr.ph ], [ %i.df, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.by, %i.bx
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.cc, align 8, !tbaa !39
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 80
  store ptr null, ptr %i.cd, align 8, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  store ptr %i.ce, ptr %i.bv, align 8, !tbaa !159
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit

bb.o:                                             ; preds = %bb.m
  %i.cf = ptrtoint ptr %i.bx to i64
  %i.cg = ptrtoint ptr %i.bw to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.p, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE12_M_check_lenEmPKc.exit.i158

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #31
          to label %.noexc180 unwind label %.loopexit.split-lp245, !inline_history !319

.noexc180:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE12_M_check_lenEmPKc.exit.i158: ; preds = %bb.o
  %i.cj = sdiv exact i64 %i.ch, 24                ; 3 uses
  %.sroa.speculated.i.i159 = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i159, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 384307168202282325)
  %i.cn = select i1 %i.cl, i64 384307168202282325, i64 %i.cm ; 3 uses
  %.not.i.i160 = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %.not.i.i160)
  %i.co = mul nuw nsw i64 %i.cn, 24
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #30
          to label %.noexc181 unwind label %.loopexit244, !inline_history !319 ; 6 uses

.noexc181:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE12_M_check_lenEmPKc.exit.i158
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch ; 2 uses
  %i.cr = load i32, ptr %i.bz, align 8, !tbaa !43
  store i32 %i.cr, ptr %i.cq, align 8, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.ct, align 8, !tbaa !39
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 80
  store ptr null, ptr %i.cu, align 8, !tbaa !37
  %.not.i1728.i161 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i1728.i161, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i176, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i162

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i162: ; preds = %.noexc181, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i162
  %.0.i30.i163 = phi ptr [ %i.da, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i162 ], [ %i.cp, %.noexc181 ] ; 3 uses
  %.09.i29.i164 = phi ptr [ %i.cz, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i162 ], [ %i.bw, %.noexc181 ] ; 4 uses
  %i.cv = load i32, ptr %.09.i29.i164, align 8, !tbaa !43
  store i32 %i.cv, ptr %.0.i30.i163, align 8, !tbaa !43
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i30.i163, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.09.i29.i164, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.cx, align 8, !tbaa !39
  %i.cy = getelementptr inbounds nuw i8, ptr %.09.i29.i164, i64 16
  store ptr null, ptr %i.cy, align 8, !tbaa !37
  %i.cz = getelementptr inbounds nuw i8, ptr %.09.i29.i164, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i30.i163, i64 24 ; 2 uses
  %.not.i17.i165 = icmp eq ptr %i.cz, %i.bx
  br i1 %.not.i17.i165, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i176, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i162, !llvm.loop !317

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i176: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i162, %.noexc181
  %.0.i.lcssa.i167 = phi ptr [ %i.cp, %.noexc181 ], [ %i.da, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i162 ]
  %.0.i1931.i168 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i167, i64 24 ; 2 uses
  %.not.i16.i178 = icmp eq ptr %i.bw, null
  br i1 %.not.i16.i178, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit182, label %bb.q

bb.q:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i176
  tail call void @_ZdlPv(ptr noundef nonnull %i.bw) #32, !inline_history !319
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit182

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit182: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i176, %bb.q
  store ptr %i.cp, ptr %2, align 8, !tbaa !152
  store ptr %.0.i1931.i168, ptr %i.bv, align 8, !tbaa !159
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.cn ; 2 uses
  store ptr %i.db, ptr %i.bl, align 8, !tbaa !158
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit182, %bb.n
  %i.dc = phi ptr [ %i.cp, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit182 ], [ %i.bw, %bb.n ]
  %i.dd = phi ptr [ %i.db, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit182 ], [ %i.bx, %bb.n ]
  %i.de = phi ptr [ %.0.i1931.i168, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit182 ], [ %i.ce, %bb.n ] ; 2 uses
  %i.df = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.061.084) #33 ; 2 uses
  %.not = icmp eq ptr %i.df, %i.bu
  br i1 %.not, label %.loopexit, label %bb.m

.loopexit244:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE12_M_check_lenEmPKc.exit.i158
  %lpad.loopexit246 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp245:                            ; preds = %bb.p
  %lpad.loopexit.split-lp247 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit:                                        ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit.i.i, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit146
  %6 = phi ptr [ %i.be, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit.i.i ], [ %i.br, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit146 ], [ %5, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE7reserveEm.exit ], [ %i.de, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE9push_backEOSF_.exit ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.dh = load ptr, ptr %2, align 8, !tbaa !164   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %6
  br i1 %i.di, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EED2Ev.exit, label %.lr.ph94

.lr.ph94:                                         ; preds = %.loopexit
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph94, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit
  %i.dm = phi ptr [ %6, %.lr.ph94 ], [ %i.ia, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -24
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !43
  store i32 %i.do, ptr %3, align 8, !tbaa !43
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.dp, align 8, !tbaa !39
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 -8
  store ptr null, ptr %i.dq, align 8, !tbaa !37
  %i.dr = load ptr, ptr %i.dg, align 8, !tbaa !159 ; 3 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -24 ; 6 uses
  store ptr %i.ds, ptr %i.dg, align 8, !tbaa !159
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -16
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 -8
  %i.dv = load i8, ptr %i.dt, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.du, i8 noundef zeroext %i.dv)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit39 unwind label %bb.s, !inline_history !320

bb.s:                                             ; preds = %bb.r
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #29, !inline_history !320
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit39: ; preds = %bb.r
  %i.dy = load i8, ptr %i.dj, align 8, !tbaa !39
  switch i8 %i.dy, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE15_M_erase_at_endEPSF_.exit [
    i8 2, label %bb.t
    i8 1, label %bb.z
  ]

bb.t:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit39
  %i.dz = load ptr, ptr %i.dk, align 8, !tbaa !37 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !164 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !164 ; 2 uses
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 2 uses
  %i.eg = icmp sgt i64 %i.ef, 0
  br i1 %i.eg, label %.lr.ph91.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEESt20back_insert_iteratorISL_EET0_T_SQ_SP_.exit

.lr.ph91.preheader:                               ; preds = %bb.t
  %i.eh = udiv exact i64 %i.ef, 24
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %.noexc47
  %i.ei = phi ptr [ %i.fo, %.noexc47 ], [ %i.ds, %.lr.ph91.preheader ] ; 6 uses
  %.0.i.i4689 = phi i64 [ %i.fq, %.noexc47 ], [ %i.eh, %.lr.ph91.preheader ] ; 2 uses
  %.05.i.i88 = phi ptr [ %i.fp, %.noexc47 ], [ %i.ea, %.lr.ph91.preheader ] ; 7 uses
  %i.ej = load ptr, ptr %i.dl, align 8, !tbaa !158
  %.not.i50 = icmp eq ptr %i.ei, %i.ej
  br i1 %.not.i50, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph91
  %i.ek = load i32, ptr %.05.i.i88, align 8, !tbaa !43
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !43
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i88, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.em, align 8, !tbaa !39
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i88, i64 16
  store ptr null, ptr %i.en, align 8, !tbaa !37
  %i.eo = load ptr, ptr %i.dg, align 8, !tbaa !159
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24 ; 2 uses
  store ptr %i.ep, ptr %i.dg, align 8, !tbaa !159
  br label %.noexc47

bb.v:                                             ; preds = %.lr.ph91
  %i.eq = load ptr, ptr %2, align 8, !tbaa !152   ; 5 uses
  %i.er = ptrtoint ptr %i.ei to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es                    ; 3 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775800
  br i1 %i.eu, label %bb.w, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE12_M_check_lenEmPKc.exit.i183

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #31
          to label %.noexc205 unwind label %.loopexit.split-lp, !inline_history !321

.noexc205:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE12_M_check_lenEmPKc.exit.i183: ; preds = %bb.v
  %i.ev = sdiv exact i64 %i.et, 24                ; 3 uses
  %.sroa.speculated.i.i184 = call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ew = add nsw i64 %.sroa.speculated.i.i184, %i.ev ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  %i.ey = call i64 @llvm.umin.i64(i64 %i.ew, i64 384307168202282325)
  %i.ez = select i1 %i.ex, i64 384307168202282325, i64 %i.ey ; 3 uses
  %.not.i.i185 = icmp ne i64 %i.ez, 0
  call void @llvm.assume(i1 %.not.i.i185)
  %i.fa = mul nuw nsw i64 %i.ez, 24
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #30
          to label %.noexc206 unwind label %.loopexit233, !inline_history !321 ; 5 uses

.noexc206:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE12_M_check_lenEmPKc.exit.i183
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.et ; 2 uses
  %i.fd = load i32, ptr %.05.i.i88, align 8, !tbaa !43
  store i32 %i.fd, ptr %i.fc, align 8, !tbaa !43
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i88, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.ff, align 8, !tbaa !39
  %i.fg = getelementptr inbounds nuw i8, ptr %.05.i.i88, i64 16
  store ptr null, ptr %i.fg, align 8, !tbaa !37
  %.not.i1728.i186 = icmp eq ptr %i.eq, %i.ei
  br i1 %.not.i1728.i186, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i201, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i187

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i187: ; preds = %.noexc206, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i187
  %.0.i30.i188 = phi ptr [ %i.fm, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i187 ], [ %i.fb, %.noexc206 ] ; 3 uses
  %.09.i29.i189 = phi ptr [ %i.fl, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i187 ], [ %i.eq, %.noexc206 ] ; 4 uses
  %i.fh = load i32, ptr %.09.i29.i189, align 8, !tbaa !43
  store i32 %i.fh, ptr %.0.i30.i188, align 8, !tbaa !43
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i30.i188, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.09.i29.i189, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.fj, align 8, !tbaa !39
  %i.fk = getelementptr inbounds nuw i8, ptr %.09.i29.i189, i64 16
  store ptr null, ptr %i.fk, align 8, !tbaa !37
  %i.fl = getelementptr inbounds nuw i8, ptr %.09.i29.i189, i64 24 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i30.i188, i64 24 ; 2 uses
  %.not.i17.i190 = icmp eq ptr %i.fl, %i.ei
  br i1 %.not.i17.i190, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i201, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i187, !llvm.loop !317

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i201: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i187, %.noexc206
  %.0.i.lcssa.i192 = phi ptr [ %i.fb, %.noexc206 ], [ %i.fm, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i.i187 ]
  %.0.i1931.i193 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i192, i64 24 ; 2 uses
  %.not.i16.i203 = icmp eq ptr %i.eq, null
  br i1 %.not.i16.i203, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit207, label %bb.x

bb.x:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i201
  call void @_ZdlPv(ptr noundef nonnull %i.eq) #32, !inline_history !321
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit207

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit207: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit22.i201, %bb.x
  store ptr %i.fb, ptr %2, align 8, !tbaa !152
  store ptr %.0.i1931.i193, ptr %i.dg, align 8, !tbaa !159
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.ez
  store ptr %i.fn, ptr %i.dl, align 8, !tbaa !158
  br label %.noexc47

.noexc47:                                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit207, %bb.u
  %i.fo = phi ptr [ %.0.i1931.i193, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit207 ], [ %i.ep, %bb.u ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i88, i64 24
  %i.fq = add nsw i64 %.0.i.i4689, -1
  %i.fr = icmp sgt i64 %.0.i.i4689, 1
  br i1 %i.fr, label %.lr.ph91, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEESt20back_insert_iteratorISL_EET0_T_SQ_SP_.exit.loopexit, !llvm.loop !318

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEESt20back_insert_iteratorISL_EET0_T_SQ_SP_.exit.loopexit: ; preds = %.noexc47
  %.pre101 = load ptr, ptr %i.dk, align 8, !tbaa !37 ; 3 uses
  %.pre102 = load ptr, ptr %.pre101, align 8, !tbaa !152
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre101, i64 8
  %.pre103 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !159
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEESt20back_insert_iteratorISL_EET0_T_SQ_SP_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEESt20back_insert_iteratorISL_EET0_T_SQ_SP_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEESt20back_insert_iteratorISL_EET0_T_SQ_SP_.exit.loopexit, %bb.t
  %i.fs = phi ptr [ %i.fo, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEESt20back_insert_iteratorISL_EET0_T_SQ_SP_.exit.loopexit ], [ %i.ds, %bb.t ] ; 2 uses
  %i.ft = phi ptr [ %.pre103, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEESt20back_insert_iteratorISL_EET0_T_SQ_SP_.exit.loopexit ], [ %i.ec, %bb.t ] ; 2 uses
  %i.fu = phi ptr [ %.pre102, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEESt20back_insert_iteratorISL_EET0_T_SQ_SP_.exit.loopexit ], [ %i.ea, %bb.t ] ; 3 uses
  %i.fv = phi ptr [ %.pre101, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEESt20back_insert_iteratorISL_EET0_T_SQ_SP_.exit.loopexit ], [ %i.dz, %bb.t ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.not.i41 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not.i41, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EE15_M_erase_at_endEPSF_.exit, label %.preheader69

.preheader69:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEESt20back_insert_iteratorISL_EET0_T_SQ_SP_.exit, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i
  %.0.i92 = phi ptr [ %i.gc, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i ], [ %i.fu, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEESt20back_insert_iteratorISL_EET0_T_SQ_SP_.exit ] ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i92, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i92, i64 16
  %i.fz = load i8, ptr %i.fx, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, i8 noundef zeroext %i.fz)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i unwind label %bb.y, !inline_history !322

bb.y:                                             ; preds = %.preheader69
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #29, !inline_history !322
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i: ; preds = %.preheader69
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i92, i64 24 ; 2 uses
  %.not.i48 = icmp eq ptr %i.gc, %i.ft
  br i1 %.not.i48, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEEvT_SI_.exit.i, label %.preheader69, !llvm.loop !7

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEEvT_SI_.exit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEED2Ev.exit.i
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataIiEEEESt10_Select1stISJ_ESt4lessIS5_ESaISJ_EE7_M_copyILb0ENSP_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISJ_ESU_PSt18_Rb_tree_node_baseRT0_:bb.a
  %.030.in37 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03038 = load ptr, ptr %.030.in37, align 8, !tbaa !125 ; 2 uses
  %.not3239 = icmp eq ptr %.03038, null
  br i1 %.not3239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03041 = phi ptr [ %.030, %bb.l ], [ %.03038, %bb.e ] ; 4 uses
  %.03140 = phi ptr [ %i.m, %bb.l ], [ %i.c, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !334, !nonnull !128, !align !144
  %i.m = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #30
          to label %.noexc unwind label %bb.i     ; 8 uses

.noexc:                                           ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.03041, i64 32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataIiEEEESt10_Select1stISJ_ESt4lessIS5_ESaISJ_EE17_M_construct_nodeIJRKSJ_EEEvPSt13_Rb_tree_nodeISJ_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %bb.f unwind label %bb.i, !inline_history !331

bb.f:                                             ; preds = %.noexc
  %i.o = load i32, ptr %.03041, align 8, !tbaa !165
  store i32 %i.o, ptr %i.m, align 8, !tbaa !165
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.03140, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.r, align 8, !tbaa !125
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03140, ptr %i.s, align 8, !tbaa !166
  %i.t = getelementptr inbounds nuw i8, ptr %.03041, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !126  ; 2 uses
  %.not33 = icmp eq ptr %i.u, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataIiEEEESt10_Select1stISJ_ESt4lessIS5_ESaISJ_EE7_M_copyILb0ENSP_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISJ_ESU_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.v, ptr %i.q, align 8, !tbaa !126
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %.noexc, %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.k, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.0) #27 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataIiEEEESt10_Select1stISJ_ESt4lessIS5_ESaISJ_EE8_M_eraseEPSt13_Rb_tree_nodeISJ_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #31
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03041, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !125 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !332

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.y

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.c

bb.o:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #29
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataIiEEEESt10_Select1stISJ_ESt4lessIS5_ESaISJ_EE17_M_construct_nodeIJRKSJ_EEEvPSt13_Rb_tree_nodeISJ_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !105
  %i.d = load ptr, ptr %2, align 8, !tbaa !108    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !109  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.f, ptr %i.a, align 8, !tbaa !106
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.e    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !108
  %i.i = load i64, ptr %i.a, align 8, !tbaa !106
  store i64 %i.i, ptr %i.c, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc6, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc6 ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %.noexc
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !37
  store i8 %i.k, ptr %i.j, align 1, !tbaa !37
  br label %.noexc

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %.noexc

.noexc:                                           ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.l, ptr %i.m, align 8, !tbaa !109
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEE13json_metadataIiEEEEEEE9constructISK_JRKSK_EEEvRSM_PT_DpOT0_.exit unwind label %bb.d, !inline_history !335

bb.d:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.s) #32
  br label %.body

bb.e:                                             ; preds = %.noexc.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.d ]
  %i.v = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.w = call ptr @__cxa_begin_catch(ptr %i.v) #27 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %1) #32
  invoke void @__cxa_rethrow() #31
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.body
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEE13json_metadataIiEEEEEEE9constructISK_JRKSK_EEEvRSM_PT_DpOT0_.exit: ; preds = %.noexc
  ret void

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.x

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #29
  unreachable

bb.i:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIiEEESaISF_EEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !152    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEE8allocateEmPKv.exit.i.i.i, !prof !132

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !152
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !159
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !158
  %i.m = load ptr, ptr %1, align 8, !tbaa !164    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !164  ; 2 uses
  %.not18 = icmp eq ptr %i.m, %i.n
  br i1 %.not18, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEEPSI_SI_ET0_T_SQ_SP_RSaIT1_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEJRKSG_EEvPT_DpOT0_.exit.i
  %.0.i20 = phi ptr [ %i.p, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEJRKSG_EEvPT_DpOT0_.exit.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.014.019 = phi ptr [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEJRKSG_EEvPT_DpOT0_.exit.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIiEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %.0.i20, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.019)
          to label %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEJRKSG_EEvPT_DpOT0_.exit.i unwind label %bb.d, !inline_history !336

_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEJRKSG_EEvPT_DpOT0_.exit.i: ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i20, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.n
  br i1 %.not, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEEPSI_SI_ET0_T_SQ_SP_RSaIT1_E.exit, label %.lr.ph, !llvm.loop !337

bb.d:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #27, !inline_history !338 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEEvT_SI_(ptr noundef %i.i, ptr noundef nonnull %.0.i20)
          to label %bb.e unwind label %bb.f, !inline_history !338

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.f, !inline_history !338

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g, !inline_history !338

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #29, !inline_history !338
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIiEEES6_ISI_SaISI_EEEEPSI_SI_ET0_T_SQ_SP_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEJRKSG_EEvPT_DpOT0_.exit.i, %bb.c
  %.0.i.lcssa = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEEJRKSG_EEvPT_DpOT0_.exit.i ]
  store ptr %.0.i.lcssa, ptr %i.j, align 8, !tbaa !159
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !152    ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #32
  br label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EED2Ev.exit

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIiEEESaISG_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZN7doctest17getContextOptionsEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7doctest6detail19stringifyBinaryExprIiiEENS_6StringERKT_PKcRKT0_(ptr dead_on_unwind noalias writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.doctest::String", align 8   ; 7 uses
  %5 = alloca %"class.doctest::String", align 8   ; 7 uses
  %6 = alloca %"class.doctest::String", align 8   ; 7 uses
  %7 = alloca %"class.doctest::String", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = load i32, ptr %1, align 4, !tbaa !43
  call void @_ZN7doctest8toStringEi(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %5, i32 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.b = load i32, ptr %3, align 4, !tbaa !43
  invoke void @_ZN7doctest8toStringEi(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %7, i32 noundef %i.b)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.f, %bb.i ], [ %i.e, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.d, %bb.g ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN7doctest6detail6ResultC1EbRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

declare void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN7doctest8toStringEi(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %0, align 8, !tbaa !54
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataISC_IiSaIiEEEEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE7_M_copyILb0ENSR_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISL_ESW_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %3, align 8, !tbaa !343, !nonnull !128, !align !144
  %i.c = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #30 ; 9 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataISC_IiSaIiEEEEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE17_M_construct_nodeIJRKSL_EEEvPSt13_Rb_tree_nodeISL_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.a), !inline_history !339
  %i.d = load i32, ptr %1, align 8, !tbaa !165
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataISC_IiSaIiEEEEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE7_M_copyILb0ENSR_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISL_ESW_PSt18_Rb_tree_node_baseRT0_:bb.a
bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03041, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !125 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !341

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.y

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.c

bb.o:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #29
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataISC_IiSaIiEEEEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.07 = phi ptr [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %1, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataISC_IiSaIiEEEEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 96
  %i.h = load i8, ptr %i.f, align 8, !tbaa !54
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext %i.h)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i unwind label %bb.b, !inline_history !344

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29, !inline_history !344
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #32, !inline_history !345
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i, %bb.c
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.m) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #32
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !346

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataISC_IiSaIiEEEEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE17_M_construct_nodeIJRKSL_EEEvPSt13_Rb_tree_nodeISL_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !105
  %i.d = load ptr, ptr %2, align 8, !tbaa !108    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !109  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.f, ptr %i.a, align 8, !tbaa !106
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.e    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !108
  %i.i = load i64, ptr %i.a, align 8, !tbaa !106
  store i64 %i.i, ptr %i.c, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc6, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc6 ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %.noexc
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !37
  store i8 %i.k, ptr %i.j, align 1, !tbaa !37
  br label %.noexc

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %.noexc

.noexc:                                           ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.l, ptr %i.m, align 8, !tbaa !109
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEE13json_metadataISD_IiSaIiEEEEEEEEE9constructISM_JRKSM_EEEvRSO_PT_DpOT0_.exit unwind label %bb.d, !inline_history !347

bb.d:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.s) #32
  br label %.body

bb.e:                                             ; preds = %.noexc.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.d ]
  %i.v = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.w = call ptr @__cxa_begin_catch(ptr %i.v) #27 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %1) #32
  invoke void @__cxa_rethrow() #31
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.body
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEE13json_metadataISD_IiSaIiEEEEEEEEE9constructISM_JRKSM_EEEvRSO_PT_DpOT0_.exit: ; preds = %.noexc
  ret void

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.x

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #29
  unreachable

bb.i:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EEC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !169    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEE8allocateEmPKv.exit.i.i.i, !prof !132

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !169
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !168
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !170
  %i.m = load ptr, ptr %1, align 8, !tbaa !95     ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.not18 = icmp eq ptr %i.m, %i.n
  br i1 %.not18, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEEPSK_SK_ET0_T_SS_SR_RSaIT1_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEJRKSI_EEvPT_DpOT0_.exit.i
  %.0.i20 = phi ptr [ %i.p, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEJRKSI_EEvPT_DpOT0_.exit.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.014.019 = phi ptr [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEJRKSI_EEvPT_DpOT0_.exit.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(40) %.0.i20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.014.019)
          to label %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEJRKSI_EEvPT_DpOT0_.exit.i unwind label %bb.d, !inline_history !348

_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEJRKSI_EEvPT_DpOT0_.exit.i: ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i20, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.n
  br i1 %.not, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEEPSK_SK_ET0_T_SS_SR_RSaIT1_E.exit, label %.lr.ph, !llvm.loop !349

bb.d:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #27, !inline_history !350 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEEvT_SK_(ptr noundef %i.i, ptr noundef nonnull %.0.i20)
          to label %bb.e unwind label %bb.f, !inline_history !350

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.f, !inline_history !350

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g, !inline_history !350

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #29, !inline_history !350
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEEPSK_SK_ET0_T_SS_SR_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEJRKSI_EEvPT_DpOT0_.exit.i, %bb.c
  %.0.i.lcssa = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEJRKSI_EEvPT_DpOT0_.exit.i ]
  store ptr %.0.i.lcssa, ptr %i.j, align 8, !tbaa !168
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !169    ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #32
  br label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EED2Ev.exit

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEEvT_SK_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i2 = icmp eq ptr %0, %1
  br i1 %.not.i2, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEEEEvT_SM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEEvPT_.exit
  %.0.i3 = phi ptr [ %i.g, %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEEvPT_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i3, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i3, i64 32
  %i.c = load i8, ptr %i.a, align 8, !tbaa !54
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext %i.c)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i.i unwind label %bb.b, !inline_history !351

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29, !inline_history !351
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i.i: ; preds = %.lr.ph
  %i.f = load ptr, ptr %.0.i3, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEEvPT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #32, !inline_history !352
  br label %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEEvPT_.exit

_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEEvPT_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i.i, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i3, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEEEEvT_SM_.exit, label %.lr.ph, !llvm.loop !8

_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEEEEvT_SM_.exit: ; preds = %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.156", align 8   ; 21 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.0", align 16 ; 9 uses
  %i.a = icmp eq i8 %1, 1
  %i.b = load ptr, ptr %0, align 8                ; 6 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %or.cond31 = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond31, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 2
  %i.e = and i8 %1, -2
  %i.f = icmp eq i8 %i.e, 2
  %i.g = icmp eq i8 %1, 8
  %i.h = or i1 %i.g, %i.f
  %or.cond71 = select i1 %i.h, i1 %i.c, i1 false
  br i1 %or.cond71, label %bb.aq, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i8 %1, -1
  %or.cond = icmp ult i8 %i.i, 2
  br i1 %or.cond, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %i.d, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !168  ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !169  ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp ugt i64 %i.o, 9223372036854775800
  br i1 %i.p, label %.invoke, label %bb.f

.invoke:                                          ; preds = %bb.e, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #31
          to label %.cont unwind label %.loopexit.split-lp, !inline_history !353

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not200.a = icmp eq ptr %i.k, %i.l
  br i1 %.not200.a, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30
          to label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE7reserveEm.exit.a unwind label %.loopexit.split-lp, !inline_history !353 ; 3 uses

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE7reserveEm.exit.a: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EE11_M_allocateEm.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.r, ptr %2, align 8, !tbaa !169
  store ptr %i.r, ptr %i.s, align 8, !tbaa !168
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  store ptr %i.t, ptr %i.q, align 8, !tbaa !170
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE7reserveEm.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE7reserveEm.exit.a, %bb.f
  %.not200 = icmp eq ptr %i.k, %i.l
  br i1 %.not200, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE7reserveEm.exit
  %i.u = udiv exact i64 %i.o, 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit.i.i, %.lr.ph.i
  %.0.i12.i = phi i64 [ %i.u, %.lr.ph.i ], [ %i.ai, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit.i.i ] ; 2 uses
  %.05.i11.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.ah, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit.i.i ] ; 7 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !168  ; 5 uses
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !170
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load <2 x ptr>, ptr %.05.i11.i, align 8, !tbaa !65
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.05.i11.i, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.ad, align 8, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 32
  store ptr null, ptr %i.ae, align 8, !tbaa !37
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !168
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %i.ag, ptr %i.v, align 8, !tbaa !168
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit.i.i

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE17_M_realloc_insertIJSH_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(40) %.05.i11.i)
          to label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit.i.i unwind label %.loopexit161, !inline_history !354

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 40
  %i.ai = add nsw i64 %.0.i12.i, -1
  %i.aj = icmp sgt i64 %.0.i12.i, 1
  br i1 %i.aj, label %bb.g, label %.loopexit, !llvm.loop !355

.loopexit161:                                     ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %.invoke, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EE11_M_allocateEm.exit.i147
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.j:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !113 ; 4 uses
  %i.am = icmp ugt i64 %i.al, 230584300921369395
  br i1 %i.am, label %.invoke, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not199 = icmp eq i64 %i.al, 0
  br i1 %.not199, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE7reserveEm.exit160, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EE11_M_allocateEm.exit.i147

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EE11_M_allocateEm.exit.i147: ; preds = %bb.k
  %i.ao = mul nuw nsw i64 %i.al, 40
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #30
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EE13_M_deallocateEPSI_m.exit.i157 unwind label %.loopexit.split-lp, !inline_history !353 ; 3 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EE13_M_deallocateEPSI_m.exit.i157: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EE11_M_allocateEm.exit.i147
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ap, ptr %2, align 8, !tbaa !169
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !168
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %i.al
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !170
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE7reserveEm.exit160

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE7reserveEm.exit160: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEESaISI_EE13_M_deallocateEPSI_m.exit.i157, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !93 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.at, %i.au
  br i1 %.not87, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE7reserveEm.exit160
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit
  %.sroa.065.088 = phi ptr [ %i.at, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.065.088, i64 64 ; 3 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !168 ; 6 uses
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !170
  %.not.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !65
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.065.088, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !52
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i8 0, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.065.088, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.be, align 8, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.065.088, i64 96
  store ptr null, ptr %i.bf, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr %i.bg, ptr %i.av, align 8, !tbaa !168
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit

bb.n:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE17_M_realloc_insertIJSH_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.aw)
          to label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit unwind label %bb.o, !inline_history !356

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit: ; preds = %bb.n, %bb.m
  %i.bh = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.065.088) #33 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.au
  br i1 %.not, label %.loopexit, label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit:                                        ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit.i.i, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE7reserveEm.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE7reserveEm.exit160
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.bk = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !95 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EED2Ev.exit, label %.lr.ph98

.lr.ph98:                                         ; preds = %.loopexit
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph98, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit
  %i.br = phi ptr [ %i.bl, %.lr.ph98 ], [ %i.ev, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -40 ; 2 uses
  %i.bt = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !65
  store <2 x ptr> %i.bt, ptr %3, align 16, !tbaa !65
  %i.bu = getelementptr inbounds i8, ptr %i.br, i64 -24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !52
  store ptr %i.bv, ptr %i.bn, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, i8 0, i64 24, i1 false)
  %i.bw = getelementptr inbounds i8, ptr %i.br, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.bw, align 8, !tbaa !64
  %i.bx = getelementptr inbounds i8, ptr %i.br, i64 -8
  store ptr null, ptr %i.bx, align 8, !tbaa !37
  %i.by = load ptr, ptr %i.bj, align 8, !tbaa !168 ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -40 ; 2 uses
  store ptr %i.bz, ptr %i.bj, align 8, !tbaa !168
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 -8
  %i.cc = load i8, ptr %i.ca, align 8, !tbaa !54
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i8 noundef zeroext %i.cc)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i39 unwind label %bb.q, !inline_history !357

bb.q:                                             ; preds = %bb.p
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #29, !inline_history !357
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i39: ; preds = %bb.p
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i.i40 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i40, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit41, label %bb.r

bb.r:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i39
  call void @_ZdlPv(ptr noundef nonnull %i.cf) #32, !inline_history !358
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit41

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit41: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i39, %bb.r
  %i.cg = load i8, ptr %i.bo, align 8, !tbaa !64
  switch i8 %i.cg, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE15_M_erase_at_endEPSH_.exit [
    i8 2, label %bb.s
    i8 1, label %bb.y
  ]

bb.s:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit41
  %i.ch = load ptr, ptr %i.bp, align 16, !tbaa !37 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !95 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !95 ; 2 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = icmp sgt i64 %i.cn, 0
  br i1 %i.co, label %.lr.ph95.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEESt20back_insert_iteratorISN_EET0_T_SS_SR_.exit

.lr.ph95.preheader:                               ; preds = %bb.s
  %i.cp = udiv exact i64 %i.cn, 40
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.noexc49
  %.0.i.i4893 = phi i64 [ %i.dc, %.noexc49 ], [ %i.cp, %.lr.ph95.preheader ] ; 2 uses
  %.05.i.i92 = phi ptr [ %i.db, %.noexc49 ], [ %i.ci, %.lr.ph95.preheader ] ; 7 uses
  %i.cq = load ptr, ptr %i.bj, align 8, !tbaa !168 ; 5 uses
  %i.cr = load ptr, ptr %i.bq, align 8, !tbaa !170
  %.not.i54 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i54, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph95
  %i.cs = load <2 x ptr>, ptr %.05.i.i92, align 8, !tbaa !65
  store <2 x ptr> %i.cs, ptr %i.cq, align 8, !tbaa !65
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i92, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !52
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i92, i8 0, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i92, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.cx, align 8, !tbaa !64
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i92, i64 32
  store ptr null, ptr %i.cy, align 8, !tbaa !37
  %i.cz = load ptr, ptr %i.bj, align 8, !tbaa !168
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store ptr %i.da, ptr %i.bj, align 8, !tbaa !168
  br label %.noexc49

bb.u:                                             ; preds = %.lr.ph95
  invoke void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE17_M_realloc_insertIJSH_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.cq, ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i92)
          to label %.noexc49 unwind label %bb.x, !inline_history !359

.noexc49:                                         ; preds = %bb.t, %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i92, i64 40
  %i.dc = add nsw i64 %.0.i.i4893, -1
  %i.dd = icmp sgt i64 %.0.i.i4893, 1
  br i1 %i.dd, label %.lr.ph95, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEESt20back_insert_iteratorISN_EET0_T_SS_SR_.exit.loopexit, !llvm.loop !355

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEESt20back_insert_iteratorISN_EET0_T_SS_SR_.exit.loopexit: ; preds = %.noexc49
  %.pre105 = load ptr, ptr %i.bp, align 16, !tbaa !37 ; 3 uses
  %.pre106 = load ptr, ptr %.pre105, align 8, !tbaa !169
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre105, i64 8
  %.pre107 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !168
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEESt20back_insert_iteratorISN_EET0_T_SS_SR_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEESt20back_insert_iteratorISN_EET0_T_SS_SR_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEESt20back_insert_iteratorISN_EET0_T_SS_SR_.exit.loopexit, %bb.s
  %i.de = phi ptr [ %.pre107, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEESt20back_insert_iteratorISN_EET0_T_SS_SR_.exit.loopexit ], [ %i.ck, %bb.s ] ; 2 uses
  %i.df = phi ptr [ %.pre106, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEESt20back_insert_iteratorISN_EET0_T_SS_SR_.exit.loopexit ], [ %i.ci, %bb.s ] ; 3 uses
  %i.dg = phi ptr [ %.pre105, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEESt20back_insert_iteratorISN_EET0_T_SS_SR_.exit.loopexit ], [ %i.ch, %bb.s ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.not.i43 = icmp eq ptr %i.de, %i.df
  br i1 %.not.i43, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE15_M_erase_at_endEPSH_.exit, label %.preheader73

.preheader73:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEESt20back_insert_iteratorISN_EET0_T_SS_SR_.exit, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit.i
  %.0.i96 = phi ptr [ %i.do, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit.i ], [ %i.df, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataIS6_IiSaIiEEEEES6_ISK_SaISK_EEEESt20back_insert_iteratorISN_EET0_T_SS_SR_.exit ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i96, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i96, i64 32
  %i.dk = load i8, ptr %i.di, align 8, !tbaa !54
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, i8 noundef zeroext %i.dk)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i.i unwind label %bb.v, !inline_history !360

bb.v:                                             ; preds = %.preheader73
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #29, !inline_history !360
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i.i: ; preds = %.preheader73
  %i.dn = load ptr, ptr %.0.i96, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #32, !inline_history !361
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit.i

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit.i: ; preds = %bb.w, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEE4dataD2Ev.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i96, i64 40 ; 2 uses
  %.not.i50 = icmp eq ptr %i.do, %i.de
  br i1 %.not.i50, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEEvT_SK_.exit.i, label %.preheader73, !llvm.loop !8

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataIS4_IiSaIiEEEEEEvT_SK_.exit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit.i
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !168
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE15_M_erase_at_endEPSH_.exit

bb.x:                                             ; preds = %bb.u
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.y:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataIS3_IiSaIiEEEED2Ev.exit41
  %i.dq = load ptr, ptr %i.bp, align 16, !tbaa !37 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !93 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %.not7289 = icmp eq ptr %i.ds, %i.dt
  br i1 %.not7289, label %._crit_edge, label %.lr.ph91

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE9push_backEOSH_.exit38
  %.pre = load ptr, ptr %i.bp, align 16, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.y
  %i.du = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.dq, %bb.y ] ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !111
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataISC_IiSaIiEEEEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef %i.dw)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataISC_IiSaIiEEEEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE5clearEv.exit unwind label %bb.z, !inline_history !362

bb.z:                                             ; preds = %._crit_edge
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #29, !inline_history !362
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataISC_IiSaIiEEEEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE5clearEv.exit: ; preds = %._crit_edge
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  store ptr null, ptr %i.dv, align 8, !tbaa !111
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !93
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !112
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  store i64 0, ptr %i.ec, align 8, !tbaa !113
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataIS_IiSaIiEEEEESaISH_EE17_M_realloc_insertIJSH_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7doctest6detail19stringifyBinaryExprImiEENS_6StringERKT_PKcRKT0_(ptr dead_on_unwind noalias writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.doctest::String", align 8   ; 7 uses
  %5 = alloca %"class.doctest::String", align 8   ; 7 uses
  %6 = alloca %"class.doctest::String", align 8   ; 7 uses
  %7 = alloca %"class.doctest::String", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = load i64, ptr %1, align 8, !tbaa !106
  call void @_ZN7doctest8toStringEm(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %5, i64 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.b = load i32, ptr %3, align 4, !tbaa !43
  invoke void @_ZN7doctest8toStringEi(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %7, i32 noundef %i.b)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.f, %bb.i ], [ %i.e, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.d, %bb.g ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN7doctest8toStringEm(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7doctest6detail19stringifyBinaryExprISt10unique_ptrIiSt14default_deleteIiEEDnEENS_6StringERKT_PKcRKT0_(ptr dead_on_unwind noalias writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.doctest::String", align 8   ; 7 uses
  %5 = alloca %"class.doctest::String", align 8   ; 7 uses
  %6 = alloca %"class.doctest::String", align 8   ; 7 uses
  %7 = alloca %"class.doctest::String", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.57)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN7doctest8toStringEDn(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %7, ptr null)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.d, %bb.i ], [ %i.c, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.b, %bb.g ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.a, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN7doctest8toStringEDn(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.246", align 8   ; 21 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.6", align 8 ; 8 uses
  %i.a = icmp eq i8 %1, 1
  %i.b = load ptr, ptr %0, align 8                ; 6 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %or.cond31 = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond31, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 2
  %i.e = and i8 %1, -2
  %i.f = icmp eq i8 %i.e, 2
  %i.g = icmp eq i8 %1, 8
  %i.h = or i1 %i.g, %i.f
  %or.cond74 = select i1 %i.h, i1 %i.c, i1 false
  br i1 %or.cond74, label %bb.am, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i8 %1, -1
  %or.cond = icmp ult i8 %i.i, 2
  br i1 %or.cond, label %bb.d, label %bb.af

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %i.d, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !173  ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !174  ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp ugt i64 %i.o, 9223372036854775800
  br i1 %i.p, label %.invoke, label %bb.f

.invoke:                                          ; preds = %bb.e, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #31
          to label %.cont unwind label %.loopexit.split-lp, !inline_history !370

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not205.a = icmp eq ptr %i.k, %i.l
  br i1 %.not205.a, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISK_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISK_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30
          to label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE7reserveEm.exit.a unwind label %.loopexit.split-lp, !inline_history !370 ; 3 uses

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE7reserveEm.exit.a: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISK_EE11_M_allocateEm.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.r, ptr %2, align 8, !tbaa !174
  store ptr %i.r, ptr %i.s, align 8, !tbaa !173
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  store ptr %i.t, ptr %i.q, align 8, !tbaa !175
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE7reserveEm.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE7reserveEm.exit.a, %bb.f
  %.not205 = icmp eq ptr %i.k, %i.l
  br i1 %.not205, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE7reserveEm.exit
  %i.u = udiv exact i64 %i.o, 24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit.i.i, %.lr.ph.i
  %.0.i12.i = phi i64 [ %i.u, %.lr.ph.i ], [ %i.af, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit.i.i ] ; 2 uses
  %.05.i11.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.ae, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit.i.i ] ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !173  ; 4 uses
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !175
  %.not.i.i.i.i138 = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i138, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr %.05.i11.i, align 8, !tbaa !65
  store i64 %i.y, ptr %i.w, align 8, !tbaa !65
  store ptr null, ptr %.05.i11.i, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.aa, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 16
  store ptr null, ptr %i.ab, align 8, !tbaa !37
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !173
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !173
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit.i.i

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE17_M_realloc_insertIJSJ_EEEvN9__gnu_cxx17__normal_iteratorIPSJ_SL_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.05.i11.i)
          to label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit.i.i unwind label %.loopexit166, !inline_history !371

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 24
  %i.af = add nsw i64 %.0.i12.i, -1
  %i.ag = icmp sgt i64 %.0.i12.i, 1
  br i1 %i.ag, label %bb.g, label %.loopexit, !llvm.loop !372

.loopexit166:                                     ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %.invoke, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISK_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISK_EE11_M_allocateEm.exit.i152
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.j:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !113 ; 4 uses
  %i.aj = icmp ugt i64 %i.ai, 384307168202282325
  br i1 %i.aj, label %.invoke, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not204 = icmp eq i64 %i.ai, 0
  br i1 %.not204, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE7reserveEm.exit165, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISK_EE11_M_allocateEm.exit.i152

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISK_EE11_M_allocateEm.exit.i152: ; preds = %bb.k
  %i.al = mul nuw nsw i64 %i.ai, 24
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #30
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISK_EE13_M_deallocateEPSK_m.exit.i162 unwind label %.loopexit.split-lp, !inline_history !370 ; 3 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISK_EE13_M_deallocateEPSK_m.exit.i162: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISK_EE11_M_allocateEm.exit.i152
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.am, ptr %2, align 8, !tbaa !174
  store ptr %i.am, ptr %i.an, align 8, !tbaa !173
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ai
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !175
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE7reserveEm.exit165

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE7reserveEm.exit165: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISK_EE13_M_deallocateEPSK_m.exit.i162, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !93 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not90, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE7reserveEm.exit165
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit
  %.sroa.068.091 = phi ptr [ %i.aq, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.068.091, i64 64 ; 3 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !173 ; 4 uses
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load i64, ptr %i.at, align 8, !tbaa !65
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !65
  store ptr null, ptr %i.at, align 8, !tbaa !65
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.068.091, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.ay, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.068.091, i64 80
  store ptr null, ptr %i.az, align 8, !tbaa !37
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !173
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %i.bb, ptr %i.as, align 8, !tbaa !173
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit

bb.n:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE17_M_realloc_insertIJSJ_EEEvN9__gnu_cxx17__normal_iteratorIPSJ_SL_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit unwind label %bb.o, !inline_history !373

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit: ; preds = %bb.n, %bb.m
  %i.bc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.068.091) #33 ; 2 uses
  %.not = icmp eq ptr %i.bc, %i.ar
  br i1 %.not, label %.loopexit, label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit:                                        ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit.i.i, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE7reserveEm.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE7reserveEm.exit165
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.bf = load ptr, ptr %2, align 8, !tbaa !384   ; 2 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !384 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EED2Ev.exit, label %.lr.ph101

.lr.ph101:                                        ; preds = %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph101, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEED2Ev.exit
  %i.bl = phi ptr [ %i.bg, %.lr.ph101 ], [ %i.ei, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -24 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !65
  store i64 %i.bn, ptr %3, align 8, !tbaa !65
  store ptr null, ptr %i.bm, align 8, !tbaa !65
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.bo, align 8, !tbaa !76
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 -8
  store ptr null, ptr %i.bp, align 8, !tbaa !37
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !173 ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -24 ; 2 uses
  store ptr %i.br, ptr %i.be, align 8, !tbaa !173
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -16
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 -8
  %i.bu = load i8, ptr %i.bs, align 8, !tbaa !68
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, i8 noundef zeroext %i.bu)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEE4dataD2Ev.exit.i40 unwind label %bb.q, !inline_history !374

bb.q:                                             ; preds = %bb.p
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #29, !inline_history !374
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEE4dataD2Ev.exit.i40: ; preds = %bb.p
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i41, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEED2Ev.exit43, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i42

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i42:      ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEE4dataD2Ev.exit.i40
  call void @_ZdlPv(ptr noundef nonnull %i.bx) #32, !inline_history !375
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEED2Ev.exit43

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEED2Ev.exit43: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEE4dataD2Ev.exit.i40, %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i42
  %i.by = load i8, ptr %i.bi, align 8, !tbaa !76
  switch i8 %i.by, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE15_M_erase_at_endEPSJ_.exit [
    i8 2, label %bb.r
    i8 1, label %bb.w
  ]

bb.r:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEED2Ev.exit43
  %i.bz = load ptr, ptr %i.bj, align 8, !tbaa !37 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !384 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !384 ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph98.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEES6_ISM_SaISM_EEEESt20back_insert_iteratorISP_EET0_T_SU_ST_.exit

.lr.ph98.preheader:                               ; preds = %bb.r
  %i.ch = udiv exact i64 %i.cf, 24
  br label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %.noexc51
  %.0.i.i5096 = phi i64 [ %i.cr, %.noexc51 ], [ %i.ch, %.lr.ph98.preheader ] ; 2 uses
  %.05.i.i95 = phi ptr [ %i.cq, %.noexc51 ], [ %i.ca, %.lr.ph98.preheader ] ; 6 uses
  %i.ci = load ptr, ptr %i.be, align 8, !tbaa !173 ; 4 uses
  %i.cj = load ptr, ptr %i.bk, align 8, !tbaa !175
  %.not.i57 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i57, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph98
  %i.ck = load i64, ptr %.05.i.i95, align 8, !tbaa !65
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !65
  store ptr null, ptr %.05.i.i95, align 8, !tbaa !65
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i95, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !58
  store i8 0, ptr %i.cm, align 8, !tbaa !76
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i95, i64 16
  store ptr null, ptr %i.cn, align 8, !tbaa !37
  %i.co = load ptr, ptr %i.be, align 8, !tbaa !173
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store ptr %i.cp, ptr %i.be, align 8, !tbaa !173
  br label %.noexc51

bb.t:                                             ; preds = %.lr.ph98
  invoke void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE17_M_realloc_insertIJSJ_EEEvN9__gnu_cxx17__normal_iteratorIPSJ_SL_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i95)
          to label %.noexc51 unwind label %bb.v, !inline_history !376

.noexc51:                                         ; preds = %bb.s, %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i95, i64 24
  %i.cr = add nsw i64 %.0.i.i5096, -1
  %i.cs = icmp sgt i64 %.0.i.i5096, 1
  br i1 %i.cs, label %.lr.ph98, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEES6_ISM_SaISM_EEEESt20back_insert_iteratorISP_EET0_T_SU_ST_.exit.loopexit, !llvm.loop !372

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEES6_ISM_SaISM_EEEESt20back_insert_iteratorISP_EET0_T_SU_ST_.exit.loopexit: ; preds = %.noexc51
  %.pre108 = load ptr, ptr %i.bj, align 8, !tbaa !37 ; 3 uses
  %.pre109 = load ptr, ptr %.pre108, align 8, !tbaa !174
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre108, i64 8
  %.pre110 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !173
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEES6_ISM_SaISM_EEEESt20back_insert_iteratorISP_EET0_T_SU_ST_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEES6_ISM_SaISM_EEEESt20back_insert_iteratorISP_EET0_T_SU_ST_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEES6_ISM_SaISM_EEEESt20back_insert_iteratorISP_EET0_T_SU_ST_.exit.loopexit, %bb.r
  %i.ct = phi ptr [ %.pre110, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEES6_ISM_SaISM_EEEESt20back_insert_iteratorISP_EET0_T_SU_ST_.exit.loopexit ], [ %i.cc, %bb.r ] ; 2 uses
  %i.cu = phi ptr [ %.pre109, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEES6_ISM_SaISM_EEEESt20back_insert_iteratorISP_EET0_T_SU_ST_.exit.loopexit ], [ %i.ca, %bb.r ] ; 3 uses
  %i.cv = phi ptr [ %.pre108, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEES6_ISM_SaISM_EEEESt20back_insert_iteratorISP_EET0_T_SU_ST_.exit.loopexit ], [ %i.bz, %bb.r ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.not.i45 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i45, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE15_M_erase_at_endEPSJ_.exit, label %.preheader76

.preheader76:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEES6_ISM_SaISM_EEEESt20back_insert_iteratorISP_EET0_T_SU_ST_.exit, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEED2Ev.exit.i
  %.0.i99 = phi ptr [ %i.dd, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEED2Ev.exit.i ], [ %i.cu, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEES6_ISM_SaISM_EEEESt20back_insert_iteratorISP_EET0_T_SU_ST_.exit ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i99, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i99, i64 16
  %i.cz = load i8, ptr %i.cx, align 8, !tbaa !68
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, i8 noundef zeroext %i.cz)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEE4dataD2Ev.exit.i.i unwind label %bb.u, !inline_history !377

bb.u:                                             ; preds = %.preheader76
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #29, !inline_history !377
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEE4dataD2Ev.exit.i.i: ; preds = %.preheader76
  %i.dc = load ptr, ptr %.0.i99, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEED2Ev.exit.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i:      ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEE4dataD2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dc) #32, !inline_history !378
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEED2Ev.exit.i

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEE4dataD2Ev.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i99, i64 24 ; 2 uses
  %.not.i52 = icmp eq ptr %i.dd, %i.ct
  br i1 %.not.i52, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEEEvT_SM_.exit.i, label %.preheader76, !llvm.loop !9

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEEEvT_SM_.exit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEED2Ev.exit.i
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !173
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE15_M_erase_at_endEPSJ_.exit

bb.v:                                             ; preds = %bb.t
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.w:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEED2Ev.exit43
  %i.df = load ptr, ptr %i.bj, align 8, !tbaa !37 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !93 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %.not7592 = icmp eq ptr %i.dh, %i.di
  br i1 %.not7592, label %._crit_edge, label %.lr.ph94

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit38
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.w
  %i.dj = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.df, %bb.w ] ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !111
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEEESt10_Select1stISN_ESt4lessIS5_ESaISN_EE8_M_eraseEPSt13_Rb_tree_nodeISN_E(ptr noundef nonnull align 8 dereferenceable(48) %i.dj, ptr noundef %i.dl)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEEESt10_Select1stISN_ESt4lessIS5_ESaISN_EE5clearEv.exit unwind label %bb.x, !inline_history !379

bb.x:                                             ; preds = %._crit_edge
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #29, !inline_history !379
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEEESt10_Select1stISN_ESt4lessIS5_ESaISN_EE5clearEv.exit: ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  store ptr null, ptr %i.dk, align 8, !tbaa !111
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !93
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !112
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store i64 0, ptr %i.dr, align 8, !tbaa !113
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE15_M_erase_at_endEPSJ_.exit

.lr.ph94:                                         ; preds = %bb.w, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit38
  %.sroa.064.093 = phi ptr [ %i.eb, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEE13json_metadataISt10unique_ptrIiSt14default_deleteIiEEEEESaISJ_EE9push_backEOSJ_.exit38 ], [ %i.dh, %bb.w ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.064.093, i64 64 ; 3 uses
  %i.dt = load ptr, ptr %i.be, align 8, !tbaa !173 ; 4 uses
  %i.du = load ptr, ptr %i.bk, align 8, !tbaa !175
  %.not.i46 = icmp eq ptr %i.dt, %i.du
end_hunk_3
