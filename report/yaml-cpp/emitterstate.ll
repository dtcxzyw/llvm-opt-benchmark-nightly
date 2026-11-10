Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/emitterstate?download=true
inline.NumInlined: 454
inline.NumDeleted: 218
begin_hunk_0_@_ZN4YAML12EmitterState21ClearModifiedSettingsEv:bb.a
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #19, !inline_history !125
  br label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %.pre1.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  store ptr %.pre.i, ptr %i.c, align 8, !tbaa !52
  br label %_ZN4YAML14SettingChanges5clearEv.exit

_ZN4YAML14SettingChanges5clearEv.exit:            ; preds = %bb.a, %_ZN4YAML14SettingChanges7restoreEv.exit.i, %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML12EmitterState12StartedGroupENS_9GroupType5valueE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(240) initializes((224, 228)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %_ZN4YAML12EmitterState11StartedNodeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !63
  %i.k = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 0, ptr %i.l, align 8, !tbaa !61
  br label %bb.d

_ZN4YAML12EmitterState11StartedNodeEv.exit:       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !40
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.p, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %_ZN4YAML12EmitterState11StartedNodeEv.exit, %bb.d
  %i.v = phi i64 [ %i.u, %bb.d ], [ 0, %_ZN4YAML12EmitterState11StartedNodeEv.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !65
  %i.y = add i64 %i.x, %i.v
  store i64 %i.y, ptr %i.w, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.z = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 7 uses
  store i32 %1, ptr %i.z, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.aa, i8 0, i64 21, i1 false)
  store ptr %i.z, ptr %2, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = ptrtoint ptr %i.z to i64                ; 2 uses
  br i1 %i.ad, label %_ZN4YAML14SettingChangesaSEOS0_.exit, label %_ZN4YAML14SettingChanges5clearEv.exit.i

_ZN4YAML14SettingChanges5clearEv.exit.i:          ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ag = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !46
  store <2 x ptr> %i.ag, ptr %i.ab, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !67
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  br label %_ZN4YAML14SettingChangesaSEOS0_.exit

_ZN4YAML14SettingChangesaSEOS0_.exit:             ; preds = %bb.e, %_ZN4YAML14SettingChanges5clearEv.exit.i
  br i1 %i.e, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit, label %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i

_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i: ; preds = %_ZN4YAML14SettingChangesaSEOS0_.exit
  %i.aj = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !62
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit

_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit: ; preds = %_ZN4YAML14SettingChangesaSEOS0_.exit, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i
  %i.ao = icmp eq i32 %1, 1
  %..i = select i1 %i.ao, i64 104, i64 108
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !36
  %i.ar = icmp eq i32 %i.aq, 29
  br i1 %i.ar, label %bb.h, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %.not.i7 = icmp eq ptr %i.at, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNKSt14default_deleteIN4YAML12EmitterState5GroupEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.at)
  br label %_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit

_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread: ; preds = %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread
  %storemerge = phi i32 [ 1, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread ], [ 2, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit ]
  store i32 %storemerge, ptr %i.aa, align 4, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load i64, ptr %i.au, align 8, !tbaa !38
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !64
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !42  ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !131
  %.not.i.i = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i.i, label %bb.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.h
  store i64 %i.ae, ptr %i.ax, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ba, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit11

bb.i:                                             ; preds = %bb.h
  %i.bb = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.bc = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i8 = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i8)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #20
          to label %.noexc9 unwind label %bb.f    ; 7 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  store i64 %i.ae, ptr %i.bm, align 8, !tbaa !44
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.b, %i.ax
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc9
  %i.bn = add i64 %i.bb, -8
  %i.bo = sub i64 %i.bn, %i.bc                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bq, 4611686018427387900     ; 3 uses
  %i.br = shl i64 %n.vec, 3                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bl, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.b, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.bu ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.b, i64 %i.bu ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.bv = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep22, align 8, !tbaa !44, !alias.scope !133
  %wide.load23 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !44, !alias.scope !133
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !44, !alias.scope !132
  store <2 x i64> %wide.load23, ptr %i.bw, align 8, !tbaa !44, !alias.scope !132
  %3 = getelementptr i8, ptr %next.gep22, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep22, align 8, !tbaa !44, !alias.scope !133
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !44, !alias.scope !133
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader25

