Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-iterators2?download=true
inline.NumInlined: 3657
inline.NumDeleted: 1118
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZL19DOCTEST_ANON_FUNC_2v:bb.a
bb.hjt:                                           ; preds = %bb.hjs, %bb.hjp
  %.pn2944.pn = phi { ptr, i32 } [ %.pn2944, %bb.hjs ], [ %i.kid, %bb.hjp ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1397) #26
  br label %bb.hju

bb.hju:                                           ; preds = %bb.hjt, %bb.hjo
  %.pn2944.pn.pn = phi { ptr, i32 } [ %.pn2944.pn, %bb.hjt ], [ %i.kic, %bb.hjo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1397) #26
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1395) #26
  br label %bb.hjv

bb.hjv:                                           ; preds = %bb.hju, %.loopexit6303
  %.pn2944.pn.pn.pn = phi { ptr, i32 } [ %.pn2944.pn.pn, %bb.hju ], [ %.pn2942, %.loopexit6303 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1395) #26
  br label %bb.hko

bb.hjw:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5386, %bb.hit
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %1393) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1393) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1402) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1403) #26
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %1403, ptr noundef nonnull @.str.206)
          to label %bb.hjx unwind label %bb.hkp

bb.hjx:                                           ; preds = %bb.hjw
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %1402, ptr noundef nonnull align 8 dereferenceable(24) %1403, ptr noundef nonnull @.str.2, i32 noundef 910)
          to label %bb.hjy unwind label %bb.hkq

bb.hjy:                                           ; preds = %bb.hjx
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1403) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1403) #26
  %i.kih = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %1402)
          to label %bb.hjz unwind label %bb.hks

bb.hjz:                                           ; preds = %bb.hjy
  br i1 %i.kih, label %bb.hka, label %bb.hld

bb.hka:                                           ; preds = %bb.hjz
  call void @llvm.lifetime.start.p0(ptr nonnull %1404) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1405) #26
  %i.kii = getelementptr inbounds nuw i8, ptr %1405, i64 8
  store i64 0, ptr %1405, align 8
  store i8 5, ptr %1405, align 8, !tbaa !20
  store i64 1, ptr %i.kii, align 8, !tbaa !21
  %i.kij = getelementptr inbounds nuw i8, ptr %1405, i64 16
  %i.kik = getelementptr inbounds nuw i8, ptr %1405, i64 24
  %i.kil = getelementptr inbounds nuw i8, ptr %1405, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kij, i8 0, i64 16, i1 false)
  store i8 5, ptr %i.kik, align 8, !tbaa !20
  store i64 3, ptr %i.kil, align 8, !tbaa !21
  %i.kim = getelementptr inbounds nuw i8, ptr %1405, i64 40
  %i.kin = getelementptr inbounds nuw i8, ptr %1405, i64 48
  %i.kio = getelementptr inbounds nuw i8, ptr %1405, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kim, i8 0, i64 16, i1 false)
  store i8 5, ptr %i.kin, align 8, !tbaa !20
  store i64 2, ptr %i.kio, align 8, !tbaa !21
  %i.kip = getelementptr inbounds nuw i8, ptr %1405, i64 64
  %i.kiq = getelementptr inbounds nuw i8, ptr %1405, i64 72
  %i.kir = getelementptr inbounds nuw i8, ptr %1405, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kip, i8 0, i64 16, i1 false)
  store i8 5, ptr %i.kiq, align 8, !tbaa !20
  store i64 4, ptr %i.kir, align 8, !tbaa !21
  %i.kis = getelementptr inbounds nuw i8, ptr %1405, i64 88
  store ptr null, ptr %i.kis, align 8, !tbaa !25
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ESt16initializer_listINS0_6detail8json_refISD_EEEbNSF_7value_tE(ptr noundef nonnull align 8 dereferenceable(16) %1404, ptr nonnull %1405, i64 4, i1 noundef zeroext true, i8 noundef zeroext 2)
          to label %bb.hkb unwind label %bb.hkt

bb.hkb:                                           ; preds = %bb.hka
  %i.kit = getelementptr inbounds nuw i8, ptr %1405, i64 72
  %i.kiu = getelementptr inbounds nuw i8, ptr %1405, i64 80
  %i.kiv = load i8, ptr %i.kit, align 8, !tbaa !18
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.kiu, i8 noundef zeroext %i.kiv)
          to label %_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387 unwind label %bb.hkc, !inline_history !26

bb.hkc:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387.2, %_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387.1, %_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387, %bb.hkb
  %i.kiw = landingpad { ptr, i32 }
          catch ptr null
  %i.kix = extractvalue { ptr, i32 } %i.kiw, 0
  call void @__clang_call_terminate(ptr %i.kix) #27, !inline_history !26
  unreachable

_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387: ; preds = %bb.hkb
  %i.kiy = getelementptr inbounds nuw i8, ptr %1405, i64 48
  %i.kiz = getelementptr inbounds nuw i8, ptr %1405, i64 56
  %i.kja = load i8, ptr %i.kiy, align 8, !tbaa !18
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.kiz, i8 noundef zeroext %i.kja)
          to label %_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387.1 unwind label %bb.hkc, !inline_history !26

