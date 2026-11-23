Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/game?download=true
inline.NumInlined: 6214
inline.NumDeleted: 2423
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN14EnrichedStringD2Ev:bb.a
_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN6GameUI14updateChatSizeEv(ptr noundef nonnull align 8 dereferenceable(122)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI8LogEntrySaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !903    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !905  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP8LogEntryS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI8LogEntryEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyI8LogEntryEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !192  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 120 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !54
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !192  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !54
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !192  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !54
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !192  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyI8LogEntryEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !54
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #36
  br label %_ZSt8_DestroyI8LogEntryEvPT_.exit.i.i

_ZSt8_DestroyI8LogEntryEvPT_.exit.i.i:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP8LogEntryS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1573

_ZSt8_DestroyIP8LogEntryS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI8LogEntryEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !903
  br label %_ZSt8_DestroyIP8LogEntryS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP8LogEntryS0_EvT_S2_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIP8LogEntryS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.ac = phi ptr [ %.pr, %_ZSt8_DestroyIP8LogEntryS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI8LogEntrySaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP8LogEntryS0_EvT_S2_RSaIT0_E.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !911
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #36
  br label %_ZNSt12_Vector_baseI8LogEntrySaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI8LogEntrySaIS0_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIP8LogEntryS0_EvT_S2_RSaIT0_E.exit, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(296) ptr @_ZNK6Player14getWieldedItemEP9ItemStackS1_(ptr noundef nonnull align 8 dereferenceable(416), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr noundef nonnull @_ZTT17ItemStackMetadata) #34
  %i.b = load ptr, ptr %0, align 8, !tbaa !192    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !54
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZNK9ItemStack19getToolCapabilitiesEPK15IItemDefManagerPKS_(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN6Camera6updateEP11LocalPlayerff(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @_ZN6Camera4stepEf(ptr noundef nonnull align 8 dereferenceable(536), float noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440)) local_unnamed_addr #3

declare void @_ZN9ClientMap12updateCameraEN4core8vector3dIfEES2_fNS1_IsEEN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(656), <2 x float>, float, <2 x float>, float, float noundef, i48, i32) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16ToolCapabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !539
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #35
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !539
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #35
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit
  ret void
}

declare void @_ZN10GenericCAO17updateMeshCullingEv(ptr noundef nonnull align 8 dereferenceable(1076)) local_unnamed_addr #3

declare void @_ZN10GenericCAO18setChildrenVisibleEb(ptr noundef nonnull align 8 dereferenceable(1076), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN6Camera12updateOffsetEv(ptr noundef nonnull align 8 dereferenceable(536)) local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(413) ptr @_ZN14ShadowRenderer19getDirectionalLightEj(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) local_unnamed_addr #3

declare void @_ZN16DirectionalLight18updateCameraOffsetEPK6Camera(ptr noundef nonnull align 4 dereferenceable(413), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK8Settings7getFlagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef ptr @_ZNK11LocalPlayer9getParentEv(ptr noundef nonnull align 8 dereferenceable(864)) local_unnamed_addr #3

declare void @_Z20sound_volume_controlP13ISoundManagerb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #3

declare i48 @_ZN11LocalPlayer18getFootstepNodePosEv(ptr noundef nonnull align 8 dereferenceable(864)) local_unnamed_addr #3

declare void @_ZN10SoundMaker6updateEfbRK9SoundSpec(ptr noundef nonnull align 8 dereferenceable(256), float noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(982) ptr @_ZNK9ItemStack13getDefinitionEPK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef) local_unnamed_addr #3

declare noundef float @_Z12getToolRangeRK9ItemStackS1_PK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 8 dereferenceable(296), ptr noundef) local_unnamed_addr #3

declare { <2 x float>, float } @_ZNK6Camera15getHeadPositionEv(ptr noundef nonnull align 8 dereferenceable(536)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game18updatePointedThingERKN4core6line3dIfEEbRKSt8optionalI14PointabilitiesEbRKNS0_8vector3dIsEE(ptr dead_on_unwind noalias writable sret(%struct.PointedThing) align 4 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(688) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(232) %4, i1 noundef zeroext %5, ptr noundef nonnull align 2 dereferenceable(6) %6) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %class.RaycastState, align 8        ; 10 uses
  %10 = alloca %"class.core::aabbox3d", align 4   ; 7 uses
  %11 = alloca %"class.core::vector3d.53", align 8 ; 6 uses
  %12 = alloca %struct.MapNode, align 4           ; 6 uses
  %13 = alloca %"class.std::vector.530", align 8  ; 11 uses
  %14 = alloca %"class.core::vector3d.53", align 8 ; 6 uses
  %15 = alloca %"class.video::SColor", align 4    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1582 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 10 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1583
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8, !tbaa !1583
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 292
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !88
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 300
  store float 0.000000e+00, ptr %.sroa.5232.0..sroa_idx, align 4, !tbaa !88
  %.b = load i1, ptr @_ZGVZN4Game18updatePointedThingERKN4core6line3dIfEEbRKSt8optionalI14PointabilitiesEbRKNS0_8vector3dIsEEE24show_entity_selectionbox, align 1
  br i1 %.b, label %bb.e, label %bb.b, !prof !1584

bb.b:                                             ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit
  %i.h = load ptr, ptr @g_settings, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.174, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %7, align 8, !tbaa !192    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !54
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.o = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN4Game18updatePointedThingERKN4core6line3dIfEEbRKSt8optionalI14PointabilitiesEbRKNS0_8vector3dIsEEE24show_entity_selectionbox)
  %i.p = zext i1 %i.i to i8
  store i8 %i.p, ptr %i.o, align 1, !tbaa !334
  %i.q = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZZN4Game18updatePointedThingERKN4core6line3dIfEEbRKSt8optionalI14PointabilitiesEbRKNS0_8vector3dIsEEE24show_entity_selectionbox) ; 0 uses
  store i1 true, ptr @_ZGVZN4Game18updatePointedThingERKN4core6line3dIfEEbRKSt8optionalI14PointabilitiesEbRKNS0_8vector3dIsEEE24show_entity_selectionbox, align 1
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !264
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 128 ; 2 uses
  %i.u = call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.t) ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1585 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 5 uses
  store ptr null, ptr %i.x, align 8, !tbaa !914
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 89
  store i8 0, ptr %i.z, align 1, !tbaa !1590
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZN12RaycastStateC1ERKN4core6line3dIfEEbbRKSt8optionalI14PointabilitiesE(ptr noundef nonnull align 8 dereferenceable(389) %9, ptr noundef nonnull align 4 dereferenceable(24) %2, i1 noundef zeroext %5, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(232) %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  invoke void @_ZN11Environment15continueRaycastEP12RaycastStateP12PointedThing(ptr noundef nonnull align 8 dereferenceable(88) %i.t, ptr noundef nonnull %9, ptr noundef nonnull %0)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %0, align 4, !tbaa !788
  switch i8 %i.aa, label %bb.ax [
    i8 2, label %bb.g
    i8 1, label %bb.ai
  ]

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 89
  store i8 1, ptr %i.ac, align 1, !tbaa !1590
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !264 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !1591 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 360
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1592
  %.not.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 328
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !539 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 320 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not10.i.i.i.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.aj, %bb.h ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ak, %bb.h ]
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.am = load i16, ptr %i.al, align 2, !tbaa !578
  %i.an = icmp ult i16 %i.am, %i.af               ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.an, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.an, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8, !tbaa !542 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1574

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ao = icmp eq ptr %.19.i.i.i.i.i.i, %i.ak
  br i1 %i.ao, label %.thread.i.i.i, label %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !578
  %i.ar = icmp ult i16 %i.af, %i.aq
  br i1 %i.ar, label %.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 40
  br label %bb.j

