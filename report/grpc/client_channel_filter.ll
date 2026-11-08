Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/client_channel_filter?download=true
inline.NumInlined: 8133
inline.NumDeleted: 4100
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9grpc_core19LoadBalancingPolicy10PickResult8CompleteaSEOS2_:bb.a
_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i.i.i.i: ; preds = %_ZN9grpc_core13RefCountedPtrINS_19SubchannelInterfaceEEaSEOS2_.exit
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !234
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #43, !inline_history !1414
  br label %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %_ZN9grpc_core13RefCountedPtrINS_19SubchannelInterfaceEEaSEOS2_.exit, %_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.not.i.i5 = icmp eq ptr %0, %1
  br i1 %.not.i.i5, label %_ZN9grpc_core19LoadBalancingPolicy17MetadataMutationsaSEOS1_.exit, label %bb.f, !prof !70

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EEaSEOS5_.exit
  %i.y = load i64, ptr %i.x, align 8, !tbaa !244  ; 2 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !244 ; 3 uses
  %i.ab = trunc i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.ab, ptr %i.ad, ptr %i.ac
  %i.af = lshr i64 %i.aa, 1                       ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not5.i.i.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE15DestroyElementsERSC_PSB_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.af, %bb.g ]
  %i.ag = add nsw i64 %.06.i.i.i.i.i, -1          ; 3 uses
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  tail call void @_ZN17grpc_event_engine12experimental5SliceD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ai) #43
  %.not.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE15DestroyElementsERSC_PSB_m.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !41

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE15DestroyElementsERSC_PSB_m.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !244
  br label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE15DestroyElementsERSC_PSB_m.exit.i.i.i.i

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE15DestroyElementsERSC_PSB_m.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE15DestroyElementsERSC_PSB_m.exit.loopexit.i.i.i.i, %bb.g
  %i.aj = phi i64 [ %.pre.i.i.i.i, %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE15DestroyElementsERSC_PSB_m.exit.loopexit.i.i.i.i ], [ %i.aa, %bb.g ]
  %i.ak = trunc i64 %i.aj to i1
  br i1 %i.ak, label %bb.h, label %_ZN4absl12lts_2025051213InlinedVectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEELm3ESaISA_EE23DestroyExistingAndAdoptEOSC_.exit.i.i.i

bb.h:                                             ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE15DestroyElementsERSC_PSB_m.exit.i.i.i.i
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !76
  %i.ao = mul i64 %i.an, 48
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #45
  br label %_ZN4absl12lts_2025051213InlinedVectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEELm3ESaISA_EE23DestroyExistingAndAdoptEOSC_.exit.i.i.i

_ZN4absl12lts_2025051213InlinedVectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEELm3ESaISA_EE23DestroyExistingAndAdoptEOSC_.exit.i.i.i: ; preds = %bb.h, %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE15DestroyElementsERSC_PSB_m.exit.i.i.i.i
  %i.ap = load i64, ptr %i.x, align 8, !tbaa !244
  store i64 %i.ap, ptr %i.w, align 8, !tbaa !244
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ac, ptr noundef nonnull align 8 dereferenceable(144) %i.aq, i64 144, i1 false), !tbaa.struct !1415
  store i64 0, ptr %i.x, align 8, !tbaa !244
  br label %_ZN9grpc_core19LoadBalancingPolicy17MetadataMutationsaSEOS1_.exit

bb.i:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = lshr exact i64 %i.y, 1
  tail call void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEELm3ESaISB_EE6AssignINS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(152) %i.w, ptr nonnull %i.ar, i64 noundef %i.as)
  br label %_ZN9grpc_core19LoadBalancingPolicy17MetadataMutationsaSEOS1_.exit

