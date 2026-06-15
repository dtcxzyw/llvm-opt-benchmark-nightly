inline.NumInlined: 432
inline.NumDeleted: 213
begin_hunk_0_@_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE:bb.a

bb.b:                                             ; preds = %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.thread
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.o = load i32, ptr %i.n, align 4, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit
  %.0 = phi i32 [ 28, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit ], [ %i.m, %bb.b ], [ %i.o, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4YAML12EmitterState10StartedDocEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(224) initializes((208, 209), (210, 212)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.a, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 210
  store i8 0, ptr %i.b, align 2, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 211
  store i8 0, ptr %i.c, align 1, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4YAML12EmitterState8EndedDocEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(224) initializes((208, 209), (210, 212)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.a, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 210
  store i8 0, ptr %i.b, align 2, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 211
  store i8 0, ptr %i.c, align 1, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4YAML12EmitterState13StartedScalarEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) initializes((208, 212)) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !68
  br label %_ZN4YAML12EmitterState11StartedNodeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !96   ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !96
  %i.n = and i64 %i.l, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN4YAML12EmitterState11StartedNodeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 0, ptr %i.o, align 8, !tbaa !91
  br label %_ZN4YAML12EmitterState11StartedNodeEv.exit

_ZN4YAML12EmitterState11StartedNodeEv.exit:       ; preds = %bb.b, %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75   ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not7.i.i.i, label %_ZN4YAML12EmitterState21ClearModifiedSettingsEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4YAML12EmitterState11StartedNodeEv.exit, %bb.e
  %.sroa.04.08.i.i.i = phi ptr [ %i.y, %bb.e ], [ %i.r, %_ZN4YAML12EmitterState11StartedNodeEv.exit ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !76 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.t
  br i1 %.not.i.i.i, label %_ZN4YAML14SettingChanges7restoreEv.exit.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #18
  unreachable

_ZN4YAML14SettingChanges7restoreEv.exit.i.i:      ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !80 ; 3 uses
  %.pre1.i.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre1.i.i, %.pre.i.i
  br i1 %.not.i.i.i.i, label %_ZN4YAML12EmitterState21ClearModifiedSettingsEv.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4YAML14SettingChanges7restoreEv.exit.i.i, %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %.pre.i.i, %_ZN4YAML14SettingChanges7restoreEv.exit.i.i ] ; 2 uses
  %i.ab = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ab) #19, !inline_history !97
  br label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %.pre1.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !83

_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  store ptr %.pre.i.i, ptr %i.s, align 8, !tbaa !81
  br label %_ZN4YAML12EmitterState21ClearModifiedSettingsEv.exit

_ZN4YAML12EmitterState21ClearModifiedSettingsEv.exit: ; preds = %_ZN4YAML12EmitterState11StartedNodeEv.exit, %_ZN4YAML14SettingChanges7restoreEv.exit.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4YAML12EmitterState21ClearModifiedSettingsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %.not7.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i.i, label %_ZN4YAML14SettingChanges5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.04.08.i.i = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !76 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i, label %_ZN4YAML14SettingChanges7restoreEv.exit.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #18
  unreachable

_ZN4YAML14SettingChanges7restoreEv.exit.i:        ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !80 ; 3 uses
  %.pre1.i = load ptr, ptr %i.c, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre1.i, %.pre.i
  br i1 %.not.i.i.i, label %_ZN4YAML14SettingChanges5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4YAML14SettingChanges7restoreEv.exit.i, %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i ], [ %.pre.i, %_ZN4YAML14SettingChanges7restoreEv.exit.i ] ; 2 uses
  %i.l = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #19, !inline_history !98
  br label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %.pre1.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !83

_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  store ptr %.pre.i, ptr %i.c, align 8, !tbaa !81
  br label %_ZN4YAML14SettingChanges5clearEv.exit