.lr.ph.i.i.i.i.i.i.i.preheader25:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader25, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader25 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader25 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.by = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !44, !alias.scope !133
  store i64 %i.by, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !44, !alias.scope !132
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !44, !alias.scope !133
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.ax
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !130

_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.noexc9 ], [ %i.bs, %middle.block ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.k
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !41
  store ptr %i.cb, ptr %i.c, align 8, !tbaa !42
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.cc, ptr %i.ay, align 8, !tbaa !131
  br label %_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit11

_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit11: ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.as
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML12EmitterState10EndedGroupENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %1, 1
  br i1 %i.i, label %.noexc.i, label %.noexc.i28

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 29, ptr %i.c, align 8, !tbaa !70
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %2, align 8, !tbaa !53
  %i.l = load i64, ptr %i.c, align 8, !tbaa !70   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.k, ptr noundef nonnull align 1 dereferenceable(29) @.str, i64 29, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !34
  %i.n = load ptr, ptr %2, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  store i8 0, ptr %0, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d

_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.q = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.j
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZdlPv(ptr noundef %i.q) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.u

bb.c:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.d:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.j
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.u) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.c
  %.pn20 = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.v

.noexc.i28:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 24, ptr %i.b, align 8, !tbaa !70
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc29 unwind label %bb.e   ; 2 uses

.noexc29:                                         ; preds = %.noexc.i28
  store ptr %i.x, ptr %3, align 8, !tbaa !53
  %i.y = load i64, ptr %i.b, align 8, !tbaa !70   ; 3 uses
  store i64 %i.y, ptr %i.w, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.x, ptr noundef nonnull align 1 dereferenceable(24) @.str.1, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !34
  %i.aa = load ptr, ptr %3, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  store i8 0, ptr %0, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit32 unwind label %bb.f

_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit32: ; preds = %.noexc29
  %i.ad = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.w
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit32
  call void @_ZdlPv(ptr noundef %i.ad) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.u

bb.e:                                             ; preds = %.noexc.i28
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.f:                                             ; preds = %.noexc29
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.w
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.ah) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.e
  %.pn18 = phi { ptr, i32 } [ %i.af, %bb.e ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.ag, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.v

bb.g:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNK4YAML12EmitterState14CurGroupIndentEv:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  %i.j = load i64, ptr %.in, align 8, !tbaa !70
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK4YAML12EmitterState15CurGroupLongKeyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !61, !range !71, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK4YAML12EmitterState10LastIndentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ult i64 %i.g, 9
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load i64, ptr %i.i, align 8, !tbaa !65
  %i.k = getelementptr i8, ptr %i.d, i64 %i.g
  %i.l = getelementptr i8, ptr %i.k, i64 -16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !64
  %i.p = sub i64 %i.j, %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4YAML12EmitterState29RestoreGlobalModifiedSettingsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN4YAML14SettingChanges7restoreEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.04.08.i = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
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
  tail call void @__clang_call_terminate(ptr %i.k) #18
  unreachable

_ZN4YAML14SettingChanges7restoreEv.exit:          ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML12EmitterState4_SetINS_13EMITTER_MANIPEEEvRNS_7SettingIT_EES4_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %3, label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit [
    i32 0, label %bb.b
    i32 1, label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit14
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20, !noalias !150 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML13SettingChangeINS_13EMITTER_MANIPEEE, i64 16), ptr %i.b, align 8, !tbaa !50, !noalias !150
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !75, !noalias !150
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %1, align 4, !tbaa !151, !noalias !150
  store i32 %i.e, ptr %i.d, align 8, !tbaa !151, !noalias !150
  store i32 %2, ptr %1, align 4, !tbaa !36, !noalias !150
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.b to i64
  store i64 %i.j, ptr %i.g, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !52
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !51   ; 7 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #20
          to label %.noexc8 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11 ; 7 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %i.b to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !48
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc8
  %i.z = add i64 %i.m, -8
  %i.aa = sub i64 %i.z, %i.n                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check74, label %.lr.ph.i.i.i.i.i.i.i.i.preheader88, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec76 = and i64 %i.ac, 4611686018427387900   ; 3 uses
  %i.ad = shl i64 %n.vec76, 3                     ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ad
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next83, %vector.body77 ] ; 2 uses
  %i.ag = shl i64 %index78, 3                     ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.l, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.ah = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load81 = load <2 x i64>, ptr %next.gep80, align 8, !tbaa !48, !alias.scope !153
  %wide.load82 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !48, !alias.scope !153
  %i.ai = getelementptr i8, ptr %next.gep79, i64 16
  store <2 x i64> %wide.load81, ptr %next.gep79, align 8, !tbaa !48, !alias.scope !152
  store <2 x i64> %wide.load82, ptr %i.ai, align 8, !tbaa !48, !alias.scope !152
  %4 = getelementptr i8, ptr %next.gep80, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep80, align 8, !tbaa !48, !alias.scope !153
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !48, !alias.scope !153
  %index.next83 = add nuw i64 %index78, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next83, %n.vec76
  br i1 %i.aj, label %middle.block84, label %vector.body77, !llvm.loop !139

