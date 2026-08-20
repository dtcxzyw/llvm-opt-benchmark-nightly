inline.NumInlined: 1716
inline.NumDeleted: 657
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree20MergeLeafNodesToTreeESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPS3_:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.az, %.thread.i.i ], [ %i.bb, %bb.m ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !103 ; 3 uses
  %i.ba = getelementptr i8, ptr %.116.i.i.i, i64 11
  %.116.val.i.i.i = load i8, ptr %i.ba, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %.116.val.i.i.i, 0
  %i.bb = getelementptr i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit, !llvm.loop !226

.critedge.loopexit29.i.i.i:                       ; preds = %bb.l
  %i.bc = zext i8 %.015.val20.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.m, %.critedge.loopexit29.i.i.i, %bb.k
  %.sroa.01.1 = phi ptr [ %.116.i.i.i, %bb.m ], [ %.sroa.01.010, %bb.k ], [ %.015.val19.i.i.i, %.critedge.loopexit29.i.i.i ], [ %.sroa.01.010, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.8.1 = phi i32 [ 0, %bb.m ], [ %i.an, %bb.k ], [ %i.bc, %.critedge.loopexit29.i.i.i ], [ %i.an, %.lr.ph.i.i.i ] ; 2 uses
  %i.bd = icmp ne ptr %.sroa.01.1, %.val23
  %i.be = icmp ne i32 %.sroa.8.1, %i.f
  %spec.select.i.not.i = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %spec.select.i.not.i, label %bb.d, label %._crit_edge

bb.n:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.l
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.n
  %i.bi = load i64, ptr %i.l, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.bf
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13remove_valuesEhhPSP_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = zext i8 %1 to i64                        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = zext i8 %2 to i64                        ; 2 uses
  %.idx35.i = add nuw nsw i64 %i.d, %i.b
  %i.e = mul nuw nsw i64 %.idx35.i, 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %.not1.i = icmp eq i8 %2, 0                     ; 2 uses
  br i1 %.not1.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.idx.i = mul nuw nsw i64 %i.b, 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i, %.lr.ph.preheader.i
  %.02.i = phi ptr [ %i.q, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i ], [ %i.g, %.lr.ph.preheader.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val.i.i4.i.i.i = load i64, ptr %i.j, align 8, !tbaa !94
  %i.k = icmp eq i64 %.val.i.i4.i.i.i, 0
  br i1 %i.k, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i5.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !87
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i.i.i) #23, !inline_history !227
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 24) #20, !inline_history !227
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i, %.lr.ph.i
  %i.l = load ptr, ptr %.02.i, align 8, !tbaa !33 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !15
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20, !inline_history !228
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.02.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit, label %.lr.ph.i, !llvm.loop !212

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i, %bb.a
  %i.r = getelementptr i8, ptr %0, i64 10         ; 2 uses
  %.val = load i8, ptr %i.r, align 1, !tbaa !15   ; 4 uses
  %i.s = zext i8 %1 to i32
  %i.t = zext i8 %2 to i32
  %i.u = add nuw nsw i32 %i.t, %i.s               ; 2 uses
  %i.v = zext i8 %.val to i32                     ; 2 uses
  %i.w = and i32 %i.u, 255                        ; 3 uses
  %i.x = sub nsw i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.y ; 2 uses
  %narrow = mul nsw i32 %i.x, 40
  %.idx.i32 = sext i32 %narrow to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i32
  %.not1.i33 = icmp eq i32 %i.w, %i.v
  br i1 %.not1.i33, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.preheader.i34

.lr.ph.preheader.i34:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.b
  br label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %.lr.ph.preheader.i34
  %.03.i = phi ptr [ %i.ax, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.ab, %.lr.ph.preheader.i34 ] ; 8 uses
  %.0122.i = phi ptr [ %i.aw, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.z, %.lr.ph.preheader.i34 ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.03.i, align 8, !tbaa !39
  %i.ad = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.af, ptr %i.a, align 8, !tbaa !7
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i35
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ah, ptr %.03.i, align 8, !tbaa !33
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i35
  %i.aj = phi ptr [ %i.ah, %.noexc.i.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i35 ] ; 2 uses
  switch i64 %i.af, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !15
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !30
  %i.an = load ptr, ptr %.03.i, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %.03.i, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.0122.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !107
  store ptr null, ptr %i.aq, align 8, !tbaa !107
  %i.ar = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0122.i, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !15
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0122.i, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03.i, i64 40
  %.not.i36 = icmp eq ptr %i.aw, %i.aa
  br i1 %.not.i36, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.i35, !llvm.loop !132

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit
  %i.ay = getelementptr i8, ptr %0, i64 11
  %.val31 = load i8, ptr %i.ay, align 1, !tbaa !15
  %.not.i37 = icmp eq i8 %.val31, 0
  br i1 %.not.i37, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  br i1 %.not1.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.az = add i8 %1, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.bb = trunc i32 %i.u to i8
  %.02 = add i8 %i.bb, 1                          ; 2 uses
  %.not3 = icmp ugt i8 %.02, %.val
  br i1 %.not3, label %.loopexit, label %.lr.ph6

.lr.ph6:                                          ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %3 = trunc nuw i64 %indvars.iv to i8
  %4 = add i8 %i.az, %3
  %5 = zext i8 %4 to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %5
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !103
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %i.be)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !229

bb.g:                                             ; preds = %.lr.ph6, %bb.g
  %.04 = phi i8 [ %.02, %.lr.ph6 ], [ %.0, %bb.g ] ; 3 uses
  %i.bf = sub i8 %.04, %2                         ; 2 uses
  %i.bg = zext i8 %.04 to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !103 ; 2 uses
  %i.bj = zext i8 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bj
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !103
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i8 %i.bf, ptr %i.bl, align 1, !tbaa !15
  %.0 = add i8 %.04, 1                            ; 2 uses
  %.not = icmp ugt i8 %.0, %.val
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !230

.loopexit:                                        ; preds = %bb.g, %._crit_edge, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.bm = sub i8 %.val, %2
  store i8 %i.bm, ptr %i.r, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val1047 = load ptr, ptr %0, align 8, !tbaa !87 ; 2 uses
  %i.a = icmp eq ptr %1, %.val1047
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 10
  %.val9.peel = load i8, ptr %i.b, align 1, !tbaa !15 ; 8 uses
  %i.c = icmp ugt i8 %.val9.peel, 2
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %.val55.i.peel = load ptr, ptr %1, align 8, !tbaa !103 ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val61.i.peel = load i8, ptr %i.d, align 8, !tbaa !15 ; 5 uses
  %.not.i14.peel = icmp eq i8 %.val61.i.peel, 0   ; 2 uses
  br i1 %.not.i14.peel, label %.critedge.i.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %.val61.i.peel, -1
  %i.f = getelementptr inbounds nuw i8, ptr %.val55.i.peel, i64 256
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103  ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 10
  %.val76.i.peel = load i8, ptr %i.j, align 1, !tbaa !15
  %i.k = zext i8 %.val76.i.peel to i32
  %i.l = add nuw nsw i32 %i.k, 1                  ; 2 uses
  %i.m = zext nneg i8 %.val9.peel to i32
  %i.n = add nuw nsw i32 %i.l, %i.m
  %i.o = icmp samesign ugt i32 %i.n, 6
  br i1 %i.o, label %.critedge.i.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i32 %i.l, %2
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISQ_EESU_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel

.critedge.i.peel:                                 ; preds = %bb.c, %bb.b
  %i.q = getelementptr i8, ptr %.val55.i.peel, i64 10
  %.val54.i.peel = load i8, ptr %i.q, align 1, !tbaa !15
  %i.r = icmp ult i8 %.val61.i.peel, %.val54.i.peel
  br i1 %i.r, label %bb.e, label %.thread.i.peel

bb.e:                                             ; preds = %.critedge.i.peel
  %i.s = add nuw i8 %.val61.i.peel, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.val55.i.peel, i64 256
  %i.u = zext i8 %i.s to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103  ; 3 uses
  %narrow.peel = add nuw nsw i8 %.val9.peel, 1
  %i.x = zext nneg i8 %narrow.peel to i32
  %i.y = getelementptr i8, ptr %i.w, i64 10
  %.val72.i.peel = load i8, ptr %i.y, align 1, !tbaa !15 ; 3 uses
  %i.z = zext i8 %.val72.i.peel to i32
  %i.aa = add nuw nsw i32 %i.z, %i.x
  %i.ab = icmp samesign ult i32 %i.aa, 7
  br i1 %i.ab, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp eq i8 %.val9.peel, 0
  %i.ad = icmp sgt i32 %2, 0
  %or.cond.peel = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond.peel, label %bb.j, label %.thread.i.peel

.thread.i.peel:                                   ; preds = %bb.f, %.critedge.i.peel
  br i1 %.not.i14.peel, label %.thread, label %bb.g

bb.g:                                             ; preds = %.thread.i.peel
  %i.ae = add i8 %.val61.i.peel, -1
  %i.af = getelementptr inbounds nuw i8, ptr %.val55.i.peel, i64 256
  %i.ag = zext i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !103 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 10
  %.val66.i.peel = load i8, ptr %i.aj, align 1, !tbaa !15 ; 3 uses
  %i.ak = icmp ugt i8 %.val66.i.peel, 3
  br i1 %i.ak, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.al = icmp eq i8 %.val9.peel, 0
  %i.am = zext nneg i8 %.val9.peel to i32
  %i.an = icmp slt i32 %2, %i.am
  %or.cond39.peel = select i1 %i.al, i1 true, i1 %i.an
  br i1 %or.cond39.peel, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.lhs.trunc93.i.peel = sub nuw i8 %.val66.i.peel, %.val9.peel
  %i.ao = lshr i8 %.lhs.trunc93.i.peel, 1
  %i.ap = add i8 %.val66.i.peel, -1
  %.sroa.speculated.i.peel = tail call i8 @llvm.umin.i8(i8 %i.ap, i8 %i.ao) ; 2 uses
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_left_to_rightEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i8 noundef zeroext %.sroa.speculated.i.peel, ptr noundef nonnull %1)
  %i.aq = zext nneg i8 %.sroa.speculated.i.peel to i32
  %i.ar = add nsw i32 %2, %i.aq
  br label %.thread

