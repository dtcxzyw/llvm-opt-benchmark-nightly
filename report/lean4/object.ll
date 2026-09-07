Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/object?download=true
inline.NumInlined: 1800
inline.NumDeleted: 578
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4lean12task_manager8run_taskERSt11unique_lockISt5mutexEP9lean_task:bb.a
  br label %_ZL8lean_decP11lean_object.exit

bb.s:                                             ; preds = %bb.q
  %.not.i31 = icmp eq i32 %i.ah, 0
  br i1 %.not.i31, label %_ZL8lean_decP11lean_object.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n)
  br label %_ZL8lean_decP11lean_object.exit

_ZL8lean_decP11lean_object.exit:                  ; preds = %bb.r, %bb.s, %bb.t, %_ZNSt11unique_lockISt5mutexE6unlockEv.exit42
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !97  ; 2 uses
  %.not.i43 = icmp eq ptr %i.ak, null
  br i1 %.not.i43, label %_ZN4leanL9free_taskEP9lean_task.exit44, label %bb.u

bb.u:                                             ; preds = %_ZL8lean_decP11lean_object.exit
  tail call void @mi_free(ptr noundef nonnull %i.ak) #36
  br label %_ZN4leanL9free_taskEP9lean_task.exit44

_ZN4leanL9free_taskEP9lean_task.exit44:           ; preds = %_ZL8lean_decP11lean_object.exit, %bb.u
  tail call void @mi_free(ptr noundef nonnull %2) #36
  %i.al = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %.not.i45 = icmp eq ptr %i.al, null
  br i1 %.not.i45, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4leanL9free_taskEP9lean_task.exit44
  tail call void @_ZSt20__throw_system_errori(i32 noundef 1) #44
  unreachable

bb.w:                                             ; preds = %_ZN4leanL9free_taskEP9lean_task.exit44
  %i.am = load i8, ptr %i.i, align 8, !tbaa !78, !range !25, !noundef !26
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #44
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ao = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.al) #36 ; 2 uses
  %.not.i.i46 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i46, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit47, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #44
  unreachable

_ZNSt11unique_lockISt5mutexE4lockEv.exit47:       ; preds = %bb.y
  store i8 1, ptr %i.i, align 8, !tbaa !78
  br label %bb.an

bb.aa:                                            ; preds = %bb.n
  br i1 %.not28, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_mark_mt(ptr noundef nonnull %i.n), !inline_history !247
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store atomic ptr %i.n, ptr %i.ap seq_cst, align 8
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !97  ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !97
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !104 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !104
  %.not.i.i4860 = icmp eq ptr %i.as, null
  br i1 %.not.i.i4860, label %_ZN4lean12task_manager12resolve_coreERSt11unique_lockISt5mutexEP9lean_taskP11lean_object.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.af
  %.0.i.i61 = phi ptr [ %i.as, %.lr.ph ], [ %i.ax, %bb.af ] ; 3 uses
  %i.au = load i8, ptr %i.at, align 4, !tbaa !101
  %.not13.i.i = icmp eq i8 %i.au, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i.i61, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !97 ; 4 uses
  br i1 %.not13.i.i, label %._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  store i8 1, ptr %i.av, align 4, !tbaa !101
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ac, %bb.ad
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !105 ; 2 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !105
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre, i64 30
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !103
  %.not14.i.i = icmp eq i8 %i.az, 0
  br i1 %.not14.i.i, label %bb.ae, label %_ZN4leanL9free_taskEP9lean_task.exit55

_ZN4leanL9free_taskEP9lean_task.exit55:           ; preds = %._crit_edge
  tail call void @mi_free(ptr noundef nonnull %.pre) #36
  tail call void @mi_free(ptr noundef nonnull %.0.i.i61) #36
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge
  tail call void @_ZN4lean12task_manager12enqueue_coreERSt11unique_lockISt5mutexEP9lean_task(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull %.0.i.i61), !inline_history !248
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN4leanL9free_taskEP9lean_task.exit55
  %.not.i.i48 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i48, label %_ZN4lean12task_manager12resolve_coreERSt11unique_lockISt5mutexEP9lean_taskP11lean_object.exit, label %bb.ac, !llvm.loop !7

_ZN4lean12task_manager12resolve_coreERSt11unique_lockISt5mutexEP9lean_taskP11lean_object.exit: ; preds = %bb.af, %bb.ab
  tail call void @mi_free(ptr noundef nonnull %i.aq) #36, !inline_history !8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ba) #36, !inline_history !8
  br label %bb.an

bb.ag:                                            ; preds = %bb.aa
  %i.bb = load ptr, ptr %i.aa, align 8, !tbaa !99
  %i.bc = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %.not.i49 = icmp eq ptr %i.bc, null
  br i1 %.not.i49, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit50, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bd = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bc) #36 ; 0 uses
  store i8 0, ptr %i.i, align 8, !tbaa !78
  br label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit50