middle.block84:                                   ; preds = %vector.body77
  %cmp.n85 = icmp eq i64 %i.ac, %n.vec76
  br i1 %cmp.n85, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader88

.lr.ph.i.i.i.i.i.i.i.i.preheader88:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block84
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block84 ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block84 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader88, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader88 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader88 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !48, !alias.scope !153
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !48, !alias.scope !152
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !48, !alias.scope !153
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !140

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block84, %.noexc8
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %.noexc8 ], [ %i.ae, %middle.block84 ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !51
  store ptr %i.an, ptr %i.f, align 8, !tbaa !52
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !67
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit14: ; preds = %bb.a
  store i32 %2, ptr %1, align 4, !tbaa !36, !noalias !154
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ar = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20, !noalias !155 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML13SettingChangeINS_13EMITTER_MANIPEEE, i64 16), ptr %i.ar, align 8, !tbaa !50, !noalias !155
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %1, ptr %i.as, align 8, !tbaa !75, !noalias !155
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i32 %2, ptr %i.at, align 8, !tbaa !151, !noalias !155
  store i32 %2, ptr %1, align 4, !tbaa !36, !noalias !155
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !52 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !67
  %.not.i.i.i15 = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit14
  %i.ay = ptrtoint ptr %i.ar to i64
  store i64 %i.ay, ptr %i.av, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.au, align 8, !tbaa !52
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit14
  %i.ba = load ptr, ptr %i.aq, align 8, !tbaa !51 ; 7 uses
  %i.bb = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i16

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc28 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36

.noexc28:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i16: ; preds = %bb.h
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i17 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i.i17, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i.i18 = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i18)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #20
          to label %.noexc29 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36 ; 7 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  %i.bn = ptrtoint ptr %i.ar to i64
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !48
  %.not10.i.i.i.i.i.i.i.i19 = icmp eq ptr %i.ba, %i.av
  br i1 %.not10.i.i.i.i.i.i.i.i19, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i.i.i.i20.preheader:               ; preds = %.noexc29
  %i.bo = add i64 %i.bb, -8
  %i.bp = sub i64 %i.bo, %i.bc                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bp, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i20.preheader89, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i20.preheader
  %n.vec = and i64 %i.br, 4611686018427387900     ; 3 uses
  %i.bs = shl i64 %n.vec, 3                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bl, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.ba, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.bv ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.ba, i64 %i.bv ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.bw = getelementptr i8, ptr %next.gep70, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep70, align 8, !tbaa !48, !alias.scope !157
  %wide.load71 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !48, !alias.scope !157
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !48, !alias.scope !156
  store <2 x i64> %wide.load71, ptr %i.bx, align 8, !tbaa !48, !alias.scope !156
  %5 = getelementptr i8, ptr %next.gep70, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep70, align 8, !tbaa !48, !alias.scope !157
  store <2 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !48, !alias.scope !157
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i.i20.preheader89

