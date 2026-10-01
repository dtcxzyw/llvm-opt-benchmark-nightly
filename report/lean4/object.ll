Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/object?download=true
inline.NumInlined: 1800
inline.NumDeleted: 578
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4lean12task_manager8run_taskERSt11unique_lockISt5mutexEP9lean_task:bb.a
  store i32 %i.aj, ptr %i.n, align 4, !tbaa !18
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
  %i.p = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
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
  %i.ac = sub i64 %i.ab, %i.q                     ; 3 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %2 = and i64 %i.ac, -8
  %3 = add i64 %2, 8                              ; 2 uses
  %4 = getelementptr i8, ptr %i.z, i64 %3
  %5 = getelementptr i8, ptr %i.o, i64 %3
  %bound0 = icmp ult ptr %i.z, %5
  %bound1 = icmp ult ptr %i.o, %4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.z, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.o, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ai ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.o, i64 %i.ai ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.aj = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !80, !alias.scope !259, !noalias !257
  %wide.load15 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !80, !alias.scope !259, !noalias !257
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !80, !alias.scope !260, !noalias !259
  store <2 x i64> %wide.load15, ptr %i.ak, align 8, !tbaa !80, !alias.scope !260, !noalias !259
  %i.al = getelementptr i8, ptr %next.gep14, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !80, !alias.scope !259, !noalias !257
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !80, !alias.scope !259, !noalias !257
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !255

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader17

.lr.ph.i.i.i.i.i.preheader17:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader17, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader17 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !258, !noalias !257
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !257, !noalias !258
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !258, !noalias !257
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !256

_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc3
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %.noexc3 ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.at) #46
  br label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !91
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !92
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.au, ptr %i.l, align 8, !tbaa !93
  br label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.d
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !141 ; 2 uses
  %.not.i4 = icmp eq ptr %i.av, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.aw = invoke noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt14_Function_baseD2Ev.exit
  ret void

bb.k:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.f, %bb.b
  %.0 = phi i1 [ false, %_ZNKSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ true, %bb.b ], [ false, %bb.f ]
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !141 ; 2 uses
  %.not.i5 = icmp eq ptr %i.ba, null
  br i1 %.not.i5, label %_ZNSt14_Function_baseD2Ev.exit6, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit6:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit6
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #46
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt14_Function_baseD2Ev.exit6
  resume { ptr, i32 } %i.az
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
  br i1 %i.k, label %bb.d, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #36 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i8, ptr %i.b, align 8, !tbaa !78, !range !25, !noundef !26
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %_ZNSt11unique_lockISt5mutexED2Ev.exit3

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i.i2, label %_ZNSt11unique_lockISt5mutexED2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #36 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit3

_ZNSt11unique_lockISt5mutexED2Ev.exit3:           ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %i.n
}

declare void @_ZN4lean15save_stack_infoEb(i1 noundef zeroext) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIP9lean_taskSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !90
  %i.ag = load ptr, ptr %0, align 8, !tbaa !86
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIP9lean_taskSaIS1_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIP9lean_taskSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIP9lean_taskSaIS1_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIP9lean_taskSaIS1_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #45 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !89
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.aq = load ptr, ptr %1, align 8, !tbaa !106
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !106
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !133
  store ptr %i.am, ptr %i.o, align 8, !tbaa !134
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !135
  store ptr %i.am, ptr %i.a, align 8, !tbaa !137
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #29

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIP9lean_taskSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !90   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !86
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !89
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !89
  br label %_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !89
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !89
  br label %_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIP9lean_taskSaIS1_EE15_M_allocate_mapEm.exit, !prof !34

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #44
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #44
  unreachable

_ZNSt11_Deque_baseIP9lean_taskSaIS1_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #45 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !87  ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !19

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIP9lean_taskSaIS1_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIP9lean_taskSaIS1_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.q, label %_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit24

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !89
  store ptr %i.be, ptr %i.av, align 8, !tbaa !89
  br label %_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit24

_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit24:    ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !86
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !90
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #46
  store ptr %i.aq, ptr %0, align 8, !tbaa !86
  store i64 %i.am, ptr %i.k, align 8, !tbaa !90
  br label %_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit

_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit:      ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPP9lean_taskS3_ET0_T_S5_S4_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !133
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !89   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !134
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !135
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !133
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !89 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !134
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !135
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvvEZN4lean12task_manager12spawn_workerEvEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZZN4lean12task_manager12spawn_workerEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !268
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN4lean12task_manager12spawn_workerEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager12spawn_workerEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN4lean12task_manager12spawn_workerEvEUlvE_, ptr %0, align 8, !tbaa !143
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager12spawn_workerEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !31
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager12spawn_workerEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !47
  store i64 %i.a, ptr %0, align 8, !tbaa !47
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager12spawn_workerEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager12spawn_workerEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4lean12task_manager12spawn_workerEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !274    ; 13 uses
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
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !107
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 800 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 804 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.o = load i32, ptr %i.g, align 8, !tbaa !72   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = load i8, ptr %i.h, align 8, !tbaa !74, !range !25, !noundef !26
  %i.r = trunc nuw i8 %i.q to i1                  ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.backedge
  br i1 %i.r, label %bb.n, label %.invoke

