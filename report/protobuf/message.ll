inline.NumInlined: 3020
inline.NumDeleted: 1291
begin_hunk_0_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4rust12_GLOBAL__N_129UpbGeneratedMessageTraitImplsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation":bb.a
bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #24
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4rust12_GLOBAL__N_129UpbGeneratedMessageTraitImplsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4rust12_GLOBAL__N_129UpbGeneratedMessageTraitImplsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK3upb13MessageDefPtr20MiniDescriptorEncodeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.upb_StringView, align 8     ; 6 uses
  %i.b = tail call ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.c = load ptr, ptr %1, align 8, !tbaa !292
  %i.d = invoke zeroext i1 @upb_MessageDef_MiniDescriptorEncode(ptr noundef %i.c, ptr noundef %i.b, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.j       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !295    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !297  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !46
  %i.i = icmp eq ptr %i.e, null
  %i.j = icmp ne i64 %i.g, 0
  %or.cond.i = and i1 %i.i, %i.j
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.37) #28
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.g, ptr %i.a, align 8, !tbaa !47
  %i.k = icmp ugt i64 %i.g, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.k    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i
  store ptr %i.l, ptr %0, align 8, !tbaa !48
  %i.m = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.m, ptr %i.h, align 8, !tbaa !49
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc4, %bb.d
  %i.n = phi ptr [ %i.l, %.noexc4 ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.e, align 1, !tbaa !49
  store i8 %i.o, ptr %i.n, align 1, !tbaa !49
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !50
  %i.r = load ptr, ptr %0, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3upb5ArenaD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @upb_Arena_Free(ptr noundef nonnull %i.b)
          to label %_ZN3upb5ArenaD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

_ZN3upb5ArenaD2Ev.exit:                           ; preds = %bb.g, %bb.h
  ret void

bb.j:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %.noexc.i, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.v, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.not.i.i5 = icmp eq ptr %i.b, null
  br i1 %.not.i.i5, label %_ZN3upb5ArenaD2Ev.exit6, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @upb_Arena_Free(ptr noundef nonnull %i.b)
          to label %_ZN3upb5ArenaD2Ev.exit6 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #26
  unreachable

_ZN3upb5ArenaD2Ev.exit6:                          ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %.pn
}

declare void @_ZN6google8protobuf8compiler4rust10RsTypePathB5cxx11ERNS2_7ContextERKNS0_10DescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE6GetSCCEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !298    ; 4 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !299
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !227
  %i.h = icmp eq ptr %i.g, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.j, i32 0, i32 1, i32 1)
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = xor i64 %i.k, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.m = mul i64 %i.l, -2543921745674291987
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %i.o = xor i64 %i.n, %i.k
  %i.p = mul i64 %i.o, -2543921745674291987
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !299, !noalias !300
  %i.t = and i64 %i.s, 65535
  %i.u = lshr i64 %i.q, 7
  %i.v = xor i64 %i.t, %i.u
  %i.w = trunc i64 %i.q to i8
  %i.x = and i8 %i.w, 127
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !49 ; 2 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i = phi i64 [ %i.v, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i6.i, %i.a        ; 4 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ab, i32 0, i32 3, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.6.0.i.i
  %i.ad = load <16 x i8>, ptr %i.ac, align 1, !tbaa !49 ; 2 uses
  %i.ae = icmp eq <16 x i8> %i.aa, %i.ad
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %.not45.i.i = icmp eq i16 %i.af, 0
  br i1 %.not45.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.af, %bb.e ] ; 3 uses
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = add i64 %.sroa.6.0.i.i, %i.ah
  %i.aj = and i64 %i.ai, %i.a                     ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !227
  %i.am = icmp eq ptr %i.al, %1
  br i1 %i.am, label %.thread32.i.i, label %bb.f, !prof !187