.lr.ph.i.i.i.i.i.i.i.i20.preheader89:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i20.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i21.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i20.preheader ], [ %i.bt, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i22.ph = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i20.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i20

.lr.ph.i.i.i.i.i.i.i.i20:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i20.preheader89, %.lr.ph.i.i.i.i.i.i.i.i20
  %.012.i.i.i.i.i.i.i.i21 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i20 ], [ %.012.i.i.i.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i.i.i.i20.preheader89 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i22 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i20 ], [ %.0911.i.i.i.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i.i.i.i20.preheader89 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.bz = load i64, ptr %.0911.i.i.i.i.i.i.i.i22, align 8, !tbaa !48, !alias.scope !157
  store i64 %i.bz, ptr %.012.i.i.i.i.i.i.i.i21, align 8, !tbaa !48, !alias.scope !156
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i22, align 8, !tbaa !48, !alias.scope !157
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i22, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i21, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.ca, %i.av
  br i1 %.not.i.i.i.i.i.i.i.i23, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i.i20, !llvm.loop !149

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i.i.i.i20, %middle.block, %.noexc29
  %.0.lcssa.i.i.i.i.i.i.i.i25 = phi ptr [ %i.bl, %.noexc29 ], [ %i.bt, %middle.block ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i20 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i25, i64 8
  %.not.i23.i.i.i.i26 = icmp eq ptr %i.ba, null
  br i1 %.not.i23.i.i.i.i26, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i27, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24
  tail call void @_ZdlPv(ptr noundef nonnull %i.ba) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i27

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i27: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24
  store ptr %i.bl, ptr %i.aq, align 8, !tbaa !51
  store ptr %i.cc, ptr %i.au, align 8, !tbaa !52
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.cd, ptr %i.aw, align 8, !tbaa !67
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i16, %bb.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i27, %bb.g, %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, %bb.c, %bb.a
  ret void

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11
  %.sink58 = phi ptr [ %i.ar, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36 ], [ %i.b, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11 ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.ce, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36 ], [ %i.ap, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11 ]
  %i.cf = load ptr, ptr %.sink58, align 8, !tbaa !50
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %.sink58) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4YAML12EmitterState9SetIndentEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 1                       ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN4YAML12EmitterState4_SetImEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML12EmitterState4_SetImEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %3, label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit [
    i32 0, label %bb.b
    i32 1, label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit14
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20, !noalias !174 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML13SettingChangeImEE, i64 16), ptr %i.b, align 8, !tbaa !50, !noalias !174
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !78, !noalias !174
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %1, align 8, !tbaa !70, !noalias !174
  store i64 %i.e, ptr %i.d, align 8, !tbaa !70, !noalias !174
  store i64 %2, ptr %1, align 8, !tbaa !38, !noalias !174
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.b to i64
  store i64 %i.j, ptr %i.g, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !52
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !51   ; 7 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #20
          to label %.noexc8 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11 ; 7 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %i.b to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !48
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc8
  %i.z = add i64 %i.m, -8
  %i.aa = sub i64 %i.z, %i.n                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check74, label %.lr.ph.i.i.i.i.i.i.i.i.preheader88, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec76 = and i64 %i.ac, 4611686018427387900   ; 3 uses
  %i.ad = shl i64 %n.vec76, 3                     ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ad
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next83, %vector.body77 ] ; 2 uses
  %i.ag = shl i64 %index78, 3                     ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.l, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.ah = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load81 = load <2 x i64>, ptr %next.gep80, align 8, !tbaa !48, !alias.scope !176
  %wide.load82 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !48, !alias.scope !176
  %i.ai = getelementptr i8, ptr %next.gep79, i64 16
  store <2 x i64> %wide.load81, ptr %next.gep79, align 8, !tbaa !48, !alias.scope !175
  store <2 x i64> %wide.load82, ptr %i.ai, align 8, !tbaa !48, !alias.scope !175
  %4 = getelementptr i8, ptr %next.gep80, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep80, align 8, !tbaa !48, !alias.scope !176
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !48, !alias.scope !176
  %index.next83 = add nuw i64 %index78, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next83, %n.vec76
  br i1 %i.aj, label %middle.block84, label %vector.body77, !llvm.loop !163

middle.block84:                                   ; preds = %vector.body77
  %cmp.n85 = icmp eq i64 %i.ac, %n.vec76
  br i1 %cmp.n85, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader88

.lr.ph.i.i.i.i.i.i.i.i.preheader88:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block84
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block84 ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block84 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader88, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader88 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader88 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !48, !alias.scope !176
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !48, !alias.scope !175
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !48, !alias.scope !176
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !164

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block84, %.noexc8
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %.noexc8 ], [ %i.ae, %middle.block84 ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !51
  store ptr %i.an, ptr %i.f, align 8, !tbaa !52
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !67
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit14: ; preds = %bb.a
  store i64 %2, ptr %1, align 8, !tbaa !38, !noalias !177
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ar = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20, !noalias !178 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML13SettingChangeImEE, i64 16), ptr %i.ar, align 8, !tbaa !50, !noalias !178
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %1, ptr %i.as, align 8, !tbaa !78, !noalias !178
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %2, ptr %i.at, align 8, !tbaa !70, !noalias !178
  store i64 %2, ptr %1, align 8, !tbaa !38, !noalias !178
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !52 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !67
  %.not.i.i.i15 = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit14
  %i.ay = ptrtoint ptr %i.ar to i64
  store i64 %i.ay, ptr %i.av, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.au, align 8, !tbaa !52
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit14
  %i.ba = load ptr, ptr %i.aq, align 8, !tbaa !51 ; 7 uses
  %i.bb = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i16

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc28 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36