_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387.1: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387
  %i.kjb = getelementptr inbounds nuw i8, ptr %1405, i64 24
  %i.kjc = getelementptr inbounds nuw i8, ptr %1405, i64 32
  %i.kjd = load i8, ptr %i.kjb, align 8, !tbaa !18
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.kjc, i8 noundef zeroext %i.kjd)
          to label %_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387.2 unwind label %bb.hkc, !inline_history !26

_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387.2: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387.1
  %i.kje = getelementptr inbounds nuw i8, ptr %1405, i64 8
  %i.kjf = load i8, ptr %1405, align 8, !tbaa !18
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.kje, i8 noundef zeroext %i.kjf)
          to label %_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387.3 unwind label %bb.hkc, !inline_history !26

_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387.3: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387.2
  call void @llvm.lifetime.end.p0(ptr nonnull %1405) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1406) #26
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ESt16initializer_listINS0_6detail8json_refISD_EEEbNSF_7value_tE(ptr noundef nonnull align 8 dereferenceable(16) %1406, ptr null, i64 0, i1 noundef zeroext false, i8 noundef zeroext 2)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5arrayESt16initializer_listINS0_6detail8json_refISD_EEE.exit5389 unwind label %bb.hku

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5arrayESt16initializer_listINS0_6detail8json_refISD_EEE.exit5389: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387.3
  call void @llvm.lifetime.start.p0(ptr nonnull %1407) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  store ptr %1404, ptr %4, align 8, !tbaa !34, !alias.scope !2192, !noalias !2193
  %i.kjg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.kjh = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kjg, i8 0, i64 16, i1 false), !alias.scope !2192, !noalias !2193
  store i64 -9223372036854775808, ptr %i.kjh, align 8, !tbaa !35, !alias.scope !2192, !noalias !2193
  %i.kji = load i8, ptr %1404, align 8, !tbaa !20, !noalias !2194
  switch i8 %i.kji, label %_ZNKSt6ranges13__cust_access6_BeginclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo10is_array_vINSt16remove_referenceIT_E4typeEE14__member_beginISL_E11__adl_beginISL_EEEDaOSL_.exit.i [
    i8 1, label %_ZNKSt6ranges13__cust_access6_BeginclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo10is_array_vINSt16remove_referenceIT_E4typeEE14__member_beginISL_E11__adl_beginISL_EEEDaOSL_.exit.thread1.i
    i8 2, label %_ZNKSt6ranges13__cust_access6_BeginclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo10is_array_vINSt16remove_referenceIT_E4typeEE14__member_beginISL_E11__adl_beginISL_EEEDaOSL_.exit.thread2.i
    i8 0, label %_ZNKSt6ranges13__cust_access6_BeginclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo10is_array_vINSt16remove_referenceIT_E4typeEE14__member_beginISL_E11__adl_beginISL_EEEDaOSL_.exit.thread.i
  ]

_ZNKSt6ranges13__cust_access6_BeginclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo10is_array_vINSt16remove_referenceIT_E4typeEE14__member_beginISL_E11__adl_beginISL_EEEDaOSL_.exit.thread1.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5arrayESt16initializer_listINS0_6detail8json_refISD_EEE.exit5389
  %i.kjj = getelementptr inbounds nuw i8, ptr %1404, i64 8
  %i.kjk = load ptr, ptr %i.kjj, align 8, !tbaa !21, !noalias !2194 ; 2 uses
  %i.kjl = getelementptr inbounds nuw i8, ptr %i.kjk, i64 24
  %i.kjm = load ptr, ptr %i.kjl, align 8, !tbaa !39, !noalias !2194
  store ptr %i.kjm, ptr %i.kjg, align 8, !tbaa !40, !alias.scope !2192, !noalias !2193
  store ptr %1404, ptr %5, align 8, !tbaa !34, !alias.scope !2195, !noalias !2193
  %i.kjn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kjo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.kjp = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.kjp, align 8, !noalias !2193
  store i64 -9223372036854775808, ptr %i.kjo, align 8, !tbaa !35, !alias.scope !2195, !noalias !2193
  %i.kjq = getelementptr inbounds nuw i8, ptr %i.kjk, i64 8
  store ptr %i.kjq, ptr %i.kjn, align 8, !tbaa !40, !alias.scope !2196, !noalias !2193
  br label %_ZNKSt6ranges13__cust_access4_EndclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo18is_bounded_array_vINSt16remove_referenceIT_E4typeEE12__member_endISL_E9__adl_endISL_EEEDaOSL_.exit.i

_ZNKSt6ranges13__cust_access6_BeginclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo10is_array_vINSt16remove_referenceIT_E4typeEE14__member_beginISL_E11__adl_beginISL_EEEDaOSL_.exit.thread2.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5arrayESt16initializer_listINS0_6detail8json_refISD_EEE.exit5389
  %i.kjr = getelementptr inbounds nuw i8, ptr %1404, i64 8
  %i.kjs = load ptr, ptr %i.kjr, align 8, !tbaa !21, !noalias !2194 ; 2 uses
  %i.kjt = load ptr, ptr %i.kjs, align 8, !tbaa !41, !noalias !2194
  %i.kju = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.kjt, ptr %i.kju, align 8, !tbaa !41, !alias.scope !2192, !noalias !2193
  store ptr %1404, ptr %5, align 8, !tbaa !34, !alias.scope !2197, !noalias !2193
  %i.kjv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kjw = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.kjv, align 8, !noalias !2193
  store i64 -9223372036854775808, ptr %i.kjw, align 8, !tbaa !35, !alias.scope !2197, !noalias !2193
  %i.kjx = getelementptr inbounds nuw i8, ptr %i.kjs, i64 8
  %i.kjy = load ptr, ptr %i.kjx, align 8, !tbaa !41, !noalias !2198
  %i.kjz = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.kjy, ptr %i.kjz, align 8, !tbaa !41, !alias.scope !2196, !noalias !2193
  br label %_ZNKSt6ranges13__cust_access4_EndclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo18is_bounded_array_vINSt16remove_referenceIT_E4typeEE12__member_endISL_E9__adl_endISL_EEEDaOSL_.exit.i

