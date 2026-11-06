Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-regression1?download=true
inline.NumInlined: 22007
inline.NumDeleted: 5366
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 189
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE10write_cborERKSF_:bb.a

bb.cc:                                            ; preds = %bb.ca
  %.not115 = icmp ugt i64 %i.nl, 4294967295
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !341 ; 3 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !81
  %i.ot = load ptr, ptr %i.os, align 8            ; 2 uses
  br i1 %.not115, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void %i.ot(ptr noundef nonnull align 8 dereferenceable(8) %i.or, i8 noundef zeroext -70)
  %i.ou = trunc nuw i64 %i.nl to i32
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.ou, i1 noundef zeroext false)
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  tail call void %i.ot(ptr noundef nonnull align 8 dereferenceable(8) %i.or, i8 noundef zeroext -69)
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberImEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.nl, i1 noundef zeroext false)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.bz, %bb.cd, %bb.ce, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit169, %bb.bx
  %i.ov = load ptr, ptr %i.ni, align 8, !tbaa !103 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !144 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 2 uses
  %.not177180 = icmp eq ptr %i.ox, %i.oy
  br i1 %.not177180, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cf
  %i.oz = getelementptr inbounds nuw i8, ptr %29, i64 8
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %.sroa.0170.0181 = phi ptr [ %i.ox, %.lr.ph ], [ %i.pg, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0170.0181, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSJ_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(32) %i.pa)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.ch

common.resume:                                    ; preds = %bb.ck, %bb.ch
  %common.resume.op = phi { ptr, i32 } [ %i.pb, %bb.ch ], [ %i.ph, %bb.ck ]
  resume { ptr, i32 } %common.resume.op

bb.ch:                                            ; preds = %bb.cg
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #31
  br label %common.resume

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.cg
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE10write_cborERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %29)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.pc = load i8, ptr %29, align 8, !tbaa !99
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, i8 noundef zeroext %i.pc) #33
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.cj, !inline_history !100

bb.cj:                                            ; preds = %bb.ci
  %i.pd = landingpad { ptr, i32 }
          catch ptr null
  %i.pe = extractvalue { ptr, i32 } %i.pd, 0
  call void @__clang_call_terminate(ptr %i.pe) #32, !inline_history !100
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0170.0181, i64 64
  call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE10write_cborERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.pf)
  %i.pg = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0170.0181) #36 ; 2 uses
  %.not177 = icmp eq ptr %i.pg, %i.oy
  br i1 %.not177, label %.loopexit, label %bb.cg

bb.ck:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  br label %common.resume

.loopexit:                                        ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %.lr.ph184, %bb.cf, %bb.bd, %bb.o, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit145, %bb.v, %bb.u, %bb.q, %bb.a, %bb.ag, %bb.aj, %bb.ai, %bb.x, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit149, %bb.ae, %bb.ad, %bb.z, %bb.h, %bb.l, %bb.m, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit, %bb.f, %bb.bv, %bb.at, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !261
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !262
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !51
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !51
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !114
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !284

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !261
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !262
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !24
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !114
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !284

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.553", align 4   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i32 %1, ptr %3, align 4
  %i.a = load i8, ptr %0, align 8, !tbaa !643, !range !89, !noundef !90
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPhEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %4, ptr %3, align 4, !tbaa !103
  br label %_ZSt7reverseIPhEvT_S1_.exit

_ZSt7reverseIPhEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !341  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberImEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.613", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i64 %1, ptr %3, align 8
  %i.a = load i8, ptr %0, align 8, !tbaa !643, !range !89, !noundef !90
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPhEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %4, ptr %3, align 8, !tbaa !103
  br label %_ZSt7reverseIPhEvT_S1_.exit