.thread.i.i.i:                                    ; preds = %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, %bb.h, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 280
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !539 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 272 ; 2 uses
  %.not10.i.i.i5.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not10.i.i.i5.i.i.i, label %bb.j, label %.lr.ph.i.i.i6.i.i.i

.lr.ph.i.i.i6.i.i.i:                              ; preds = %.thread.i.i.i, %.lr.ph.i.i.i6.i.i.i
  %.012.i.i.i7.i.i.i = phi ptr [ %.1.i.i.i12.i.i.i, %.lr.ph.i.i.i6.i.i.i ], [ %i.au, %.thread.i.i.i ] ; 3 uses
  %.0811.i.i.i8.i.i.i = phi ptr [ %.19.i.i.i9.i.i.i, %.lr.ph.i.i.i6.i.i.i ], [ %i.av, %.thread.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i.i, i64 32
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !578
  %i.ay = icmp ult i16 %i.ax, %i.af               ; 2 uses
  %.19.i.i.i9.i.i.i = select i1 %i.ay, ptr %.0811.i.i.i8.i.i.i, ptr %.012.i.i.i7.i.i.i ; 4 uses
  %.1.in.v.i.i.i10.i.i.i = select i1 %i.ay, i64 24, i64 16
  %.1.in.i.i.i11.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i.i, i64 %.1.in.v.i.i.i10.i.i.i
  %.1.i.i.i12.i.i.i = load ptr, ptr %.1.in.i.i.i11.i.i.i, align 8, !tbaa !542 ; 2 uses
  %.not.i.i.i13.i.i.i = icmp eq ptr %.1.i.i.i12.i.i.i, null
  br i1 %.not.i.i.i13.i.i.i, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i, label %.lr.ph.i.i.i6.i.i.i, !llvm.loop !1574

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i: ; preds = %.lr.ph.i.i.i6.i.i.i
  %i.az = icmp eq ptr %.19.i.i.i9.i.i.i, %i.av
  br i1 %i.az, label %bb.j, label %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i, i64 32
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !578
  %i.bc = icmp ult i16 %i.af, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i, i64 40
  %spec.select.i.i.i = select i1 %i.bc, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr %i.bd
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i, %.thread.i.i.i, %bb.i
  %.2.i.i.i = phi ptr [ %i.as, %bb.i ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i ], [ %spec.select.i.i.i, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %.thread.i.i.i ]
  %i.be = load ptr, ptr %.2.i.i.i, align 8, !tbaa !918 ; 3 uses
  store ptr %i.be, ptr %i.x, align 8, !tbaa !914
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.bf = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN4Game18updatePointedThingERKN4core6line3dIfEEbRKSt8optionalI14PointabilitiesEbRKNS0_8vector3dIsEEE24show_entity_selectionbox)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !334, !range !306, !noundef !213
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.k, label %bb.ag

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 184
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %bb.k
  br i1 %i.bl, label %bb.m, label %bb.ag

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.x, align 8, !tbaa !914 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull %10)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %bb.m
  br i1 %i.bq, label %bb.o, label %bb.ag

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.br = load ptr, ptr %i.x, align 8, !tbaa !914 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !47
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 120
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke { <2 x float>, float } %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %i.br)
          to label %bb.p unwind label %bb.ae      ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.fca.0.extract64 = extractvalue { <2 x float>, float } %i.bv, 0
