inline.NumInlined: 1907
inline.NumDeleted: 759
begin_hunk_0_@_ZN7testing8internal25UntypedFunctionMockerBaseC2Ev
define void @_ZN7testing8internal25UntypedFunctionMockerBaseC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0) unnamed_addr #15 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7testing8internal25UntypedFunctionMockerBaseE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !338
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.2, ptr %i.b, align 8, !tbaa !345
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal25UntypedFunctionMockerBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7testing8internal25UntypedFunctionMockerBaseE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt6vectorIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !296  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !297
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #30
  br label %_ZNSt6vectorIPKvSaIS1_EED2Ev.exit

_ZNSt6vectorIPKvSaIS1_EED2Ev.exit:                ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !346    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !347  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_15ExpectationBaseEEES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 3 uses
  invoke void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %.noexc.i.i.i.i unwind label %bb.g

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66   ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.d                   ; 2 uses
  br i1 %i.f, label %bb.c, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.noexc.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.g, %.preheader.i.i.i.i.i.i ], [ %i.e, %.noexc.i.i.i.i ] ; 2 uses
  %i.g = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %.preheader.i.i.i.i.i.i, !llvm.loop !86

bb.b:                                             ; preds = %.preheader.i.i.i.i.i.i
  store ptr %i.e, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc.i.i.i.i
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i.i.i: ; preds = %bb.c
  br i1 %i.f, label %bb.e, label %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEEEvPT_.exit.i.i

bb.e:                                             ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !302 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %i.j) #29, !inline_history !348
  br label %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEEEvPT_.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #33
  unreachable

_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEEEvPT_.exit.i.i: ; preds = %bb.f, %bb.e, %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_15ExpectationBaseEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !349

_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_15ExpectationBaseEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !346
  br label %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_15ExpectationBaseEEES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_15ExpectationBaseEEES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_15ExpectationBaseEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.r = phi ptr [ %.pr, %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_15ExpectationBaseEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.r, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_15ExpectationBaseEEES4_EvT_S6_RSaIT0_E.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !350
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #30
  br label %_ZNSt12_Vector_baseIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_15ExpectationBaseEEES4_EvT_S6_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN7testing8internal25UntypedFunctionMockerBaseD0Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(72) %0) unnamed_addr #13 align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) initializes((8, 16)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !338
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZN7testing8internal14GTestMutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #33
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %bb.a
  tail call void @_ZN7testing4Mock8RegisterEPKvPNS_8internal25UntypedFunctionMockerBaseE(ptr noundef %1, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing4Mock8RegisterEPKvPNS_8internal25UntypedFunctionMockerBaseE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !351
  tail call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.b = invoke fastcc noundef nonnull align 8 dereferenceable(136) ptr @_ZNSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.h       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !352 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.b ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !353  ; 2 uses
  %i.g = icmp ult ptr %1, %i.f                    ; 2 uses
  %.in.v.i.i.i = select i1 %i.g, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !352 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !355

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.g, label %._crit_edge.thread.i.i.i, label %bb.d

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.b
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.d, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !289
  %i.j = icmp eq ptr %.019.lcssa29.i.i.i, %i.i
  br i1 %i.j, label %select.unfold.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #32
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !353
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i
  %i.l = phi ptr [ %.pre.i.i, %bb.c ], [ %i.f, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.c ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.fr = freeze ptr %i.l
  %i.m = icmp ult ptr %.fr, %1
  br i1 %i.m, label %select.unfold.i.i, label %bb.f

select.unfold.i.i:                                ; preds = %bb.d, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.d
  br i1 %i.n, label %_ZNSt8_Rb_treeIPN7testing8internal25UntypedFunctionMockerBaseES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %select.unfold.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !353
  %i.q = icmp ult ptr %1, %i.p
  br label %_ZNSt8_Rb_treeIPN7testing8internal25UntypedFunctionMockerBaseES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPN7testing8internal25UntypedFunctionMockerBaseES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i: ; preds = %bb.e, %select.unfold.i.i
  %i.r = phi i1 [ %i.q, %bb.e ], [ true, %select.unfold.i.i ]
  %i.s = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %_ZNSt8_Rb_treeIPN7testing8internal25UntypedFunctionMockerBaseES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %1, ptr %i.t, align 8, !tbaa !353
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !291
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !291
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZN7testing8internal14GTestMutexLockD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #33
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIPN7testing8internal25UntypedFunctionMockerBaseES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i, %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZN7testing8internal14GTestMutexLockD2Ev.exit1 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #33
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit1:   ; preds = %bb.h
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal25UntypedFunctionMockerBase15SetOwnerAndNameEPKvPKc(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((8, 24)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !338
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !345
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZN7testing8internal14GTestMutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #33
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  tail call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !338
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 92, ptr %i.a, align 8, !tbaa !75
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %1, align 8, !tbaa !7
  %i.f = load i64, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(92) %i.e, ptr noundef nonnull align 1 dereferenceable(92) @.str.62, i64 92, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %_ZN7testing8internal6AssertEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.a:                                             ; preds = %.noexc
  %i.i = load atomic i8, ptr @_ZGVZN7testing8internal18GetFailureReporterEvE16failure_reporter acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.b, label %_ZN7testing8internal18GetFailureReporterEv.exit.i, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8internal18GetFailureReporterEvE16failure_reporter) #29
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZN7testing8internal18GetFailureReporterEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal25GoogleTestFailureReporterE, i64 16), ptr %i.l, align 8, !tbaa !28
  store ptr %i.l, ptr @_ZZN7testing8internal18GetFailureReporterEvE16failure_reporter, align 8, !tbaa !44
  %i.m = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN7testing8internal18GetFailureReporterEvE16failure_reporter) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8internal18GetFailureReporterEvE16failure_reporter) #29
  br label %_ZN7testing8internal18GetFailureReporterEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8internal18GetFailureReporterEvE16failure_reporter) #29
  br label %.body