.noexc28:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i16: ; preds = %bb.h
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i17 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i.i17, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i.i18 = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i18)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #20
          to label %.noexc29 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36 ; 7 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  %i.bn = ptrtoint ptr %i.ar to i64
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !48
  %.not10.i.i.i.i.i.i.i.i19 = icmp eq ptr %i.ba, %i.av
  br i1 %.not10.i.i.i.i.i.i.i.i19, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i.i.i.i20.preheader:               ; preds = %.noexc29
  %i.bo = add i64 %i.bb, -8
  %i.bp = sub i64 %i.bo, %i.bc                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bp, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i20.preheader89, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i20.preheader
  %n.vec = and i64 %i.br, 4611686018427387900     ; 3 uses
  %i.bs = shl i64 %n.vec, 3                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bl, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.ba, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.bv ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.ba, i64 %i.bv ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.bw = getelementptr i8, ptr %next.gep70, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep70, align 8, !tbaa !48, !alias.scope !180
  %wide.load71 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !48, !alias.scope !180
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !48, !alias.scope !179
  store <2 x i64> %wide.load71, ptr %i.bx, align 8, !tbaa !48, !alias.scope !179
  %5 = getelementptr i8, ptr %next.gep70, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep70, align 8, !tbaa !48, !alias.scope !180
  store <2 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !48, !alias.scope !180
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i.i20.preheader89

.lr.ph.i.i.i.i.i.i.i.i20.preheader89:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i20.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i21.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i20.preheader ], [ %i.bt, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i22.ph = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i20.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i20

.lr.ph.i.i.i.i.i.i.i.i20:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i20.preheader89, %.lr.ph.i.i.i.i.i.i.i.i20
  %.012.i.i.i.i.i.i.i.i21 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i20 ], [ %.012.i.i.i.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i.i.i.i20.preheader89 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i22 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i20 ], [ %.0911.i.i.i.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i.i.i.i20.preheader89 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.bz = load i64, ptr %.0911.i.i.i.i.i.i.i.i22, align 8, !tbaa !48, !alias.scope !180
  store i64 %i.bz, ptr %.012.i.i.i.i.i.i.i.i21, align 8, !tbaa !48, !alias.scope !179
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i22, align 8, !tbaa !48, !alias.scope !180
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i22, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i21, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.ca, %i.av
  br i1 %.not.i.i.i.i.i.i.i.i23, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i.i20, !llvm.loop !173

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i.i.i.i20, %middle.block, %.noexc29
  %.0.lcssa.i.i.i.i.i.i.i.i25 = phi ptr [ %i.bl, %.noexc29 ], [ %i.bt, %middle.block ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i20 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i25, i64 8
  %.not.i23.i.i.i.i26 = icmp eq ptr %i.ba, null
  br i1 %.not.i23.i.i.i.i26, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i27, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24
  tail call void @_ZdlPv(ptr noundef nonnull %i.ba) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i27

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i27: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24
  store ptr %i.bl, ptr %i.aq, align 8, !tbaa !51
  store ptr %i.cc, ptr %i.au, align 8, !tbaa !52
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.cd, ptr %i.aw, align 8, !tbaa !67
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i16, %bb.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i27, %bb.g, %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, %bb.c, %bb.a
  ret void

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11
  %.sink58 = phi ptr [ %i.ar, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36 ], [ %i.b, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11 ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.ce, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36 ], [ %i.ap, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11 ]
  %i.cf = load ptr, ptr %.sink58, align 8, !tbaa !50
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %.sink58) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4YAML12EmitterState19SetPreCommentIndentEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ne i64 %1, 0                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN4YAML12EmitterState4_SetImEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4YAML12EmitterState20SetPostCommentIndentEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ne i64 %1, 0                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN4YAML12EmitterState4_SetImEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4YAML12EmitterState7SetWrapEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN4YAML12EmitterState4_SetImEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %1, i32 noundef %2)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4YAML12EmitterState17SetFloatPrecisionEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 10                      ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN4YAML12EmitterState4_SetImEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4YAML12EmitterState18SetDoublePrecisionEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 18                      ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN4YAML12EmitterState4_SetImEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4YAML12EmitterState19SetShowTrailingZeroEbNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN4YAML12EmitterState4_SetIbEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext %1, i32 noundef %2)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML12EmitterState4_SetIbEEvRNS_7SettingIT_EES3_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8                         ; 4 uses
  switch i32 %3, label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit [
    i32 0, label %bb.b
    i32 1, label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit14
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20, !noalias !197 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML13SettingChangeIbEE, i64 16), ptr %i.c, align 8, !tbaa !50, !noalias !197
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !81, !noalias !197
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i8, ptr %1, align 1, !tbaa !198, !noalias !197
  store i8 %i.f, ptr %i.e, align 8, !tbaa !198, !noalias !197
  store i8 %i.a, ptr %1, align 1, !tbaa !39, !noalias !197
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.c to i64
  store i64 %i.k, ptr %i.h, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !52
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !51   ; 7 uses
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #20
          to label %.noexc8 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11 ; 7 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %i.z = ptrtoint ptr %i.c to i64
  store i64 %i.z, ptr %i.y, align 8, !tbaa !48
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc8
  %i.aa = add i64 %i.n, -8
  %i.ab = sub i64 %i.aa, %i.o                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ab, 24
  br i1 %min.iters.check74, label %.lr.ph.i.i.i.i.i.i.i.i.preheader88, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec76 = and i64 %i.ad, 4611686018427387900   ; 3 uses
  %i.ae = shl i64 %n.vec76, 3                     ; 2 uses
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.ae
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next83, %vector.body77 ] ; 2 uses
  %i.ah = shl i64 %index78, 3                     ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.x, i64 %i.ah ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.m, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.ai = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load81 = load <2 x i64>, ptr %next.gep80, align 8, !tbaa !48, !alias.scope !200
  %wide.load82 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !48, !alias.scope !200
  %i.aj = getelementptr i8, ptr %next.gep79, i64 16
  store <2 x i64> %wide.load81, ptr %next.gep79, align 8, !tbaa !48, !alias.scope !199
  store <2 x i64> %wide.load82, ptr %i.aj, align 8, !tbaa !48, !alias.scope !199
  %4 = getelementptr i8, ptr %next.gep80, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep80, align 8, !tbaa !48, !alias.scope !200
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !48, !alias.scope !200
  %index.next83 = add nuw i64 %index78, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next83, %n.vec76
  br i1 %i.ak, label %middle.block84, label %vector.body77, !llvm.loop !186