bb.d:                                             ; preds = %.invoke
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.e:                                             ; preds = %.backedge
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !92
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !91
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = load i32, ptr %i.d, align 8, !tbaa !107
  %i.aa = zext i32 %i.z to i64
  %i.ab = sub nsw i64 %i.y, %i.aa
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !70
  %i.ad = zext i32 %i.ac to i64
  %.not = icmp ult i64 %i.ab, %i.ad
  br i1 %.not, label %bb.g, label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.f
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %.backedge.backedge unwind label %bb.d

.backedge.backedge:                               ; preds = %.invoke, %bb.l
  br label %.backedge, !llvm.loop !269

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !73
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %i.af ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !144, !noalias !275 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !106
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !276
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %.not.i.i = icmp eq ptr %i.ai, %i.am
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %_ZNSt5dequeIP9lean_taskSaIS1_EE9pop_frontEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !277
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef 512) #46
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !87
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !133
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !89 ; 3 uses
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  store ptr %i.au, ptr %i.ak, align 8, !tbaa !135
  %.pre = load i32, ptr %i.g, align 8, !tbaa !72
  br label %_ZNSt5dequeIP9lean_taskSaIS1_EE9pop_frontEv.exit.i

_ZNSt5dequeIP9lean_taskSaIS1_EE9pop_frontEv.exit.i: ; preds = %bb.i, %bb.h
  %i.av = phi i32 [ %i.o, %bb.h ], [ %.pre, %bb.i ]
  %storemerge.i.i = phi ptr [ %i.an, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.ah, align 8, !tbaa !136
  %i.aw = add i32 %i.av, -1
  store i32 %i.aw, ptr %i.g, align 8, !tbaa !72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !144
  %i.az = icmp eq ptr %i.ay, %storemerge.i.i
  br i1 %i.az, label %.preheader.i, label %_ZN4lean12task_manager7dequeueEv.exit

.preheader.i:                                     ; preds = %_ZNSt5dequeIP9lean_taskSaIS1_EE9pop_frontEv.exit.i
  %.promoted.i = load i32, ptr %i.n, align 4, !tbaa !73 ; 2 uses
  %.not.i12 = icmp eq i32 %.promoted.i, 0
  br i1 %.not.i12, label %_ZN4lean12task_manager7dequeueEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i
  %i.ba = zext i32 %.promoted.i to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %.not.i = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i, label %_ZN4lean12task_manager7dequeueEv.exit.loopexit, label %bb.k, !llvm.loop !272

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv.i13 = phi i64 [ %i.ba, %.lr.ph ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i13, -1 ; 3 uses
  %indvars.i = trunc nuw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.bb = getelementptr [80 x i8], ptr %i.a, i64 %indvars.iv.i13 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !144
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !144
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %._ZN4lean12task_manager7dequeueEv.exit.loopexit_crit_edge, !llvm.loop !272

._ZN4lean12task_manager7dequeueEv.exit.loopexit_crit_edge: ; preds = %bb.k
  store i32 %indvars.i, ptr %i.n, align 4, !tbaa !73
  br label %_ZN4lean12task_manager7dequeueEv.exit, !llvm.loop !272

_ZN4lean12task_manager7dequeueEv.exit.loopexit:   ; preds = %bb.j
  store i32 %indvars.i, ptr %i.n, align 4, !tbaa !73
  br label %_ZN4lean12task_manager7dequeueEv.exit

_ZN4lean12task_manager7dequeueEv.exit:            ; preds = %_ZN4lean12task_manager7dequeueEv.exit.loopexit, %.preheader.i, %._ZN4lean12task_manager7dequeueEv.exit.loopexit_crit_edge, %_ZNSt5dequeIP9lean_taskSaIS1_EE9pop_frontEv.exit.i
  %i.bh = load i32, ptr %i.d, align 8, !tbaa !107
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr %i.d, align 8, !tbaa !107
  invoke void @_ZN4lean12task_manager8run_taskERSt11unique_lockISt5mutexEP9lean_task(ptr noundef nonnull align 8 dereferenceable(953) %i.a, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %i.aj)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN4lean12task_manager7dequeueEv.exit
  %i.bj = load i32, ptr %i.d, align 8, !tbaa !107
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.d, align 8, !tbaa !107
  invoke void @_ZN4lean15reset_heartbeatEv()
          to label %.backedge.backedge unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4lean12task_manager7dequeueEv.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.c
  %i.bm = load i32, ptr %i.d, align 8, !tbaa !107
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr %i.d, align 8, !tbaa !107
  %i.bo = load i8, ptr %i.b, align 8, !tbaa !78, !range !25, !noundef !26
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.o, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i5, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bq) #36 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.q:                                             ; preds = %bb.m, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.bl, %bb.m ]
  %i.bs = load i8, ptr %i.b, align 8, !tbaa !78, !range !25, !noundef !26
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.r, label %_ZNSt11unique_lockISt5mutexED2Ev.exit7

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i6, label %_ZNSt11unique_lockISt5mutexED2Ev.exit7, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bu) #36 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit7