end_hunk_0
begin_hunk_1_@_ZN4Game18updatePointedThingERKN4core6line3dIfEEbRKSt8optionalI14PointabilitiesEbRKNS0_8vector3dIsEE:bb.a
bb.aw:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit167, %bb.am
  %.pn117.pn.pn = phi { ptr, i32 } [ %.pn117.pn, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit167 ], [ %i.eh, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %.loopexit.split-lp

bb.ax:                                            ; preds = %bb.f, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit, %bb.ag
  %i.gk = load ptr, ptr %i.c, align 8, !tbaa !1597
  %i.gl = load ptr, ptr %i.e, align 8, !tbaa !1597
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %bb.bk, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !266 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 240
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.go, align 8, !tbaa !88 ; 2 uses
  %.sroa.22.0..sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %i.gn, i64 248
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i168, align 8, !tbaa !88
  %.sroa.09.4.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1 ; 2 uses
  %i.gp = fcmp nsz ogt float %.sroa.09.4.vec.extract.i, 0.000000e+00
  %i.gq = select nsz i1 %i.gp, float 5.000000e+00, float -5.000000e+00
  %i.gr = fadd nsz float %.sroa.09.4.vec.extract.i, %i.gq
  %i.gs = fdiv nsz float %i.gr, 1.000000e+01
  %i.gt = fptosi float %i.gs to i16               ; 7 uses
  %i.gu = insertelement <2 x float> %.sroa.01.0.copyload.i, float %.sroa.22.0.copyload.i, i64 1 ; 2 uses
  %i.gv = fcmp nsz ogt <2 x float> %i.gu, zeroinitializer
  %i.gw = select <2 x i1> %i.gv, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.gx = fadd nsz <2 x float> %i.gu, %i.gw
  %i.gy = fdiv nsz <2 x float> %i.gx, splat (float 1.000000e+01) ; 2 uses
  %i.gz = extractelement <2 x float> %i.gy, i64 0
  %i.ha = fptosi float %i.gz to i16               ; 7 uses
  %i.hb = extractelement <2 x float> %i.gy, i64 1
  %i.hc = fptosi float %i.hb to i16               ; 7 uses
  %.sroa.3.0.insert.ext.i = zext i16 %i.hc to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.gt to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.ha to i48
  %i.hd = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %i.hd, %.sroa.2.0.insert.shift.i
  %i.he = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %i.hf = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.he, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.preheader unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader.preheader:                             ; preds = %bb.az
  %i.hg = load i16, ptr @g_6dirs, align 16, !tbaa !791
  %i.hh = add i16 %i.hg, %i.ha
  %i.hi = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 2), align 2, !tbaa !792
  %i.hj = add i16 %i.hi, %i.gt
  %i.hk = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 4), align 4, !tbaa !793
  %i.hl = add i16 %i.hk, %i.hc
  %.sroa.3.0.insert.ext.i169 = zext i16 %i.hl to i48
  %.sroa.3.0.insert.shift.i170 = shl nuw i48 %.sroa.3.0.insert.ext.i169, 32
  %.sroa.2.0.insert.ext.i171 = zext i16 %i.hj to i48
  %.sroa.2.0.insert.shift.i172 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171, 16
  %.sroa.2.0.insert.insert.i173 = or disjoint i48 %.sroa.3.0.insert.shift.i170, %.sroa.2.0.insert.shift.i172
  %.sroa.0.0.insert.ext.i174 = zext i16 %i.hh to i48
  %.sroa.0.0.insert.insert.i175 = or disjoint i48 %.sroa.2.0.insert.insert.i173, %.sroa.0.0.insert.ext.i174
  %i.hm = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175, ptr noundef null)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %.preheader.preheader
  %i.hn = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.hm, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.1 unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader.1:                                     ; preds = %bb.ba
  %spec.select = call i16 @llvm.umax.i16(i16 %i.hn, i16 %i.hf)
  %i.ho = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 6), align 2, !tbaa !791
  %i.hp = add i16 %i.ho, %i.ha
  %i.hq = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 8), align 8, !tbaa !792
  %i.hr = add i16 %i.hq, %i.gt
  %i.hs = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 10), align 2, !tbaa !793
  %i.ht = add i16 %i.hs, %i.hc
  %.sroa.3.0.insert.ext.i169.1 = zext i16 %i.ht to i48
  %.sroa.3.0.insert.shift.i170.1 = shl nuw i48 %.sroa.3.0.insert.ext.i169.1, 32
  %.sroa.2.0.insert.ext.i171.1 = zext i16 %i.hr to i48
  %.sroa.2.0.insert.shift.i172.1 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.1, 16
  %.sroa.2.0.insert.insert.i173.1 = or disjoint i48 %.sroa.3.0.insert.shift.i170.1, %.sroa.2.0.insert.shift.i172.1
  %.sroa.0.0.insert.ext.i174.1 = zext i16 %i.hp to i48
  %.sroa.0.0.insert.insert.i175.1 = or disjoint i48 %.sroa.2.0.insert.insert.i173.1, %.sroa.0.0.insert.ext.i174.1
  %i.hu = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.1, ptr noundef null)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.preheader.1
  %i.hv = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.hu, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.2 unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader.2:                                     ; preds = %bb.bb
  %spec.select.1 = call i16 @llvm.umax.i16(i16 %i.hv, i16 %spec.select)
  %i.hw = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 12), align 4, !tbaa !791
  %i.hx = add i16 %i.hw, %i.ha
  %i.hy = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 14), align 2, !tbaa !792
  %i.hz = add i16 %i.hy, %i.gt
  %i.ia = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 16), align 16, !tbaa !793
  %i.ib = add i16 %i.ia, %i.hc
  %.sroa.3.0.insert.ext.i169.2 = zext i16 %i.ib to i48
  %.sroa.3.0.insert.shift.i170.2 = shl nuw i48 %.sroa.3.0.insert.ext.i169.2, 32
  %.sroa.2.0.insert.ext.i171.2 = zext i16 %i.hz to i48
  %.sroa.2.0.insert.shift.i172.2 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.2, 16
  %.sroa.2.0.insert.insert.i173.2 = or disjoint i48 %.sroa.3.0.insert.shift.i170.2, %.sroa.2.0.insert.shift.i172.2
  %.sroa.0.0.insert.ext.i174.2 = zext i16 %i.hx to i48
  %.sroa.0.0.insert.insert.i175.2 = or disjoint i48 %.sroa.2.0.insert.insert.i173.2, %.sroa.0.0.insert.ext.i174.2
  %i.ic = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.2, ptr noundef null)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %.preheader.2
  %i.id = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.ic, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.3 unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader.3:                                     ; preds = %bb.bc
  %spec.select.2 = call i16 @llvm.umax.i16(i16 %i.id, i16 %spec.select.1)
  %i.ie = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 18), align 2, !tbaa !791
  %i.if = add i16 %i.ie, %i.ha
  %i.ig = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 20), align 4, !tbaa !792
  %i.ih = add i16 %i.ig, %i.gt
  %i.ii = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 22), align 2, !tbaa !793
  %i.ij = add i16 %i.ii, %i.hc
  %.sroa.3.0.insert.ext.i169.3 = zext i16 %i.ij to i48
  %.sroa.3.0.insert.shift.i170.3 = shl nuw i48 %.sroa.3.0.insert.ext.i169.3, 32
  %.sroa.2.0.insert.ext.i171.3 = zext i16 %i.ih to i48
  %.sroa.2.0.insert.shift.i172.3 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.3, 16
  %.sroa.2.0.insert.insert.i173.3 = or disjoint i48 %.sroa.3.0.insert.shift.i170.3, %.sroa.2.0.insert.shift.i172.3
  %.sroa.0.0.insert.ext.i174.3 = zext i16 %i.if to i48
  %.sroa.0.0.insert.insert.i175.3 = or disjoint i48 %.sroa.2.0.insert.insert.i173.3, %.sroa.0.0.insert.ext.i174.3
  %i.ik = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.3, ptr noundef null)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %.preheader.3
  %i.il = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.ik, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.4 unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader.4:                                     ; preds = %bb.bd
  %spec.select.3 = call i16 @llvm.umax.i16(i16 %i.il, i16 %spec.select.2)
  %i.im = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 24), align 8, !tbaa !791
  %i.in = add i16 %i.im, %i.ha
  %i.io = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 26), align 2, !tbaa !792
  %i.ip = add i16 %i.io, %i.gt
  %i.iq = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 28), align 4, !tbaa !793
  %i.ir = add i16 %i.iq, %i.hc
  %.sroa.3.0.insert.ext.i169.4 = zext i16 %i.ir to i48
  %.sroa.3.0.insert.shift.i170.4 = shl nuw i48 %.sroa.3.0.insert.ext.i169.4, 32
  %.sroa.2.0.insert.ext.i171.4 = zext i16 %i.ip to i48
  %.sroa.2.0.insert.shift.i172.4 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.4, 16
  %.sroa.2.0.insert.insert.i173.4 = or disjoint i48 %.sroa.3.0.insert.shift.i170.4, %.sroa.2.0.insert.shift.i172.4
  %.sroa.0.0.insert.ext.i174.4 = zext i16 %i.in to i48
  %.sroa.0.0.insert.insert.i175.4 = or disjoint i48 %.sroa.2.0.insert.insert.i173.4, %.sroa.0.0.insert.ext.i174.4
  %i.is = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.4, ptr noundef null)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %.preheader.4
  %i.it = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.is, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.5 unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader.5:                                     ; preds = %bb.be
  %spec.select.4 = call i16 @llvm.umax.i16(i16 %i.it, i16 %spec.select.3)
  %i.iu = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 30), align 2, !tbaa !791
  %i.iv = add i16 %i.iu, %i.ha
  %i.iw = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 32), align 16, !tbaa !792
  %i.ix = add i16 %i.iw, %i.gt
  %i.iy = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 34), align 2, !tbaa !793
  %i.iz = add i16 %i.iy, %i.hc
  %.sroa.3.0.insert.ext.i169.5 = zext i16 %i.iz to i48
  %.sroa.3.0.insert.shift.i170.5 = shl nuw i48 %.sroa.3.0.insert.ext.i169.5, 32
  %.sroa.2.0.insert.ext.i171.5 = zext i16 %i.ix to i48
  %.sroa.2.0.insert.shift.i172.5 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.5, 16
  %.sroa.2.0.insert.insert.i173.5 = or disjoint i48 %.sroa.3.0.insert.shift.i170.5, %.sroa.2.0.insert.shift.i172.5
  %.sroa.0.0.insert.ext.i174.5 = zext i16 %i.iv to i48
  %.sroa.0.0.insert.insert.i175.5 = or disjoint i48 %.sroa.2.0.insert.insert.i173.5, %.sroa.0.0.insert.ext.i174.5
  %i.ja = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.5, ptr noundef null)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %.preheader.5
  %i.jb = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.ja, i32 noundef -1, ptr noundef %i.w)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  %i.jc = load ptr, ptr %i.r, align 8, !tbaa !264
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 128
  %i.je = invoke noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88) %i.jd)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  %spec.select.5 = call i16 @llvm.umax.i16(i16 %i.jb, i16 %spec.select.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  store i32 0, ptr %15, align 4, !tbaa !902
  invoke void @_Z17final_color_blendPN5video6SColorEtj(ptr noundef nonnull %15, i16 noundef zeroext %spec.select.5, i32 noundef %i.je)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jf = load ptr, ptr %i.r, align 8, !tbaa !264
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 544
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !919
  %i.ji = urem i64 %i.jh, 5000
  %i.jj = trunc nuw nsw i64 %i.ji to i32
  %i.jk = uitofp nsz nneg i32 %i.jj to double
  %i.jl = fdiv nnan nsz double %i.jk, 2.500000e+03
  %i.jm = fadd nnan nsz double %i.jl, -5.000000e-01
  %i.jn = fmul nnan nsz double %i.jm, f0x400921FB60000000
  %i.jo = load i32, ptr %15, align 4, !tbaa !902  ; 4 uses
  %i.jp = and i32 %i.jo, 255
  %i.jq = uitofp nsz nneg i32 %i.jp to double
  %16 = fptrunc nsz double %i.jn to float         ; 3 uses
  %17 = call nsz noundef float @llvm.sin.f32(float %16)
  %i.jr = fadd nsz float %16, f0x3FC90FDB
  %i.js = call nsz noundef float @llvm.sin.f32(float %i.jr)
  %18 = insertelement <2 x float> poison, float %17, i64 0
  %19 = insertelement <2 x float> %18, float %i.js, i64 1
  %20 = fmul nsz <2 x float> %19, splat (float 8.000000e-02)
  %21 = fadd nsz float %16, f0x40490FDB
  %22 = call nsz noundef float @llvm.sin.f32(float %21)
  %23 = fmul nsz float %22, 8.000000e-02
  %i.jt = lshr i32 %i.jo, 16
  %i.ju = and i32 %i.jt, 255
  %i.jv = uitofp nsz nneg i32 %i.ju to double
  %24 = and i32 %i.jo, -16777216
  %25 = lshr i32 %i.jo, 8
  %26 = and i32 %25, 255
  %27 = uitofp nsz nneg i32 %26 to double
  %i.jw = fpext nsz <2 x float> %20 to <2 x double>
  %i.jx = fadd nsz <2 x double> %i.jw, splat (double 8.000000e-01)
  %28 = insertelement <2 x double> poison, double %i.jv, i64 0
  %29 = insertelement <2 x double> %28, double %27, i64 1
  %30 = fmul nsz <2 x double> %i.jx, %29
  %31 = fptrunc nsz <2 x double> %30 to <2 x float>
  %32 = fadd nsz <2 x float> %31, splat (float 5.000000e-01)
  %33 = call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %32)
  %34 = fpext nsz float %23 to double
  %35 = fadd nsz double %34, 8.000000e-01
  %36 = fmul nsz double %35, %i.jq
  %37 = fptrunc nsz double %36 to float
  %38 = fadd nsz float %37, 5.000000e-01
  %39 = call nsz noundef float @llvm.floor.f32(float %38)
  %40 = fptosi float %39 to i32
  %41 = insertelement <4 x i32> poison, i32 %40, i64 2
  %42 = insertelement <4 x i32> %41, i32 %24, i64 3
  %43 = shufflevector <2 x float> %33, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %44 = fptosi <4 x float> %43 to <4 x i32>
  %45 = shufflevector <4 x i32> %44, <4 x i32> %42, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %46 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %45, <4 x i32> <i32 0, i32 0, i32 0, i32 -2147483648>)
  %47 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %46, <4 x i32> <i32 255, i32 255, i32 255, i32 -1>)
  %48 = shl nuw nsw <4 x i32> %47, <i32 16, i32 8, i32 0, i32 0>
  %49 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %48)
  %i.jy = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 288
  store i32 %49, ptr %i.jz, align 8, !tbaa !545
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.bk

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ba, %.preheader.preheader, %.preheader.1, %bb.bb, %.preheader.2, %bb.bc, %.preheader.3, %bb.bd, %.preheader.4, %bb.be, %.preheader.5, %bb.bf, %bb.e, %bb.ay, %bb.az, %bb.bg
  %lpad.loopexit.split-lp246 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bh
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bi, %bb.ax
  %i.kb = getelementptr inbounds nuw i8, ptr %9, i64 368 ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 8, !tbaa !920, !range !306, !noundef !213
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.bl, label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.ke = getelementptr inbounds nuw i8, ptr %9, i64 144
  store i8 0, ptr %i.kb, align 8, !tbaa !920
  call void @_ZN14PointabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(232) %i.ke) #34
  br label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i: ; preds = %bb.bl, %bb.bk
  %i.kf = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !923 ; 3 uses
  %.not.i.i.i.i.i176 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i.i.i176, label %_ZN12RaycastStateD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i
  %i.kh = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !924
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = ptrtoint ptr %i.kg to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kl) #36
  br label %_ZN12RaycastStateD2Ev.exit