_ZNKSt6ranges13__cust_access6_BeginclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo10is_array_vINSt16remove_referenceIT_E4typeEE14__member_beginISL_E11__adl_beginISL_EEEDaOSL_.exit.thread.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5arrayESt16initializer_listINS0_6detail8json_refISD_EEE.exit5389
  store i64 1, ptr %i.kjh, align 8, !tbaa !35, !alias.scope !2192, !noalias !2193
  br label %bb.hkd

_ZNKSt6ranges13__cust_access6_BeginclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo10is_array_vINSt16remove_referenceIT_E4typeEE14__member_beginISL_E11__adl_beginISL_EEEDaOSL_.exit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5arrayESt16initializer_listINS0_6detail8json_refISD_EEE.exit5389
  store i64 0, ptr %i.kjh, align 8, !tbaa !35, !alias.scope !2192, !noalias !2193
  call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  br label %bb.hkd

bb.hkd:                                           ; preds = %_ZNKSt6ranges13__cust_access6_BeginclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo10is_array_vINSt16remove_referenceIT_E4typeEE14__member_beginISL_E11__adl_beginISL_EEEDaOSL_.exit.i, %_ZNKSt6ranges13__cust_access6_BeginclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo10is_array_vINSt16remove_referenceIT_E4typeEE14__member_beginISL_E11__adl_beginISL_EEEDaOSL_.exit.thread.i
  store ptr %1404, ptr %5, align 8, !tbaa !34, !alias.scope !2201, !noalias !2193
  %i.kka = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kkb = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kka, i8 0, i64 16, i1 false), !alias.scope !2201, !noalias !2193
  store i64 1, ptr %i.kkb, align 8, !tbaa !35, !alias.scope !2196, !noalias !2193
  br label %_ZNKSt6ranges13__cust_access4_EndclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo18is_bounded_array_vINSt16remove_referenceIT_E4typeEE12__member_endISL_E9__adl_endISL_EEEDaOSL_.exit.i

_ZNKSt6ranges13__cust_access4_EndclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo18is_bounded_array_vINSt16remove_referenceIT_E4typeEE12__member_endISL_E9__adl_endISL_EEEDaOSL_.exit.i: ; preds = %bb.hkd, %_ZNKSt6ranges13__cust_access6_BeginclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo10is_array_vINSt16remove_referenceIT_E4typeEE14__member_beginISL_E11__adl_beginISL_EEEDaOSL_.exit.thread2.i, %_ZNKSt6ranges13__cust_access6_BeginclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo10is_array_vINSt16remove_referenceIT_E4typeEE14__member_beginISL_E11__adl_beginISL_EEEDaOSL_.exit.thread1.i
  %i.kkc = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc5390 unwind label %.loopexit.split-lp

.noexc5390:                                       ; preds = %_ZNKSt6ranges13__cust_access4_EndclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo18is_bounded_array_vINSt16remove_referenceIT_E4typeEE12__member_endISL_E9__adl_endISL_EEEDaOSL_.exit.i
  br i1 %i.kkc, label %.loopexit6302, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc5390
  %i.kkd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.hke

bb.hke:                                           ; preds = %.noexc5393, %.lr.ph.i.i
  %i.kke = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc5391 unwind label %.loopexit

.noexc5391:                                       ; preds = %bb.hke
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !2202
  store i32 0, ptr %i.a, align 4, !tbaa !66, !noalias !2202
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail9from_jsonINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEiTnNSt9enable_ifIXaaaaaaaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_17number_unsigned_tEEE5valuentsr3std7is_sameISH_NSI_16number_integer_tEEE5valuentsr3std7is_sameISH_NSI_14number_float_tEEE5valuentsr3std7is_sameISH_NSI_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %i.kke, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc5392 unwind label %.loopexit

.noexc5392:                                       ; preds = %.noexc5391
  %i.kkf = load i32, ptr %i.a, align 4, !tbaa !66, !noalias !2202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !2202
  %1411 = and i32 %i.kkf, 1
  %1412 = icmp eq i32 %1411, 0
  br i1 %1412, label %.loopexit6302, label %bb.hkf

bb.hkf:                                           ; preds = %.noexc5392
  %i.kkg = load ptr, ptr %4, align 8, !tbaa !34, !noalias !2202
  %i.kkh = load i8, ptr %i.kkg, align 8, !tbaa !20, !noalias !2202
  switch i8 %i.kkh, label %bb.hkh [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i.i
    i8 2, label %bb.hkg
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i.i: ; preds = %bb.hkf
  %.promoted11.i.i.i.i = load ptr, ptr %i.kjg, align 8, !tbaa !42, !noalias !2202
  %i.kki = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i.i.i) #28, !noalias !2202
  store ptr %i.kki, ptr %i.kjg, align 8, !tbaa !42, !noalias !2202
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i

