Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/emitterstate?download=true
inline.NumInlined: 434
inline.NumDeleted: 210
begin_hunk_0_@_ZN4YAML12EmitterState13StartedScalarEv:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %.pre1.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  store ptr %.pre.i.i, ptr %i.s, align 8, !tbaa !46
  br label %_ZN4YAML12EmitterState21ClearModifiedSettingsEv.exit

_ZN4YAML12EmitterState21ClearModifiedSettingsEv.exit: ; preds = %_ZN4YAML12EmitterState11StartedNodeEv.exit, %_ZN4YAML14SettingChanges7restoreEv.exit.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4YAML12EmitterState21ClearModifiedSettingsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %.not7.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i.i, label %_ZN4YAML14SettingChanges5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.04.08.i.i = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !42 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
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
  tail call void @__clang_call_terminate(ptr %i.k) #17
  unreachable

_ZN4YAML14SettingChanges7restoreEv.exit.i:        ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !45 ; 3 uses
  %.pre1.i = load ptr, ptr %i.c, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre1.i, %.pre.i
  br i1 %.not.i.i.i, label %_ZN4YAML14SettingChanges5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4YAML14SettingChanges7restoreEv.exit.i, %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i ], [ %.pre.i, %_ZN4YAML14SettingChanges7restoreEv.exit.i ] ; 2 uses
  %i.l = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #18, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %.pre1.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  store ptr %.pre.i, ptr %i.c, align 8, !tbaa !46
  br label %_ZN4YAML14SettingChanges5clearEv.exit

_ZN4YAML14SettingChanges5clearEv.exit:            ; preds = %bb.a, %_ZN4YAML14SettingChanges7restoreEv.exit.i, %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML12EmitterState12StartedGroupENS_9GroupType5valueE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(224) initializes((208, 212)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN4YAML12EmitterState11StartedNodeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64   ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !64
  %i.k = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 0, ptr %i.l, align 8, !tbaa !62
  br label %bb.d

_ZN4YAML12EmitterState11StartedNodeEv.exit:       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.p, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %_ZN4YAML12EmitterState11StartedNodeEv.exit, %bb.d
  %i.v = phi i64 [ %i.u, %bb.d ], [ 0, %_ZN4YAML12EmitterState11StartedNodeEv.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !66
  %i.y = add i64 %i.x, %i.v
  store i64 %i.y, ptr %i.w, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.z = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 7 uses
  store i32 %1, ptr %i.z, align 8, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.aa, i8 0, i64 21, i1 false)
  store ptr %i.z, ptr %2, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = ptrtoint ptr %i.z to i64                ; 2 uses
  br i1 %i.ad, label %_ZN4YAML14SettingChangesaSEOS0_.exit, label %_ZN4YAML14SettingChanges5clearEv.exit.i

_ZN4YAML14SettingChanges5clearEv.exit.i:          ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ag = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !40
  store <2 x ptr> %i.ag, ptr %i.ab, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  br label %_ZN4YAML14SettingChangesaSEOS0_.exit

_ZN4YAML14SettingChangesaSEOS0_.exit:             ; preds = %bb.e, %_ZN4YAML14SettingChanges5clearEv.exit.i
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !58  ; 10 uses
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !58  ; 7 uses
  %i.al = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  br i1 %i.al, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit, label %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i

_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i: ; preds = %_ZN4YAML14SettingChangesaSEOS0_.exit
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !52
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !63
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit

_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit: ; preds = %_ZN4YAML14SettingChangesaSEOS0_.exit, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i
  %i.ar = icmp eq i32 %1, 1
  %..i = select i1 %i.ar, i64 96, i64 100
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !36
  %i.au = icmp eq i32 %i.at, 29
  br i1 %i.au, label %bb.g, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.av

_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread: ; preds = %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread
  %storemerge = phi i32 [ 1, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread ], [ 2, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit ]
  store i32 %storemerge, ptr %i.aa, align 4, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.ak, %i.ba
  br i1 %.not.i.i, label %bb.h, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.g
  store i64 %i.ae, ptr %i.ak, align 8, !tbaa !52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.bb, ptr %i.c, align 8, !tbaa !50
  br label %_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.bd = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc10 unwind label %bb.f

.noexc10:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i8 = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i8)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #20
          to label %.noexc11 unwind label %bb.f   ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  store i64 %i.ae, ptr %i.bn, align 8, !tbaa !52
  br i1 %i.al, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc11
  %i.bo = add i64 %i.bc, -8
  %i.bp = sub i64 %i.bo, %i.bd                    ; 3 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bp, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bs = and i64 %i.bp, -8
  %i.bt = add i64 %i.bs, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bm, i64 %i.bt
  %scevgep20 = getelementptr i8, ptr %i.aj, i64 %i.bt
  %bound0 = icmp ult ptr %i.bm, %scevgep20
  %bound1 = icmp ult ptr %i.aj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.br, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bm, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.aj, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.bx ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.aj, i64 %i.bx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.by = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 8, !tbaa !52, !alias.scope !125, !noalias !123
  %wide.load22 = load <2 x i64>, ptr %i.by, align 8, !tbaa !52, !alias.scope !125, !noalias !123
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !52, !alias.scope !126, !noalias !125
  store <2 x i64> %wide.load22, ptr %i.bz, align 8, !tbaa !52, !alias.scope !126, !noalias !125
  %i.ca = getelementptr i8, ptr %next.gep21, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !52, !alias.scope !125, !noalias !123
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !52, !alias.scope !125, !noalias !123
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader24