_ZN9grpc_core19LoadBalancingPolicy17MetadataMutationsaSEOS1_.exit: ; preds = %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EEaSEOS5_.exit, %_ZN4absl12lts_2025051213InlinedVectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEELm3ESaISA_EE23DestroyExistingAndAdoptEOSC_.exit.i.i.i, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false), !tbaa.struct !625
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !tbaa.struct !625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !625
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS4_5QueueENS4_4FailENS4_4DropEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_(ptr noundef nonnull align 8 dereferenceable(201) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.grpc_slice, align 8         ; 4 uses
  %3 = alloca %struct.grpc_slice, align 8         ; 4 uses
  %4 = alloca %class.anon.698, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !498   ; 2 uses
  %.not.i = icmp eq i8 %i.b, -1
  br i1 %.not.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS4_5QueueENS4_4FailENS4_4DropEEE8_M_resetEv.exit, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  switch i8 %i.b, label %bb.j [
    i8 0, label %bb.c
    i8 1, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS5_5QueueENS5_4FailENS5_4DropEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S7_S8_S9_EEEEDcOT0_DpOT1_.exit.i
    i8 2, label %bb.d
    i8 3, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  call void @_ZSt13__invoke_implIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS5_5QueueENS5_4FailENS5_4DropEEE8_M_resetEvEUlOT_E_JRS6_EESB_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(201) %0)
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS5_5QueueENS5_4FailENS5_4DropEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S7_S8_S9_EEEEDcOT0_DpOT1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 8, !tbaa !132    ; 2 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS5_5QueueENS5_4FailENS5_4DropEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S7_S8_S9_EEEEDcOT0_DpOT1_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = inttoptr i64 %i.c to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS5_5QueueENS5_4FailENS5_4DropEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S7_S8_S9_EEEEDcOT0_DpOT1_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #47
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.h = load i64, ptr %0, align 8, !tbaa !132    ; 2 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS5_5QueueENS5_4FailENS5_4DropEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S7_S8_S9_EEEEDcOT0_DpOT1_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = inttoptr i64 %i.h to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS5_5QueueENS5_4FailENS5_4DropEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S7_S8_S9_EEEEDcOT0_DpOT1_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #47
  unreachable

bb.j:                                             ; preds = %bb.b
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS5_5QueueENS5_4FailENS5_4DropEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S7_S8_S9_EEEEDcOT0_DpOT1_.exit.i: ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  store i8 -1, ptr %i.a, align 8, !tbaa !498
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS4_5QueueENS4_4FailENS4_4DropEEE8_M_resetEv.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS4_5QueueENS4_4FailENS4_4DropEEE8_M_resetEv.exit: ; preds = %bb.a, %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS5_5QueueENS5_4FailENS5_4DropEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S7_S8_S9_EEEEDcOT0_DpOT1_.exit.i
  store ptr null, ptr %0, align 8, !tbaa !507
  %i.m = load ptr, ptr %1, align 8, !tbaa !507
  store ptr %i.m, ptr %0, align 8, !tbaa !507
  store ptr null, ptr %1, align 8, !tbaa !507
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !580
  store i64 %i.p, ptr %i.n, align 8, !tbaa !580
  store ptr null, ptr %i.o, align 8, !tbaa !580
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i64 0, ptr %i.q, align 8, !tbaa !1421
  %i.s = load i64, ptr %i.r, align 8, !tbaa !244  ; 3 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS4_5QueueENS4_4FailENS4_4DropEEE8_M_resetEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.y, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.x, ptr %i.z, align 8, !tbaa !76
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !244
  %i.ab = or i64 %i.aa, 1
  store i64 %i.ab, ptr %i.q, align 8, !tbaa !244
  store i64 0, ptr %i.r, align 8, !tbaa !244
  br label %_ZSt10_ConstructINSt8__detail9__variant14_UninitializedIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteELb0EEEJRKSt16in_place_index_tILm0EES6_EEvPT_DpOT0_.exit

bb.l:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS4_5QueueENS4_4FailENS4_4DropEEE8_M_resetEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = lshr exact i64 %i.s, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.sroa.010.0.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %.06.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %.06.i.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !428
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !625
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 32, i1 false), !noalias !1422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !625
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i.i.i, i64 48
  %i.aj = add nuw i64 %.06.i.i.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.aj, %i.ad
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !42

.loopexit.loopexit.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !244
  %i.ak = and i64 %.pre.i.i.i.i.i, -2
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.loopexit.i.i.i.i.i, %bb.l
  %i.al = phi i64 [ %i.ak, %.loopexit.loopexit.i.i.i.i.i ], [ 0, %bb.l ]
  store i64 %i.al, ptr %i.q, align 8, !tbaa !244
  br label %_ZSt10_ConstructINSt8__detail9__variant14_UninitializedIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteELb0EEEJRKSt16in_place_index_tILm0EES6_EEvPT_DpOT0_.exit