bb.hkg:                                           ; preds = %bb.hkf
  %i.kkj = load ptr, ptr %i.kkd, align 8, !tbaa !43, !noalias !2202
  %i.kkk = getelementptr inbounds nuw i8, ptr %i.kkj, i64 16
  store ptr %i.kkk, ptr %i.kkd, align 8, !tbaa !43, !noalias !2202
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i

bb.hkh:                                           ; preds = %bb.hkf
  %i.kkl = load i64, ptr %i.kjh, align 8, !tbaa !35, !noalias !2202
  %i.kkm = add nsw i64 %i.kkl, 1
  store i64 %i.kkm, ptr %i.kjh, align 8, !tbaa !35, !noalias !2202
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i: ; preds = %bb.hkh, %bb.hkg, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i.i
  %i.kkn = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc5393 unwind label %.loopexit

.noexc5393:                                       ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i
  br i1 %i.kkn, label %.loopexit6302, label %bb.hke, !llvm.loop !1450

.loopexit6302:                                    ; preds = %.noexc5393, %.noexc5392, %.noexc5390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1407, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %1408) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1409) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1410) #26
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %1410, i32 noundef 10)
          to label %bb.hki unwind label %bb.hkv

bb.hki:                                           ; preds = %.loopexit6302
  %i.kko = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %1407)
          to label %bb.hkj unwind label %bb.hkv

bb.hkj:                                           ; preds = %bb.hki
  %i.kkp = load i32, ptr %1410, align 4, !tbaa !1468
  store ptr %i.kko, ptr %1409, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1409, i64 8
  store i32 %i.kkp, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz) #26
  store i32 2, ptr %i.bz, align 4, !tbaa !66
  invoke void @_ZN7doctest6detail14Expression_lhsIRN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIiEEDTcmcvveqclL_ZNS0_7declvalISH_EEOT_vEEclsr7doctest6detailE7declvalISL_EEtlNS0_6ResultEEESM_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %1408, ptr noundef nonnull align 8 dereferenceable(12) %1409, ptr noundef nonnull align 4 dereferenceable(4) %i.bz)
          to label %bb.hkk unwind label %bb.hkw

bb.hkk:                                           ; preds = %bb.hkj
  %i.kkq = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 929, ptr noundef nonnull @.str.207, ptr noundef nonnull align 8 dereferenceable(32) %1408)
          to label %bb.hkl unwind label %bb.hkx   ; 0 uses

bb.hkl:                                           ; preds = %bb.hkk
  %i.kkr = getelementptr inbounds nuw i8, ptr %1408, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.kkr) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1410) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1409) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1408) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1407) #26
  %i.kks = getelementptr inbounds nuw i8, ptr %1406, i64 8
  %i.kkt = load i8, ptr %1406, align 8, !tbaa !18
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.kks, i8 noundef zeroext %i.kkt)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5396 unwind label %bb.hkm, !inline_history !26

bb.hkm:                                           ; preds = %bb.hkl
  %i.kku = landingpad { ptr, i32 }
          catch ptr null
  %i.kkv = extractvalue { ptr, i32 } %i.kku, 0
  call void @__clang_call_terminate(ptr %i.kkv) #27, !inline_history !26
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5396: ; preds = %bb.hkl
  call void @llvm.lifetime.end.p0(ptr nonnull %1406) #26
  %i.kkw = getelementptr inbounds nuw i8, ptr %1404, i64 8
  %i.kkx = load i8, ptr %1404, align 8, !tbaa !18
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.kkw, i8 noundef zeroext %i.kkx)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5397 unwind label %bb.hkn, !inline_history !26

bb.hkn:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5396
  %i.kky = landingpad { ptr, i32 }
          catch ptr null
  %i.kkz = extractvalue { ptr, i32 } %i.kky, 0
  call void @__clang_call_terminate(ptr %i.kkz) #27, !inline_history !26
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5397: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5396
  call void @llvm.lifetime.end.p0(ptr nonnull %1404) #26
  br label %bb.hld

bb.hko:                                           ; preds = %bb.hjv, %bb.hjn
  %.pn2944.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn2944.pn.pn.pn, %bb.hjv ], [ %i.khz, %bb.hjn ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %1393) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1393) #26
  br label %bb.hlg

bb.hkp:                                           ; preds = %bb.hjw
  %i.kla = landingpad { ptr, i32 }
          cleanup
  br label %bb.hkr

bb.hkq:                                           ; preds = %bb.hjx
  %i.klb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1403) #26
  br label %bb.hkr

bb.hkr:                                           ; preds = %bb.hkq, %bb.hkp
  %.pn2951 = phi { ptr, i32 } [ %i.klb, %bb.hkq ], [ %i.kla, %bb.hkp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1403) #26
  br label %bb.hlg

bb.hks:                                           ; preds = %bb.hjy
  %i.klc = landingpad { ptr, i32 }
          cleanup
  br label %bb.hle

bb.hkt:                                           ; preds = %bb.hka
  %i.kld = landingpad { ptr, i32 }
          cleanup
  %i.kle = getelementptr inbounds nuw i8, ptr %1405, i64 72
  call void @_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.kle) #26
  %i.klf = getelementptr inbounds nuw i8, ptr %1405, i64 48
  call void @_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.klf) #26
  %i.klg = getelementptr inbounds nuw i8, ptr %1405, i64 24
  call void @_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.klg) #26
  call void @_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1405) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1405) #26
  br label %bb.hlc