.thread32.i.i:                                    ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aj ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i16 %.sroa.017.046.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.046.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ad, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not43.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not43.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i, !prof !303

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.as = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !304

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread32.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.an, %.thread32.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ak, %.thread32.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i, 0
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit
  %i.aw = tail call { ptr, i64 } @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE3DFSEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1)
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  br label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit
  %i.ay = extractvalue { ptr, ptr } %.pn.i, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !305
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !307
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.ax, %bb.h ], [ %i.bb, %bb.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE3DFSEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.131", align 8    ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %"struct.std::pair.131", align 8    ; 10 uses
  %4 = alloca %"class.std::vector.6", align 8     ; 10 uses
  %5 = alloca %"struct.google::protobuf::compiler::rust::Context::DepsGenerator", align 1 ; 3 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !310 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !310
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.d = load i64, ptr %0, align 8, !tbaa !298, !noalias !322 ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ult i64 %i.d, 2
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !299, !noalias !326
  %.not.i.i.i.i.i = icmp ult i64 %i.h, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.g, align 8, !tbaa !47, !noalias !326
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !227, !noalias !326 ; 2 uses
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, 6679450291180483821
  %i.s = lshr i64 %i.r, 56
  %i.t = trunc nuw i64 %i.s to i8
  %i.u = and i8 %i.t, 127
  %i.v = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.w = xor i64 %i.v, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  %i.z = xor i64 %i.y, %i.v
  %i.aa = mul i64 %i.z, -2543921745674291987
  %i.ab = tail call noundef i64 @llvm.bswap.i64(i64 %i.aa)
  %i.ac = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ab, i8 noundef signext %i.u)
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit42 ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !49, !noalias !326
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !49, !noalias !326
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i: ; preds = %.noexc, %bb.d, %bb.c
  %.sink17.i.i.i.i = phi ptr [ %i.ae, %.noexc ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.c ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ]
  %.sink16.i.i.i.i = phi ptr [ %i.ag, %.noexc ], [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  %.sink.i.i.i.i = phi i8 [ 1, %.noexc ], [ 1, %bb.c ], [ 0, %bb.d ] ; 2 uses
  store ptr %.sink17.i.i.i.i, ptr %3, align 8, !alias.scope !326
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink16.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !326
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sink.i.i.i.i, ptr %i.ah, align 8, !tbaa !327, !alias.scope !326
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE30find_or_prepare_insert_non_sooIS8_EESP_INST_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.131") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc37 unwind label %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit42

.noexc37:                                         ; preds = %bb.f
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !327, !range !84, !alias.scope !330
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i: ; preds = %.noexc37, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i
  %i.ai = phi i8 [ %.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i ], [ %.pre.i.i, %.noexc37 ]
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE11try_emplaceIS8_Li0EJSJ_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISK_SN_SO_SS_E14const_iteratorEEE5valueEiE4typeELi0EEESP_INSY_8iteratorEbERKSW_DpOT1_.exit.thread, label %_ZNKSt14default_deleteIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataEEclEPS8_.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE11try_emplaceIS8_Li0EJSJ_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISK_SN_SO_SS_E14const_iteratorEEE5valueEiE4typeELi0EEESP_INSY_8iteratorEbERKSW_DpOT1_.exit.thread: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !330 ; 2 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !227, !noalias !330
  store ptr %i.ak, ptr %.sroa.2.0.copyload.i.i, align 8, !tbaa !331
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 8
  %i.am = ptrtoint ptr %i.c to i64
  store i64 %i.am, ptr %i.al, align 8, !tbaa !305
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit

_ZNKSt14default_deleteIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataEEclEPS8_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #24
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE11try_emplaceIS8_Li0EJSJ_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISK_SN_SO_SS_E14const_iteratorEEE5valueEiE4typeELi0EEESP_INSY_8iteratorEbERKSW_DpOT1_.exit.thread, %_ZNKSt14default_deleteIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataEEclEPS8_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !305 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !339 ; 3 uses
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !339
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 12 ; 5 uses
  store i32 %i.as, ptr %i.au, align 4, !tbaa !340
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  store i32 %i.as, ptr %i.av, align 8, !tbaa !341
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !342 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !343
  %.not.i38 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !227 ; 2 uses
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !227
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !342
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !247 ; 4 uses
  %i.be = ptrtoint ptr %i.ay to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 6 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.i, label %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #28
  unreachable

_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bi = ashr exact i64 %i.bg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 1152921504606846975)
  %i.bm = select i1 %i.bk, i64 1152921504606846975, i64 %i.bl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #25 ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.bg ; 2 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !227 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !227
  %i.br = icmp sgt i64 %i.bg, 0
  br i1 %i.br, label %bb.j, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 8 %i.bd, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bg) #24
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !227
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.k ], [ %i.bq, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i ]
  store ptr %i.bo, ptr %i.aw, align 8, !tbaa !247
  store ptr %i.bs, ptr %i.ax, align 8, !tbaa !342
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.bt, ptr %i.az, align 8, !tbaa !343
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.g, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.bu = phi ptr [ %i.bb, %bb.g ], [ %.pre, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNK6google8protobuf8compiler4rust7Context13DepsGeneratorclEPKNS0_10DescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bv = load ptr, ptr %4, align 8, !tbaa !248   ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !248 ; 2 uses
  %.not7379 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not7379, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.by, 1
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %bb.ad
  %.pre84 = load ptr, ptr %4, align 8, !tbaa !247
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit
  %i.cb = phi ptr [ %.pre84, %._crit_edge.loopexit ], [ %i.bv, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit ] ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !343
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #24
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ch = load i32, ptr %i.av, align 8, !tbaa !341
  %i.ci = load i32, ptr %i.au, align 4, !tbaa !340
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.ag, label %bb.az

_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit42: ; preds = %bb.f, %bb.e
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #24
  br label %bb.ba

bb.m:                                             ; preds = %.lr.ph, %bb.ad
  %.sroa.066.080 = phi ptr [ %i.bv, %.lr.ph ], [ %i.es, %bb.ad ] ; 2 uses
  %i.cl = load ptr, ptr %.sroa.066.080, align 8, !tbaa !227 ; 5 uses
  %.not = icmp eq ptr %i.cl, null
  br i1 %.not, label %bb.n, label %.critedge, !prof !303

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.49, i32 noundef 95, ptr noundef nonnull @.str.50) #27
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.q

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.o
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ae