_ZNSt11unique_lockISt5mutexE6unlockEv.exit50:     ; preds = %bb.ag, %bb.ah
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !31
  tail call void @_ZN4lean12task_manager7add_depEP9lean_taskS2_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.bf, ptr noundef nonnull %2)
  %i.bg = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %.not.i51 = icmp eq ptr %i.bg, null
  br i1 %.not.i51, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit50
  tail call void @_ZSt20__throw_system_errori(i32 noundef 1) #44
  unreachable

bb.aj:                                            ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit50
  %i.bh = load i8, ptr %i.i, align 8, !tbaa !78, !range !25, !noundef !26
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #44
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.bj = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bg) #36 ; 2 uses
  %.not.i.i52 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i52, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit53, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.bj) #44
  unreachable

_ZNSt11unique_lockISt5mutexE4lockEv.exit53:       ; preds = %bb.al
  store i8 1, ptr %i.i, align 8, !tbaa !78
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit47, %_ZNSt11unique_lockISt5mutexE4lockEv.exit53, %_ZN4lean12task_manager12resolve_coreERSt11unique_lockISt5mutexEP9lean_taskP11lean_object.exit, %_ZN4leanL9free_taskEP9lean_task.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean12task_manager12spawn_workerEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.b = load i8, ptr %i.a, align 8, !tbaa !74, !range !25, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = ptrtoint ptr %0 to i64
  store i64 %i.h, ptr %1, align 8, !tbaa !47
  store ptr @_ZNSt17_Function_handlerIFvvEZN4lean12task_manager12spawn_workerEvEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.f, align 8, !tbaa !140
  store ptr @_ZNSt17_Function_handlerIFvvEZN4lean12task_manager12spawn_workerEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, ptr %i.e, align 8, !tbaa !141
  invoke void @_ZN4lean7lthreadC1ERKSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93
  %.not.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.k, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !92
  br label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !91   ; 10 uses
  %i.p = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 4 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #44
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #45
          to label %.noexc3 unwind label %bb.k    ; 10 uses

.noexc3:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store ptr %i.d, ptr %i.aa, align 8, !tbaa !80
  %.not10.i.i.i.i.i = icmp eq ptr %i.o, %i.k
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc3
  %i.ab = add i64 %i.p, -8
  %i.ac = sub i64 %i.ab, %i.q                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %2 = add i64 %i.p, -8
  %3 = sub i64 %2, %i.q
  %i.af = and i64 %3, -8
  %4 = add i64 %i.af, 8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.z, i64 %4
  %scevgep13 = getelementptr i8, ptr %i.o, i64 %4
  %bound0 = icmp ult ptr %i.z, %scevgep13
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.z, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.o, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.o, i64 %i.aj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.ak = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !80, !alias.scope !259, !noalias !257
  %wide.load15 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !80, !alias.scope !259, !noalias !257
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !80, !alias.scope !260, !noalias !259
  store <2 x i64> %wide.load15, ptr %i.al, align 8, !tbaa !80, !alias.scope !260, !noalias !259
  %i.am = getelementptr i8, ptr %next.gep14, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !80, !alias.scope !259, !noalias !257
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !80, !alias.scope !259, !noalias !257
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !255

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader17

.lr.ph.i.i.i.i.i.preheader17:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader17, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader17 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !258, !noalias !257
  store i64 %i.ao, ptr %.012.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !257, !noalias !258
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !258, !noalias !257
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !256

_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc3
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %.noexc3 ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.au) #46
  br label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !91
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !92
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.av, ptr %i.l, align 8, !tbaa !93
  br label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.d
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !141 ; 2 uses
  %.not.i4 = icmp eq ptr %i.aw, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt14_Function_baseD2Ev.exit
  ret void

bb.k:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.f, %bb.b
  %.0 = phi i1 [ false, %_ZNKSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ true, %bb.b ], [ false, %bb.f ]
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !141 ; 2 uses
  %.not.i5 = icmp eq ptr %i.bb, null
  br i1 %.not.i5, label %_ZNSt14_Function_baseD2Ev.exit6, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit6:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit6
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #46
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt14_Function_baseD2Ev.exit6
  resume { ptr, i32 } %i.ba
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #10

declare void @_ZN4lean15reset_heartbeatEv() local_unnamed_addr #13

declare void @_ZN4lean7lthreadC1ERKSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvvEZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !263
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_, ptr %0, align 8, !tbaa !143
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !31
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !264
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !266    ; 5 uses
  tail call void @_ZN4lean15save_stack_infoEb(i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  store ptr %i.a, ptr %1, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #36 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #44
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !267
  invoke void @_ZN4lean12task_manager8run_taskERSt11unique_lockISt5mutexEP9lean_task(ptr noundef nonnull align 8 dereferenceable(953) %i.a, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %i.e)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !71
  %i.h = add i32 %i.g, -1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 904
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.i) #36
  %i.j = load i8, ptr %i.b, align 8, !tbaa !78, !range !25, !noundef !26
  %i.k = trunc nuw i8 %i.j to i1
end_hunk_0