bb.hku:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev.exit5387.3
  %i.klh = landingpad { ptr, i32 }
          cleanup
  br label %bb.hlb

.loopexit:                                        ; preds = %bb.hke, %.noexc5391, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.hla

.loopexit.split-lp:                               ; preds = %_ZNKSt6ranges13__cust_access4_EndclITkNS_8__detail22__maybe_borrowed_rangeERN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEEQoooo18is_bounded_array_vINSt16remove_referenceIT_E4typeEE12__member_endISL_E9__adl_endISL_EEEDaOSL_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hla

bb.hkv:                                           ; preds = %bb.hki, %.loopexit6302
  %i.kli = landingpad { ptr, i32 }
          cleanup
  br label %bb.hkz

bb.hkw:                                           ; preds = %bb.hkj
  %i.klj = landingpad { ptr, i32 }
          cleanup
  br label %bb.hky

bb.hkx:                                           ; preds = %bb.hkk
  %i.klk = landingpad { ptr, i32 }
          cleanup
  %i.kll = getelementptr inbounds nuw i8, ptr %1408, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.kll) #26
  br label %bb.hky

bb.hky:                                           ; preds = %bb.hkx, %bb.hkw
  %.pn2953 = phi { ptr, i32 } [ %i.klk, %bb.hkx ], [ %i.klj, %bb.hkw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz) #26
  br label %bb.hkz

bb.hkz:                                           ; preds = %bb.hky, %bb.hkv
  %.pn2953.pn = phi { ptr, i32 } [ %.pn2953, %bb.hky ], [ %i.kli, %bb.hkv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1410) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1409) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1408) #26
  br label %bb.hla

bb.hla:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.hkz
  %.pn2953.pn.pn = phi { ptr, i32 } [ %.pn2953.pn, %bb.hkz ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1407) #26
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1406) #26
  br label %bb.hlb

bb.hlb:                                           ; preds = %bb.hla, %bb.hku
  %.pn2953.pn.pn.pn = phi { ptr, i32 } [ %.pn2953.pn.pn, %bb.hla ], [ %i.klh, %bb.hku ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1406) #26
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1404) #26
  br label %bb.hlc

bb.hlc:                                           ; preds = %bb.hlb, %bb.hkt
  %.pn2953.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn2953.pn.pn.pn, %bb.hlb ], [ %i.kld, %bb.hkt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1404) #26
  br label %bb.hle
end_hunk_0
begin_hunk_1_@_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA39_KcJS8_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSD_OSE_DpOT1_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull ptr @_ZN8nlohmann16json_abi_v3_12_06detail8to_charsIdEEPcS3_PKcT_(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = bitcast double %2 to i64
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fneg double %2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.013 = phi double [ %i.e, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.012 = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ]  ; 18 uses
  %i.g = fcmp oeq double %.013, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.012, i64 1
  store i8 48, ptr %.012, align 1, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %.012, i64 2
  store i8 46, ptr %i.h, align 1, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %.012, i64 3
  store i8 48, ptr %i.i, align 1, !tbaa !21
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !66
  call void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl6grisu2IdEEvPcRiS5_T_(ptr noundef %.012, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, double noundef %.013)
  %i.k = load i32, ptr %i.a, align 4, !tbaa !66   ; 6 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !66   ; 3 uses
  %i.m = add nsw i32 %i.l, %i.k                   ; 8 uses
  %.not.i = icmp slt i32 %i.l, 0
  %.not59.i = icmp sgt i32 %i.m, 15
  %or.cond61.i = select i1 %.not.i, i1 true, i1 %.not59.i
  br i1 %or.cond61.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr inbounds i8, ptr %.012, i64 %i.n
  %i.p = sext i32 %i.m to i64
  %i.q = zext nneg i32 %i.l to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 48, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.012, i64 %i.p ; 3 uses
  store i8 46, ptr %i.r, align 1, !tbaa !21
  %i.s = getelementptr i8, ptr %i.r, i64 1
  store i8 48, ptr %i.s, align 1, !tbaa !21
  %i.t = getelementptr i8, ptr %i.r, i64 2
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

bb.g:                                             ; preds = %bb.e
  %i.u = icmp slt i32 %i.m, 1
  %i.v = add i32 %i.m, -16
  %or.cond62.i = icmp ult i32 %i.v, -15
  br i1 %or.cond62.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = zext nneg i32 %i.m to i64                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = sext i32 %i.k to i64                     ; 2 uses
  %i.aa = sub nsw i64 %i.z, %i.w
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.x, i64 %i.aa, i1 false)
  store i8 46, ptr %i.x, align 1, !tbaa !21
  %i.ab = getelementptr i8, ptr %.012, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = add i32 %i.m, 3
  %or.cond.i = icmp ult i32 %i.ad, 4
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nsw i32 0, %i.m
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr i8, ptr %.012, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 2      ; 2 uses
  %i.ai = sext i32 %i.k to i64                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %.012, i64 %i.ai, i1 false)
  store i8 48, ptr %.012, align 1, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.012, i64 1
  store i8 46, ptr %i.aj, align 1, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.012, i64 2
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 48, i64 %i.af, i1 false)
  %i.al = getelementptr i8, ptr %i.ah, i64 %i.ai
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