bb.q:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  unreachable

.critedge:                                        ; preds = %bb.m
  %i.co = load i64, ptr %0, align 8, !tbaa !298   ; 4 uses
  %i.cp = icmp ne i64 %i.co, 0
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp ult i64 %i.co, 2
  br i1 %i.cq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.critedge
  %i.cr = load i64, ptr %i.bz, align 8, !tbaa !299
  %.not.i.i.i44 = icmp ult i64 %i.cr, 131072
  br i1 %.not.i.i.i44, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load ptr, ptr %i.by, align 8, !tbaa !227
  %i.ct = icmp eq ptr %i.cs, %i.cl
  %spec.select.i.i = select i1 %i.ct, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %bb.x

bb.t:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %i.by, align 8, !tbaa !49 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.cu, i32 0, i32 1, i32 1)
  %i.cv = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cw = xor i64 %i.cv, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.cx = mul i64 %i.cw, -2543921745674291987
  %i.cy = call noundef i64 @llvm.bswap.i64(i64 %i.cx)
  %i.cz = xor i64 %i.cy, %i.cv
  %i.da = mul i64 %i.cz, -2543921745674291987
  %i.db = call noundef i64 @llvm.bswap.i64(i64 %i.da) ; 2 uses
  %i.dc = load i64, ptr %i.bz, align 8, !tbaa !299, !noalias !344
  %i.dd = and i64 %i.dc, 65535
  %i.de = lshr i64 %i.db, 7
  %i.df = xor i64 %i.dd, %i.de
  %i.dg = trunc i64 %i.db to i8
  %i.dh = and i8 %i.dg, 127
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !tbaa !49 ; 2 uses
  %i.di = insertelement <16 x i8> poison, i8 %i.dh, i64 0
  %i.dj = shufflevector <16 x i8> %i.di, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.pn.i6.i = phi i64 [ %i.df, %bb.t ], [ %i.ec, %bb.w ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.t ], [ %i.eb, %bb.w ]
  %.sroa.6.0.i.i = and i64 %.pn.i6.i, %i.co       ; 4 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  call void @llvm.prefetch.p0(ptr %i.dk, i32 0, i32 3, i32 1)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sroa.6.0.i.i
  %i.dm = load <16 x i8>, ptr %i.dl, align 1, !tbaa !49 ; 2 uses
  %i.dn = icmp eq <16 x i8> %i.dj, %i.dm
  %i.do = bitcast <16 x i1> %i.dn to i16          ; 2 uses
  %.not45.i.i = icmp eq i16 %i.do, 0
  br i1 %.not45.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.v
  %.sroa.017.046.i.i = phi i16 [ %i.dy, %bb.v ], [ %i.do, %bb.u ] ; 3 uses
  %i.dp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i, i1 true)
  %i.dq = zext nneg i16 %i.dp to i64
  %i.dr = add i64 %.sroa.6.0.i.i, %i.dq
  %i.ds = and i64 %i.dr, %i.co                    ; 2 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ds ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !227
  %i.dv = icmp eq ptr %i.du, %i.cl
  br i1 %i.dv, label %.thread32.i.i, label %bb.v, !prof !187

.thread32.i.i:                                    ; preds = %.lr.ph.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ds ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.dx = add i16 %.sroa.017.046.i.i, -1
  %i.dy = and i16 %i.dx, %.sroa.017.046.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.dy, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.v, %bb.u
  %i.dz = icmp eq <16 x i8> %i.dm, splat (i8 -128)
  %i.ea = bitcast <16 x i1> %i.dz to i16
  %.not43.i.i = icmp eq i16 %i.ea, 0
  br i1 %.not43.i.i, label %bb.w, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i, !prof !303

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.eb = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ec = add i64 %i.eb, %.sroa.6.0.i.i
  br label %bb.u, !llvm.loop !304

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread32.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.dw, %.thread32.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.dt, %.thread32.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %bb.x

bb.x:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i, %bb.s, %bb.r
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.r ], [ %spec.select.i.i, %bb.s ] ; 2 uses
  %i.ed = extractvalue { ptr, ptr } %.pn.i, 0
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ef = invoke { ptr, i64 } @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE3DFSEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.cl)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eg = extractvalue { ptr, i64 } %i.ef, 1
  %.sroa.4.sroa.4.0.extract.shift = lshr i64 %i.eg, 32
  %.sroa.4.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.sroa.4.0.extract.shift to i32
  %i.eh = load i32, ptr %i.au, align 4, !tbaa !3
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.eh, i32 %.sroa.4.sroa.4.0.extract.trunc)
  br label %.sink.split

