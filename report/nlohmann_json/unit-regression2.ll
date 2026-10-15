Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-regression2?download=true
inline.NumInlined: 24436
inline.NumDeleted: 5451
loop-unroll.NumCompletelyUnrolled: 259
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 278
begin_hunk_0_@_ZL19DOCTEST_ANON_FUNC_2v:bb.a
  br label %.body2249

.body2249:                                        ; preds = %bb.sa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %bb.sm
  %.pn1290.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn1290.pn.pn.pn, %bb.sm ], [ %i.bdp, %bb.sa ], [ %i.bbc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #35
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %179) #35
  br label %bb.sn

bb.sn:                                            ; preds = %.body2249, %.body2221.thread
  %.pn1290.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn1290.pn.pn.pn.pn, %.body2249 ], [ %.pn1276.pn.pn.pn.pn.pn.pn.pn3358, %.body2221.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %179) #35
  br label %bb.tr

bb.so:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit2282, %bb.qo
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %177) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %177) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %195) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #35
  call void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %196, ptr noundef nonnull @.str.51)
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %195, ptr noundef nonnull align 8 dereferenceable(24) %196, ptr noundef nonnull @.str.4, i32 noundef 618)
          to label %bb.sp unwind label %bb.ts

bb.sp:                                            ; preds = %bb.so
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %196) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #35
  %i.bee = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %195)
          to label %bb.sq unwind label %bb.tt

bb.sq:                                            ; preds = %bb.sp
  br i1 %i.bee, label %bb.sr, label %bb.uc

bb.sr:                                            ; preds = %bb.sq
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #35
  store i8 0, ptr %197, align 8, !tbaa !153
  %i.bef = getelementptr inbounds nuw i8, ptr %197, i64 8 ; 2 uses
  store ptr null, ptr %i.bef, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %198) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %199) #35
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %199, i32 noundef 10)
          to label %bb.ss unwind label %bb.tu

bb.ss:                                            ; preds = %bb.sr
  %.val = load i32, ptr %199, align 4, !tbaa !929
  invoke fastcc void @_ZN7doctest6detail14Expression_lhsIRN12_GLOBAL__N_124NonDefaultFromJsonStructEEeqIS4_EEDTcmcvveqclL_ZNS0_7declvalIS4_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind noalias writable align 8 %198, i32 %.val)
          to label %bb.st unwind label %bb.tu

bb.st:                                            ; preds = %bb.ss
  %i.beg = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.4, i32 noundef 626, ptr noundef nonnull @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %198)
          to label %bb.su unwind label %bb.tv     ; 0 uses

bb.su:                                            ; preds = %bb.st
  %i.beh = getelementptr inbounds nuw i8, ptr %198, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.beh) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #35
  %i.bei = load i8, ptr %197, align 8, !tbaa !153
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bef, i8 noundef zeroext %i.bei) #40
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit2288 unwind label %bb.sv, !inline_history !154

bb.sv:                                            ; preds = %bb.su
  %i.bej = landingpad { ptr, i32 }
          catch ptr null
  %i.bek = extractvalue { ptr, i32 } %i.bej, 0
  call void @__clang_call_terminate(ptr %i.bek) #39, !inline_history !154
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit2288: ; preds = %bb.su
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %200) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %200, i8 0, i64 16, i1 false)
  store i8 3, ptr %200, align 8, !tbaa !171
  %i.bel = invoke noundef nonnull ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS9_JRA4_KcEEEPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(4) @.str.53)
          to label %bb.sx unwind label %bb.sw

bb.sw:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit2288
  %i.bem = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %200) #35
  br label %.body2290

bb.sx:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit2288
  %i.ben = getelementptr inbounds nuw i8, ptr %200, i64 8 ; 2 uses
  store ptr %i.bel, ptr %i.ben, align 8, !tbaa !140
  %i.beo = load atomic i8, ptr @_ZGVZN12_GLOBAL__N_19from_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNS_8for_1647EE1mB5cxx11 acquire, align 8
  %i.bep = icmp eq i8 %i.beo, 0
  br i1 %i.bep, label %bb.sy, label %bb.tc, !prof !952