_ZN7testing8internal18GetFailureReporterEv.exit.i: ; preds = %bb.d, %bb.b, %bb.a
  %i.o = load ptr, ptr @_ZZN7testing8internal18GetFailureReporterEvE16failure_reporter, align 8, !tbaa !44 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 1, ptr noundef nonnull @.str.61, i32 noundef 310, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN7testing8internal6AssertEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.h, !inline_history !356

_ZN7testing8internal6AssertEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc, %_ZN7testing8internal18GetFailureReporterEv.exit.i
  %i.s = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal6AssertEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.u = load i64, ptr %i.d, align 8, !tbaa !14
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal6AssertEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !338
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZN7testing8internal14GTestMutexLockD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #33
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret ptr %i.w

bb.g:                                             ; preds = %.noexc.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %_ZN7testing8internal18GetFailureReporterEv.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.n, %bb.e ] ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %.body
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.z, %bb.g ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZN7testing8internal14GTestMutexLockD2Ev.exit9 unwind label %bb.i

end_hunk_0
begin_hunk_1_@_ZNSt3mapIPKvN7testing8internal12CallReactionESt4lessIS1_ESaISt4pairIKS1_S4_EEEixERS8_:bb.a

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !351
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !351
  %i.u = icmp ult ptr %i.r, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #29
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !291
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !291
  br label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing8internal12CallReactionEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing8internal12CallReactionEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #30
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #30
  br label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing8internal12CallReactionEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing8internal12CallReactionEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.aa
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing4Mock9AllowLeakEPKv(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !351
  tail call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.b = invoke fastcc noundef nonnull align 8 dereferenceable(136) ptr @_ZNSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i8 1, ptr %i.c, align 8, !tbaa !447
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZN7testing8internal14GTestMutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #33
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZN7testing8internal14GTestMutexLockD2Ev.exit1 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #33
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit1:   ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(136) ptr @_ZNSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEEixERS8_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 15 uses
  %_ZN7testing12_GLOBAL__N_122g_mock_object_registryE.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 16), align 8, !tbaa !288 ; 5 uses
  %.not2.i.i.i = icmp eq ptr %_ZN7testing12_GLOBAL__N_122g_mock_object_registryE.val.i.i, null ; 4 uses
  br i1 %.not2.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %_ZN7testing12_GLOBAL__N_122g_mock_object_registryE.val.i.i, %bb.a ] ; 3 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8), %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !351
  %i.c = icmp ult ptr %i.b, %.val                 ; 2 uses
  %.19.i.i.i = select i1 %i.c, ptr %.083.i.i.i, ptr %.04.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.c, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !352 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !448

_ZNSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit: ; preds = %.lr.ph.i.i.i
  %i.d = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8)
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !441
  %i.g = icmp ult ptr %.val, %i.f
  br i1 %i.g, label %.critedge, label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit, %bb.b
  %i.h = phi i1 [ false, %bb.b ], [ true, %_ZNSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit ], [ true, %bb.a ]
  %.08.lcssa.i.i.i7 = phi ptr [ %.19.i.i.i, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8), %_ZNSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8), %bb.a ] ; 9 uses
  %i.i = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #31 ; 18 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %.val, ptr %i.j, align 8, !tbaa !441
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %i.k, align 8, !tbaa !439
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i32 -1, ptr %i.l, align 8, !tbaa !440
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 0, ptr %i.o, align 8, !tbaa !13
  store i8 0, ptr %i.n, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i64 0, ptr %i.r, align 8, !tbaa !13
  store i8 0, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store i8 0, ptr %i.s, align 8, !tbaa !447
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 3 uses
  store i32 0, ptr %i.t, align 8, !tbaa !287
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store ptr null, ptr %i.u, align 8, !tbaa !288
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  store ptr %i.t, ptr %i.v, align 8, !tbaa !289
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  store ptr %i.t, ptr %i.w, align 8, !tbaa !290
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  store i64 0, ptr %i.x, align 8, !tbaa !291
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.critedge
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 40), align 8, !tbaa !291
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 32), align 8, !tbaa !352 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !351
  %i.ac = icmp ult ptr %i.ab, %.val
  br i1 %i.ac, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not2.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %bb.e, %.lr.ph.i.i.i10
  %.01115.i.i.i = phi ptr [ %.011.i.i.i, %.lr.ph.i.i.i10 ], [ %_ZN7testing12_GLOBAL__N_122g_mock_object_registryE.val.i.i, %bb.e ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01115.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !351 ; 2 uses
  %i.af = icmp ult ptr %.val, %i.ae               ; 2 uses
  %.in.v.i.i.i = select i1 %i.af, i64 16, i64 24
  %.in.i.i.i = getelementptr i8, ptr %.01115.i.i.i, i64 %.in.v.i.i.i
  %.011.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !352 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %.011.i.i.i, null
  br i1 %.not.i.i.i11, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i10, !llvm.loop !449

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i10
  br i1 %i.af, label %._crit_edge.thread.i.i.i, label %bb.g

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.e
  %.010.lcssa20.i.i.i = phi ptr [ %.01115.i.i.i, %._crit_edge.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8), %bb.e ] ; 4 uses
  %_ZN7testing12_GLOBAL__N_122g_mock_object_registryE.val8.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 24), align 8, !tbaa !289
  %i.ag = icmp eq ptr %.010.lcssa20.i.i.i, %_ZN7testing12_GLOBAL__N_122g_mock_object_registryE.val8.i.i.i
  br i1 %i.ag, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i.i.i) #32 ; 2 uses
  %.phi.trans.insert31.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.pre32.i.i = load ptr, ptr %.phi.trans.insert31.i.i, align 8, !tbaa !351
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %i.ai = phi ptr [ %.pre32.i.i, %bb.f ], [ %i.ae, %._crit_edge.i.i.i ]
  %.010.lcssa19.i.i.i = phi ptr [ %.010.lcssa20.i.i.i, %bb.f ], [ %.01115.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.01.0.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %.01115.i.i.i, %._crit_edge.i.i.i ]
  %i.aj = icmp ult ptr %i.ai, %.val
  %cond.fr5.i = freeze i1 %i.aj
  br i1 %cond.fr5.i, label %.thread.i, label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i

bb.h:                                             ; preds = %.critedge
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i7, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !351 ; 2 uses
  %i.am = icmp ult ptr %.val, %i.al
  br i1 %i.am, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 24), align 8, !tbaa !352 ; 4 uses
  %i.ao = icmp eq ptr %i.an, %.08.lcssa.i.i.i7
  br i1 %i.ao, label %select.unfold2.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i7) #32 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !351
  %i.as = icmp ult ptr %i.ar, %.val
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr i8, ptr %i.ap, i64 24
  %.val10.i.i = load ptr, ptr %i.at, align 8, !tbaa !450
  %.val10.i.fr.i = freeze ptr %.val10.i.i
  %i.au = icmp eq ptr %.val10.i.fr.i, null
  br i1 %i.au, label %.thread.i, label %.thread.i.thread