bb.aa:                                            ; preds = %bb.y
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.x
  %i.ej = extractvalue { ptr, ptr } %.pn.i, 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !305 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !307
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !3
  %i.eq = load i32, ptr %i.au, align 4, !tbaa !3
  %i.er = call i32 @llvm.smin.i32(i32 %i.ep, i32 %i.eq)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.ac
  %.sink = phi i32 [ %i.er, %bb.ac ], [ %.sroa.speculated, %bb.z ]
  store i32 %.sink, ptr %i.au, align 4, !tbaa !340
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.066.080, i64 8 ; 2 uses
  %.not73 = icmp eq ptr %i.es, %i.bx
  br i1 %.not73, label %._crit_edge.loopexit, label %bb.m

bb.ae:                                            ; preds = %bb.aa, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.p ], [ %i.ei, %bb.aa ]
  %i.et = load ptr, ptr %4, align 8, !tbaa !247   ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit47, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !343
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #24
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit47

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit47: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ba

bb.ag:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit
  %i.ez = call noundef ptr @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE9CreateSCCEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEEixIS8_SK_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISR_EPT_RSX_EclL_ZSt7declvalIRSR_EDTcl9__declvalISX_ELi0EEEvEEEEERKSX_.exit, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ff = load ptr, ptr %i.ax, align 8, !tbaa !248
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !227 ; 3 uses
  store ptr %i.fh, ptr %i.b, align 8, !tbaa !227
  %i.fi = load ptr, ptr %i.fa, align 8, !tbaa !342 ; 4 uses
  %i.fj = load ptr, ptr %i.fb, align 8, !tbaa !343
  %.not.i48 = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i48, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !227
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store ptr %i.fk, ptr %i.fa, align 8, !tbaa !342
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit55

bb.aj:                                            ; preds = %bb.ah
  %i.fl = load ptr, ptr %i.ez, align 8, !tbaa !247 ; 4 uses
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 6 uses
  %i.fp = icmp eq i64 %i.fo, 9223372036854775800
  br i1 %i.fp, label %bb.ak, label %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i49

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #28
  unreachable

_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i49: ; preds = %bb.aj
  %i.fq = ashr exact i64 %i.fo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i50 = call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i50, %i.fq ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fq
  %i.ft = call i64 @llvm.umin.i64(i64 %i.fr, i64 1152921504606846975)
  %i.fu = select i1 %i.fs, i64 1152921504606846975, i64 %i.ft ; 3 uses
  %.not.i.i.i51 = icmp ne i64 %i.fu, 0
  call void @llvm.assume(i1 %.not.i.i.i51)
  %i.fv = shl nuw nsw i64 %i.fu, 3
  %i.fw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #25 ; 4 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.fo ; 2 uses
  store ptr %i.fh, ptr %i.fx, align 8, !tbaa !227
  %i.fy = icmp sgt i64 %i.fo, 0
  br i1 %i.fy, label %bb.al, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i52