bb.k:                                             ; preds = %bb.i
  %i.am = icmp eq i32 %i.k, 1
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.012, i64 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.012, i64 1 ; 2 uses
  %i.ap = sext i32 %i.k to i64                    ; 2 uses
  %i.aq = add nsw i64 %i.ap, -1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %i.ao, i64 %i.aq, i1 false)
  store i8 46, ptr %i.ao, align 1, !tbaa !21
  %i.ar = getelementptr i8, ptr %.012, i64 %i.ap
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi ptr [ %i.ar, %bb.l ], [ %.012, %bb.k ] ; 9 uses
  %.056.i = getelementptr i8, ptr %.pn.i, i64 1
  %i.as = getelementptr i8, ptr %.pn.i, i64 2
  store i8 101, ptr %.056.i, align 1, !tbaa !21
  %i.at = add nsw i32 %i.m, -1
  %storemerge.i.i = select i1 %i.u, i8 45, i8 43
  %.0.i.i = call i32 @llvm.abs.i32(i32 %i.at, i1 true) ; 6 uses
  %.023.i.i = getelementptr i8, ptr %.pn.i, i64 3 ; 3 uses
  store i8 %storemerge.i.i, ptr %i.as, align 1, !tbaa !21
  %i.au = icmp samesign ult i32 %.0.i.i, 10
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %.pn.i, i64 4
  store i8 48, ptr %.023.i.i, align 1, !tbaa !21
  %i.aw = trunc nuw nsw i32 %.0.i.i to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !21
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

bb.o:                                             ; preds = %bb.m
  %i.az = icmp samesign ult i32 %.0.i.i, 100
  %i.ba = getelementptr i8, ptr %.pn.i, i64 4     ; 2 uses
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.lhs.trunc.i.i = trunc nuw nsw i32 %.0.i.i to i8 ; 2 uses
  %i.bb = udiv i8 %.lhs.trunc.i.i, 10
  %i.bc = or disjoint i8 %i.bb, 48
  store i8 %i.bc, ptr %.023.i.i, align 1, !tbaa !21
  %i.bd = urem i8 %.lhs.trunc.i.i, 10
  %i.be = or disjoint i8 %i.bd, 48
  %i.bf = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !21
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