_ZSt7reverseIPhEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !341  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE19write_compact_floatEdNS1_14input_format_tE(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.613", align 8   ; 5 uses
  %4 = alloca %"struct.std::array.553", align 4   ; 5 uses
  %i.a = tail call double @llvm.fabs.f64(double %1)
  %or.cond = fcmp ugt double %i.a, f0x47EFFFFFE0000000
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fptrunc double %1 to float               ; 3 uses
  %i.c = fpext float %i.b to double
  %i.d = fcmp oeq double %1, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !341  ; 2 uses
  %i.g = icmp eq i32 %2, 1
  %spec.select = select i1 %i.g, i8 -6, i8 -54
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef zeroext %spec.select)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store float %i.b, ptr %4, align 4
  %i.j = load i8, ptr %0, align 8, !tbaa !643, !range !89, !noundef !90
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIfEEvT_b.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.k = bitcast float %i.b to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %i.k)
  store i32 %5, ptr %4, align 4, !tbaa !103
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIfEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIfEEvT_b.exit: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !341  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %4, i64 noundef 4), !inline_history !2453
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !341  ; 2 uses
  %i.r = icmp eq i32 %2, 1
  %spec.select16 = select i1 %i.r, i8 -5, i8 -53
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !81
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext %spec.select16)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store double %1, ptr %3, align 8
  %i.u = load i8, ptr %0, align 8, !tbaa !643, !range !89, !noundef !90
  %.not.i12 = icmp eq i8 %i.u, 0
  br i1 %.not.i12, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIdEEvT_b.exit, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %bb.d
  %6 = bitcast double %1 to i64
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  store i64 %7, ptr %3, align 8, !tbaa !103
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIdEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIdEEvT_b.exit: ; preds = %bb.d, %.lr.ph.i.i.i13
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !341  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %3, i64 noundef 8), !inline_history !2454
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.e

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIdEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIfEEvT_b.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #31, !inline_history !2455
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !436  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !103
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEE15write_characterEh(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !646, !nonnull !90, !align !258 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !196  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !195
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %1, ptr %i.d, align 1, !tbaa !103
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !196
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.c, align 8, !tbaa !196
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !194  ; 4 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 7 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775807
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.442) #38
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.n = add i64 %.sroa.speculated.i.i.i, %i.l    ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 9223372036854775807)
  %i.q = select i1 %i.o, i64 9223372036854775807, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #35 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l ; 2 uses
  store i8 %1, ptr %i.s, align 1, !tbaa !103
  %i.t = icmp sgt i64 %i.l, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #34
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.r, ptr %i.b, align 8, !tbaa !194
  store ptr %i.u, ptr %i.c, align 8, !tbaa !196
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store ptr %i.v, ptr %i.e, align 8, !tbaa !195
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEE16write_charactersEPKhm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !646, !nonnull !90, !align !258 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.j, ptr noundef nonnull %1, ptr noundef nonnull %i.e)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !195
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !196  ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaN2ns14foo_serializerES3_IhSaIhEEvE12get_ref_implIRKNS0_27byte_container_with_subtypeISD_EEKSE_EET_RT0_:bb.a
  call void @__cxa_free_exception(ptr %i.f) #31
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %.pn14, %bb.g ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn13

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #3 align 2

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_unit_regression1.cpp() #25 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %1 = alloca %"class.doctest::String", align 8   ; 7 uses
  %2 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %3 = alloca %"class.doctest::String", align 8   ; 7 uses
  %4 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %5 = alloca %"class.doctest::String", align 8   ; 7 uses
  %6 = alloca %"struct.doctest::detail::TestSuite", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  %i.a = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN7doctest6detail9TestSuitemlEPKc(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull @.str)
  %i.b = call noundef i32 @_ZN7doctest6detail12setTestSuiteERKNS0_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(40) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  store i32 0, ptr @_ZL18DOCTEST_ANON_VAR_0, align 4, !tbaa !114
  %i.c = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL18DOCTEST_ANON_VAR_0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.d = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #31
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @_ZN5utilsL19DOCTEST_ANON_FUNC_2Ev, ptr noundef nonnull @.str.2, i32 noundef 26, ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @.str.3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.e)
          to label %__cxx_global_var_init.1.exit unwind label %bb.e ; 0 uses

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #31
  br label %bb.f

common.resume:                                    ; preds = %bb.p, %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %.pn.i1, %bb.k ], [ %.pn.i2, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume

__cxx_global_var_init.1.exit:                     ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #31
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.j) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %4) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  store i32 0, ptr @_ZN5utilsL18DOCTEST_ANON_VAR_3E, align 4, !tbaa !114
  %i.k = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN5utilsL18DOCTEST_ANON_VAR_3E) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.l = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #31
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @_ZL19DOCTEST_ANON_FUNC_7v, ptr noundef nonnull @.str.5, i32 noundef 118, ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.6)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.n = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.m)
          to label %__cxx_global_var_init.4.exit unwind label %bb.j ; 0 uses