middle.block84:                                   ; preds = %vector.body77
  %cmp.n85 = icmp eq i64 %i.ad, %n.vec76
  br i1 %cmp.n85, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader88

.lr.ph.i.i.i.i.i.i.i.i.preheader88:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block84
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block84 ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block84 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader88, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader88 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader88 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.al = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !48, !alias.scope !200
  store i64 %i.al, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !48, !alias.scope !199
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !48, !alias.scope !200
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !187

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block84, %.noexc8
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.noexc8 ], [ %i.af, %middle.block84 ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.x, ptr %i.b, align 8, !tbaa !51
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !67
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit14: ; preds = %bb.a
  store i8 %i.a, ptr %1, align 1, !tbaa !39, !noalias !201
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.as = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20, !noalias !202 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML13SettingChangeIbEE, i64 16), ptr %i.as, align 8, !tbaa !50, !noalias !202
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %1, ptr %i.at, align 8, !tbaa !81, !noalias !202
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i8 %i.a, ptr %i.au, align 8, !tbaa !198, !noalias !202
  store i8 %i.a, ptr %1, align 1, !tbaa !39, !noalias !202
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %.not.i.i.i15 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i.i.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit14
  %i.az = ptrtoint ptr %i.as to i64
  store i64 %i.az, ptr %i.aw, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !52
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit14
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !51 ; 7 uses
  %i.bc = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i16

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc28 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36

