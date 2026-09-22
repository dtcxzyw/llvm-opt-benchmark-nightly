Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-disabled_exceptions?download=true
inline.NumInlined: 3060
inline.NumDeleted: 1023
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE:bb.a
    i8 1, label %bb.ae
    i8 2, label %bb.af
    i8 3, label %bb.ah
    i8 8, label %bb.ai
  ]

bb.ae:                                            ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit
  %i.ep = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !154
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ep, ptr noundef %i.er), !inline_history !257
  br label %.sink.split.sink.split

bb.af:                                            ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit
  %i.es = load ptr, ptr %0, align 8, !tbaa !26    ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !152 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !150 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.et, %i.ev
  br i1 %.not.i1.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.af, %.lr.ph.i113
  %.0.i2.i = phi ptr [ %i.ey, %.lr.ph.i113 ], [ %i.et, %bb.af ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 8
  %i.ex = load i8, ptr %.0.i2.i, align 8, !tbaa !25
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, i8 noundef zeroext %i.ex), !inline_history !258
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 16 ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.ey, %i.ev
  br i1 %.not.i.i114, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.loopexit.i, label %.lr.ph.i113, !llvm.loop !254

_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.loopexit.i: ; preds = %.lr.ph.i113
  %.pre.i115 = load ptr, ptr %i.es, align 8, !tbaa !152
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.loopexit.i, %bb.af
  %i.ez = phi ptr [ %.pre.i115, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.loopexit.i ], [ %i.et, %bb.af ] ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i116, label %.sink.split.sink.split, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ez) #24, !inline_history !259
  br label %.sink.split.sink.split

bb.ah:                                            ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit
  %i.fa = load ptr, ptr %0, align 8, !tbaa !26    ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !46 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.fb) #24
  br label %.sink.split.sink.split

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit
  %i.fe = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i, label %.sink.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef nonnull %i.ff) #24
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.ag, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i, %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aj
  %.pre77 = load ptr, ptr %0, align 8, !tbaa !26
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.ah, %bb.ai
  %.sink = phi ptr [ %i.fe, %bb.ai ], [ %i.fa, %bb.ah ], [ %.pre77, %.sink.split.sink.split ]
  call void @_ZdlPv(ptr noundef %.sink) #24
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.b, %bb.a, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.07 = phi ptr [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.h = load i8, ptr %i.f, align 8, !tbaa !25
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext %i.h), !inline_history !260
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef %i.i) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !261

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull ptr @_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE12handle_valueIRbEEPSF_OT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 3 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %2, align 8
  %i.g = load i8, ptr %1, align 1, !tbaa !136, !range !73, !noundef !74
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext nneg i8 %i.g to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !74, !align !80 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !131   ; 2 uses
  store i8 4, ptr %i.h, align 8, !tbaa !131
  store i8 %i.i, ptr %2, align 8, !tbaa !131
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.j, align 8, !tbaa !26
  store i64 %.sroa.0.0.insert.ext.i.i.i.i.i, ptr %i.j, align 8, !tbaa !26
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !tbaa !26
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef zeroext %i.i), !inline_history !0
  %i.k = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !74, !align !80
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !147
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  tail call void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJRbEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %3, align 8
  %i.aa = load i8, ptr %1, align 1, !tbaa !136, !range !73, !noundef !74
  %.sroa.0.0.insert.ext.i.i.i.i.i5 = zext nneg i8 %i.aa to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !135 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !131 ; 2 uses
  store i8 4, ptr %i.ac, align 1, !tbaa !131
  store i8 %i.ad, ptr %3, align 8, !tbaa !131
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i6 = load ptr, ptr %i.ae, align 8, !tbaa !26
  store i64 %.sroa.0.0.insert.ext.i.i.i.i.i5, ptr %i.ae, align 8, !tbaa !26
  store ptr %.sroa.0.0.copyload.i.i6, ptr %i.z, align 8, !tbaa !26
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef zeroext %i.ad), !inline_history !0
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !135
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ %i.y, %bb.d ], [ %i.af, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJRbEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.f = load i8, ptr %1, align 1, !tbaa !136, !range !73, !noundef !74
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext nneg i8 %i.f to i64
  store i8 4, ptr %i.b, align 8, !tbaa !147
  store i64 %.sroa.0.0.insert.ext.i.i.i.i.i, ptr %i.e, align 8, !tbaa !26
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.a, align 8, !tbaa !150
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !152    ; 5 uses
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #26
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 4                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 576460752303423487)
  %i.r = select i1 %i.p, i64 576460752303423487, i64 %i.q ; 3 uses
  %.not.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #25 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 4, ptr %i.u, align 8
  %i.w = load i8, ptr %1, align 1, !tbaa !136, !range !73, !noundef !74
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = zext nneg i8 %i.w to i64
  store i64 %.sroa.0.0.insert.ext.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !26
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !153
  store i8 0, ptr %.0911.i.i.i.i, align 8, !tbaa !147
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i ], [ %i.z, %.lr.ph.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i23.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJRbEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #24
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJRbEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJRbEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i, %bb.e
  store ptr %i.t, ptr %0, align 8, !tbaa !152
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !150
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !151
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJRbEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull ptr @_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE12handle_valueIDnEEPSF_OT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 2 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !74, !align !80 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !131   ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !131
  store i8 %i.h, ptr %2, align 8, !tbaa !131
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.i, align 8, !tbaa !26
  store i64 0, ptr %i.i, align 8, !tbaa !26
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !tbaa !26
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef zeroext %i.h), !inline_history !0
  %i.j = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !74, !align !80
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29   ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !147
  %i.n = icmp eq i8 %i.m, 2
  br i1 %i.n, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !150  ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !151
  %.not.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.r, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !26
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !150
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.q, align 8, !tbaa !150
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJDnEEEvDpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !152  ; 5 uses
  %i.y = ptrtoint ptr %i.r to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775792
  br i1 %i.ab, label %bb.g, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #26
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ac = ashr exact i64 %i.aa, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487)
  %i.ag = select i1 %i.ae, i64 576460752303423487, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #25 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store i8 0, ptr %i.aj, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr null, ptr %i.ak, align 8, !tbaa !26
  %.not10.i.i.i.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !153
  store i8 0, ptr %.0911.i.i.i.i.i, align 8, !tbaa !147
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJDnEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #24
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJDnEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJDnEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i
  store ptr %i.ai, ptr %i.p, align 8, !tbaa !152
  store ptr %i.ao, ptr %i.q, align 8, !tbaa !150
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.ap, ptr %i.s, align 8, !tbaa !151
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJDnEEEvDpOT_.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJDnEEEvDpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJDnEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -16
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !135 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !131 ; 2 uses
  store i8 0, ptr %i.ba, align 1, !tbaa !131
  store i8 %i.bb, ptr %3, align 8, !tbaa !131
end_hunk_0
