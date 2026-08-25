Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/printer?download=true
inline.NumInlined: 3420
inline.NumDeleted: 1768
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf2io7Printer8AnnotateESt17basic_string_viewIcSt11char_traitsIcEES6_S6_RKSt6vectorIiSaIiEESt8optionalINS1_19AnnotationCollector8SemanticEE:bb.a
  %i.u = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.u, ptr %i.p, align 8, !tbaa !77
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !77
  store i8 %i.w, ptr %i.v, align 1, !tbaa !77
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !164
  %i.z = load ptr, ptr %10, align 8, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !282
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.k, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %10, align 8, !tbaa !132  ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.p
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ag = load i64, ptr %i.p, align 8, !tbaa !77
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void

bb.l:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %10, align 8, !tbaa !132  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.p
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.l
  %i.al = load i64, ptr %i.p, align 8, !tbaa !77
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io7Printer8WriteRawEPKcm(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::pair.114", align 8    ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 113 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !138, !range !15, !noundef !16
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = icmp eq i64 %2, 0
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = load i8, ptr %i.g, align 16, !tbaa !28, !range !15, !noundef !16
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %.loopexit20

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %1, align 1, !tbaa !77
  %.not = icmp eq i8 %i.j, 10
  br i1 %.not, label %.loopexit20, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !141
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit.thread, label %.lr.ph.i

_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit.thread: ; preds = %.preheader.i
  store i8 0, ptr %i.g, align 16, !tbaa !28
  br label %bb.d

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.02.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %.preheader.i ]
  tail call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
  %i.m = add nuw i64 %.02.i, 1                    ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !tbaa !141
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %.lr.ph.i, label %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit, !llvm.loop !271