bb.l:                                             ; preds = %bb.j
  br i1 %.not2.i.i.i, label %._crit_edge.thread.i32.i.i, label %.lr.ph.i17.i.i

.lr.ph.i17.i.i:                                   ; preds = %bb.l, %.lr.ph.i17.i.i
  %.01115.i18.i.i = phi ptr [ %.011.i21.i.i, %.lr.ph.i17.i.i ], [ %_ZN7testing12_GLOBAL__N_122g_mock_object_registryE.val.i.i, %bb.l ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01115.i18.i.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !351 ; 2 uses
  %i.ax = icmp ult ptr %.val, %i.aw               ; 2 uses
  %.in.v.i19.i.i = select i1 %i.ax, i64 16, i64 24
  %.in.i20.i.i = getelementptr i8, ptr %.01115.i18.i.i, i64 %.in.v.i19.i.i
  %.011.i21.i.i = load ptr, ptr %.in.i20.i.i, align 8, !tbaa !352 ; 2 uses
  %.not.i22.i.i = icmp eq ptr %.011.i21.i.i, null
  br i1 %.not.i22.i.i, label %._crit_edge.i23.i.i, label %.lr.ph.i17.i.i, !llvm.loop !449

._crit_edge.i23.i.i:                              ; preds = %.lr.ph.i17.i.i
  br i1 %i.ax, label %._crit_edge.thread.i32.i.i, label %bb.n

._crit_edge.thread.i32.i.i:                       ; preds = %._crit_edge.i23.i.i, %bb.l
  %.010.lcssa20.i33.i.i = phi ptr [ %.01115.i18.i.i, %._crit_edge.i23.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8), %bb.l ] ; 4 uses
  %i.ay = icmp eq ptr %.010.lcssa20.i33.i.i, %i.an
  br i1 %i.ay, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i32.i.i
  %i.az = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i33.i.i) #32 ; 2 uses
  %.phi.trans.insert29.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.pre30.i.i = load ptr, ptr %.phi.trans.insert29.i.i, align 8, !tbaa !351
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i23.i.i
  %i.ba = phi ptr [ %.pre30.i.i, %bb.m ], [ %i.aw, %._crit_edge.i23.i.i ]
  %.010.lcssa19.i24.i.i = phi ptr [ %.010.lcssa20.i33.i.i, %bb.m ], [ %.01115.i18.i.i, %._crit_edge.i23.i.i ]
  %.sroa.01.0.i25.i.i = phi ptr [ %i.az, %bb.m ], [ %.01115.i18.i.i, %._crit_edge.i23.i.i ]
  %i.bb = icmp ult ptr %i.ba, %.val
  %cond.fr7.i = freeze i1 %i.bb
  br i1 %cond.fr7.i, label %.thread.i, label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i

bb.o:                                             ; preds = %bb.h
  %i.bc = icmp ult ptr %i.al, %.val
  br i1 %i.bc, label %bb.p, label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 32), align 8, !tbaa !352 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %.08.lcssa.i.i.i7
  br i1 %i.be, label %select.unfold2.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i7) #32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !351
  %i.bi = icmp ult ptr %.val, %i.bh
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr i8, ptr %.08.lcssa.i.i.i7, i64 24
  %.val.i11.i = load ptr, ptr %i.bj, align 8, !tbaa !450
  %.val.i11.fr.i = freeze ptr %.val.i11.i
  %i.bk = icmp eq ptr %.val.i11.fr.i, null
  br i1 %i.bk, label %.thread.i, label %.thread.i.thread

bb.s:                                             ; preds = %bb.q
  br i1 %.not2.i.i.i, label %._crit_edge.thread.i53.i.i, label %.lr.ph.i38.i.i