bb.sy:                                            ; preds = %bb.sx
  %i.beq = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12_GLOBAL__N_19from_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNS_8for_1647EE1mB5cxx11) #35
  %.not.i.i.i.i.i = icmp eq i32 %i.beq, 0
  br i1 %.not.i.i.i.i.i, label %bb.tc, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  invoke fastcc void @_ZNSt4pairIN12_GLOBAL__N_18for_1647EN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEC2IS1_RA4_KcQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISM_SN_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN12_GLOBAL__N_19from_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNS_8for_1647EE1mB5cxx11, i32 0, ptr noundef nonnull align 1 dereferenceable(4) @.str.53)
          to label %bb.ta unwind label %.thread.i.i.i.i.i

bb.ta:                                            ; preds = %bb.sz
  invoke fastcc void @_ZNSt4pairIN12_GLOBAL__N_18for_1647EN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEC2IS1_RA4_KcQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISM_SN_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_19from_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNS_8for_1647EE1mB5cxx11, i64 24), i32 1, ptr noundef nonnull align 1 dereferenceable(4) @.str.394)
          to label %bb.tb unwind label %.loopexit.loopexit.i.i.i.i.i

bb.tb:                                            ; preds = %bb.ta
  %i.ber = call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor, ptr null, ptr nonnull @__dso_handle) #35 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12_GLOBAL__N_19from_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNS_8for_1647EE1mB5cxx11) #35
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.sy, %bb.sx
  %i.bes = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEeqERKSD_(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_19from_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNS_8for_1647EE1mB5cxx11, i64 8), ptr noundef nonnull align 8 dereferenceable(16) %200) #35
  br i1 %i.bes, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.bet = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEeqERKSD_(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_19from_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNS_8for_1647EE1mB5cxx11, i64 32), ptr noundef nonnull align 8 dereferenceable(16) %200) #35
  %spec.select.i.i.i.i.i = select i1 %i.bet, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_19from_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNS_8for_1647EE1mB5cxx11, i64 24), ptr @_ZZN12_GLOBAL__N_19from_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNS_8for_1647EE1mB5cxx11
  br label %bb.te

.thread.i.i.i.i.i:                                ; preds = %bb.sz
  %i.beu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i.i.i

.loopexit.loopexit.i.i.i.i.i:                     ; preds = %bb.ta
  %i.bev = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt4pairIN12_GLOBAL__N_18for_1647EN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) @_ZZN12_GLOBAL__N_19from_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNS_8for_1647EE1mB5cxx11) #35
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.loopexit.i.i.i.i.i, %.thread.i.i.i.i.i
  %.pn19.i.i.i.i.i = phi { ptr, i32 } [ %i.beu, %.thread.i.i.i.i.i ], [ %i.bev, %.loopexit.loopexit.i.i.i.i.i ]
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN12_GLOBAL__N_19from_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNS_8for_1647EE1mB5cxx11) #35
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %200) #35
  br label %.body2290

bb.te:                                            ; preds = %bb.td, %bb.tc
  %i.bew = phi ptr [ %spec.select.i.i.i.i.i, %bb.td ], [ @_ZZN12_GLOBAL__N_19from_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNS_8for_1647EE1mB5cxx11, %bb.tc ]
  %i.bex = load i32, ptr %i.bew, align 8, !tbaa !214 ; 3 uses
  %i.bey = load i8, ptr %200, align 8, !tbaa !153
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ben, i8 noundef zeroext %i.bey) #40
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit2294 unwind label %bb.tf, !inline_history !154

bb.tf:                                            ; preds = %bb.te
  %i.bez = landingpad { ptr, i32 }
          catch ptr null
  %i.bfa = extractvalue { ptr, i32 } %i.bez, 0
  call void @__clang_call_terminate(ptr %i.bfa) #39, !inline_history !154
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit2294: ; preds = %bb.te
  call void @llvm.lifetime.end.p0(ptr nonnull %200) #35
  store i32 %i.bex, ptr %i.i, align 4, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %201) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %202) #35
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %202, i32 noundef 10)
          to label %bb.tg unwind label %bb.tx

bb.tg:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit2294
  %.val1718 = load i32, ptr %202, align 4, !tbaa !929
  invoke fastcc void @_ZN7doctest6detail14Expression_lhsIRN12_GLOBAL__N_18for_1647EEeqIS3_EEDTcmcvveqclL_ZNS0_7declvalIS4_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind noalias writable align 8 %201, ptr nonnull %i.i, i32 %.val1718, i32 0)
          to label %bb.th unwind label %bb.ty

bb.th:                                            ; preds = %bb.tg
  %i.bfb = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.4, i32 noundef 631, ptr noundef nonnull @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %201)
          to label %bb.ti unwind label %bb.tz     ; 0 uses