bb.al:                                            ; preds = %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i49
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fw, ptr align 8 %i.fl, i64 %i.fo, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i52

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i52: ; preds = %bb.al, %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i49
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.not.i17.i.i53 = icmp eq ptr %i.fl, null
  br i1 %.not.i17.i.i53, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i54, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i52
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fo) #24
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i54

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i54: ; preds = %bb.am, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i52
  store ptr %i.fw, ptr %i.ez, align 8, !tbaa !247
  store ptr %i.fz, ptr %i.fa, align 8, !tbaa !342
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fu
  store ptr %i.ga, ptr %i.fb, align 8, !tbaa !343
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit55

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit55: ; preds = %bb.ai, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i54
  %i.gb = load ptr, ptr %i.ax, align 8, !tbaa !342
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -8
  store ptr %i.gc, ptr %i.ax, align 8, !tbaa !342
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.gd = load i64, ptr %0, align 8, !tbaa !298, !noalias !356 ; 2 uses
  %i.ge = icmp ne i64 %i.gd, 0
  call void @llvm.assume(i1 %i.ge)
  %i.gf = icmp ult i64 %i.gd, 2
  br i1 %i.gf, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit55
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.gg = load i64, ptr %i.fc, align 8, !tbaa !299, !noalias !360
  %.not.i.i.i.i.i.i = icmp ult i64 %i.gg, 131072
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i64 131072, ptr %i.fc, align 8, !tbaa !47, !noalias !360
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.gh = load ptr, ptr %i.fd, align 8, !tbaa !227, !noalias !360 ; 2 uses
  %i.gi = load ptr, ptr %i.b, align 8, !tbaa !227, !noalias !360 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler4rust7Context13DepsGeneratorclEPKNS0_10DescriptorE:bb.a
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.f, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  %i.ag = phi ptr [ %i.g, %bb.f ], [ %i.ae, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.g, %bb.c ]
  %i.ah = phi ptr [ %i.p, %bb.f ], [ %i.ad, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %i.ai = phi ptr [ %i.i, %bb.f ], [ %i.aa, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !203
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !366

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.af, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = ptrtoint ptr %i.g to i64
  %i.an = ptrtoint ptr %i.i to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ao) #24
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %.pn

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.ai, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE9CreateSCCEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !367  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !368
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.d, align 8, !tbaa !365
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.c, align 8, !tbaa !367
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !369  ; 10 uses
  %i.i = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  store ptr %i.b, ptr %i.t, align 8, !tbaa !365
  %.not10.i.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = add i64 %i.i, -8
  %i.v = sub i64 %i.u, %i.j                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.y = add i64 %i.i, -8
  %i.z = sub i64 %i.y, %i.j
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.ab
  %scevgep4 = getelementptr i8, ptr %i.h, i64 %i.ab
  %bound0 = icmp ult ptr %i.s, %scevgep4
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.h, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.af ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.h, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.ag = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !tbaa !365, !alias.scope !375, !noalias !370
  %wide.load6 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !365, !alias.scope !375, !noalias !370
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !365, !alias.scope !378, !noalias !375
  store <2 x i64> %wide.load6, ptr %i.ah, align 8, !tbaa !365, !alias.scope !378, !noalias !375
  %i.ai = getelementptr i8, ptr %next.gep5, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep5, align 8, !tbaa !365, !alias.scope !375, !noalias !370
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !365, !alias.scope !375, !noalias !370
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.preheader8:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !365, !alias.scope !373, !noalias !370
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !tbaa !365, !alias.scope !370, !noalias !373
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !365, !alias.scope !373, !noalias !370
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !383

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #24
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !369
  store ptr %i.an, ptr %i.c, align 8, !tbaa !367
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !368
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  %i.ap = phi ptr [ %i.d, %bb.b ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ]
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !365
  ret ptr %i.aq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE11AddChildrenEPNS1_3SCCE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::flat_hash_set", align 8 ; 14 uses
  %3 = alloca %"class.std::vector.6", align 8     ; 9 uses
  %4 = alloca %"struct.google::protobuf::compiler::rust::Context::DepsGenerator", align 1 ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 1, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.a = load ptr, ptr %1, align 8, !tbaa !248    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !248  ; 2 uses
  %.not7183 = icmp eq ptr %i.a, %i.c
  br i1 %.not7183, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.d

._crit_edge87:                                    ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit
  %.pre96 = load i64, ptr %2, align 8, !tbaa !298 ; 3 uses
  %i.n = icmp ne i64 %.pre96, 0
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp ult i64 %.pre96, 2
  br i1 %i.o, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge87
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.q = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !299
  %i.r = and i64 %i.q, 65536
  %i.s = icmp ne i64 %i.r, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %.pre96, ptr noundef %i.p, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.s)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit: ; preds = %bb.a, %._crit_edge87, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.d:                                             ; preds = %.lr.ph86, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit
  %.sroa.049.084 = phi ptr [ %i.a, %.lr.ph86 ], [ %i.ad, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.049.084, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNK6google8protobuf8compiler4rust7Context13DepsGeneratorclEPKNS0_10DescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %i.v)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.w = load ptr, ptr %3, align 8, !tbaa !248    ; 3 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !248  ; 2 uses
  %.not7281 = icmp eq ptr %i.w, %i.x
  br i1 %.not7281, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !247
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.y = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.w, %bb.e ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !343
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.049.084, i64 8 ; 2 uses
  %.not71 = icmp eq ptr %i.ad, %i.c
  br i1 %.not71, label %._crit_edge87, label %bb.d

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.aj

.lr.ph:                                           ; preds = %bb.e, %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit
  %.sroa.045.082 = phi ptr [ %i.fm, %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit ], [ %i.w, %bb.e ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.045.082, align 8, !tbaa !227 ; 5 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.h, label %.critedge, !prof !303

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.49, i32 noundef 138, ptr noundef nonnull @.str.52) #27
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.k

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.i
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ah

bb.k:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  unreachable

.critedge:                                        ; preds = %.lr.ph
  %i.ai = load i64, ptr %0, align 8, !tbaa !298   ; 4 uses
  %i.aj = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp ult i64 %i.ai, 2
  br i1 %i.ak, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.critedge
  %i.al = load i64, ptr %i.f, align 8, !tbaa !299
  %.not.i.i.i.i = icmp ult i64 %i.al, 131072
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !227
  %i.an = icmp eq ptr %i.am, %i.af
  %spec.select.i.i.i = select i1 %i.an, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit.i