.lr.ph.i38.i.i:                                   ; preds = %bb.s, %.lr.ph.i38.i.i
  %.01115.i39.i.i = phi ptr [ %.011.i42.i.i, %.lr.ph.i38.i.i ], [ %_ZN7testing12_GLOBAL__N_122g_mock_object_registryE.val.i.i, %bb.s ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01115.i39.i.i, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !351 ; 2 uses
  %i.bn = icmp ult ptr %.val, %i.bm               ; 2 uses
  %.in.v.i40.i.i = select i1 %i.bn, i64 16, i64 24
  %.in.i41.i.i = getelementptr i8, ptr %.01115.i39.i.i, i64 %.in.v.i40.i.i
  %.011.i42.i.i = load ptr, ptr %.in.i41.i.i, align 8, !tbaa !352 ; 2 uses
  %.not.i43.i.i = icmp eq ptr %.011.i42.i.i, null
  br i1 %.not.i43.i.i, label %._crit_edge.i44.i.i, label %.lr.ph.i38.i.i, !llvm.loop !449

._crit_edge.i44.i.i:                              ; preds = %.lr.ph.i38.i.i
  br i1 %i.bn, label %._crit_edge.thread.i53.i.i, label %bb.u

._crit_edge.thread.i53.i.i:                       ; preds = %._crit_edge.i44.i.i, %bb.s
  %.010.lcssa20.i54.i.i = phi ptr [ %.01115.i39.i.i, %._crit_edge.i44.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8), %bb.s ] ; 4 uses
  %_ZN7testing12_GLOBAL__N_122g_mock_object_registryE.val8.i55.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 24), align 8, !tbaa !289
  %i.bo = icmp eq ptr %.010.lcssa20.i54.i.i, %_ZN7testing12_GLOBAL__N_122g_mock_object_registryE.val8.i55.i.i
  br i1 %i.bo, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i53.i.i
  %i.bp = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i54.i.i) #32 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !351
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i44.i.i
  %i.bq = phi ptr [ %.pre.i.i, %bb.t ], [ %i.bm, %._crit_edge.i44.i.i ]
  %.010.lcssa19.i45.i.i = phi ptr [ %.010.lcssa20.i54.i.i, %bb.t ], [ %.01115.i39.i.i, %._crit_edge.i44.i.i ]
  %.sroa.01.0.i46.i.i = phi ptr [ %i.bp, %bb.t ], [ %.01115.i39.i.i, %._crit_edge.i44.i.i ]
  %i.br = icmp ult ptr %i.bq, %.val
  %cond.fr9.i = freeze i1 %i.br
  br i1 %cond.fr9.i, label %.thread.i, label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i

select.unfold2.i:                                 ; preds = %bb.p, %bb.i
  %.sroa.021.2.i.i = phi ptr [ null, %bb.p ], [ %i.an, %bb.i ] ; 2 uses
  %.sroa.12.2.i.i = phi ptr [ %i.bd, %bb.p ], [ %i.an, %bb.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.12.2.i.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i, label %.thread.i

.thread.i:                                        ; preds = %bb.r, %select.unfold2.i, %bb.u, %._crit_edge.thread.i53.i.i, %bb.n, %._crit_edge.thread.i32.i.i, %bb.k, %bb.g, %._crit_edge.thread.i.i.i, %bb.d
  %.sroa.12.2.i16.i = phi ptr [ %.sroa.12.2.i.i, %select.unfold2.i ], [ %.010.lcssa19.i24.i.i, %bb.n ], [ %.010.lcssa19.i.i.i, %bb.g ], [ %i.ap, %bb.k ], [ %i.z, %bb.d ], [ %.010.lcssa20.i54.i.i, %._crit_edge.thread.i53.i.i ], [ %.010.lcssa20.i33.i.i, %._crit_edge.thread.i32.i.i ], [ %.010.lcssa20.i.i.i, %._crit_edge.thread.i.i.i ], [ %.010.lcssa19.i45.i.i, %bb.u ], [ %.08.lcssa.i.i.i7, %bb.r ] ; 4 uses
  %.sroa.021.2.i15.i = phi ptr [ %.sroa.021.2.i.i, %select.unfold2.i ], [ null, %bb.n ], [ null, %bb.g ], [ null, %bb.k ], [ null, %bb.d ], [ null, %._crit_edge.thread.i53.i.i ], [ null, %._crit_edge.thread.i32.i.i ], [ null, %._crit_edge.thread.i.i.i ], [ null, %bb.u ], [ null, %bb.r ]
  %.not.i.i12.i = icmp ne ptr %.sroa.021.2.i15.i, null
  %i.bs = icmp eq ptr %.sroa.12.2.i16.i, getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8)
  %or.cond.i.i.i = select i1 %.not.i.i12.i, i1 true, i1 %i.bs
  br i1 %or.cond.i.i.i, label %.thread.i.thread, label %bb.v