_ZNSt11unique_lockISt5mutexED2Ev.exit7:           ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN4leanL13task_bind_fn2EP11lean_objectS1_(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8 ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZL8lean_incP11lean_object.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !18 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !18
  br label %_ZL8lean_incP11lean_object.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %_ZL8lean_incP11lean_object.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZL8lean_incP11lean_object.exit

_ZL8lean_incP11lean_object.exit:                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = load i32, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !19

bb.f:                                             ; preds = %_ZL8lean_incP11lean_object.exit
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %0, align 8, !tbaa !18
  br label %_ZL12lean_dec_refP11lean_object.exit

bb.g:                                             ; preds = %_ZL8lean_incP11lean_object.exit
  %.not.i4 = icmp eq i32 %i.h, 0
  br i1 %.not.i4, label %_ZL12lean_dec_refP11lean_object.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0)
  br label %_ZL12lean_dec_refP11lean_object.exit

_ZL12lean_dec_refP11lean_object.exit:             ; preds = %bb.f, %bb.g, %bb.h
  ret ptr %i.b
}

declare void @lean_inc_heartbeat() local_unnamed_addr #13

; Function Attrs: nounwind
declare noalias ptr @mi_malloc_small(i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4lean3mpzpLEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4lean3mpzpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4lean3mpzmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare noundef i32 @_ZN4lean3cmpERKNS_3mpzES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4lean3mpzmLERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4lean3mpzdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4lean3mpzrMERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4lean3mpzaNERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4lean3mpzoRERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4lean3mpzeOERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare void @_ZN4lean3gcdERNS_3mpzERKS0_S3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare noundef i32 @_ZNK4lean3mpz7get_intEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare noundef i32 @_ZN4lean3cmpERKNS_3mpzEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN4lean3mpzC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4lean3mpzmIEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4lean3mpzmLEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #29

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca i8, i64 %2, align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.b = call noundef i32 %1(ptr noundef nonnull %i.a, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4) ; 4 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.c = sext i32 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !57
  %i.f = icmp ugt i32 %i.b, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.b, 0
  br i1 %i.g, label %.noexc.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #44
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.h = add nuw nsw i64 %i.c, 1
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #45 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !111
  store i64 %i.c, ptr %i.d, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.d, %bb.a ] ; 3 uses
  switch i32 %i.b, label %bb.d [
    i32 1, label %bb.c
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.a, align 16, !tbaa !33
  store i8 %i.k, ptr %i.j, align 1, !tbaa !33
  br label %bb.e

end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !33
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !33
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !111
  store i64 %.0, ptr %i.h, align 8, !tbaa !33
  ret void
}

declare void @_ZN4lean11utf8_decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #44
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !111    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !19

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33
  store i8 %i.v, ptr %i.t, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !33
  store i8 %i.w, ptr %i.m, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !57
  %i.x = load ptr, ptr %0, align 8, !tbaa !111
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !33
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #29

declare void @_ZN4lean23get_utf8_first_byte_optEh(ptr dead_on_unwind writable sret(%"class.lean::optional") align 4, i8 noundef zeroext) local_unnamed_addr #13