.lr.ph.i.i.i.i.preheader24:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader24, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader24 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader24 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.cc = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !52, !alias.scope !124, !noalias !123
  store i64 %i.cc, ptr %.012.i.i.i.i, align 8, !tbaa !52, !alias.scope !123, !noalias !124
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !52, !alias.scope !124, !noalias !123
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.cd, %i.ak
  br i1 %.not.i.i.i.i9, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !122

_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bm, %.noexc11 ], [ %i.bv, %middle.block ], [ %i.ce, %.lr.ph.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.aj, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.cg = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ci) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.j
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !49
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !50
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.cj, ptr %i.az, align 8, !tbaa !53
  br label %_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN4YAML12EmitterState5GroupEEclEPS2_.exit

_ZNKSt14default_deleteIN4YAML12EmitterState5GroupEEclEPS2_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @_ZN4YAML14SettingChangesD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #19
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN4YAML12EmitterState5GroupEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML12EmitterState10EndedGroupENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %1, 1
  br i1 %i.i, label %.noexc.i, label %.noexc.i28

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 29, ptr %i.c, align 8, !tbaa !70
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %2, align 8, !tbaa !54
  %i.l = load i64, ptr %i.c, align 8, !tbaa !70   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.k, ptr noundef nonnull align 1 dereferenceable(29) @.str, i64 29, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !34
  %i.n = load ptr, ptr %2, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  store i8 0, ptr %0, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d

_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.q = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.j
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.s = load i64, ptr %i.j, align 8, !tbaa !35
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.t

bb.c:                                             ; preds = %.noexc.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.d:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.j
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.d
  %i.y = load i64, ptr %i.j, align 8, !tbaa !35
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.c
  %.pn20 = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.v, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.u

.noexc.i28:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 24, ptr %i.b, align 8, !tbaa !70
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc29 unwind label %bb.e   ; 2 uses