bb.v:                                             ; preds = %.thread.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i16.i, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !351
  %i.bv = icmp ult ptr %.val, %i.bu
  br label %.thread.i.thread

.thread.i.thread:                                 ; preds = %bb.k, %bb.r, %bb.v, %.thread.i
  %.sroa.12.2.i16.i16 = phi ptr [ %.sroa.12.2.i16.i, %bb.v ], [ %.sroa.12.2.i16.i, %.thread.i ], [ %i.bf, %bb.r ], [ %.08.lcssa.i.i.i7, %bb.k ]
  %i.bw = phi i1 [ %i.bv, %bb.v ], [ true, %.thread.i ], [ true, %bb.r ], [ true, %bb.k ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bw, ptr noundef nonnull %i.i, ptr noundef nonnull %.sroa.12.2.i16.i16, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8)) #29
  %i.bx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 40), align 8, !tbaa !291
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 40), align 8, !tbaa !291
  br label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i: ; preds = %bb.g, %bb.n, %bb.o, %bb.u, %select.unfold2.i
  %.sroa.01.0.ph.i = phi ptr [ %.sroa.021.2.i.i, %select.unfold2.i ], [ %.08.lcssa.i.i.i7, %bb.o ], [ %.sroa.01.0.i46.i.i, %bb.u ], [ %.sroa.01.0.i25.i.i, %bb.n ], [ %.sroa.01.0.i.i.i, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 176) #30
  br label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit: ; preds = %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i, %.thread.i.thread, %bb.b
  %.sroa.05.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.i, %.thread.i.thread ], [ %.sroa.01.0.ph.i, %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 40
  ret ptr %i.bz
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Mock26VerifyAndClearExpectationsEPv(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  tail call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !351
  invoke void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 16), align 8, !tbaa !288 ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not2.i.i.i.i, label %.loopexit6, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %.noexc ] ; 3 uses
  %.083.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8), %.noexc ]
  %i.c = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !351
  %i.e = icmp ult ptr %i.d, %0                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.e, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.e, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !352 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !451

_ZNKSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8)
  br i1 %i.f, label %.loopexit6, label %_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit.i

_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !351
  %.not.i = icmp ult ptr %0, %i.h
  br i1 %.not.i, label %.loopexit6, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit.i
  %i.i = invoke fastcc noundef nonnull align 8 dereferenceable(136) ptr @_ZNSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc2 unwind label %.loopexit.split-lp ; 2 uses

.noexc2:                                          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !289  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %.not89.i = icmp eq ptr %i.k, %i.l
  br i1 %.not89.i, label %.loopexit6, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc2, %.noexc3
  %.0311.i = phi i1 [ %spec.select.i, %.noexc3 ], [ true, %.noexc2 ]
  %.sroa.04.010.i = phi ptr [ %i.p, %.noexc3 ], [ %i.k, %.noexc2 ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.010.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !353
  %i.o = invoke noundef zeroext i1 @_ZN7testing8internal25UntypedFunctionMockerBase32VerifyAndClearExpectationsLockedEv(ptr noundef nonnull align 8 dereferenceable(72) %i.n)
          to label %.noexc3 unwind label %.loopexit

.noexc3:                                          ; preds = %.lr.ph.i
  %spec.select.i = select i1 %i.o, i1 %.0311.i, i1 false ; 2 uses
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.04.010.i) #32 ; 2 uses
  %.not8.i = icmp eq ptr %i.p, %i.l
  br i1 %.not8.i, label %.loopexit6, label %.lr.ph.i, !llvm.loop !452

.loopexit6:                                       ; preds = %.noexc3, %.noexc2, %_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit.i, %_ZNKSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %.noexc
  %.0.i = phi i1 [ true, %_ZNKSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i ], [ true, %_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit.i ], [ true, %.noexc ], [ true, %.noexc2 ], [ %spec.select.i, %.noexc3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZN7testing8internal14GTestMutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.loopexit6
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #33
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %.loopexit6
  ret i1 %.0.i

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.a, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZN7testing8internal14GTestMutexLockD2Ev.exit4 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #33
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit4:   ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Mock32VerifyAndClearExpectationsLockedEPv(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !351
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 16), align 8, !tbaa !288 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not2.i.i.i, label %_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8), %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !351
  %i.e = icmp ult ptr %i.d, %0                    ; 2 uses
  %.19.i.i.i = select i1 %i.e, ptr %.083.i.i.i, ptr %.04.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.e, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !352 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !451

_ZNKSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8)
  br i1 %i.f, label %_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit.thread, label %_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit

_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit: ; preds = %_ZNKSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !351
  %.not = icmp ult ptr %0, %i.h
  br i1 %.not, label %_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit
  %i.i = call fastcc noundef nonnull align 8 dereferenceable(136) ptr @_ZNSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !289  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %.not89 = icmp eq ptr %i.k, %i.l
  br i1 %.not89, label %_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0311 = phi i1 [ %spec.select, %.lr.ph ], [ true, %bb.b ]
  %.sroa.04.010 = phi ptr [ %i.p, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.010, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !353
  %i.o = tail call noundef zeroext i1 @_ZN7testing8internal25UntypedFunctionMockerBase32VerifyAndClearExpectationsLockedEv(ptr noundef nonnull align 8 dereferenceable(72) %i.n)
  %spec.select = select i1 %i.o, i1 %.0311, i1 false ; 2 uses
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.04.010) #32 ; 2 uses
  %.not8 = icmp eq ptr %i.p, %i.l
  br i1 %.not8, label %_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit.thread, label %.lr.ph, !llvm.loop !452

_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit.thread: ; preds = %.lr.ph, %bb.b, %_ZNKSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.a, %_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit
  %.0 = phi i1 [ true, %_ZNKSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i ], [ true, %_ZNKSt3mapIPKvN7testing12_GLOBAL__N_115MockObjectStateESt4lessIS1_ESaISt4pairIKS1_S4_EEE5countERS8_.exit ], [ true, %bb.a ], [ true, %bb.b ], [ %spec.select, %.lr.ph ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Mock14VerifyAndClearEPv(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  tail call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !tbaa !351
  invoke void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 16), align 8, !tbaa !288 ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not2.i.i.i.i, label %.loopexit27, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %.noexc ] ; 3 uses
  %.083.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8), %.noexc ]
end_hunk_1
begin_hunk_2_@_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev:bb.a
  br i1 %.not.i, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  br i1 %i.b, label %bb.c, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit

bb.c:                                             ; preds = %.noexc
  %i.c = load ptr, ptr %0, align 8, !tbaa !204    ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.c) #29, !inline_history !477
  br label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit

_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit: ; preds = %.noexc, %bb.c, %bb.d, %bb.a
  ret void

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !450
  tail call void @_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !478  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  tail call void @_ZN7testing11ExpectationD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.e) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !479

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing8internal10linked_ptrIKNS_20CardinalityInterfaceEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %_ZN7testing8internal10linked_ptrIKNS_20CardinalityInterfaceEE4copyIS3_EEvPKNS1_IT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  tail call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = icmp eq ptr %i.b, %i.a                   ; 2 uses
  br i1 %i.c, label %bb.d, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.d, %.preheader.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %.0.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.a
  br i1 %.not.i.i, label %bb.c, label %.preheader.i.i, !llvm.loop !86

bb.c:                                             ; preds = %.preheader.i.i
  store ptr %i.b, ptr %.0.i.i, align 8, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #33
  unreachable

_ZN7testing8internal19linked_ptr_internal6departEv.exit.i: ; preds = %bb.d
  br i1 %i.c, label %bb.f, label %_ZN7testing8internal10linked_ptrIKNS_20CardinalityInterfaceEE6departEv.exit

bb.f:                                             ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN7testing8internal10linked_ptrIKNS_20CardinalityInterfaceEE6departEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #29, !inline_history !480
  br label %_ZN7testing8internal10linked_ptrIKNS_20CardinalityInterfaceEE6departEv.exit

_ZN7testing8internal10linked_ptrIKNS_20CardinalityInterfaceEE6departEv.exit: ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i, %bb.f, %bb.g
  %i.l = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN7testing8internal10linked_ptrIKNS_20CardinalityInterfaceEE6departEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0.i.i4 = phi ptr [ %i.m, %bb.h ], [ %i.n, %bb.i ] ; 2 uses
  %i.n = load ptr, ptr %.0.i.i4, align 8, !tbaa !66 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i5, label %bb.j, label %bb.i, !llvm.loop !456