_ZN12RaycastStateD2Ev.exit:                       ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.bj, %bb.aw, %bb.ah
  %.pn134.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn, %bb.aw ], [ %.pn121.pn, %bb.ah ], [ %i.ka, %bb.bj ], [ %lpad.loopexit.split-lp246, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN12RaycastStateD2Ev(ptr noundef nonnull align 8 dead_on_return(389) dereferenceable(389) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.pn134.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn134.pn.pn.pn.pn.pn, %.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  resume { ptr, i32 } %.pn134.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK12PointedThing4dumpB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

declare noundef zeroext i8 @_ZNK16TouchInteraction7getModeERK14ItemDefinition16PointedThingType(ptr noundef nonnull align 1 dereferenceable(3), ptr noundef nonnull align 8 dereferenceable(982), i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN13TouchControls20applyContextControlsERK20TouchInteractionMode(ptr noundef nonnull align 8 dereferenceable(712), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare void @_ZN3Hud19updateSelectionMeshERKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(572), ptr noundef nonnull align 2 dereferenceable(6)) local_unnamed_addr #3

declare void @_ZN6Client8interactE14InteractActionRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(1674), i8 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZN6Client8setCrackEiN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(1674), i32 noundef, i48) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN15ScriptApiClient11on_item_useERK9ItemStackRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN4Game20handlePointingAtNodeERK12PointedThingRK9ItemStackS5_f(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull align 8 dereferenceable(296) %3, float noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 10 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 7 uses
  %7 = alloca %"class.core::vector3d", align 2    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %struct.SoundSpec, align 8         ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %6, ptr noundef nonnull align 2 dereferenceable(6) %i.c, i64 6, i1 false), !tbaa.struct !1601
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %7, ptr noundef nonnull align 4 dereferenceable(6) %i.d, i64 6, i1 false), !tbaa.struct !1601
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.j = load float, ptr %i.i, align 4, !tbaa !562
  %i.k = fcmp nsz ugt float %i.j, 0.000000e+00
  br i1 %i.k, label %.critedge71.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !304  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(512) %i.m, i32 noundef 8), !inline_history !15
  br i1 %i.q, label %bb.c, label %.critedge71.thread

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.s = load i8, ptr %i.r, align 8, !tbaa !789, !range !306, !noundef !213
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.critedge71.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.v, ptr %8, align 8, !tbaa !189
  store i64 8386654075050290793, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.w, align 8, !tbaa !193
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.x, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1384
  %i.z = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.critedge unwind label %bb.e