bb.n:                                             ; preds = %.critedge
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !49  ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.ao, i32 0, i32 1, i32 1)
  %i.ap = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.aq = xor i64 %i.ap, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ar = mul i64 %i.aq, -2543921745674291987
  %i.as = call noundef i64 @llvm.bswap.i64(i64 %i.ar)
  %i.at = xor i64 %i.as, %i.ap
  %i.au = mul i64 %i.at, -2543921745674291987
  %i.av = call noundef i64 @llvm.bswap.i64(i64 %i.au) ; 2 uses
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !299, !noalias !384
  %i.ax = and i64 %i.aw, 65535
  %i.ay = lshr i64 %i.av, 7
  %i.az = xor i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.av to i8
  %i.bb = and i8 %i.ba, 127
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !49 ; 2 uses
  %i.bc = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.pn.i6.i.i = phi i64 [ %i.az, %bb.n ], [ %i.bw, %bb.q ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.n ], [ %i.bv, %bb.q ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.ai   ; 4 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  call void @llvm.prefetch.p0(ptr %i.be, i32 0, i32 3, i32 1)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.6.0.i.i.i
  %i.bg = load <16 x i8>, ptr %i.bf, align 1, !tbaa !49 ; 2 uses
  %i.bh = icmp eq <16 x i8> %i.bd, %i.bg
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.p
  %.sroa.017.046.i.i.i = phi i16 [ %i.bs, %bb.p ], [ %i.bi, %bb.o ] ; 3 uses
  %i.bj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = add i64 %.sroa.6.0.i.i.i, %i.bk
  %i.bm = and i64 %i.bl, %i.ai                    ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.bm ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !227
  %i.bp = icmp eq ptr %i.bo, %i.af
  br i1 %i.bp, label %.thread32.i.i.i, label %bb.p, !prof !187

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bm ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.br = add i16 %.sroa.017.046.i.i.i, -1
  %i.bs = and i16 %i.br, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i28 = icmp eq i16 %i.bs, 0
  br i1 %.not.i.i.i28, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.p, %bb.o
  %i.bt = icmp eq <16 x i8> %i.bg, splat (i8 -128)
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %.not43.i.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not43.i.i.i, label %bb.q, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i.i, !prof !303

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.bw = add i64 %i.bv, %.sroa.6.0.i.i.i
  br label %bb.o, !llvm.loop !304

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.bq, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.bn, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i.i, %bb.m, %bb.l
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.l ], [ %spec.select.i.i.i, %bb.m ] ; 2 uses
  %i.bx = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit.i
  %i.bz = invoke { ptr, i64 } @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE3DFSEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.af)
          to label %.noexc unwind label %.loopexit, !inline_history !387

.noexc:                                           ; preds = %bb.r
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0
  br label %_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE6GetSCCEPKNS0_10DescriptorE.exit

bb.s:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit.i
  %i.cb = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !305
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !307
  br label %_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE6GetSCCEPKNS0_10DescriptorE.exit

_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE6GetSCCEPKNS0_10DescriptorE.exit: ; preds = %bb.s, %.noexc
  %.0.i = phi ptr [ %i.ca, %.noexc ], [ %i.ce, %bb.s ] ; 8 uses
  %i.cf = icmp eq ptr %.0.i, %1
  br i1 %i.cf, label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit, label %bb.t

.loopexit:                                        ; preds = %bb.r, %_ZNKSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.t:                                             ; preds = %_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE6GetSCCEPKNS0_10DescriptorE.exit
  %i.cg = load i64, ptr %2, align 8, !tbaa !298, !noalias !388 ; 5 uses
  %i.ch = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp ult i64 %i.cg, 2
  br i1 %i.ci, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cj = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !299, !noalias !403
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.cj, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !47, !noalias !403
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.w:                                             ; preds = %bb.u
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !365, !noalias !403 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %.0.i
  br i1 %i.cl, label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cn = xor i64 %i.cm, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.co = mul i64 %i.cn, -2543921745674291987
  %i.cp = call noundef i64 @llvm.bswap.i64(i64 %i.co)
  %i.cq = xor i64 %i.cp, %i.cm
  %i.cr = mul i64 %i.cq, 6679450291180483821
  %i.cs = lshr i64 %i.cr, 56
  %i.ct = trunc nuw i64 %i.cs to i8
  %i.cu = and i8 %i.ct, 127
  %i.cv = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cw = xor i64 %i.cv, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.cx = mul i64 %i.cw, -2543921745674291987
  %i.cy = call noundef i64 @llvm.bswap.i64(i64 %i.cx)
  %i.cz = xor i64 %i.cy, %i.cv
  %i.da = mul i64 %i.cz, -2543921745674291987
  %i.db = call noundef i64 @llvm.bswap.i64(i64 %i.da)
  %i.dc = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.db, i8 noundef signext %i.cu)
          to label %.noexc29 unwind label %bb.ag