_ZN4YAML14SettingChanges5clearEv.exit:            ; preds = %bb.a, %_ZN4YAML14SettingChanges7restoreEv.exit.i, %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML12EmitterState12StartedGroupENS_9GroupType5valueE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) initializes((208, 212)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %_ZN4YAML12EmitterState11StartedNodeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !96   ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !96
  %i.k = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 0, ptr %i.l, align 8, !tbaa !91
  br label %bb.d

_ZN4YAML12EmitterState11StartedNodeEv.exit:       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !68
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.p, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %_ZN4YAML12EmitterState11StartedNodeEv.exit, %bb.d
  %i.v = phi i64 [ %i.u, %bb.d ], [ 0, %_ZN4YAML12EmitterState11StartedNodeEv.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !100
  %i.y = add i64 %i.x, %i.v
  store i64 %i.y, ptr %i.w, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.z = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 7 uses
  store i32 %1, ptr %i.z, align 8, !tbaa !101
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.aa, i8 0, i64 21, i1 false)
  store ptr %i.z, ptr %2, align 8, !tbaa !71
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %5 = load <2 x ptr>, ptr %3, align 8, !tbaa !75
  store <2 x ptr> %5, ptr %i.ab, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  %6 = load ptr, ptr %i.ac, align 8, !tbaa !102
  store ptr %6, ptr %4, align 8, !tbaa !102
  %i.ad = ptrtoint ptr %i.z to i64                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %i.e, label %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.thread.i, label %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i

_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i: ; preds = %bb.e
  %i.ae = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !95
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread, label %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.thread.i

_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.thread.i: ; preds = %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i, %bb.e
  %i.aj = icmp eq i32 %1, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = load i32, ptr %i.am, align 8
  %.0.i = select i1 %i.aj, i32 %i.an, i32 %i.al
  %i.ao = icmp eq i32 %.0.i, 29
  br i1 %i.ao, label %bb.h, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %2, align 8, !tbaa !71    ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNKSt14default_deleteIN4YAML12EmitterState5GroupEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.aq)
  br label %_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit

_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread: ; preds = %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.thread.i
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.thread.i, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread
  %storemerge = phi i32 [ 1, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread ], [ 2, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.thread.i ]
  store i32 %storemerge, ptr %i.aa, align 4, !tbaa !95
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !99
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !70  ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !103
  %.not.i.i = icmp eq ptr %i.au, %i.aw
  br i1 %.not.i.i, label %bb.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.h
  store i64 %i.ad, ptr %i.au, align 8, !tbaa !71
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !70
  br label %_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit11

bb.i:                                             ; preds = %bb.h
  %i.ay = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.az = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bc = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i.i.i8 = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i8)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #20
          to label %.noexc9 unwind label %bb.f    ; 10 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  store i64 %i.ad, ptr %i.bj, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.b, %i.au
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc9
  %i.bk = add i64 %i.ay, -8
  %i.bl = sub i64 %i.bk, %i.az                    ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bo = add i64 %i.ay, -8
  %i.bp = sub i64 %i.bo, %i.az
  %i.bq = and i64 %i.bp, -8
  %i.br = add i64 %i.bq, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bi, i64 %i.br
  %scevgep22 = getelementptr i8, ptr %i.b, i64 %i.br
  %bound0 = icmp ult ptr %i.bi, %scevgep22
  %bound1 = icmp ult ptr %i.b, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, 4611686018427387900     ; 3 uses
  %i.bs = shl i64 %n.vec, 3                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bi, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.bv ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.b, i64 %i.bv ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.bw = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep23, align 8, !tbaa !71, !alias.scope !109, !noalias !104
  %wide.load24 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !71, !alias.scope !109, !noalias !104
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !112, !noalias !109
  store <2 x i64> %wide.load24, ptr %i.bx, align 8, !tbaa !71, !alias.scope !112, !noalias !109
  %i.by = getelementptr i8, ptr %next.gep23, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep23, align 8, !tbaa !71, !alias.scope !109, !noalias !104
  store <2 x ptr> splat (ptr null), ptr %i.by, align 8, !tbaa !71, !alias.scope !109, !noalias !104
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader26

.lr.ph.i.i.i.i.i.i.i.preheader26:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bi, %vector.memcheck ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader26, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader26 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader26 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.ca = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !107, !noalias !104
  store i64 %i.ca, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !104, !noalias !107
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !107, !noalias !104
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.au
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !117

_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.noexc9 ], [ %i.bt, %middle.block ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.k
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !69
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !70
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.ce, ptr %i.av, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit11

_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit11: ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.ap
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML12EmitterState10EndedGroupENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %1, 1
  br i1 %i.i, label %.noexc.i, label %.noexc.i28

.noexc.i:                                         ; preds = %bb.b
end_hunk_0