_ZSt10_ConstructINSt8__detail9__variant14_UninitializedIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteELb0EEEJRKSt16in_place_index_tILm0EES6_EEvPT_DpOT0_.exit: ; preds = %bb.k, %.loopexit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false), !tbaa.struct !625
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 32, i1 false), !noalias !1423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !625
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i8 0, ptr %i.a, align 8, !tbaa !498
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEELm3ESaISB_EE6AssignINS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.grpc_slice, align 8         ; 4 uses
  %4 = alloca %struct.grpc_slice, align 8         ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !244, !noalias !1429 ; 2 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1429
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !1429
  %.sink2.i = select i1 %i.b, ptr %i.d, ptr %i.c  ; 4 uses
  %.sink.i = select i1 %i.b, i64 %i.f, i64 3      ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 6 uses
  %i.g = icmp ugt i64 %2, %.sink.i
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = shl i64 %.sink.i, 1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %2) ; 4 uses
  %i.i = icmp ugt i64 %.sroa.speculated.i, 192153584101141162
  br i1 %i.i, label %bb.c, label %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE8AllocateERSC_m.exit.i, !prof !70

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated.i, 384307168202282325
  br i1 %i.j, label %.noexc, label %.noexc20

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #49
  unreachable

.noexc20:                                         ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #49
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE8AllocateERSC_m.exit.i: ; preds = %bb.b
  %i.k = mul nuw nsw i64 %.sroa.speculated.i, 48
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #48 ; 2 uses
  br label %.lr.ph.preheader.i23