bb.q:                                             ; preds = %bb.o
  %i.bg = udiv i32 %.0.i.i, 100
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = add i8 %i.bh, 48
  store i8 %i.bi, ptr %.023.i.i, align 1, !tbaa !21
  %i.bj = urem i32 %.0.i.i, 100
  %.lhs.trunc28.i.i = trunc nuw nsw i32 %i.bj to i8 ; 2 uses
  %i.bk = udiv i8 %.lhs.trunc28.i.i, 10
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.bl, ptr %i.ba, align 1, !tbaa !21
  %i.bn = urem i8 %.lhs.trunc28.i.i, 10
  %i.bo = or disjoint i8 %i.bn, 48
  %i.bp = getelementptr i8, ptr %.pn.i, i64 6
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !21
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.n, %bb.p, %bb.q
  %.0.i = phi ptr [ %i.t, %bb.f ], [ %i.ac, %bb.h ], [ %i.al, %bb.j ], [ %i.ay, %bb.n ], [ %i.bf, %bb.p ], [ %i.bp, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.r

bb.r:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ %.0.i, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl6grisu2IdEEvPcRiS5_T_(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, double noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp", align 8 ; 5 uses
  %5 = alloca %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp", align 8 ; 5 uses
  %i.a = bitcast double %3 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 52                        ; 2 uses
  %i.c = and i64 %i.a, 4503599627370495           ; 3 uses
  %i.d = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.e = or disjoint i64 %i.c, 4503599627370496
  %i.f = trunc nuw nsw i64 %i.b to i32
  %i.g = add nsw i32 %i.f, -1075
  %.sroa.037.0.i = select i1 %i.d, i64 %i.c, i64 %i.e ; 3 uses
  %.sroa.841.0.i = select i1 %i.d, i32 -1074, i32 %i.g ; 3 uses
  %i.h = shl nuw nsw i64 %.sroa.037.0.i, 1        ; 2 uses
  %i.i = or disjoint i64 %i.h, 1
  %i.j = add nsw i32 %.sroa.841.0.i, -1           ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.0.04.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %.sroa.5.03.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.k = shl nuw i64 %.sroa.0.04.i.i, 1           ; 3 uses
  %i.l = add nsw i32 %.sroa.5.03.i.i, -1          ; 3 uses
  %6 = icmp sgt i64 %i.k, -1
  br i1 %6, label %.lr.ph.i.i, label %.lr.ph.i32.i, !llvm.loop !2489

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i32.i
  %.sroa.0.04.i33.i = phi i64 [ %i.m, %.lr.ph.i32.i ], [ %.sroa.037.0.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.5.03.i34.i = phi i32 [ %i.n, %.lr.ph.i32.i ], [ %.sroa.841.0.i, %.lr.ph.i.i ]
  %i.m = shl nuw i64 %.sroa.0.04.i33.i, 1         ; 3 uses
  %i.n = add nsw i32 %.sroa.5.03.i34.i, -1        ; 2 uses
  %7 = icmp sgt i64 %i.m, -1
  br i1 %7, label %.lr.ph.i32.i, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18compute_boundariesIdEENS2_10boundariesET_.exit, !llvm.loop !2489

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18compute_boundariesIdEENS2_10boundariesET_.exit: ; preds = %.lr.ph.i32.i
  %i.o = icmp eq i64 %i.c, 0
  %i.p = icmp ugt i64 %i.a, 9007199254740991
  %i.q = and i1 %i.p, %i.o                        ; 2 uses
  %i.r = shl nuw nsw i64 %.sroa.037.0.i, 2
  %.sroa.0.0.v.i = select i1 %i.q, i64 %i.r, i64 %i.h
  %.sroa.0.0.i = add nsw i64 %.sroa.0.0.v.i, -1
  %i.s = add nsw i32 %.sroa.841.0.i, -2
  %.sroa.5.0.i = select i1 %i.q, i32 %i.s, i32 %i.j
  %i.t = sub nsw i32 %.sroa.5.0.i, %i.l
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl i64 %.sroa.0.0.i, %i.u               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.w = sub i32 -60, %.sroa.5.03.i.i             ; 2 uses
  %i.x = mul nsw i32 %i.w, 78913
  %i.y = sdiv i32 %i.x, 262144
  %i.z = icmp sgt i32 %i.w, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = add nsw i32 %i.y, %i.aa
  %i.ac = trunc nsw i32 %i.ab to i16
  %.lhs.trunc.i.i = add nsw i16 %i.ac, 307
  %i.ad = sdiv i16 %.lhs.trunc.i.i, 8
  %i.ae = sext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl36get_cached_power_for_binary_exponentEiE13kCachedPowers, i64 %i.ae ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.af, align 8, !tbaa !61 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !66 ; 2 uses
  %.sroa.418.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload.i.i to i32
  %i.ag = and i64 %i.m, 4294967294                ; 2 uses
  %i.ah = lshr i64 %.sroa.0.04.i33.i, 31          ; 2 uses
  %i.ai = and i64 %.sroa.0.0.copyload.i.i, 4294967295 ; 6 uses
  %i.aj = lshr i64 %.sroa.0.0.copyload.i.i, 32    ; 6 uses
  %i.ak = mul nuw i64 %i.ai, %i.ag
  %i.al = mul nuw i64 %i.aj, %i.ag                ; 2 uses
  %i.am = mul nuw i64 %i.ai, %i.ah                ; 2 uses
  %i.an = mul nuw i64 %i.aj, %i.ah
  %i.ao = lshr i64 %i.ak, 32
  %i.ap = and i64 %i.al, 4294967294
  %i.aq = lshr i64 %i.al, 32
  %i.ar = and i64 %i.am, 4294967295
  %i.as = lshr i64 %i.am, 32
  %i.at = add nuw nsw i64 %i.ap, 2147483648
  %i.au = add nuw nsw i64 %i.at, %i.ao
  %i.av = add nuw nsw i64 %i.au, %i.ar
  %i.aw = add nuw i64 %i.as, %i.an
  %i.ax = add nuw i64 %i.aw, %i.aq
  %i.ay = lshr i64 %i.av, 32
  %i.az = add nuw i64 %i.ax, %i.ay
  %i.ba = add i32 %.sroa.418.8.extract.trunc.i, 64 ; 2 uses
  %i.bb = add i32 %i.ba, %i.n
  %i.bc = and i64 %i.v, 4294967295                ; 2 uses
  %i.bd = lshr i64 %i.v, 32                       ; 2 uses
  %i.be = mul nuw i64 %i.ai, %i.bc
  %i.bf = mul nuw i64 %i.aj, %i.bc                ; 2 uses
  %i.bg = mul nuw i64 %i.ai, %i.bd                ; 2 uses
  %i.bh = mul nuw i64 %i.aj, %i.bd
  %i.bi = lshr i64 %i.be, 32
  %i.bj = and i64 %i.bf, 4294967295
  %i.bk = lshr i64 %i.bf, 32
  %i.bl = and i64 %i.bg, 4294967295
  %i.bm = lshr i64 %i.bg, 32
  %i.bn = add nuw nsw i64 %i.bj, 2147483648
  %i.bo = add nuw nsw i64 %i.bn, %i.bi
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  %i.bq = lshr i64 %i.bp, 32
  %i.br = add i32 %i.ba, %i.l                     ; 2 uses
  %i.bs = and i64 %i.k, 4294967294                ; 2 uses
  %i.bt = lshr i64 %.sroa.0.04.i.i, 31            ; 2 uses
  %i.bu = mul nuw i64 %i.ai, %i.bs
  %i.bv = mul nuw i64 %i.aj, %i.bs                ; 2 uses
  %i.bw = mul nuw i64 %i.ai, %i.bt                ; 2 uses
  %i.bx = mul nuw i64 %i.aj, %i.bt
  %i.by = lshr i64 %i.bu, 32
  %i.bz = and i64 %i.bv, 4294967294
  %i.ca = lshr i64 %i.bv, 32
  %i.cb = and i64 %i.bw, 4294967295
  %i.cc = lshr i64 %i.bw, 32
  %i.cd = add nuw nsw i64 %i.bz, 2147483648
  %i.ce = add nuw nsw i64 %i.cd, %i.by
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  %i.cg = lshr i64 %i.cf, 32
  %i.ch = add nuw i64 %i.bh, 1
  %i.ci = add nuw i64 %i.ch, %i.bm
  %i.cj = add nuw i64 %i.ci, %i.bk
  %i.ck = add i64 %i.cj, %i.bq
  %i.cl = add i64 %i.bx, -1
  %i.cm = add i64 %i.cl, %i.cc
  %i.cn = add i64 %i.cm, %i.ca
  %i.co = add i64 %i.cn, %i.cg
  %.sroa.418.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.418.12.extract.trunc.i = trunc nuw i64 %.sroa.418.12.extract.shift.i to i32
  %i.cp = sub nsw i32 0, %.sroa.418.12.extract.trunc.i
  store i32 %i.cp, ptr %2, align 4, !tbaa !66
  store i64 %i.az, ptr %4, align 8, !tbaa !61
  %.sroa.416.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bb, ptr %.sroa.416.0..sroa_idx.i4, align 8, !tbaa !66
  store i64 %i.co, ptr %5, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.br, ptr %.sroa.4.0..sroa_idx.i5, align 8, !tbaa !66
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl16grisu2_digit_genEPcRiS4_NS2_5diyfpES5_S5_(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %i.ck, i32 %i.br, ptr noundef nonnull byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %4, ptr noundef nonnull byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl16grisu2_digit_genEPcRiS4_NS2_5diyfpES5_S5_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %3, i32 %4, ptr noundef byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %5, ptr noundef byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %6) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = load i64, ptr %6, align 8, !tbaa !2493   ; 4 uses
  %i.b = sub i64 %i.a, %3                         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !2494
  %i.e = load i64, ptr %5, align 8, !tbaa !2493
  %i.f = sub i64 %i.a, %i.e                       ; 5 uses
  %i.g = sub nsw i32 0, %i.d
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = shl nuw i64 1, %i.h                      ; 4 uses
  %i.j = lshr i64 %i.a, %i.h
  %i.k = trunc i64 %i.j to i32                    ; 10 uses
  %i.l = add i64 %i.i, -1                         ; 2 uses
  %i.m = and i64 %i.l, %i.a                       ; 2 uses
  %i.n = icmp ugt i32 %i.k, 999999999
  br i1 %i.n, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp samesign ugt i32 %i.k, 99999999
  br i1 %i.o, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i32 %i.k, 9999999
  br i1 %i.p, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp samesign ugt i32 %i.k, 999999
  br i1 %i.q, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp samesign ugt i32 %i.k, 99999
  br i1 %i.r, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp samesign ugt i32 %i.k, 9999
  br i1 %i.s, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp samesign ugt i32 %i.k, 999
  br i1 %i.t, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp samesign ugt i32 %i.k, 99
  br i1 %i.u, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp samesign ugt i32 %i.k, 9            ; 2 uses
  %..i = select i1 %i.v, i32 10, i32 1
  %.21.i = select i1 %i.v, i32 2, i32 1
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.054135.ph = phi i32 [ 10, %bb.a ], [ 9, %bb.b ], [ 8, %bb.c ], [ 7, %bb.d ], [ 6, %bb.e ], [ 5, %bb.f ], [ 4, %bb.g ], [ %.21.i, %bb.i ], [ 3, %bb.h ]
  %.078133.ph = phi i32 [ 1000000000, %bb.a ], [ 100000000, %bb.b ], [ 10000000, %bb.c ], [ 1000000, %bb.d ], [ 100000, %bb.e ], [ 10000, %bb.f ], [ 1000, %bb.g ], [ %..i, %bb.i ], [ 100, %bb.h ]
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit

bb.j:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit
  %i.w = icmp sgt i32 %.054135, 1
  br i1 %i.w, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit, label %.preheader, !llvm.loop !2490

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, %bb.j
  %.054135 = phi i32 [ %i.af, %bb.j ], [ %.054135.ph, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.056134 = phi i32 [ %i.y, %bb.j ], [ %i.k, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.078133 = phi i32 [ %.1, %bb.j ], [ %.078133.ph, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 7 uses
  %i.x = udiv i32 %.056134, %.078133
  %i.y = urem i32 %.056134, %.078133              ; 2 uses
  %i.z = trunc i32 %i.x to i8
  %i.aa = add i8 %i.z, 48
  %i.ab = load i32, ptr %1, align 4, !tbaa !66    ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %1, align 4, !tbaa !66
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  store i8 %i.aa, ptr %i.ae, align 1, !tbaa !21
  %i.af = add nsw i32 %.054135, -1                ; 2 uses
  %i.ag = zext i32 %i.y to i64
  %i.ah = shl i64 %i.ag, %i.h
  %i.ai = add i64 %i.ah, %i.m                     ; 4 uses
  %.not58 = icmp ugt i64 %i.ai, %i.b              ; 2 uses
  br i1 %.not58, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit
  %i.aj = load i32, ptr %2, align 4, !tbaa !66
  %i.ak = add nsw i32 %i.aj, %i.af
  store i32 %i.ak, ptr %2, align 4, !tbaa !66
  %i.al = zext i32 %.078133 to i64
  %i.am = shl i64 %i.al, %i.h                     ; 3 uses
  %i.an = icmp uge i64 %i.ai, %i.f
  %i.ao = sub nuw i64 %i.b, %i.ai
  %.not21.i = icmp ult i64 %i.ao, %i.am
  %or.cond22.i = or i1 %i.an, %.not21.i
end_hunk_1