bb.i:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn.i1 = phi { ptr, i32 } [ %i.p, %bb.j ], [ %i.o, %bb.i ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume

__cxx_global_var_init.4.exit:                     ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #31
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %2) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  store i32 0, ptr @_ZL18DOCTEST_ANON_VAR_8, align 4, !tbaa !114
  %i.s = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL18DOCTEST_ANON_VAR_8) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #31
  %i.t = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #31
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_106v, ptr noundef nonnull @.str.5, i32 noundef 1503, ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %__cxx_global_var_init.4.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @.str.8)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.v = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.u)
          to label %__cxx_global_var_init.7.exit unwind label %bb.o ; 0 uses

bb.n:                                             ; preds = %__cxx_global_var_init.4.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i2 = phi { ptr, i32 } [ %i.x, %bb.o ], [ %i.w, %bb.n ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  br label %common.resume

__cxx_global_var_init.7.exit:                     ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %0) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_107, align 4, !tbaa !114
  %i.aa = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_107) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #27

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nounwind memory(none) }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { "function-inline-cost-multiplier"="2" }
attributes #34 = { builtin nounwind }
attributes #35 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #38 = { noreturn }
attributes #39 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!70, !71, !72, !73}
!llvm.ident = !{!74}
!llvm.errno.tbaa = !{!79}