bb.ti:                                            ; preds = %bb.th
  %i.bfc = getelementptr inbounds nuw i8, ptr %201, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bfc) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %203) #35
  %i.bfd = getelementptr inbounds nuw i8, ptr %203, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %203, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  %i.bfe = load atomic i8, ptr @_ZGVZN12_GLOBAL__N_17to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRT_RKNS_8for_1647EE1mB5cxx11 acquire, align 8
  %i.bff = icmp eq i8 %i.bfe, 0
  br i1 %i.bff, label %bb.tj, label %_ZSt7find_ifIPKSt4pairIN12_GLOBAL__N_18for_1647EN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS4_14adl_serializerES7_IhSaIhEEvEEEZNS1_7to_jsonISH_EEvRT_RKS2_EUlRSJ_E_ESM_SM_SM_T0_.exit.i.i.i.i, !prof !952

bb.tj:                                            ; preds = %bb.ti
  %i.bfg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12_GLOBAL__N_17to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRT_RKNS_8for_1647EE1mB5cxx11) #35
  %.not.i.i.i.i2300 = icmp eq i32 %i.bfg, 0
  br i1 %.not.i.i.i.i2300, label %_ZSt7find_ifIPKSt4pairIN12_GLOBAL__N_18for_1647EN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS4_14adl_serializerES7_IhSaIhEEvEEEZNS1_7to_jsonISH_EEvRT_RKS2_EUlRSJ_E_ESM_SM_SM_T0_.exit.i.i.i.i, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  invoke fastcc void @_ZNSt4pairIN12_GLOBAL__N_18for_1647EN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEC2IS1_RA4_KcQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISM_SN_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN12_GLOBAL__N_17to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRT_RKNS_8for_1647EE1mB5cxx11, i32 0, ptr noundef nonnull align 1 dereferenceable(4) @.str.53)
          to label %bb.tl unwind label %.thread.i.i.i.i

bb.tl:                                            ; preds = %bb.tk
  invoke fastcc void @_ZNSt4pairIN12_GLOBAL__N_18for_1647EN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEC2IS1_RA4_KcQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISM_SN_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_17to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRT_RKNS_8for_1647EE1mB5cxx11, i64 24), i32 1, ptr noundef nonnull align 1 dereferenceable(4) @.str.394)
          to label %bb.tm unwind label %.loopexit.loopexit.i.i.i.i

bb.tm:                                            ; preds = %bb.tl
  %i.bfh = call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.395, ptr null, ptr nonnull @__dso_handle) #35 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12_GLOBAL__N_17to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRT_RKNS_8for_1647EE1mB5cxx11) #35
  br label %_ZSt7find_ifIPKSt4pairIN12_GLOBAL__N_18for_1647EN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS4_14adl_serializerES7_IhSaIhEEvEEEZNS1_7to_jsonISH_EEvRT_RKS2_EUlRSJ_E_ESM_SM_SM_T0_.exit.i.i.i.i

_ZSt7find_ifIPKSt4pairIN12_GLOBAL__N_18for_1647EN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS4_14adl_serializerES7_IhSaIhEEvEEEZNS1_7to_jsonISH_EEvRT_RKS2_EUlRSJ_E_ESM_SM_SM_T0_.exit.i.i.i.i: ; preds = %bb.tm, %bb.tj, %bb.ti
  %.1.val.i.i.i.i.i.i.i = load i32, ptr @_ZZN12_GLOBAL__N_17to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRT_RKNS_8for_1647EE1mB5cxx11, align 16, !tbaa !214
  %i.bfi = icmp ne i32 %.1.val.i.i.i.i.i.i.i, %i.bex
  %.2.val.i.i.i.i.i.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_17to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRT_RKNS_8for_1647EE1mB5cxx11, i64 24), align 8
  %i.bfj = icmp eq i32 %.2.val.i.i.i.i.i.i.i, %i.bex
  %or.cond.i.i.i.i = select i1 %i.bfi, i1 %i.bfj, i1 false
  %i.bfk = select i1 %or.cond.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_17to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRT_RKNS_8for_1647EE1mB5cxx11, i64 24), ptr @_ZZN12_GLOBAL__N_17to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRT_RKNS_8for_1647EE1mB5cxx11
  %568 = getelementptr inbounds nuw i8, ptr %i.bfk, i64 8
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %568)
          to label %.noexc.i2299 unwind label %bb.to