.critedge:                                        ; preds = %._crit_edge.i.i
  %.not.i.i.i.not = icmp eq ptr %i.z, null
  %i.aa = load ptr, ptr %8, align 8, !tbaa !192   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.v
  br i1 %i.ab, label %.critedge71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !54
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #36
  br label %.critedge71

.critedge71:                                      ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br i1 %.not.i.i.i.not, label %.critedge71.thread, label %bb.d

bb.d:                                             ; preds = %.critedge71
  call void @_ZN4Game13handleDiggingERK12PointedThingRKN4core8vector3dIsEERK9ItemStackSA_f(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 2 dereferenceable(6) %6, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull align 8 dereferenceable(296) %3, float noundef %4)
  br label %.critedge71.thread

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %8, align 8, !tbaa !192   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.v
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.e
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !54
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.ab

.critedge71.thread:                               ; preds = %bb.c, %bb.b, %bb.a, %bb.d, %.critedge71
  %.sroa.015.0.copyload = load i48, ptr %6, align 8, !tbaa !578 ; 2 uses
  %i.aj = call noundef ptr @_ZN3Map15getNodeMetadataEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.h, i48 %.sroa.015.0.copyload) ; 4 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.k, label %._crit_edge.i.i80

._crit_edge.i.i80:                                ; preds = %.critedge71.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.am, ptr %11, align 8, !tbaa !189
  store i64 8392569456364514921, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 8, ptr %i.an, align 8, !tbaa !193
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 0, ptr %i.ao, align 8, !tbaa !54
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.aq = getelementptr i8, ptr %i.ap, i64 -80
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.aj, i64 %i.ar
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9IMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_t(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef null, i16 noundef zeroext 0)
          to label %_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit unwind label %bb.h ; 2 uses