end_hunk_0
begin_hunk_1_@_ZNK4YAML12EmitterState12CurGroupTypeEv:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = load i32, ptr %i.g, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4YAML12EmitterState16CurGroupFlowTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4YAML12EmitterState14CurGroupIndentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  %i.j = load i64, ptr %.in, align 8, !tbaa !70
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4YAML12EmitterState15CurGroupLongKeyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !62, !range !71, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4YAML12EmitterState10LastIndentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ult i64 %i.g, 9
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load i64, ptr %i.i, align 8, !tbaa !66
  %i.k = getelementptr i8, ptr %i.d, i64 %i.g
  %i.l = getelementptr i8, ptr %i.k, i64 -16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !65
  %i.p = sub i64 %i.j, %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4YAML12EmitterState29RestoreGlobalModifiedSettingsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN4YAML14SettingChanges7restoreEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.04.08.i = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !42 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i, label %_ZN4YAML14SettingChanges7restoreEv.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #17
  unreachable

_ZN4YAML14SettingChanges7restoreEv.exit:          ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4YAML12EmitterState4_SetINS_13EMITTER_MANIPEEEvRNS_7SettingIT_EES4_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %3, label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit [
    i32 0, label %bb.b
    i32 1, label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit13
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20, !noalias !149 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML13SettingChangeINS_13EMITTER_MANIPEEE, i64 16), ptr %i.b, align 8, !tbaa !44, !noalias !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !75, !noalias !149
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %1, align 4, !tbaa !150, !noalias !149
  store i32 %i.e, ptr %i.d, align 8, !tbaa !150, !noalias !149
  store i32 %2, ptr %1, align 4, !tbaa !36, !noalias !149
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.b to i64
  store i64 %i.j, ptr %i.g, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !45   ; 10 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc23 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit10

.noexc23:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i, %i.q  ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #20
          to label %.noexc24 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit10 ; 10 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %i.b to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !42
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc24
  %i.z = add i64 %i.m, -8
  %i.aa = sub i64 %i.z, %i.n                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check90 = icmp ult i64 %i.aa, 136
  br i1 %min.iters.check90, label %.lr.ph.i.i.i.i.preheader104, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ad = and i64 %i.aa, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep84 = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep85 = getelementptr i8, ptr %i.l, i64 %i.ae
  %bound086 = icmp ult ptr %i.w, %scevgep85
  %bound187 = icmp ult ptr %i.l, %scevgep84
  %found.conflict88 = and i1 %bound086, %bound187
  br i1 %found.conflict88, label %.lr.ph.i.i.i.i.preheader104, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck83
  %n.vec92 = and i64 %i.ac, 4611686018427387900   ; 3 uses
  %i.af = shl i64 %n.vec92, 3                     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.l, i64 %i.af
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph91
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next99, %vector.body93 ] ; 2 uses
  %i.ai = shl i64 %index94, 3                     ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.l, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.aj = getelementptr i8, ptr %next.gep96, i64 16
  %wide.load97 = load <2 x i64>, ptr %next.gep96, align 8, !tbaa !42, !alias.scope !153, !noalias !151
  %wide.load98 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !42, !alias.scope !153, !noalias !151
  %i.ak = getelementptr i8, ptr %next.gep95, i64 16
  store <2 x i64> %wide.load97, ptr %next.gep95, align 8, !tbaa !42, !alias.scope !154, !noalias !153
  store <2 x i64> %wide.load98, ptr %i.ak, align 8, !tbaa !42, !alias.scope !154, !noalias !153
  %i.al = getelementptr i8, ptr %next.gep96, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep96, align 8, !tbaa !42, !alias.scope !153, !noalias !151
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !42, !alias.scope !153, !noalias !151
  %index.next99 = add nuw i64 %index94, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next99, %n.vec92
  br i1 %i.am, label %middle.block100, label %vector.body93, !llvm.loop !135

middle.block100:                                  ; preds = %vector.body93
  %cmp.n101 = icmp eq i64 %i.ac, %n.vec92
  br i1 %cmp.n101, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader104