bb.j:                                             ; preds = %bb.f
  %.lhs.trunc.peel = sub i8 %.val72.i.peel, %.val9.peel
  %i.as = lshr i8 %.lhs.trunc.peel, 1
  %i.at = add i8 %.val72.i.peel, -1
  %.sroa.speculated82.i.peel = tail call i8 @llvm.umin.i8(i8 %i.at, i8 %i.as)
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_right_to_leftEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %1, i8 noundef zeroext %.sroa.speculated82.i.peel, ptr noundef nonnull %i.w)
  br label %.thread

bb.k:                                             ; preds = %bb.e
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISQ_EESU_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.w)
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel: ; preds = %bb.d, %bb.k
  %.sroa.10.2.peel = phi i32 [ %2, %bb.k ], [ %i.p, %bb.d ] ; 7 uses
  %.sroa.023.2.peel = phi ptr [ %1, %bb.k ], [ %i.i, %bb.d ] ; 9 uses
  %.val7.peel = load ptr, ptr %.sroa.023.2.peel, align 8, !tbaa !103 ; 2 uses
  %.val10.peel = load ptr, ptr %0, align 8, !tbaa !87 ; 2 uses
  %i.au = icmp eq ptr %.val7.peel, %.val10.peel
  br i1 %i.au, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel, %bb.a
  %.sroa.9.0.lcssa = phi i32 [ %2, %bb.a ], [ %.sroa.10.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel ], [ %.sroa.10.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.023.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel ], [ %.sroa.023.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit ]
  %.val10.lcssa = phi ptr [ %.val1047, %bb.a ], [ %.val10.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel ], [ %.val10, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit ] ; 4 uses
  %i.av = getelementptr i8, ptr %.val10.lcssa, i64 10
  %.val7.i = load i8, ptr %i.av, align 1, !tbaa !15
  %.not.i = icmp eq i8 %.val7.i, 0
  br i1 %.not.i, label %bb.l, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit

bb.l:                                             ; preds = %._crit_edge
  %i.aw = getelementptr i8, ptr %.val10.lcssa, i64 11
  %.val.i = load i8, ptr %i.aw, align 1, !tbaa !15
  %.not10.i = icmp eq i8 %.val.i, 0
  br i1 %.not10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.ax, align 8, !tbaa !103
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %.val10.lcssa, i64 256
  %.val9.i = load ptr, ptr %i.ay, align 8, !tbaa !103 ; 3 uses
  %.val1.i.i = load ptr, ptr %.val9.i, align 8, !tbaa !103
  %.val.i.i = load ptr, ptr %.val1.i.i, align 8, !tbaa !103
  store ptr %.val.i.i, ptr %.val9.i, align 8, !tbaa !103
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %storemerge.i = phi ptr [ %.val9.i, %bb.n ], [ @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, %bb.m ]
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !103
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef nonnull %.val10.lcssa)
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit: ; preds = %._crit_edge, %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.az, align 8, !tbaa !94
  %i.ba = icmp eq i64 %.val, 0
  br i1 %i.ba, label %bb.p, label %.thread

bb.p:                                             ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.bb, align 8, !tbaa !103 ; 2 uses
  %i.bc = getelementptr i8, ptr %.val12, i64 10
  %.val.i13 = load i8, ptr %i.bc, align 1, !tbaa !15
  %i.bd = zext i8 %.val.i13 to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EppEv.exit

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit
  %.sroa.023.049 = phi ptr [ %.val7, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit ], [ %.val7.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel ] ; 8 uses
  %.sroa.023.2.pn = phi ptr [ %.sroa.023.2, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit ], [ %.sroa.023.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel ]
  %.sroa.10.048.in.in = getelementptr i8, ptr %.sroa.023.2.pn, i64 8
  %.sroa.10.048.in = load i8, ptr %.sroa.10.048.in.in, align 1, !tbaa !15 ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.023.049, i64 10
  %.val9 = load i8, ptr %i.be, align 1, !tbaa !15 ; 7 uses
end_hunk_0