_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit: ; preds = %._crit_edge.i.i80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !192
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !193
  invoke void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.67") align 8 %10, i64 %i.aw, ptr %i.au)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm:bb.a
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !85     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !890  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !259
  store ptr %i.w, ptr %3, align 8, !tbaa !259
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !890
  store ptr %3, ptr %i.x, align 8, !tbaa !259
  br label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !258
  store ptr %i.z, ptr %3, align 8, !tbaa !259
  store ptr %3, ptr %i.y, align 8, !tbaa !258
  %i.aa = load ptr, ptr %3, align 8, !tbaa !259   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !86
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !545
  %i.ae = zext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !890
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !890
  br label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !889
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !889
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !575

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1812
  br label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjjELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !575

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjjELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjjELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjjELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !258  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !258
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !259 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !545
  %i.l = zext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !890  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !258
  store ptr %i.p, ptr %.02530, align 8, !tbaa !259
  store ptr %.02530, ptr %i.g, align 8, !tbaa !258
  store ptr %i.g, ptr %i.n, align 8, !tbaa !890
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !259
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !890
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !259
  store ptr %i.s, ptr %.02530, align 8, !tbaa !259
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !890
  store ptr %.02530, ptr %i.t, align 8, !tbaa !259
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1811

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !85     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !86
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #36
  br label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !86
  store ptr %.0.i, ptr %0, align 8, !tbaa !85
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.asin.f64(double) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

declare extern_weak void @_ZTH10infostream() #3