declare i32 @backtrace(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare ptr @backtrace_symbols(ptr noundef, i32 noundef) local_unnamed_addr #10

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #35

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail8__waiterISt17integral_constantIbLb1EEE12_M_do_wait_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_EEvT_T0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  %.fr = freeze i32 %2                            ; 3 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  switch i32 %.fr, label %.split [
    i32 1, label %.split.us.preheader
    i32 2, label %.split.us.preheader
    i32 5, label %.split.us5
  ]

.split.us.preheader:                              ; preds = %bb.a, %bb.a
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.e = call noundef zeroext i1 @_ZNSt8__detail13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_(ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 %.fr, ptr %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.e, label %_ZNSt8__detail13__waiter_pool10_M_do_waitEPKii.exit, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.g = load i32, ptr %i.b, align 4, !tbaa !117
  %i.h = call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef %i.f, i32 noundef 0, i32 noundef %i.g, ptr noundef null) #36
  %.not.i.i.us = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.us, label %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__errno_location() #47
  %i.j = load i32, ptr %i.i, align 4, !tbaa !117  ; 2 uses
  switch i32 %i.j, label %.split4.us [
    i32 11, label %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit.us
    i32 4, label %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit.us
  ]

_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit.us: ; preds = %bb.c, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.k = load atomic i32, ptr %3 acquire, align 4
  %lhsv.i.us = load i32, ptr %i.a, align 4
  %.not.i.us = icmp eq i32 %lhsv.i.us, %i.k
  br i1 %.not.i.us, label %.split.us, label %.loopexit, !llvm.loop !278

.split.us5:                                       ; preds = %bb.a, %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit.us7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.m = call noundef zeroext i1 @_ZNSt8__detail13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_(ptr noundef %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 5, ptr %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.m, label %_ZNSt8__detail13__waiter_pool10_M_do_waitEPKii.exit, label %bb.d

bb.d:                                             ; preds = %.split.us5
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.o = load i32, ptr %i.b, align 4, !tbaa !117
  %i.p = call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef %i.n, i32 noundef 0, i32 noundef %i.o, ptr noundef null) #36
  %.not.i.i.us6 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.us6, label %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit.us7, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @__errno_location() #47
  %i.r = load i32, ptr %i.q, align 4, !tbaa !117  ; 2 uses
  switch i32 %i.r, label %.split4.us [
    i32 11, label %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit.us7
    i32 4, label %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit.us7
  ]

_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit.us7: ; preds = %bb.e, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.s = load atomic i32, ptr %3 seq_cst, align 4
  %lhsv.i.us9 = load i32, ptr %i.a, align 4
  %.not.i.us10 = icmp eq i32 %lhsv.i.us9, %i.s
  br i1 %.not.i.us10, label %.split.us5, label %.loopexit, !llvm.loop !278

.split:                                           ; preds = %bb.a, %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.u = call noundef zeroext i1 @_ZNSt8__detail13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_(ptr noundef %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 %.fr, ptr %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.u, label %_ZNSt8__detail13__waiter_pool10_M_do_waitEPKii.exit, label %bb.f

bb.f:                                             ; preds = %.split
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.w = load i32, ptr %i.b, align 4, !tbaa !117
  %i.x = call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef %i.v, i32 noundef 0, i32 noundef %i.w, ptr noundef null) #36
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call ptr @__errno_location() #47
  %i.z = load i32, ptr %i.y, align 4, !tbaa !117  ; 2 uses
  switch i32 %i.z, label %.split4.us [
    i32 11, label %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit
    i32 4, label %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit
  ]

.split4.us:                                       ; preds = %bb.e, %bb.c, %bb.g
  %.us-phi = phi i32 [ %i.j, %bb.c ], [ %i.z, %bb.g ], [ %i.r, %bb.e ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %.us-phi) #44
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.split4.us
  unreachable

bb.i:                                             ; preds = %.split4.us
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #43
  unreachable

_ZNSt8__detail13__waiter_pool10_M_do_waitEPKii.exit: ; preds = %.split.us5, %.split.us, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %.loopexit

_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit: ; preds = %bb.g, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.ac = load atomic i32, ptr %3 monotonic, align 4
  %lhsv.i = load i32, ptr %i.a, align 4
  %.not.i = icmp eq i32 %lhsv.i, %i.ac
  br i1 %.not.i, label %.split, label %.loopexit, !llvm.loop !278

.loopexit:                                        ; preds = %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit.us7, %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit.us, %_ZZNKSt13__atomic_baseIiE4waitEiSt12memory_orderENKUlvE_clEv.exit, %_ZNSt8__detail13__waiter_pool10_M_do_waitEPKii.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt8__detail13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 %2, ptr %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !117    ; 49 uses
  store i32 %i.a, ptr %4, align 4
  switch i32 %2, label %.split.preheader [
    i32 1, label %.split.us
    i32 2, label %.split.us
    i32 5, label %.split.us6.preheader
  ]

.split.us6.preheader:                             ; preds = %bb.a
  %i.b = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not = icmp eq i32 %i.a, %i.b
  br i1 %.not.i.i.not.not.not.i.us9.not, label %.split.us6.1, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.preheader:                                 ; preds = %bb.a
  %i.c = load atomic i32, ptr %3 monotonic, align 4
  %.not.i.i.not.not.not.i.not = icmp eq i32 %i.a, %i.c
  br i1 %.not.i.i.not.not.not.i.not, label %.split.1, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us:                                        ; preds = %bb.a, %bb.a
  %i.d = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not = icmp eq i32 %i.a, %i.d
  br i1 %.not.i.i.not.not.not.i.us.not, label %bb.b, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.b:                                             ; preds = %.split.us
  tail call void @llvm.x86.sse2.pause()
  %i.e = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.1 = icmp eq i32 %i.a, %i.e
  br i1 %.not.i.i.not.not.not.i.us.not.1, label %bb.c, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.x86.sse2.pause()
  %i.f = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.2 = icmp eq i32 %i.a, %i.f
  br i1 %.not.i.i.not.not.not.i.us.not.2, label %bb.d, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.x86.sse2.pause()
  %i.g = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.3 = icmp eq i32 %i.a, %i.g
  br i1 %.not.i.i.not.not.not.i.us.not.3, label %bb.e, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.x86.sse2.pause()
  %i.h = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.4 = icmp eq i32 %i.a, %i.h
  br i1 %.not.i.i.not.not.not.i.us.not.4, label %bb.f, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.x86.sse2.pause()
  %i.i = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.5 = icmp eq i32 %i.a, %i.i
  br i1 %.not.i.i.not.not.not.i.us.not.5, label %bb.g, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.x86.sse2.pause()
  %i.j = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.6 = icmp eq i32 %i.a, %i.j
  br i1 %.not.i.i.not.not.not.i.us.not.6, label %bb.h, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.x86.sse2.pause()
  %i.k = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.7 = icmp eq i32 %i.a, %i.k
  br i1 %.not.i.i.not.not.not.i.us.not.7, label %bb.i, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.x86.sse2.pause()
  %i.l = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.8 = icmp eq i32 %i.a, %i.l
  br i1 %.not.i.i.not.not.not.i.us.not.8, label %bb.j, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.x86.sse2.pause()
  %i.m = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.9 = icmp eq i32 %i.a, %i.m
  br i1 %.not.i.i.not.not.not.i.us.not.9, label %bb.k, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.x86.sse2.pause()
  %i.n = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.10 = icmp eq i32 %i.a, %i.n
  br i1 %.not.i.i.not.not.not.i.us.not.10, label %bb.l, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.x86.sse2.pause()
  %i.o = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.11 = icmp eq i32 %i.a, %i.o
  br i1 %.not.i.i.not.not.not.i.us.not.11, label %bb.m, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.x86.sse2.pause()
  %i.p = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.12 = icmp eq i32 %i.a, %i.p
  br i1 %.not.i.i.not.not.not.i.us.not.12, label %bb.n, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.n:                                             ; preds = %bb.m
  %i.q = tail call noundef i32 @sched_yield() #36 ; 0 uses
  %i.r = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.13 = icmp eq i32 %i.a, %i.r
  br i1 %.not.i.i.not.not.not.i.us.not.13, label %bb.o, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.o:                                             ; preds = %bb.n
  %i.s = tail call noundef i32 @sched_yield() #36 ; 0 uses
  %i.t = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.14 = icmp eq i32 %i.a, %i.t
  br i1 %.not.i.i.not.not.not.i.us.not.14, label %bb.p, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

bb.p:                                             ; preds = %bb.o
  %i.u = tail call noundef i32 @sched_yield() #36 ; 0 uses
  %i.v = load atomic i32, ptr %3 acquire, align 4
  %.not.i.i.not.not.not.i.us.not.15 = icmp eq i32 %i.a, %i.v
  br i1 %.not.i.i.not.not.not.i.us.not.15, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit.sink.split, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.1:                                     ; preds = %.split.us6.preheader
  tail call void @llvm.x86.sse2.pause()
  %i.w = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not.1 = icmp eq i32 %i.a, %i.w
  br i1 %.not.i.i.not.not.not.i.us9.not.1, label %.split.us6.2, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.2:                                     ; preds = %.split.us6.1
  tail call void @llvm.x86.sse2.pause()
  %i.x = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not.2 = icmp eq i32 %i.a, %i.x
  br i1 %.not.i.i.not.not.not.i.us9.not.2, label %.split.us6.3, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.3:                                     ; preds = %.split.us6.2
  tail call void @llvm.x86.sse2.pause()
  %i.y = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not.3 = icmp eq i32 %i.a, %i.y
  br i1 %.not.i.i.not.not.not.i.us9.not.3, label %.split.us6.4, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.4:                                     ; preds = %.split.us6.3
  tail call void @llvm.x86.sse2.pause()
  %i.z = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not.4 = icmp eq i32 %i.a, %i.z
  br i1 %.not.i.i.not.not.not.i.us9.not.4, label %.split.us6.5, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.5:                                     ; preds = %.split.us6.4
  tail call void @llvm.x86.sse2.pause()
  %i.aa = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not.5 = icmp eq i32 %i.a, %i.aa
  br i1 %.not.i.i.not.not.not.i.us9.not.5, label %.split.us6.6, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.6:                                     ; preds = %.split.us6.5
  tail call void @llvm.x86.sse2.pause()
  %i.ab = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not.6 = icmp eq i32 %i.a, %i.ab
  br i1 %.not.i.i.not.not.not.i.us9.not.6, label %.split.us6.7, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.7:                                     ; preds = %.split.us6.6
  tail call void @llvm.x86.sse2.pause()
  %i.ac = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not.7 = icmp eq i32 %i.a, %i.ac
  br i1 %.not.i.i.not.not.not.i.us9.not.7, label %.split.us6.8, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.8:                                     ; preds = %.split.us6.7
  tail call void @llvm.x86.sse2.pause()
  %i.ad = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not.8 = icmp eq i32 %i.a, %i.ad
  br i1 %.not.i.i.not.not.not.i.us9.not.8, label %.split.us6.9, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.9:                                     ; preds = %.split.us6.8
  tail call void @llvm.x86.sse2.pause()
  %i.ae = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not.9 = icmp eq i32 %i.a, %i.ae
  br i1 %.not.i.i.not.not.not.i.us9.not.9, label %.split.us6.10, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.10:                                    ; preds = %.split.us6.9
  tail call void @llvm.x86.sse2.pause()
  %i.af = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not.10 = icmp eq i32 %i.a, %i.af
  br i1 %.not.i.i.not.not.not.i.us9.not.10, label %.split.us6.11, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.11:                                    ; preds = %.split.us6.10
  tail call void @llvm.x86.sse2.pause()
  %i.ag = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not.11 = icmp eq i32 %i.a, %i.ag
  br i1 %.not.i.i.not.not.not.i.us9.not.11, label %.split.us6.12, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.12:                                    ; preds = %.split.us6.11
  tail call void @llvm.x86.sse2.pause()
  %i.ah = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not.12 = icmp eq i32 %i.a, %i.ah
  br i1 %.not.i.i.not.not.not.i.us9.not.12, label %.split.us6.13, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.13:                                    ; preds = %.split.us6.12
  %i.ai = tail call noundef i32 @sched_yield() #36 ; 0 uses
  %i.aj = load atomic i32, ptr %3 seq_cst, align 4
  %.not.i.i.not.not.not.i.us9.not.13 = icmp eq i32 %i.a, %i.aj
  br i1 %.not.i.i.not.not.not.i.us9.not.13, label %.split.us6.14, label %_ZNSt8__detail13__atomic_spinIKZNS_13__waiter_baseINS_13__waiter_poolEE12_S_do_spin_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_NS_21__default_spin_policyEEEbPiRKT_T0_RiT1_EUlvE_S9_EEbRSB_SE_.exit

.split.us6.14:                                    ; preds = %.split.us6.13
end_hunk_1
begin_hunk_2_@llvm.experimental.noalias.scope.decl
!52 = !{!51, !20, i64 8}
!53 = !{!"p1 omnipotent char", !20, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!55 = !{!54, !53, i64 0}
!56 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !54, i64 0, !27, i64 8, !13, i64 16}
!57 = !{!56, !27, i64 8}
!58 = !{!"vtable pointer", !12, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"_ZTSSt12__mutex_base", !13, i64 0}
!61 = !{!"_ZTSSt5mutex", !60, i64 0}
!62 = !{!"p1 _ZTSSt10unique_ptrIN4lean7lthreadESt14default_deleteIS1_EE", !20, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !63, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE", !65, i64 0}
!67 = !{!"_ZTSSt9__condvar", !13, i64 0}
!68 = !{!"_ZTSSt18condition_variable", !67, i64 0}
!69 = !{!"_ZTSN4lean12task_managerE", !61, i64 0, !66, i64 40, !14, i64 64, !14, i64 68, !14, i64 72, !13, i64 80, !14, i64 800, !14, i64 804, !68, i64 808, !68, i64 856, !68, i64 904, !23, i64 952}
!70 = !{!69, !14, i64 68}
!71 = !{!69, !14, i64 72}
!72 = !{!69, !14, i64 800}
!73 = !{!69, !14, i64 804}
!74 = !{!69, !23, i64 952}
!75 = !{!"p1 _ZTSSt5mutex", !20, i64 0}
!76 = !{!"_ZTSSt11unique_lockISt5mutexE", !75, i64 0, !23, i64 8}
!77 = !{!76, !75, i64 0}
!78 = !{!76, !23, i64 8}
!79 = !{!"p1 _ZTSN4lean7lthreadE", !20, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"any p3 pointer", !35, i64 0}
!82 = !{!"p3 _ZTS9lean_task", !81, i64 0}
!83 = !{!"p2 _ZTS9lean_task", !35, i64 0}
!84 = !{!"_ZTSSt15_Deque_iteratorIP9lean_taskRS1_PS1_E", !83, i64 0, !83, i64 8, !83, i64 16, !82, i64 24}
!85 = !{!"_ZTSNSt11_Deque_baseIP9lean_taskSaIS1_EE16_Deque_impl_dataE", !82, i64 0, !27, i64 8, !84, i64 16, !84, i64 48}
!86 = !{!85, !82, i64 0}
!87 = !{!85, !82, i64 40}
!88 = !{!85, !82, i64 72}
!89 = !{!83, !83, i64 0}
!90 = !{!85, !27, i64 8}
!91 = !{!63, !62, i64 0}
!92 = !{!63, !62, i64 8}
!93 = !{!63, !62, i64 16}
!94 = !{!"_ZTSSt13__atomic_baseIP11lean_objectE", !20, i64 0}
!95 = !{!"_ZTSSt6atomicIP11lean_objectE", !94, i64 0}
!96 = !{!"_ZTS9lean_task", !17, i64 0, !95, i64 8, !20, i64 16}
!97 = !{!96, !20, i64 16}
!98 = !{!"_ZTS13lean_task_imp", !20, i64 0, !48, i64 8, !48, i64 16, !14, i64 24, !13, i64 28, !13, i64 29, !13, i64 30}
!99 = !{!98, !20, i64 0}
!100 = !{!98, !14, i64 24}
!101 = !{!98, !13, i64 28}
!102 = !{!98, !13, i64 29}
!103 = !{!98, !13, i64 30}
!104 = !{!98, !48, i64 8}
!105 = !{!98, !48, i64 16}
!106 = !{!48, !48, i64 0}
!107 = !{!69, !14, i64 64}
!108 = !{!"p1 long", !20, i64 0}
!109 = !{!"_ZTS12__mpz_struct", !14, i64 0, !14, i64 4, !108, i64 8}
!110 = !{!109, !14, i64 4}
!111 = !{!56, !53, i64 0}
!112 = !{!"double", !13, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!"float", !13, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!"p1 int", !20, i64 0}
!117 = !{!14, !14, i64 0}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = !{ptr @_ZN4lean11io_eprintlnEP11lean_object}
!120 = !{!75, !75, i64 0}
!121 = !{!42, !20, i64 0}
!122 = !{!"p1 _ZTSSt6vectorIP19lean_external_classSaIS1_EE", !20, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIP19lean_external_classSaIS1_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!125 = !{!124, !35, i64 16}
!126 = !{!124, !35, i64 0}
!127 = !{!"p1 _ZTSNSt8__detail13__waiter_poolE", !20, i64 0}
!128 = !{!127, !127, i64 0}
!129 = !{!"_ZTSNSt8__detail13__waiter_baseINS_13__waiter_poolEEE", !127, i64 0, !116, i64 8}
!130 = !{!129, !116, i64 8}
!131 = !{!129, !127, i64 0}
!132 = !{i64 64}
!133 = !{!84, !82, i64 24}
!134 = !{!84, !83, i64 8}
!135 = !{!84, !83, i64 16}
!136 = !{!85, !83, i64 16}
!137 = !{!85, !83, i64 48}
!138 = !{!"_ZTSSt14_Function_base", !13, i64 0, !20, i64 16}
!139 = !{!"_ZTSSt8functionIFvvEE", !138, i64 0, !20, i64 24}
!140 = !{!139, !20, i64 24}
!141 = !{!138, !20, i64 16}
!142 = !{!"p1 _ZTSSt9type_info", !20, i64 0}
!143 = !{!142, !142, i64 0}
!144 = !{!84, !83, i64 0}
!145 = !{ptr @_ZN4leanL14panic_eprintlnEPKcmb}
!146 = !{ptr @_ZN4lean11io_eprintlnEP11lean_object, ptr @_ZN4leanL14panic_eprintlnEPKcmb}
!147 = distinct !{!147, !32}
!148 = distinct !{null}
!149 = distinct !{!149, !32}
!150 = distinct !{!150, !32}
!151 = distinct !{!151, !32}
!152 = distinct !{!152, !32}
!153 = distinct !{!153, !32}
!154 = distinct !{!154, !32}
!155 = distinct !{!155, !32}
!156 = distinct !{!156, !32}
!157 = distinct !{!157, !32}
!158 = distinct !{!158, !32}
!159 = distinct !{null}
!160 = distinct !{!160, !32}
!161 = !{!62, !62, i64 0}
!162 = distinct !{!162, !32}
!163 = !{ptr @lean_panic}
!164 = distinct !{!164, !32}
!165 = distinct !{!165, !32}
!166 = distinct !{null, null}
!167 = distinct !{null, null}
!168 = distinct !{!168, !32}
!169 = distinct !{!169, !"_ZN4lean3negENS_3mpzE"}
!170 = distinct !{!170, !169, !"_ZN4lean3negENS_3mpzE: argument 0"}
!171 = !{!170}
!172 = distinct !{!172, !"_ZN4leanmiEiNS_3mpzE"}
!173 = distinct !{!173, !172, !"_ZN4leanmiEiNS_3mpzE: argument 0"}
!174 = !{!173}
!175 = distinct !{!175, !"_ZN4leandvEiRKNS_3mpzE"}
!176 = distinct !{!176, !175, !"_ZN4leandvEiRKNS_3mpzE: argument 0"}
!177 = distinct !{!177, !"_ZN4leandvENS_3mpzEi"}
!178 = distinct !{!178, !177, !"_ZN4leandvENS_3mpzEi: argument 0"}
!179 = !{!176}
!180 = !{!178}
!181 = distinct !{!181, !"_ZN4lean3mpz4edivEiRKS0_"}
!182 = distinct !{!182, !181, !"_ZN4lean3mpz4edivEiRKS0_: argument 0"}
!183 = distinct !{!183, !"_ZN4lean3mpz4edivERKS0_i"}
!184 = distinct !{!184, !183, !"_ZN4lean3mpz4edivERKS0_i: argument 0"}
!185 = !{!182}
!186 = !{!184}
!187 = distinct !{!187, !"_ZN4lean3mpz4emodEiRKS0_"}
!188 = distinct !{!188, !187, !"_ZN4lean3mpz4emodEiRKS0_: argument 0"}
!189 = distinct !{!189, !"_ZN4lean3mpz4emodERKS0_i"}
!190 = distinct !{!190, !189, !"_ZN4lean3mpz4emodERKS0_i: argument 0"}
!191 = !{!188}
!192 = !{!190}
!193 = distinct !{!193, !32}
!194 = distinct !{!194, !32}
!195 = distinct !{null}
!196 = distinct !{!196, !32}
!197 = distinct !{!197, !"_ZN4lean13string_to_stdB5cxx11EP11lean_object"}
!198 = distinct !{!198, !197, !"_ZN4lean13string_to_stdB5cxx11EP11lean_object: argument 0"}
!199 = !{!198}
!200 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !116, i64 0, !116, i64 8, !116, i64 16}
!201 = !{!200, !116, i64 8}
!202 = !{!200, !116, i64 0}
!203 = !{!200, !116, i64 16}
!204 = distinct !{!204, !32}
!205 = distinct !{!205, !"_ZN4lean13string_to_stdB5cxx11EP11lean_object"}
!206 = distinct !{!206, !205, !"_ZN4lean13string_to_stdB5cxx11EP11lean_object: argument 0"}
!207 = !{!206}
!208 = !{!"_ZTSN4lean8optionalIjEE", !23, i64 0, !13, i64 4}
!209 = !{!208, !23, i64 0}
!210 = distinct !{!210, !"_ZNSt7__cxx119to_stringEm"}
!211 = distinct !{!211, !210, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!212 = distinct !{!212, !32}
!213 = distinct !{!213, !32}
!214 = !{!211}
!215 = distinct !{!215, !118}
!216 = distinct !{!216, !32}
!217 = distinct !{!217, !118}
!218 = distinct !{!218, !32}
!219 = distinct !{!219, !118}
!220 = distinct !{!220, !32}
!221 = distinct !{!221, !32}
!222 = distinct !{!222, !118}
!223 = distinct !{!223, !32}
!224 = distinct !{!224, !32}
!225 = distinct !{!225, !32}
!226 = !{!"branch_weights", i32 4000000, i32 4001}
!227 = distinct !{!227, !32}
!228 = !{!"_ZTS8timespec", !27, i64 0, !27, i64 8}
!229 = !{!228, !27, i64 0}
!230 = !{!228, !27, i64 8}
!231 = distinct !{!231, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!232 = distinct !{!232, !231, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!233 = !{!232}
!234 = distinct !{!234, !32}
!235 = !{!53, !53, i64 0}
!236 = !{!124, !35, i64 8}
!237 = !{!35, !35, i64 0}
!238 = distinct !{!238, !32}
!239 = distinct !{!239, !32}
!240 = distinct !{null}
!241 = distinct !{null}
!242 = distinct !{!242, !32}
!243 = distinct !{null, null}
!244 = distinct !{!244, !32}
!245 = distinct !{null}
!246 = !{!85, !83, i64 64}
!247 = distinct !{null, null}
!248 = distinct !{null, null}
!249 = distinct !{!249, !"_ZSt19__relocate_object_aISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!250 = distinct !{!250, !249, !"_ZSt19__relocate_object_aISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!251 = distinct !{!251, !249, !"_ZSt19__relocate_object_aISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!252 = distinct !{!252, !"LVerDomain"}
!253 = distinct !{!253, !252}
!254 = distinct !{!254, !252}
!255 = distinct !{!255, !32, !261, !262}
!256 = distinct !{!256, !32, !261}
!257 = !{!250}
!258 = !{!251}
!259 = !{!251, !253}
!260 = !{!250, !254}
!261 = !{!"llvm.loop.isvectorized", i32 1}
!262 = !{!"llvm.loop.unroll.runtime.disable"}
!263 = distinct !{null, null}
!264 = !{i64 0, i64 8, !47, i64 8, i64 8, !106}
!265 = !{!"_ZTSZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_", !46, i64 0, !48, i64 8}
!266 = !{!265, !46, i64 0}
!267 = !{!265, !48, i64 8}
!268 = distinct !{null, null}
!269 = distinct !{!269, !32}
!270 = distinct !{!270, !"_ZNSt5dequeIP9lean_taskSaIS1_EE5beginEv"}
!271 = distinct !{!271, !270, !"_ZNSt5dequeIP9lean_taskSaIS1_EE5beginEv: argument 0"}
!272 = distinct !{!272, !32}
!273 = !{!"_ZTSZN4lean12task_manager12spawn_workerEvEUlvE_", !46, i64 0}
!274 = !{!273, !46, i64 0}
!275 = !{!271}
!276 = !{!85, !83, i64 32}
!277 = !{!85, !83, i64 24}
!278 = distinct !{!278, !32}
end_hunk_2