_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit: ; preds = %.lr.ph.i
  %.pre = load i8, ptr %i.c, align 1, !tbaa !138, !range !15
  %i.p = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.g, align 16, !tbaa !28
  br i1 %i.p, label %bb.t, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit.thread, %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !194 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !194  ; 2 uses
  %.not1921 = icmp eq ptr %i.r, %i.t
  br i1 %.not1921, label %.loopexit20, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEixIS9_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit
  %.sroa.016.022 = phi ptr [ %i.r, %.lr.ph ], [ %i.aq, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEixIS9_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE30find_or_prepare_insert_non_sooIS9_EESA_INSI_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.114") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.022)
  %i.w = load i8, ptr %i.v, align 8, !tbaa !357, !range !15, !alias.scope !408, !noundef !16
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEixIS9_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit

bb.f:                                             ; preds = %bb.e
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !408 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 16 ; 3 uses
  store ptr %i.y, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !163
  %i.z = load ptr, ptr %.sroa.016.022, align 8, !tbaa !132, !noalias !408 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !164, !noalias !408 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !408
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !72, !noalias !408
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.f
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !132
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !72, !noalias !408
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !77
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.af = phi ptr [ %i.ad, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  switch i64 %i.ab, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSF_EESN_IJEEEEEvNSI_8iteratorEDpOT_.exit.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !77
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !77
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSF_EESN_IJEEEEEvNSI_8iteratorEDpOT_.exit.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSF_EESN_IJEEEEEvNSI_8iteratorEDpOT_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSF_EESN_IJEEEEEvNSI_8iteratorEDpOT_.exit.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !72, !noalias !408 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !164
  %i.aj = load ptr, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !132
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !408
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEixIS9_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEixIS9_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit: ; preds = %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSF_EESN_IJEEEEEvNSI_8iteratorEDpOT_.exit.i.i.i
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %4 = load i64, ptr %i.k, align 8, !tbaa !141
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !72
  %5 = insertelement <2 x i64> poison, i64 %4, i64 0
  %i.ao = shufflevector <2 x i64> %5, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ap = add <2 x i64> %i.an, %i.ao
  store <2 x i64> %i.ap, ptr %i.am, align 8, !tbaa !72
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 32 ; 2 uses
  %.not19 = icmp eq ptr %i.aq, %i.t
  br i1 %.not19, label %.loopexit20, label %bb.e

.loopexit20:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEixIS9_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit, %bb.d, %bb.c, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !259 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !260 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, %i.as
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit20, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.as, %.loopexit20 ] ; 3 uses
  %i.av = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !132 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !77
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.au
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !261

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.as, ptr %i.at, align 8, !tbaa !260
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %.loopexit20, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !409
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !409
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %bb.i, label %.lr.ph24

.lr.ph24:                                         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i64 noundef %2)
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph24, %bb.s
  %.023 = phi i64 [ 0, %.lr.ph24 ], [ %i.bz, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.023
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !77  ; 2 uses
  store i8 %i.bi, ptr %i.b, align 1, !tbaa !77
  switch i8 %i.bi, label %bb.r [
    i8 40, label %bb.k
    i8 41, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !335
  %i.bk = add i64 %i.bj, 1                        ; 2 uses
  store i64 %i.bk, ptr %i.bg, align 8, !tbaa !335
  %i.bl = load ptr, ptr %i.bb, align 16, !tbaa !409
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !409 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !72
  %i.bq = icmp eq i64 %i.bp, %i.bk
  br i1 %i.bq, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %bb.s

bb.n:                                             ; preds = %bb.j
  %i.br = load ptr, ptr %i.bb, align 16, !tbaa !409
  %i.bs = load ptr, ptr %i.bd, align 8, !tbaa !409 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  %.pre26 = load i64, ptr %i.bg, align 8, !tbaa !335 ; 3 uses
  br i1 %i.bt, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !72
  %i.bw = icmp eq i64 %i.bv, %.pre26
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.bu, ptr %i.bd, align 8, !tbaa !336
  %i.bx = add i64 %.pre26, -1
  store i64 %i.bx, ptr %i.bg, align 8, !tbaa !335
  br label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.by = add i64 %.pre26, -1
  store i64 %i.by, ptr %i.bg, align 8, !tbaa !335
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %bb.s

bb.r:                                             ; preds = %bb.j
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.r, %bb.q, %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bz = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !410

.loopexit:                                        ; preds = %bb.s, %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load i8, ptr %i.ca, align 16, !tbaa !411, !range !15, !noundef !16
  %i.cc = load i8, ptr %i.c, align 1, !tbaa !138, !range !15, !noundef !16
  %i.cd = or i8 %i.cc, %i.cb
  store i8 %i.cd, ptr %i.c, align 1, !tbaa !138
  br label %bb.t

bb.t:                                             ; preds = %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit, %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io7Printer15IndentIfAtStartEv(ptr noundef nonnull align 16 dereferenceable(296) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !tbaa !28, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !141
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  store i8 0, ptr %i.a, align 16, !tbaa !28
  br label %bb.b

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02 = phi i64 [ %i.f, %.lr.ph ], [ 0, %.preheader ]
  tail call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
  %i.f = add nuw i64 %.02, 1                      ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !141
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !271

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io7Printer17PrintCodegenTraceESt8optionalINS2_14SourceLocationEE(ptr noundef nonnull align 16 dereferenceable(296) %0, i16 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.c = load i8, ptr %i.b, align 1, !tbaa !142, !range !15, !noundef !16
  %i.d = trunc nuw i8 %i.c to i1
  %.val.i = load i8, ptr %i.a, align 16, !range !15
  %i.e = trunc nuw i8 %.val.i to i1
  %.0.i = select i1 %i.d, i1 %i.e, i1 false
  %i.f = and i16 %1, 256
  %i.g = icmp ne i16 %i.f, 0
  %or.cond = select i1 %.0.i, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.i = load i8, ptr %i.h, align 16, !tbaa !28, !range !15, !noundef !16
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.h, align 16, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !259 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !260  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %i.o = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !132 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

end_hunk_0