bb.j:                                             ; preds = %bb.i
  store ptr %i.a, ptr %.0.i.i4, align 8, !tbaa !66
  store ptr %i.m, ptr %i.a, align 8, !tbaa !66
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing8internal10linked_ptrIKNS_20CardinalityInterfaceEE4copyIS3_EEvPKNS1_IT_EE.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #33
  unreachable

bb.l:                                             ; preds = %_ZN7testing8internal10linked_ptrIKNS_20CardinalityInterfaceEE6departEv.exit
  store ptr %i.a, ptr %i.a, align 8, !tbaa !66
  br label %_ZN7testing8internal10linked_ptrIKNS_20CardinalityInterfaceEE4copyIS3_EEvPKNS1_IT_EE.exit

_ZN7testing8internal10linked_ptrIKNS_20CardinalityInterfaceEE4copyIS3_EEvPKNS1_IT_EE.exit: ; preds = %bb.l, %bb.j, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #23

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.a, align 8, !tbaa !352 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !302  ; 2 uses
  %i.f = icmp ult ptr %i.c, %i.e                  ; 2 uses
  %.in.v.i = select i1 %i.f, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !352 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !481

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %i.f, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !289
  %i.i = icmp eq ptr %.019.lcssa29.i, %i.h
  br i1 %i.i, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #32 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !302
  %.pre18 = load ptr, ptr %1, align 8, !tbaa !302
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.k = phi ptr [ %.pre18, %bb.c ], [ %i.c, %._crit_edge.i ]
  %i.l = phi ptr [ %.pre, %bb.c ], [ %i.e, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.j, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %i.m = icmp ult ptr %i.l, %i.k
  %cond.fr = freeze i1 %i.m
  br i1 %cond.fr, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.n, label %_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.p = load ptr, ptr %1, align 8, !tbaa !302
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !302
  %i.r = icmp ult ptr %i.p, %i.q
  br label %_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit

_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit: ; preds = %select.unfold, %bb.e
  %i.s = phi i1 [ %i.r, %bb.e ], [ true, %select.unfold ]
  %i.t = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #31 ; 3 uses
  tail call void @_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %1)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !291
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !291
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit
  %.sroa.010.0 = phi ptr [ %i.t, %_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %2, align 8, !tbaa !302    ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !302
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  invoke void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b, %.noexc
  %.0.i.i.i.i = phi ptr [ %i.d, %.noexc ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %.noexc, !llvm.loop !456

bb.c:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.e, ptr %.0.i.i.i.i, align 8, !tbaa !66
  store ptr %i.c, ptr %i.e, align 8, !tbaa !66
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN7testing11ExpectationEEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #33
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.h, align 8, !tbaa !66
  br label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN7testing11ExpectationEEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_.exit

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.j) #29 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 48) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN7testing11ExpectationEEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_.exit: ; preds = %bb.e, %bb.c
  ret void

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.l

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #33
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit
  %.02 = phi ptr [ %.0.val, %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit ], [ %0, %bb.a ] ; 9 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val6 = load ptr, ptr %i.a, align 8, !tbaa !450
  tail call fastcc void @_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef %.0.val6)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val = load ptr, ptr %i.b, align 8, !tbaa !478 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %.02, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !288
  invoke void @_ZNSt8_Rb_treeIPN7testing8internal25UntypedFunctionMockerBaseES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
          to label %_ZNSt3setIPN7testing8internal25UntypedFunctionMockerBaseESt4lessIS3_ESaIS3_EED2Ev.exit.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #33
  unreachable

_ZNSt3setIPN7testing8internal25UntypedFunctionMockerBaseESt4lessIS3_ESaIS3_EED2Ev.exit.i.i.i.i: ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.02, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02, i64 104 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt3setIPN7testing8internal25UntypedFunctionMockerBaseESt4lessIS3_ESaIS3_EED2Ev.exit.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !14
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNSt3setIPN7testing8internal25UntypedFunctionMockerBaseESt4lessIS3_ESaIS3_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.02, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !7    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02, i64 72 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !14
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #30
  br label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit

_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 176) #30
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !482

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing12_GLOBAL__N_115MockObjectStateEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN7testing8internal25UntypedFunctionMockerBaseES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !450
end_hunk_2