bb.d:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %2, %.sink1.i
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %.sink2.i, i64 %.sink1.i
  %i.o = sub nuw i64 %2, %.sink1.i
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEEE8AllocateEm.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %.sink2.i, i64 %2
  %i.q = sub nuw nsw i64 %.sink1.i, %2
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEEE8AllocateEm.exit

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEEE8AllocateEm.exit: ; preds = %bb.e, %bb.f
  %.sroa.042.0 = phi ptr [ %i.p, %bb.f ], [ null, %bb.e ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %i.q, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.sroa.744.0 = phi i64 [ 0, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.043.0 = phi ptr [ null, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.746.0 = phi i64 [ %2, %bb.f ], [ %.sink1.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.746.0, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEEE8AllocateEm.exit, %.lr.ph.i
  %.sroa.062.0 = phi ptr [ %i.u, %.lr.ph.i ], [ %1, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEEE8AllocateEm.exit ] ; 3 uses
  %.05.i = phi i64 [ %i.v, %.lr.ph.i ], [ 0, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEEE8AllocateEm.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %.sink2.i, i64 %.05.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.062.0, i64 16, i1 false), !tbaa.struct !428
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.062.0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !tbaa.struct !625
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !tbaa.struct !625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !625
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.062.0, i64 48 ; 2 uses
  %i.v = add nuw nsw i64 %.05.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %.sroa.746.0
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !1426

_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit: ; preds = %.lr.ph.i, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEEE8AllocateEm.exit
  %.sroa.062.1 = phi ptr [ %1, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEEE8AllocateEm.exit ], [ %i.u, %.lr.ph.i ]
  %.not.i22 = icmp eq i64 %.sroa.744.0, 0
  br i1 %.not.i22, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISK_E7pointerERT0_NSP_9size_typeE.exit, label %.lr.ph.preheader.i23

.lr.ph.preheader.i23:                             ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE8AllocateERSC_m.exit.i, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit
  %.sroa.062.197 = phi ptr [ %.sroa.062.1, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit ], [ %1, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE8AllocateERSC_m.exit.i ]
  %.sroa.042.07395 = phi ptr [ %.sroa.042.0, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit ], [ %.sink2.i, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE8AllocateERSC_m.exit.i ]
  %.sroa.7.07493 = phi i64 [ %.sroa.7.0, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit ], [ %.sink1.i, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE8AllocateERSC_m.exit.i ]
  %.sroa.744.07592 = phi i64 [ %.sroa.744.0, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit ], [ %2, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE8AllocateERSC_m.exit.i ]
  %.sroa.043.07691 = phi ptr [ %.sroa.043.0, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit ], [ %i.l, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE8AllocateERSC_m.exit.i ]
  %.sroa.10.07789 = phi i64 [ 0, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit ], [ %.sroa.speculated.i, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE8AllocateERSC_m.exit.i ]
  %.sroa.047.07887 = phi ptr [ null, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit ], [ %i.l, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEELb0EE8AllocateERSC_m.exit.i ]
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25, %.lr.ph.preheader.i23
  %.sroa.062.2 = phi ptr [ %.sroa.062.197, %.lr.ph.preheader.i23 ], [ %i.z, %.lr.ph.i25 ] ; 3 uses
  %.06.i = phi i64 [ 0, %.lr.ph.preheader.i23 ], [ %i.aa, %.lr.ph.i25 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %.sroa.043.07691, i64 %.06.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.062.2, i64 16, i1 false), !tbaa.struct !428
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.062.2, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !tbaa.struct !625
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false), !noalias !1430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !625
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.062.2, i64 48
  %i.aa = add nuw i64 %.06.i, 1                   ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %i.aa, %.sroa.744.07592
  br i1 %exitcond.not.i26, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISK_E7pointerERT0_NSP_9size_typeE.exit, label %.lr.ph.i25, !llvm.loop !42

_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISK_E7pointerERT0_NSP_9size_typeE.exit: ; preds = %.lr.ph.i25, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit
  %.sroa.042.07396 = phi ptr [ %.sroa.042.0, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit ], [ %.sroa.042.07395, %.lr.ph.i25 ]
  %.sroa.7.07494 = phi i64 [ %.sroa.7.0, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit ], [ %.sroa.7.07493, %.lr.ph.i25 ] ; 2 uses
  %.sroa.10.07790 = phi i64 [ 0, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit ], [ %.sroa.10.07789, %.lr.ph.i25 ]
  %.sroa.047.07888 = phi ptr [ null, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSK_9size_typeE.exit ], [ %.sroa.047.07887, %.lr.ph.i25 ] ; 2 uses
  %.not5.i = icmp eq i64 %.sroa.7.07494, 0
  br i1 %.not5.i, label %.loopexit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISK_E7pointerERT0_NSP_9size_typeE.exit, %.lr.ph.i27
  %.06.i28 = phi i64 [ %i.ab, %.lr.ph.i27 ], [ %.sroa.7.07494, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISK_E7pointerERT0_NSP_9size_typeE.exit ]
  %i.ab = add i64 %.06.i28, -1                    ; 3 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.sroa.042.07396, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  tail call void @_ZN17grpc_event_engine12experimental5SliceD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ad) #43
  %.not.i29 = icmp eq i64 %i.ab, 0
  br i1 %.not.i29, label %.loopexit, label %.lr.ph.i27, !llvm.loop !41

.loopexit:                                        ; preds = %.lr.ph.i27, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEENS1_20IteratorValueAdapterISC_St13move_iteratorIPSB_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISK_E7pointerERT0_NSP_9size_typeE.exit
  %.not = icmp eq ptr %.sroa.047.07888, null
  %.pre98 = load i64, ptr %0, align 8, !tbaa !244 ; 3 uses
  br i1 %.not, label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.ae = trunc i64 %.pre98 to i1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !76
  %i.ah = mul i64 %i.ag, 48
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #45
  %.pre = load i64, ptr %0, align 8, !tbaa !244
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ai = phi i64 [ %.pre98, %bb.g ], [ %.pre, %bb.h ]
  store ptr %.sroa.047.07888, ptr %i.c, align 8, !tbaa !76
  store i64 %.sroa.10.07790, ptr %i.e, align 8, !tbaa !76
  %i.aj = or i64 %i.ai, 1
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEEED2Ev.exit

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaISt4pairISt17basic_string_viewIcSt11char_traitsIcEEN17grpc_event_engine12experimental5SliceEEEED2Ev.exit: ; preds = %bb.i, %.loopexit
  %i.ak = phi i64 [ %i.aj, %bb.i ], [ %.pre98, %.loopexit ]
  %i.al = shl i64 %2, 1
  %i.am = and i64 %i.ak, 1
  %i.an = or disjoint i64 %i.am, %i.al
  store i64 %i.an, ptr %0, align 8, !tbaa !244
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS5_5QueueENS5_4FailENS5_4DropEEEaSEOSA_EUlOT_T0_E_JRS8_St17integral_constantImLm2EEEESC_St14__invoke_otherOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.698, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !501    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !498   ; 2 uses
  switch i8 %i.c, label %bb.f [
    i8 2, label %bb.b
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS4_5QueueENS4_4FailENS4_4DropEEJS7_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i
  ], !prof !615

bb.b:                                             ; preds = %bb.a
end_hunk_0