.noexc28:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i16: ; preds = %bb.h
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i17 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i.i17, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i.i.i18 = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i18)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #20
          to label %.noexc29 unwind label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36 ; 7 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  %i.bo = ptrtoint ptr %i.as to i64
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !48
  %.not10.i.i.i.i.i.i.i.i19 = icmp eq ptr %i.bb, %i.aw
  br i1 %.not10.i.i.i.i.i.i.i.i19, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i.i.i.i20.preheader:               ; preds = %.noexc29
  %i.bp = add i64 %i.bc, -8
  %i.bq = sub i64 %i.bp, %i.bd                    ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i20.preheader89, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i20.preheader
  %n.vec = and i64 %i.bs, 4611686018427387900     ; 3 uses
  %i.bt = shl i64 %n.vec, 3                       ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bm, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bb, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.bw ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.bb, i64 %i.bw ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.bx = getelementptr i8, ptr %next.gep70, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep70, align 8, !tbaa !48, !alias.scope !204
  %wide.load71 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !48, !alias.scope !204
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !48, !alias.scope !203
  store <2 x i64> %wide.load71, ptr %i.by, align 8, !tbaa !48, !alias.scope !203
  %5 = getelementptr i8, ptr %next.gep70, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep70, align 8, !tbaa !48, !alias.scope !204
  store <2 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !48, !alias.scope !204
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i.i20.preheader89

.lr.ph.i.i.i.i.i.i.i.i20.preheader89:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i20.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i21.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i20.preheader ], [ %i.bu, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i22.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i20.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i20

.lr.ph.i.i.i.i.i.i.i.i20:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i20.preheader89, %.lr.ph.i.i.i.i.i.i.i.i20
  %.012.i.i.i.i.i.i.i.i21 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i20 ], [ %.012.i.i.i.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i.i.i.i20.preheader89 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i22 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i20 ], [ %.0911.i.i.i.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i.i.i.i20.preheader89 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.ca = load i64, ptr %.0911.i.i.i.i.i.i.i.i22, align 8, !tbaa !48, !alias.scope !204
  store i64 %i.ca, ptr %.012.i.i.i.i.i.i.i.i21, align 8, !tbaa !48, !alias.scope !203
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i22, align 8, !tbaa !48, !alias.scope !204
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i22, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i21, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.cb, %i.aw
  br i1 %.not.i.i.i.i.i.i.i.i23, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i.i20, !llvm.loop !196

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i.i.i.i20, %middle.block, %.noexc29
  %.0.lcssa.i.i.i.i.i.i.i.i25 = phi ptr [ %i.bm, %.noexc29 ], [ %i.bu, %middle.block ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i20 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i25, i64 8
  %.not.i23.i.i.i.i26 = icmp eq ptr %i.bb, null
  br i1 %.not.i23.i.i.i.i26, label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i27, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i27

_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i27: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i24
  store ptr %i.bm, ptr %i.ar, align 8, !tbaa !51
  store ptr %i.cd, ptr %i.av, align 8, !tbaa !52
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.ce, ptr %i.ax, align 8, !tbaa !67
  br label %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i16, %bb.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i27, %bb.g, %_ZNSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, %bb.c, %bb.a
  ret void

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11
  %.sink58 = phi ptr [ %i.as, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36 ], [ %i.c, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11 ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.cf, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit36 ], [ %i.aq, %_ZNSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EED2Ev.exit11 ]
  %i.cg = load ptr, ptr %.sink58, align 8, !tbaa !50
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %.sink58) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #18
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
define linkonce_odr void @_ZN4YAML13SettingChangeINS_13EMITTER_MANIPEED0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML13SettingChangeINS_13EMITTER_MANIPEE3popEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  store i32 %i.d, ptr %i.b, align 4, !tbaa !36
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4YAML13SettingChangeImED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML13SettingChangeImE3popEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38
  store i64 %i.d, ptr %i.b, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4YAML17SettingChangeBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4YAML13SettingChangeIbED0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML13SettingChangeIbE3popEv(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !39, !range !71, !noundef !37
  store i8 %i.d, ptr %i.b, align 1, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN4YAML12EmitterState5GroupEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not7.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not.i.i.i.i, label %_ZN4YAML14SettingChanges7restoreEv.exit.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #18
  unreachable

_ZN4YAML14SettingChanges7restoreEv.exit.i.i.i:    ; preds = %bb.c
  %.pre.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !51 ; 6 uses
  %.pre1.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre1.i.i.i, %.pre.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4YAML14SettingChanges7restoreEv.exit.i.i.i, %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i, %_ZN4YAML14SettingChanges7restoreEv.exit.i.i.i ] ; 2 uses
  %i.m = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #19, !inline_history !205
  br label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, %.pre1.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4YAML14SettingChanges5clearEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

end_hunk_1