.lr.ph.i.i.i.i.preheader104:                      ; preds = %vector.memcheck83, %.lr.ph.i.i.i.i.preheader, %middle.block100
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck83 ], [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block100 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck83 ], [ %i.l, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block100 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader104, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader104 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader104 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.an = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !42, !alias.scope !152, !noalias !151
  store i64 %i.an, ptr %.012.i.i.i.i, align 8, !tbaa !42, !alias.scope !151, !noalias !152
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !42, !alias.scope !152, !noalias !151
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !136

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block100, %.noexc24
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %.noexc24 ], [ %i.ag, %middle.block100 ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i, label %.noexc, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.at) #19
  br label %.noexc

.noexc:                                           ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !45
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.au, ptr %i.h, align 8, !tbaa !48
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit10: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit13: ; preds = %bb.a
  store i32 %2, ptr %1, align 4, !tbaa !36, !noalias !155
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ax = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20, !noalias !156 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML13SettingChangeINS_13EMITTER_MANIPEEE, i64 16), ptr %i.ax, align 8, !tbaa !44, !noalias !156
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %1, ptr %i.ay, align 8, !tbaa !75, !noalias !156
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load i32, ptr %1, align 4, !tbaa !150, !noalias !156
  store i32 %i.ba, ptr %i.az, align 8, !tbaa !150, !noalias !156
  store i32 %2, ptr %1, align 4, !tbaa !36, !noalias !156
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !48
  %.not.i.i.i14 = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i.i.i14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit13
  %i.bf = ptrtoint ptr %i.ax to i64
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit13
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !45 ; 10 uses
  %i.bi = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc43 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit22

.noexc43:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25: ; preds = %bb.h
  %i.bm = ashr exact i64 %i.bk, 3                 ; 3 uses
  %.sroa.speculated.i.i26 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i26, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 1152921504606846975)
  %i.bq = select i1 %i.bo, i64 1152921504606846975, i64 %i.bp ; 3 uses
  %.not.i.i27 = icmp ne i64 %i.bq, 0
  tail call void @llvm.assume(i1 %.not.i.i27)
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #20
          to label %.noexc44 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit22 ; 10 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  %i.bu = ptrtoint ptr %i.ax to i64
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !42
  %.not10.i.i.i.i28 = icmp eq ptr %i.bh, %i.bc
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, label %.lr.ph.i.i.i.i29.preheader

.lr.ph.i.i.i.i29.preheader:                       ; preds = %.noexc44
  %i.bv = add i64 %i.bi, -8
  %i.bw = sub i64 %i.bv, %i.bj                    ; 3 uses
  %i.bx = lshr i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i29.preheader105, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i29.preheader
  %i.bz = and i64 %i.bw, -8
  %i.ca = add i64 %i.bz, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bs, i64 %i.ca
  %scevgep79 = getelementptr i8, ptr %i.bh, i64 %i.ca
  %bound0 = icmp ult ptr %i.bs, %scevgep79
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i29.preheader105, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bs, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bh, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.ce ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.bh, i64 %i.ce ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.cf = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep80, align 8, !tbaa !42, !alias.scope !159, !noalias !157
  %wide.load81 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !42, !alias.scope !159, !noalias !157
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !42, !alias.scope !160, !noalias !159
  store <2 x i64> %wide.load81, ptr %i.cg, align 8, !tbaa !42, !alias.scope !160, !noalias !159
  %i.ch = getelementptr i8, ptr %next.gep80, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep80, align 8, !tbaa !42, !alias.scope !159, !noalias !157
  store <2 x ptr> splat (ptr null), ptr %i.ch, align 8, !tbaa !42, !alias.scope !159, !noalias !157
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, label %.lr.ph.i.i.i.i29.preheader105