.noexc.i2299:                                     ; preds = %_ZSt7find_ifIPKSt4pairIN12_GLOBAL__N_18for_1647EN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS4_14adl_serializerES7_IhSaIhEEvEEEZNS1_7to_jsonISH_EEvRT_RKS2_EUlRSJ_E_ESM_SM_SM_T0_.exit.i.i.i.i
  %i.bfl = load i8, ptr %203, align 8, !tbaa !158 ; 2 uses
  %i.bfm = load i8, ptr %28, align 8, !tbaa !158
  store i8 %i.bfm, ptr %203, align 8, !tbaa !158
  store i8 %i.bfl, ptr %28, align 8, !tbaa !158
  %i.bfn = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bfd, align 8, !tbaa !140
  %i.bfo = load i64, ptr %i.bfn, align 8, !tbaa !140
  store i64 %i.bfo, ptr %i.bfd, align 8, !tbaa !140
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.bfn, align 8, !tbaa !140
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bfn, i8 noundef zeroext %i.bfl) #40
          to label %bb.tp unwind label %bb.tn, !inline_history !154

bb.tn:                                            ; preds = %.noexc.i2299
  %i.bfp = landingpad { ptr, i32 }
          catch ptr null
  %i.bfq = extractvalue { ptr, i32 } %i.bfp, 0
  call void @__clang_call_terminate(ptr %i.bfq) #39, !inline_history !154
  unreachable

.thread.i.i.i.i:                                  ; preds = %bb.tk
  %i.bfr = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i.i

.loopexit.loopexit.i.i.i.i:                       ; preds = %bb.tl
  %i.bfs = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt4pairIN12_GLOBAL__N_18for_1647EN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) @_ZZN12_GLOBAL__N_17to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRT_RKNS_8for_1647EE1mB5cxx11) #35
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.loopexit.i.i.i.i, %.thread.i.i.i.i
  %.pn19.i.i.i.i = phi { ptr, i32 } [ %i.bfr, %.thread.i.i.i.i ], [ %i.bfs, %.loopexit.loopexit.i.i.i.i ]
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN12_GLOBAL__N_17to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEEEvRT_RKNS_8for_1647EE1mB5cxx11) #35
  br label %.body.i2297

bb.to:                                            ; preds = %_ZSt7find_ifIPKSt4pairIN12_GLOBAL__N_18for_1647EN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS4_14adl_serializerES7_IhSaIhEEvEEEZNS1_7to_jsonISH_EEvRT_RKS2_EUlRSJ_E_ESM_SM_SM_T0_.exit.i.i.i.i
  %i.bft = landingpad { ptr, i32 }
          cleanup
  br label %.body.i2297

.body.i2297:                                      ; preds = %bb.to, %.loopexit.i.i.i.i
  %eh.lpad-body.i2298 = phi { ptr, i32 } [ %i.bft, %bb.to ], [ %.pn19.i.i.i.i, %.loopexit.i.i.i.i ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %203) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #35
  br label %bb.ub

bb.tp:                                            ; preds = %.noexc.i2299
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  %i.bfu = load i8, ptr %203, align 8, !tbaa !153
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bfd, i8 noundef zeroext %i.bfu) #40
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit2303 unwind label %bb.tq, !inline_history !154

bb.tq:                                            ; preds = %bb.tp
  %i.bfv = landingpad { ptr, i32 }
          catch ptr null
  %i.bfw = extractvalue { ptr, i32 } %i.bfv, 0
  call void @__clang_call_terminate(ptr %i.bfw) #39, !inline_history !154
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit2303: ; preds = %bb.tp
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #35
  br label %bb.uc

bb.tr:                                            ; preds = %bb.sn, %bb.ru
  %.pn1290.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn1290.pn.pn.pn.pn.pn, %bb.sn ], [ %i.bdg, %bb.ru ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %177) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %177) #35
  br label %bb.bmo

bb.ts:                                            ; preds = %bb.so
  %i.bfx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %196) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #35
  br label %bb.bmo

bb.tt:                                            ; preds = %bb.sp
  %i.bfy = landingpad { ptr, i32 }
          cleanup
  br label %bb.up

bb.tu:                                            ; preds = %bb.ss, %bb.sr
  %i.bfz = landingpad { ptr, i32 }
          cleanup
  br label %bb.tw