declare extern_weak void @_ZTH13warningstream() #3

declare extern_weak void @_ZTH11errorstream() #3

declare extern_weak void @_ZTH13verbosestream() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.vector.reduce.or.v2i48(<2 x i48>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(none) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #28 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { cold noreturn }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { nounwind }
attributes #35 = { noreturn nounwind }
attributes #36 = { builtin nounwind }
attributes #37 = { noreturn }
attributes #38 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!37, !38, !39}
!llvm.ident = !{!40}
!llvm.errno.tbaa = !{!45}

!0 = distinct !{null, null}
!1 = distinct !{null, null, null}
!2 = distinct !{null, null, null}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null}
!5 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null, null}
!6 = distinct !{!6, !256}
!7 = distinct !{!7, !256}
!8 = distinct !{null, null, null}
!9 = distinct !{!9, !256}
!10 = distinct !{!10, !256}
!11 = distinct !{null}
!12 = distinct !{!12, !256}
!13 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{!16, !256}
!17 = distinct !{!17, !256}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{!25, !256}
!26 = distinct !{null}
!27 = distinct !{null}
!28 = distinct !{!28, !256}
!29 = distinct !{!29, !256}
!30 = distinct !{!30, !256}
!31 = distinct !{!31, !256}
!32 = distinct !{!32, !256}
!33 = distinct !{!33, !256}
!34 = distinct !{!34, !256}
!35 = distinct !{!35, !256}
!36 = distinct !{!36, !256}
!37 = !{i32 8, !"PIC Level", i32 2}
!38 = !{i32 7, !"PIE Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 2}
!40 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"omnipotent char", !41, i64 0}
!43 = !{!"int", !42, i64 0}
!44 = !{!"__libc_errno", !43, i64 0}
!45 = !{!44, !43, i64 0}
!46 = !{!"vtable pointer", !41, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"any pointer", !42, i64 0}
!49 = !{!"p1 _ZTS12LambdaThread", !48, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"_ZTSSt14_Function_base", !42, i64 0, !48, i64 16}
!52 = !{!51, !48, i64 16}
!53 = !{!48, !48, i64 0}
!54 = !{!42, !42, i64 0}
!55 = !{!"p1 _ZTS6Logger", !48, i64 0}
!56 = !{!"bool", !42, i64 0}
!57 = !{!"_ZTSN6GameUI5FlagsE", !56, i64 0, !56, i64 1, !56, i64 2, !56, i64 3, !56, i64 4}
!58 = !{!"float", !42, i64 0}
!59 = !{!"p1 _ZTSN3gui14IGUIStaticTextE", !48, i64 0}
!60 = !{!"p1 wchar_t", !48, i64 0}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !60, i64 0}
!62 = !{!"long", !42, i64 0}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !61, i64 0, !62, i64 8, !42, i64 16}
!64 = !{!"p1 _ZTS16StatusTextHelper", !48, i64 0}
!65 = !{!"_ZTSSt10_Head_baseILm0EP16StatusTextHelperLb0EE", !64, i64 0}
!66 = !{!"_ZTSSt11_Tuple_implILm0EJP16StatusTextHelperSt14default_deleteIS0_EEE", !65, i64 0}
!67 = !{!"_ZTSSt5tupleIJP16StatusTextHelperSt14default_deleteIS0_EEE", !66, i64 0}
!68 = !{!"_ZTSSt15__uniq_ptr_implI16StatusTextHelperSt14default_deleteIS0_EE", !67, i64 0}
!69 = !{!"_ZTSSt15__uniq_ptr_dataI16StatusTextHelperSt14default_deleteIS0_ELb1ELb1EE", !68, i64 0}
!70 = !{!"_ZTSSt10unique_ptrI16StatusTextHelperSt14default_deleteIS0_EE", !69, i64 0}
!71 = !{!"_ZTSN4core8vector2dIiEE", !43, i64 0, !43, i64 4}
!72 = !{!"_ZTSN4core4rectIiEE", !71, i64 0, !71, i64 8}
!73 = !{!"_ZTS6GameUI", !57, i64 0, !58, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !63, i64 40, !70, i64 72, !59, i64 80, !43, i64 88, !72, i64 92, !59, i64 112, !42, i64 120, !42, i64 121}
!74 = !{!61, !60, i64 0}
!75 = !{!"wchar_t", !42, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"p1 _ZTS6GameUI", !48, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"any p2 pointer", !48, i64 0}
!80 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !79, i64 0}
!81 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !48, i64 0}
!82 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !81, i64 0}
!83 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !58, i64 0, !62, i64 8}
!84 = !{!"_ZTSSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !80, i64 0, !62, i64 8, !82, i64 16, !62, i64 24, !83, i64 32, !81, i64 48}
!85 = !{!84, !80, i64 0}
!86 = !{!84, !62, i64 8}
!87 = !{!83, !58, i64 0}
!88 = !{!58, !58, i64 0}
!89 = !{!"_ZTSN4core8vector3dIfEE", !58, i64 0, !58, i64 4, !58, i64 8}
!90 = !{!89, !58, i64 8}
!91 = !{!"_ZTSN4Game5FlagsE", !56, i64 0, !43, i64 4}
!92 = !{!"_ZTS15IntervalLimiter", !58, i64 0}
!93 = !{!92, !58, i64 0}
!94 = !{!"p1 _ZTS12InputHandler", !48, i64 0}
!95 = !{!"p1 _ZTS6Client", !48, i64 0}
!96 = !{!"p1 _ZTS6Server", !48, i64 0}
!97 = !{!"_ZTSN4core8vector2dIjEE", !43, i64 0, !43, i64 4}
!98 = !{!"_ZTSN4core8vector2dIfEE", !58, i64 0, !58, i64 4}
!99 = !{!"_ZTS17ClientDynamicInfo", !97, i64 0, !58, i64 8, !58, i64 12, !98, i64 16, !56, i64 24}
!100 = !{!"p1 _ZTS22IWritableTextureSource", !48, i64 0}
!101 = !{!"p1 _ZTS21IWritableShaderSource", !48, i64 0}
!102 = !{!"p1 _ZTS23IWritableItemDefManager", !48, i64 0}
!103 = !{!"p1 _ZTS14NodeDefManager", !48, i64 0}
!104 = !{!"p1 _ZTS18ItemVisualsManager", !48, i64 0}
!105 = !{!"_ZTSSt10_Head_baseILm0EP18ItemVisualsManagerLb0EE", !104, i64 0}
!106 = !{!"_ZTSSt11_Tuple_implILm0EJP18ItemVisualsManagerSt14default_deleteIS0_EEE", !105, i64 0}
!107 = !{!"_ZTSSt5tupleIJP18ItemVisualsManagerSt14default_deleteIS0_EEE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_implI18ItemVisualsManagerSt14default_deleteIS0_EE", !107, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_dataI18ItemVisualsManagerSt14default_deleteIS0_ELb1ELb1EE", !108, i64 0}
!110 = !{!"_ZTSSt10unique_ptrI18ItemVisualsManagerSt14default_deleteIS0_EE", !109, i64 0}
!111 = !{!"p1 _ZTS13ISoundManager", !48, i64 0}
!112 = !{!"_ZTSSt10_Head_baseILm0EP13ISoundManagerLb0EE", !111, i64 0}
!113 = !{!"_ZTSSt11_Tuple_implILm0EJP13ISoundManagerSt14default_deleteIS0_EEE", !112, i64 0}
!114 = !{!"_ZTSSt5tupleIJP13ISoundManagerSt14default_deleteIS0_EEE", !113, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_implI13ISoundManagerSt14default_deleteIS0_EE", !114, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_dataI13ISoundManagerSt14default_deleteIS0_ELb1ELb1EE", !115, i64 0}
!117 = !{!"_ZTSSt10unique_ptrI13ISoundManagerSt14default_deleteIS0_EE", !116, i64 0}
!118 = !{!"p1 _ZTS10SoundMaker", !48, i64 0}
!119 = !{!"_ZTSSt10_Head_baseILm0EP10SoundMakerLb0EE", !118, i64 0}
!120 = !{!"_ZTSSt11_Tuple_implILm0EJP10SoundMakerSt14default_deleteIS0_EEE", !119, i64 0}
!121 = !{!"_ZTSSt5tupleIJP10SoundMakerSt14default_deleteIS0_EEE", !120, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_implI10SoundMakerSt14default_deleteIS0_EE", !121, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_dataI10SoundMakerSt14default_deleteIS0_ELb1ELb1EE", !122, i64 0}
!124 = !{!"_ZTSSt10unique_ptrI10SoundMakerSt14default_deleteIS0_EE", !123, i64 0}
!125 = !{!"p1 _ZTS11ChatBackend", !48, i64 0}
!126 = !{!"_ZTS10ILogOutput"}
!127 = !{!"_ZTSSt12__mutex_base", !42, i64 0}
!128 = !{!"_ZTSSt5mutex", !127, i64 0}
!129 = !{!"p1 _ZTS8LogEntry", !48, i64 0}
!130 = !{!"_ZTSNSt12_Vector_baseI8LogEntrySaIS0_EE17_Vector_impl_dataE", !129, i64 0, !129, i64 8, !129, i64 16}
!131 = !{!"_ZTSNSt12_Vector_baseI8LogEntrySaIS0_EE12_Vector_implE", !130, i64 0}
!132 = !{!"_ZTSSt12_Vector_baseI8LogEntrySaIS0_EE", !131, i64 0}
!133 = !{!"_ZTSSt6vectorI8LogEntrySaIS0_EE", !132, i64 0}
!134 = !{!"_ZTS16CaptureLogOutput", !126, i64 0, !55, i64 8, !128, i64 16, !133, i64 56}
!135 = !{!"p1 _ZTS12EventManager", !48, i64 0}
!136 = !{!"p1 _ZTS20QuicktuneShortcutter", !48, i64 0}
!137 = !{!"_ZTSSt10_Head_baseILm0EP6GameUILb0EE", !77, i64 0}
!138 = !{!"_ZTSSt11_Tuple_implILm0EJP6GameUISt14default_deleteIS0_EEE", !137, i64 0}
!139 = !{!"_ZTSSt5tupleIJP6GameUISt14default_deleteIS0_EEE", !138, i64 0}
!140 = !{!"_ZTSSt15__uniq_ptr_implI6GameUISt14default_deleteIS0_EE", !139, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_dataI6GameUISt14default_deleteIS0_ELb1ELb1EE", !140, i64 0}
!142 = !{!"_ZTSSt10unique_ptrI6GameUISt14default_deleteIS0_EE", !141, i64 0}
!143 = !{!"p1 _ZTS14GUIChatConsole", !48, i64 0}
!144 = !{!"_ZTS7irr_ptrI14GUIChatConsoleE", !143, i64 0}
!145 = !{!"p1 _ZTS14MapDrawControl", !48, i64 0}
end_hunk_2