.lr.ph.i.i.i.i29.preheader105:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i29.preheader, %middle.block
  %.012.i.i.i.i30.ph = phi ptr [ %i.bs, %vector.memcheck ], [ %i.bs, %.lr.ph.i.i.i.i29.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i31.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.i.i29.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %.lr.ph.i.i.i.i29.preheader105, %.lr.ph.i.i.i.i29
  %.012.i.i.i.i30 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i29 ], [ %.012.i.i.i.i30.ph, %.lr.ph.i.i.i.i29.preheader105 ] ; 2 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i29 ], [ %.0911.i.i.i.i31.ph, %.lr.ph.i.i.i.i29.preheader105 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.cj = load i64, ptr %.0911.i.i.i.i31, align 8, !tbaa !42, !alias.scope !158, !noalias !157
  store i64 %i.cj, ptr %.012.i.i.i.i30, align 8, !tbaa !42, !alias.scope !157, !noalias !158
  store ptr null, ptr %.0911.i.i.i.i31, align 8, !tbaa !42, !alias.scope !158, !noalias !157
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 8 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.ck, %i.bc
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, label %.lr.ph.i.i.i.i29, !llvm.loop !148

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40: ; preds = %.lr.ph.i.i.i.i29, %middle.block, %.noexc44
  %.0.lcssa.i.i.i.i34 = phi ptr [ %i.bs, %.noexc44 ], [ %i.cc, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i29 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i34, i64 8
  %.not.i23.i42 = icmp eq ptr %i.bh, null
  br i1 %.not.i23.i42, label %.noexc15, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40
  %i.cn = load ptr, ptr %i.bd, align 8, !tbaa !48
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.cp) #19
  br label %.noexc15

.noexc15:                                         ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40
  store ptr %i.bs, ptr %i.aw, align 8, !tbaa !45
  store ptr %i.cm, ptr %i.bb, align 8, !tbaa !46
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.cq, ptr %i.bd, align 8, !tbaa !48
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25, %bb.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc15, %bb.g, %.noexc, %bb.c, %bb.a
  ret void

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit22, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit10
  %.sink67 = phi ptr [ %i.ax, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit22 ], [ %i.b, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit10 ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.cr, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit22 ], [ %i.av, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit10 ]
  %i.cs = load ptr, ptr %.sink67, align 8, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %.sink67) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML12EmitterState9SetIndentEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 1                       ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN4YAML12EmitterState4_SetImEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4YAML12EmitterState4_SetImEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %3, label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit [
    i32 0, label %bb.b
    i32 1, label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit13
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20, !noalias !183 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML13SettingChangeImEE, i64 16), ptr %i.b, align 8, !tbaa !44, !noalias !183
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !78, !noalias !183
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %1, align 8, !tbaa !70, !noalias !183
  store i64 %i.e, ptr %i.d, align 8, !tbaa !70, !noalias !183
  store i64 %2, ptr %1, align 8, !tbaa !38, !noalias !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.b to i64
  store i64 %i.j, ptr %i.g, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !45   ; 10 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc23 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit10

.noexc23:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i, %i.q  ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #20
          to label %.noexc24 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit10 ; 10 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %i.b to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !42
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc24
  %i.z = add i64 %i.m, -8
  %i.aa = sub i64 %i.z, %i.n                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check90 = icmp ult i64 %i.aa, 136
  br i1 %min.iters.check90, label %.lr.ph.i.i.i.i.preheader104, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ad = and i64 %i.aa, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep84 = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep85 = getelementptr i8, ptr %i.l, i64 %i.ae
  %bound086 = icmp ult ptr %i.w, %scevgep85
  %bound187 = icmp ult ptr %i.l, %scevgep84
  %found.conflict88 = and i1 %bound086, %bound187
  br i1 %found.conflict88, label %.lr.ph.i.i.i.i.preheader104, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck83
  %n.vec92 = and i64 %i.ac, 4611686018427387900   ; 3 uses
  %i.af = shl i64 %n.vec92, 3                     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.l, i64 %i.af
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph91
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next99, %vector.body93 ] ; 2 uses
  %i.ai = shl i64 %index94, 3                     ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.l, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.aj = getelementptr i8, ptr %next.gep96, i64 16
  %wide.load97 = load <2 x i64>, ptr %next.gep96, align 8, !tbaa !42, !alias.scope !186, !noalias !184
  %wide.load98 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !42, !alias.scope !186, !noalias !184
  %i.ak = getelementptr i8, ptr %next.gep95, i64 16
  store <2 x i64> %wide.load97, ptr %next.gep95, align 8, !tbaa !42, !alias.scope !187, !noalias !186
  store <2 x i64> %wide.load98, ptr %i.ak, align 8, !tbaa !42, !alias.scope !187, !noalias !186
  %i.al = getelementptr i8, ptr %next.gep96, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep96, align 8, !tbaa !42, !alias.scope !186, !noalias !184
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !42, !alias.scope !186, !noalias !184
  %index.next99 = add nuw i64 %index94, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next99, %n.vec92
  br i1 %i.am, label %middle.block100, label %vector.body93, !llvm.loop !169