bb.tv:                                            ; preds = %bb.st
  %i.bga = landingpad { ptr, i32 }
          cleanup
  %i.bgb = getelementptr inbounds nuw i8, ptr %198, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bgb) #35
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.tu
  %.pn1299 = phi { ptr, i32 } [ %i.bga, %bb.tv ], [ %i.bfz, %bb.tu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #35
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %197) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #35
  br label %bb.up

.body2290:                                        ; preds = %bb.sw, %.loopexit.i.i.i.i.i
  %.pn1301 = phi { ptr, i32 } [ %.pn19.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %i.bem, %bb.sw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %200) #35
  br label %bb.ub

bb.tx:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit2294
  %i.bgc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ua

bb.ty:                                            ; preds = %bb.tg
  %i.bgd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ua

bb.tz:                                            ; preds = %bb.th
  %i.bge = landingpad { ptr, i32 }
          cleanup
  %i.bgf = getelementptr inbounds nuw i8, ptr %201, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bgf) #35
  br label %bb.ua

bb.ua:                                            ; preds = %bb.ty, %bb.tz, %bb.tx
  %.pn1303.pn = phi { ptr, i32 } [ %i.bgc, %bb.tx ], [ %i.bge, %bb.tz ], [ %i.bgd, %bb.ty ]
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #35
  br label %bb.ub

bb.ub:                                            ; preds = %.body.i2297, %bb.ua, %.body2290
  %.pn1306 = phi { ptr, i32 } [ %eh.lpad-body.i2298, %.body.i2297 ], [ %.pn1303.pn, %bb.ua ], [ %.pn1301, %.body2290 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #35
  br label %bb.up

bb.uc:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit2303, %bb.sq
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %195) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %204) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %205) #35
  call void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %205, ptr noundef nonnull @.str.55)
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %204, ptr noundef nonnull align 8 dereferenceable(24) %205, ptr noundef nonnull @.str.4, i32 noundef 635)
          to label %bb.ud unwind label %bb.uq

bb.ud:                                            ; preds = %bb.uc
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %205) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %205) #35
  %i.bgg = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %204)
          to label %bb.ue unwind label %bb.ur

bb.ue:                                            ; preds = %bb.ud
  br i1 %i.bgg, label %bb.uf, label %bb.wt

bb.uf:                                            ; preds = %bb.ue
  call void @llvm.lifetime.start.p0(ptr nonnull %206) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %207) #35
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %207, ptr noundef nonnull @.str.56)
          to label %bb.ug unwind label %bb.us

bb.ug:                                            ; preds = %bb.uf
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %206, ptr noundef nonnull align 8 dereferenceable(24) %207, ptr noundef nonnull @.str.4, i32 noundef 637)
          to label %bb.uh unwind label %bb.ut

bb.uh:                                            ; preds = %bb.ug
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %207) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #35
  %i.bgh = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %206)
          to label %bb.ui unwind label %bb.uv

bb.ui:                                            ; preds = %bb.uh
  br i1 %i.bgh, label %bb.uj, label %bb.vc

bb.uj:                                            ; preds = %bb.ui
  call void @llvm.lifetime.start.p0(ptr nonnull %208) #35
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRA2_KcEESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %208, ptr noundef nonnull align 1 dereferenceable(2) @.str.57, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.uk unwind label %bb.uw

bb.uk:                                            ; preds = %bb.uj
  call void @llvm.lifetime.start.p0(ptr nonnull %209) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %210) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %211) #35
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %211, i32 noundef 10)
          to label %bb.ul unwind label %bb.ux

bb.ul:                                            ; preds = %bb.uk
  %i.bgi = load i8, ptr %208, align 8, !tbaa !171
  %i.bgj = icmp eq i8 %i.bgi, 9
  %i.bgk = load i32, ptr %211, align 4, !tbaa !929
  %.sroa.22.0.insert.ext.i2304 = zext i32 %i.bgk to i64
  %.sroa.22.0.insert.shift.i2305 = shl nuw i64 %.sroa.22.0.insert.ext.i2304, 32
  %.sroa.0.0.insert.ext.i2306 = zext i1 %i.bgj to i64
  %.sroa.0.0.insert.insert.i2307 = or disjoint i64 %.sroa.22.0.insert.shift.i2305, %.sroa.0.0.insert.ext.i2306
  store i64 %.sroa.0.0.insert.insert.i2307, ptr %210, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %209, ptr noundef nonnull align 4 dereferenceable(8) %210)
          to label %bb.um unwind label %bb.uy

bb.um:                                            ; preds = %bb.ul
end_hunk_0