!0 = distinct !{!0, !147}
!1 = distinct !{!1, !147}
!2 = distinct !{!2, !147}
!3 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5 = distinct !{null, null, null}
!6 = distinct !{!6, !147}
!7 = distinct !{null}
!8 = distinct !{!8, !147}
!9 = distinct !{!9, !147}
!10 = distinct !{!10, !147}
!11 = distinct !{!11, !147}
!12 = distinct !{!12, !147}
!13 = distinct !{!13, !147}
!14 = distinct !{!14, !147}
!15 = distinct !{null}
!16 = distinct !{null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!17 = distinct !{null}
!18 = distinct !{null, null}
!19 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!20 = distinct !{null, null}
!21 = distinct !{null}
!22 = distinct !{!22, !147}
!23 = distinct !{null}
!24 = distinct !{null, null}
!25 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!26 = distinct !{!26, !147}
!27 = distinct !{!27, !147}
!28 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE3getEv, null, null}
!29 = distinct !{null, null}
!30 = distinct !{!30, !147}
!31 = distinct !{!31, !147}
!32 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbijfSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbijfSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!33 = distinct !{null, null}
!34 = distinct !{null}
!35 = distinct !{!35, !147}
!36 = distinct !{null}
!37 = distinct !{null}
!38 = distinct !{null, null}
!39 = distinct !{!39, !147}
!40 = distinct !{!40, !147}
!41 = distinct !{!41, !147}
!42 = distinct !{null}
!43 = distinct !{!43, !147}
!44 = distinct !{null}
!45 = distinct !{!45, !147}
!46 = distinct !{!46, !147}
!47 = distinct !{!47, !147}
!48 = distinct !{!48, !147}
!49 = distinct !{!49, !147}
!50 = distinct !{!50, !147}
!51 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!52 = distinct !{null}
!53 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!54 = distinct !{null}
!55 = distinct !{!55, !147}
!56 = distinct !{null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!57 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!58 = distinct !{!58, !147}
!59 = distinct !{!59, !147}
!60 = distinct !{!60, !147}
!61 = distinct !{!61, !147}
!62 = distinct !{null, null, null, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonI22my_workaround_fifo_mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!63 = distinct !{null, null}
!64 = distinct !{null}
!65 = distinct !{!65, !147}
!66 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaN2ns14foo_serializerES3_IhSaIhEEvED2Ev, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaN2ns14foo_serializerES3_IhSaIhEEvE4dataD2Ev}
!67 = distinct !{null, null}
!68 = distinct !{null}
!69 = distinct !{!69, !147}
!70 = !{i32 1, !"long-double-type", !"x86_fp80"}
!71 = !{i32 8, !"PIC Level", i32 2}
!72 = !{i32 7, !"PIE Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 2}
!74 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!75 = !{!"Simple C++ TBAA"}
!76 = !{!"omnipotent char", !75, i64 0}
!77 = !{!"int", !76, i64 0}
!78 = !{!"__libc_errno", !77, i64 0}
!79 = !{!78, !77, i64 0}
!80 = !{!"vtable pointer", !75, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"_ZTSN7doctest10assertType4EnumE", !76, i64 0}
!83 = !{!"_ZTSN7doctest6detail20ExpressionDecomposerE", !82, i64 0}
!84 = !{!83, !82, i64 0}
!85 = !{!"_ZTSN7doctest13IContextScopeE"}
!86 = !{!"bool", !76, i64 0}
!87 = !{!"_ZTSN7doctest6detail16ContextScopeBaseE", !85, i64 0, !86, i64 8}
!88 = !{!87, !86, i64 8}
!89 = !{i8 0, i8 2}
!90 = !{}
!91 = !{ptr @"_ZN7doctest6detail12ContextScopeIZN5utilsL19DOCTEST_ANON_FUNC_2EvE3$_0ED2Ev"}
!92 = !{!"any pointer", !76, i64 0}
!93 = !{!"p1 omnipotent char", !92, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!"_ZTSSt14_Function_base", !76, i64 0, !92, i64 16}
!96 = !{!95, !92, i64 16}
!97 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail7value_tE", !76, i64 0}
!98 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataE", !97, i64 0, !76, i64 8}
!99 = !{!98, !97, i64 0}
!100 = !{ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!101 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEE", !98, i64 0}
!102 = !{!101, !97, i64 0}
!103 = !{!76, !76, i64 0}
!104 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !93, i64 0}
!105 = !{!104, !93, i64 0}
!106 = !{!"long", !76, i64 0}
!107 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !104, i64 0, !106, i64 8, !76, i64 16}
!108 = !{!107, !93, i64 0}
!109 = !{!107, !106, i64 8}
!110 = !{!"_ZTSN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !107, i64 0, !82, i64 32}
!111 = !{!110, !82, i64 32}
!112 = !{!"double", !76, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!77, !77, i64 0}
!115 = !{!"p1 _ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEE", !92, i64 0}
!116 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEE", !101, i64 0, !115, i64 16}
!117 = !{!116, !115, i64 16}
!118 = !{!97, !97, i64 0}
!119 = !{!"float", !76, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!"_ZTSSi", !106, i64 8}
!122 = !{!121, !106, i64 8}
!123 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbijfSaNS0_14adl_serializerES3_IhSaIhEEvE4dataE", !97, i64 0, !76, i64 8}
!124 = !{!123, !97, i64 0}
!125 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbijfSaNS0_14adl_serializerES3_IhSaIhEEvEE", !123, i64 0}
!126 = !{!125, !97, i64 0}
!127 = !{ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbijfSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbijfSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!128 = !{!115, !115, i64 0}
!129 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !92, i64 0}
!130 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE", !129, i64 0}
!131 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEES5_ISF_SaISF_EEEE", !115, i64 0}
!132 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail20primitive_iterator_tE", !106, i64 0}
!133 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail17internal_iteratorINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEE", !130, i64 0, !131, i64 8, !132, i64 16}
!134 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEE", !115, i64 0, !133, i64 8}
!135 = !{!134, !115, i64 0}
!136 = !{!129, !129, i64 0}
!137 = !{!106, !106, i64 0}
!138 = !{!130, !129, i64 0}
!139 = !{!131, !115, i64 0}
!140 = !{!132, !106, i64 0}
!141 = !{!"_ZTSSt14_Rb_tree_color", !76, i64 0}
!142 = !{!"_ZTSSt18_Rb_tree_node_base", !141, i64 0, !129, i64 8, !129, i64 16, !129, i64 24}
!143 = !{!"_ZTSSt15_Rb_tree_header", !142, i64 0, !106, i64 32}
!144 = !{!143, !129, i64 16}
!145 = !{i64 0, i64 1, !118, i64 8, i64 8, !103}
!146 = !{!92, !92, i64 0}
!147 = !{!"llvm.loop.mustprogress"}
!148 = !{!"_ZTSSt13_Ios_Fmtflags", !76, i64 0}
!149 = !{!"_ZTSSt12_Ios_Iostate", !76, i64 0}
!150 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !92, i64 0}
!151 = !{!"_ZTSNSt8ios_base6_WordsE", !92, i64 0, !106, i64 8}
!152 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !92, i64 0}
!153 = !{!"p1 _ZTSNSt6locale5_ImplE", !92, i64 0}
!154 = !{!"_ZTSSt6locale", !153, i64 0}
end_hunk_1