middle.block100:                                  ; preds = %vector.body93
  %cmp.n101 = icmp eq i64 %i.ac, %n.vec92
  br i1 %cmp.n101, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader104

.lr.ph.i.i.i.i.preheader104:                      ; preds = %vector.memcheck83, %.lr.ph.i.i.i.i.preheader, %middle.block100
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck83 ], [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block100 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck83 ], [ %i.l, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block100 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader104, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader104 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader104 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.an = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !42, !alias.scope !185, !noalias !184
  store i64 %i.an, ptr %.012.i.i.i.i, align 8, !tbaa !42, !alias.scope !184, !noalias !185
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !42, !alias.scope !185, !noalias !184
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !170

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block100, %.noexc24
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %.noexc24 ], [ %i.ag, %middle.block100 ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i, label %.noexc, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.at) #19
  br label %.noexc

.noexc:                                           ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !45
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.au, ptr %i.h, align 8, !tbaa !48
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit10: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit13: ; preds = %bb.a
  store i64 %2, ptr %1, align 8, !tbaa !38, !noalias !188
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ax = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20, !noalias !189 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML13SettingChangeImEE, i64 16), ptr %i.ax, align 8, !tbaa !44, !noalias !189
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %1, ptr %i.ay, align 8, !tbaa !78, !noalias !189
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load i64, ptr %1, align 8, !tbaa !70, !noalias !189
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !70, !noalias !189
  store i64 %2, ptr %1, align 8, !tbaa !38, !noalias !189
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !48
  %.not.i.i.i14 = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i.i.i14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit13
  %i.bf = ptrtoint ptr %i.ax to i64
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit13
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !45 ; 10 uses
  %i.bi = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc43 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit22

.noexc43:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25: ; preds = %bb.h
  %i.bm = ashr exact i64 %i.bk, 3                 ; 3 uses
  %.sroa.speculated.i.i26 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i26, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 1152921504606846975)
  %i.bq = select i1 %i.bo, i64 1152921504606846975, i64 %i.bp ; 3 uses
  %.not.i.i27 = icmp ne i64 %i.bq, 0
  tail call void @llvm.assume(i1 %.not.i.i27)
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #20
          to label %.noexc44 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit22 ; 10 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  %i.bu = ptrtoint ptr %i.ax to i64
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !42
  %.not10.i.i.i.i28 = icmp eq ptr %i.bh, %i.bc
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, label %.lr.ph.i.i.i.i29.preheader