.noexc29:                                         ; preds = %bb.x
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !49, !noalias !403
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.dc
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.y:                                             ; preds = %bb.t
  %i.de = load ptr, ptr %i.h, align 8, !tbaa !49, !noalias !406 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.de, i32 0, i32 1, i32 1), !noalias !406
  %i.df = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.dg = xor i64 %i.df, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.dh = mul i64 %i.dg, -2543921745674291987
  %i.di = call noundef i64 @llvm.bswap.i64(i64 %i.dh)
  %i.dj = xor i64 %i.di, %i.df
  %i.dk = mul i64 %i.dj, -2543921745674291987
  %i.dl = call noundef i64 @llvm.bswap.i64(i64 %i.dk) ; 3 uses
  %i.dm = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !299, !noalias !409
  %i.dn = and i64 %i.dm, 65535
  %i.do = lshr i64 %i.dl, 7
  %i.dp = xor i64 %i.dn, %i.do
  %i.dq = trunc i64 %i.dl to i8
  %i.dr = and i8 %i.dq, 127
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !49, !noalias !406 ; 2 uses
  %i.ds = insertelement <16 x i8> poison, i8 %i.dr, i64 0
  %i.dt = shufflevector <16 x i8> %i.ds, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %.pn.i = phi i64 [ %i.dp, %bb.y ], [ %i.er, %bb.aa ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.y ], [ %i.eq, %bb.aa ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.cg            ; 5 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1), !noalias !406
  %i.dv = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.7.0.i
  %i.dw = load <16 x i8>, ptr %i.dv, align 1, !tbaa !49, !noalias !406 ; 2 uses
  %i.dx = icmp eq <16 x i8> %i.dt, %i.dw
  %i.dy = bitcast <16 x i1> %i.dx to i16          ; 2 uses
  %.not59.i = icmp eq i16 %i.dy, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %.critedge.i
  %.sroa.033.060.i = phi i16 [ %i.eh, %.critedge.i ], [ %i.dy, %bb.z ] ; 3 uses
  %i.dz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = add i64 %.sroa.7.0.i, %i.ea
  %i.ec = and i64 %i.eb, %i.cg
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !365, !noalias !406
  %i.ef = icmp eq ptr %i.ee, %.0.i
  br i1 %i.ef, label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit, label %.critedge.i, !prof !187

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.eg = add i16 %.sroa.033.060.i, -1
  %i.eh = and i16 %i.eg, %.sroa.033.060.i         ; 2 uses
  %.not.i36 = icmp eq i16 %i.eh, 0
  br i1 %.not.i36, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.z
  %i.ei = icmp eq <16 x i8> %i.dw, splat (i8 -128)
  %i.ej = bitcast <16 x i1> %i.ei to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.ej, 0
  br i1 %.not51.i, label %bb.aa, label %.thread.i, !prof !303

.thread.i:                                        ; preds = %.critedge18.i
  %i.ek = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ej, i1 true)
  %i.el = zext nneg i16 %i.ek to i64
  %i.em = add i64 %.sroa.7.0.i, %i.el
  %i.en = and i64 %i.em, %i.cg
  %i.eo = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.dl, i64 %i.en, i64 %.sroa.15.0.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread66 unwind label %bb.ag ; 2 uses

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread66: ; preds = %.thread.i
  %6 = load ptr, ptr %i.h, align 8, !tbaa !49, !noalias !406
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %i.eo
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.i, align 8, !tbaa !49, !noalias !406
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.eo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %7) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.aa:                                            ; preds = %.critedge18.i
  %i.eq = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.er = add i64 %i.eq, %.sroa.7.0.i
  br label %bb.z

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.v, %.noexc29, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread66
  %.sroa.5.062 = phi ptr [ %i.ep, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread66 ], [ %i.h, %bb.v ], [ %i.dd, %.noexc29 ]
  store ptr %.0.i, ptr %.sroa.5.062, align 8, !tbaa !365
  %i.es = load ptr, ptr %i.k, align 8, !tbaa !412 ; 4 uses
  %i.et = load ptr, ptr %i.l, align 8, !tbaa !415
  %.not.i = icmp eq ptr %i.es, %i.et
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  store ptr %.0.i, ptr %i.es, align 8, !tbaa !365
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %i.eu, ptr %i.k, align 8, !tbaa !412
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  %i.ev = load ptr, ptr %i.j, align 8, !tbaa !416 ; 4 uses
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 6 uses
  %i.ez = icmp eq i64 %i.ey, 9223372036854775800
  br i1 %i.ez, label %bb.ad, label %_ZNKSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #28
          to label %.noexc32 unwind label %.loopexit.split-lp

.noexc32:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.fa = ashr exact i64 %i.ey, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fa, i64 1)
  %i.fb = add nsw i64 %.sroa.speculated.i.i.i, %i.fa ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  %i.fd = call i64 @llvm.umin.i64(i64 %i.fb, i64 1152921504606846975)
  %i.fe = select i1 %i.fc, i64 1152921504606846975, i64 %i.fd ; 3 uses
  %.not.i.i.i31 = icmp ne i64 %i.fe, 0
  call void @llvm.assume(i1 %.not.i.i.i31)
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #25
          to label %.noexc33 unwind label %.loopexit ; 4 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %i.ey ; 2 uses
  store ptr %.0.i, ptr %i.fh, align 8, !tbaa !365
  %i.fi = icmp sgt i64 %i.ey, 0
  br i1 %i.fi, label %bb.ae, label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

bb.ae:                                            ; preds = %.noexc33
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr align 8 %i.ev, i64 %i.ey, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i: ; preds = %bb.ae, %.noexc33
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.ey) #24
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  store ptr %i.fg, ptr %i.j, align 8, !tbaa !416
  store ptr %i.fj, ptr %i.k, align 8, !tbaa !412
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fe
  store ptr %i.fk, ptr %i.l, align 8, !tbaa !415
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit

bb.ag:                                            ; preds = %.thread.i, %bb.x
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit: ; preds = %.lr.ph.i, %bb.w, %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.ab, %_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE6GetSCCEPKNS0_10DescriptorE.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.045.082, i64 8 ; 2 uses
  %.not72 = icmp eq ptr %i.fm, %i.x
  br i1 %.not72, label %._crit_edge.loopexit, label %.lr.ph

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ag, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.fl, %bb.ag ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fn = load ptr, ptr %3, align 8, !tbaa !247   ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit35, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fo = load ptr, ptr %i.m, align 8, !tbaa !343
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fr) #24
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit35

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit35: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit35, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit35 ], [ %i.ae, %bb.g ]
  %i.fs = load i64, ptr %2, align 8, !tbaa !298   ; 3 uses
  %i.ft = icmp ne i64 %i.fs, 0
  call void @llvm.assume(i1 %i.ft)
  %i.fu = icmp ult i64 %i.fs, 2
  br i1 %i.fu, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit126, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fv = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.fw = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !299
  %i.fx = and i64 %i.fw, 65536
  %i.fy = icmp ne i64 %i.fx, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.fs, ptr noundef %i.fv, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.fy)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit126 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #26
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit126: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE30find_or_prepare_insert_non_sooIS8_EESP_INST_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.131") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !227    ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.f = mul i64 %i.e, -2543921745674291987
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %i.f)
  %i.h = xor i64 %i.g, %i.d
  %i.i = mul i64 %i.h, -2543921745674291987
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !299, !noalias !417
  %i.m = and i64 %i.l, 65535
  %i.n = load i64, ptr %1, align 8, !tbaa !298, !noalias !417 ; 3 uses
  %i.o = lshr i64 %i.j, 7
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i64 %i.j to i8
  %i.r = and i8 %i.q, 127
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !49 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.au, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.n                 ; 5 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !49 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.u, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.z, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.ai, %.critedge ], [ %i.z, %bb.b ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.7.0, %i.ab
  %i.ad = and i64 %i.ac, %i.n                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !227
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %.critedge20, label %.critedge, !prof !187

.critedge:                                        ; preds = %.lr.ph
  %i.ah = add i16 %.sroa.033.059, -1
  %i.ai = and i16 %i.ah, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ak, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !303

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ] ; 2 uses
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink77) ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !327
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEEvE28hash_slot_fn_non_type_erasedINS1_6HashEqIS8_vE4HashEEEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !227
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.d = mul i64 %i.c, -2543921745674291987
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = xor i64 %i.e, %i.b
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE19transfer_n_slots_fnEPvSU_SU_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %3, %.lr.ph.preheader ]
  %.0913.prol = phi ptr [ %i.g, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.01012.prol = phi ptr [ %i.f, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.a = load ptr, ptr %.01012.prol, align 8, !tbaa !331
  store ptr %i.a, ptr %.0913.prol, align 8, !tbaa !331
  %i.b = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !305
  store i64 %i.d, ptr %i.b, align 8, !tbaa !305
  store ptr null, ptr %i.c, align 8, !tbaa !305
  %i.e = add i64 %.014.prol, -1                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !420

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %.01012.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %i.h = icmp ult i64 %3, 4
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi i64 [ %i.ae, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ]
  %.0913 = phi ptr [ %i.ag, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi ptr [ %i.af, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.i = load ptr, ptr %.01012, align 8, !tbaa !331
  store ptr %i.i, ptr %.0913, align 8, !tbaa !331
  %i.j = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.01012, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !305
  store i64 %i.l, ptr %i.j, align 8, !tbaa !305
  store ptr null, ptr %i.k, align 8, !tbaa !305
  %i.m = getelementptr inbounds nuw i8, ptr %.01012, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !331
  store ptr %i.o, ptr %i.n, align 8, !tbaa !331
  %i.p = getelementptr inbounds nuw i8, ptr %.0913, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.01012, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !305
  store i64 %i.r, ptr %i.p, align 8, !tbaa !305
  store ptr null, ptr %i.q, align 8, !tbaa !305
  %i.s = getelementptr inbounds nuw i8, ptr %.01012, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !331
  store ptr %i.u, ptr %i.t, align 8, !tbaa !331
  %i.v = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %.01012, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !305
  store i64 %i.x, ptr %i.v, align 8, !tbaa !305
  store ptr null, ptr %i.w, align 8, !tbaa !305
  %i.y = getelementptr inbounds nuw i8, ptr %.01012, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 48
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !331
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !331
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %.01012, i64 56 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !305
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !305
  store ptr null, ptr %i.ac, align 8, !tbaa !305
  %i.ae = add i64 %.014, -4                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01012, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0913, i64 64
  %.not.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !422

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef %0, i64 noundef %1) #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !303

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #25
  ret ptr %i.d
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, 15
  %i.c = add i64 %i.b, %4
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, 7
  %i.j = add i64 %i.i, %i.f
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSZ_PFvSZ_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !298    ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !299
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !423

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bf, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !227  ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
end_hunk_1