.lr.ph.i.i.i.i29.preheader:                       ; preds = %.noexc44
  %i.bv = add i64 %i.bi, -8
  %i.bw = sub i64 %i.bv, %i.bj                    ; 3 uses
  %i.bx = lshr i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i29.preheader105, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i29.preheader
  %i.bz = and i64 %i.bw, -8
  %i.ca = add i64 %i.bz, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bs, i64 %i.ca
  %scevgep79 = getelementptr i8, ptr %i.bh, i64 %i.ca
  %bound0 = icmp ult ptr %i.bs, %scevgep79
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i29.preheader105, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bs, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bh, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.ce ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.bh, i64 %i.ce ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.cf = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep80, align 8, !tbaa !42, !alias.scope !192, !noalias !190
  %wide.load81 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !42, !alias.scope !192, !noalias !190
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !42, !alias.scope !193, !noalias !192
  store <2 x i64> %wide.load81, ptr %i.cg, align 8, !tbaa !42, !alias.scope !193, !noalias !192
  %i.ch = getelementptr i8, ptr %next.gep80, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep80, align 8, !tbaa !42, !alias.scope !192, !noalias !190
  store <2 x ptr> splat (ptr null), ptr %i.ch, align 8, !tbaa !42, !alias.scope !192, !noalias !190
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, label %.lr.ph.i.i.i.i29.preheader105

.lr.ph.i.i.i.i29.preheader105:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i29.preheader, %middle.block
  %.012.i.i.i.i30.ph = phi ptr [ %i.bs, %vector.memcheck ], [ %i.bs, %.lr.ph.i.i.i.i29.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i31.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.i.i29.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %.lr.ph.i.i.i.i29.preheader105, %.lr.ph.i.i.i.i29
  %.012.i.i.i.i30 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i29 ], [ %.012.i.i.i.i30.ph, %.lr.ph.i.i.i.i29.preheader105 ] ; 2 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i29 ], [ %.0911.i.i.i.i31.ph, %.lr.ph.i.i.i.i29.preheader105 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.cj = load i64, ptr %.0911.i.i.i.i31, align 8, !tbaa !42, !alias.scope !191, !noalias !190
  store i64 %i.cj, ptr %.012.i.i.i.i30, align 8, !tbaa !42, !alias.scope !190, !noalias !191
  store ptr null, ptr %.0911.i.i.i.i31, align 8, !tbaa !42, !alias.scope !191, !noalias !190
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 8 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.ck, %i.bc
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, label %.lr.ph.i.i.i.i29, !llvm.loop !182

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40: ; preds = %.lr.ph.i.i.i.i29, %middle.block, %.noexc44
  %.0.lcssa.i.i.i.i34 = phi ptr [ %i.bs, %.noexc44 ], [ %i.cc, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i29 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i34, i64 8
  %.not.i23.i42 = icmp eq ptr %i.bh, null
  br i1 %.not.i23.i42, label %.noexc15, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40
  %i.cn = load ptr, ptr %i.bd, align 8, !tbaa !48
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.cp) #19
  br label %.noexc15

.noexc15:                                         ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40
  store ptr %i.bs, ptr %i.aw, align 8, !tbaa !45
  store ptr %i.cm, ptr %i.bb, align 8, !tbaa !46
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.cq, ptr %i.bd, align 8, !tbaa !48
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25, %bb.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc15, %bb.g, %.noexc, %bb.c, %bb.a
  ret void

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit22, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit10
  %.sink67 = phi ptr [ %i.ax, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit22 ], [ %i.b, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit10 ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.cr, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit22 ], [ %i.av, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit10 ]
  %i.cs = load ptr, ptr %.sink67, align 8, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %.sink67) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML12EmitterState19SetPreCommentIndentEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ne i64 %1, 0                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN4YAML12EmitterState4_SetImEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML12EmitterState20SetPostCommentIndentEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ne i64 %1, 0                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN4YAML12EmitterState4_SetImEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML12EmitterState17SetFloatPrecisionEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 10                      ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4YAML12EmitterState4_SetImEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML12EmitterState18SetDoublePrecisionEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 18                      ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN4YAML12EmitterState4_SetImEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4YAML13SettingChangeINS_13EMITTER_MANIPEED0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4YAML13SettingChangeINS_13EMITTER_MANIPEE3popEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  store i32 %i.d, ptr %i.b, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4YAML17SettingChangeBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_1
