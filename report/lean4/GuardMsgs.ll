Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/GuardMsgs?download=true
inline.NumInlined: 3768
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___boxed:bb.a
  br i1 %i.f, label %bb.d, label %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg.exit

bb.d:                                             ; preds = %lean_obj_once.exit.i
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg.exit: ; preds = %lean_obj_once.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !14
  store i32 16842768, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.0.i.i, ptr %i.h, align 8, !tbaa !10
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0_once seq_cst, align 4, !tbaa !20
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit.i

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0, ptr noundef nonnull @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0_once, ptr noundef nonnull @_init_l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0) #7
  br label %lean_obj_once.exit.i

lean_obj_once.exit.i:                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @lean_inc_heartbeat() #7
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg.exit

bb.d:                                             ; preds = %lean_obj_once.exit.i
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg.exit: ; preds = %lean_obj_once.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !14
  store i32 16842768, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.0.i.i, ptr %i.h, align 8, !tbaa !10
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0_once seq_cst, align 4, !tbaa !20
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0, ptr noundef nonnull @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0_once, ptr noundef nonnull @_init_l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0) #7
  br label %lean_obj_once.exit.i.i

lean_obj_once.exit.i.i:                           ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @lean_inc_heartbeat() #7
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0.exit

bb.d:                                             ; preds = %lean_obj_once.exit.i.i
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0.exit: ; preds = %lean_obj_once.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !14
  store i32 16842768, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.0.i.i.i, ptr %i.h, align 8, !tbaa !10
  %i.i = ptrtoint ptr %2 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.e, label %lean_dec.exit

bb.e:                                             ; preds = %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0.exit
  %i.k = load i32, ptr %2, align 4, !tbaa !14     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %2, align 4, !tbaa !14
  br label %lean_dec.exit

bb.g:                                             ; preds = %bb.e
  %.not.i6 = icmp eq i32 %i.k, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.h, %bb.g, %bb.f, %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0.exit
  %i.n = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %lean_dec.exit
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit8

bb.j:                                             ; preds = %lean_dec.exit
  %.not.i7 = icmp eq i32 %i.n, 0
  br i1 %.not.i7, label %lean_dec_ref.exit8, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit8

lean_dec_ref.exit8:                               ; preds = %bb.i, %bb.j, %bb.k
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i107 = icmp eq i64 %i.b, 0                ; 2 uses
  br i1 %.not.i107, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.d = icmp eq i32 %.mask, 16777216
  br i1 %i.d, label %bb.b, label %bb.bf

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.e = and i64 %i.a, 8589934590
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 15 uses
  %.val = load i32, ptr %0, align 8, !tbaa !14
  %i.i = icmp eq i32 %.val, 1                     ; 4 uses
  %.pre = ptrtoint ptr %i.h to i64
  %.pre123 = and i64 %.pre, 1                     ; 2 uses
  br i1 %i.i, label %lean_dec.exit95, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i83 = icmp eq i64 %.pre123, 0
  br i1 %.not.i83, label %bb.d, label %lean_inc.exit84

bb.d:                                             ; preds = %bb.c
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !14 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i32 %.val.i.i, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !14
  br label %lean_inc.exit84

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit84, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = atomicrmw add ptr %i.h, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit84

lean_inc.exit84:                                  ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  br i1 %.not.i107, label %bb.h, label %lean_dec.exit95

bb.h:                                             ; preds = %lean_inc.exit84
  %i.m = load i32, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %0, align 8, !tbaa !14
  br label %lean_dec.exit95

bb.j:                                             ; preds = %bb.h
  %.not.i96 = icmp eq i32 %i.m, 0
  br i1 %.not.i96, label %lean_dec.exit95, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit95

lean_dec.exit95:                                  ; preds = %bb.b, %lean_inc.exit84, %bb.i, %bb.j, %bb.k
  %.074 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit84 ], [ inttoptr (i64 1 to ptr), %bb.i ], [ inttoptr (i64 1 to ptr), %bb.j ], [ %0, %bb.b ] ; 12 uses
  %.not.i81 = icmp eq i64 %.pre123, 0             ; 3 uses
  br i1 %.not.i81, label %bb.l, label %lean_inc.exit82

bb.l:                                             ; preds = %lean_dec.exit95
  %.val.i.i108 = load i32, ptr %i.h, align 4, !tbaa !14 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i108, 0
  br i1 %i.p, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.q = add nuw i32 %.val.i.i108, 1
  store i32 %i.q, ptr %i.h, align 4, !tbaa !14
  br label %lean_inc.exit82

bb.n:                                             ; preds = %bb.l
  %.not.i.i109 = icmp eq i32 %.val.i.i108, 0
  br i1 %.not.i.i109, label %lean_inc.exit82, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = atomicrmw add ptr %i.h, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit82

lean_inc.exit82:                                  ; preds = %bb.o, %bb.n, %bb.m, %lean_dec.exit95
  %i.s = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %i.h, ptr noundef nonnull @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction___closed__2_value) #7
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.p, label %bb.y

bb.p:                                             ; preds = %lean_inc.exit82
  %i.u = ptrtoint ptr %.074 to i64
  %i.v = and i64 %i.u, 1
  %.not.i111 = icmp eq i64 %i.v, 0
  br i1 %.not.i111, label %bb.q, label %lean_del_object.exit

bb.q:                                             ; preds = %bb.p
  tail call void @lean_free_object(ptr noundef nonnull %.074) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.p, %bb.q
  br i1 %.not.i81, label %bb.r, label %lean_dec.exit93

bb.r:                                             ; preds = %lean_del_object.exit
  %i.w = load i32, ptr %i.h, align 4, !tbaa !14   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.s, label %bb.t, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.h, align 4, !tbaa !14
  br label %lean_dec.exit93

bb.t:                                             ; preds = %bb.r
  %.not.i97 = icmp eq i32 %i.w, 0
  br i1 %.not.i97, label %lean_dec.exit93, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #7
  br label %lean_dec.exit93

lean_dec.exit93:                                  ; preds = %bb.u, %bb.t, %bb.s, %lean_del_object.exit
  %i.z = load atomic i32, ptr @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0_once seq_cst, align 4, !tbaa !20
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %lean_dec.exit93
  %i.ab = load ptr, ptr @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit.i

bb.w:                                             ; preds = %lean_dec.exit93
  %i.ac = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0, ptr noundef nonnull @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0_once, ptr noundef nonnull @_init_l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg___closed__0) #7
  br label %lean_obj_once.exit.i

lean_obj_once.exit.i:                             ; preds = %bb.w, %bb.v
  %.0.i.i = phi ptr [ %i.ab, %bb.v ], [ %i.ac, %bb.w ]
  tail call void @lean_inc_heartbeat() #7
  %i.ad = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.x, label %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg.exit

bb.x:                                             ; preds = %lean_obj_once.exit.i
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg.exit: ; preds = %lean_obj_once.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 1, ptr %i.ad, align 4, !tbaa !14
  store i32 16842768, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.0.i.i, ptr %i.ag, align 8, !tbaa !10
  br label %bb.bk

bb.y:                                             ; preds = %lean_inc.exit82
  %i.ah = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.h, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7 ; 17 uses
  br i1 %.not.i81, label %bb.z, label %lean_dec.exit91

bb.z:                                             ; preds = %bb.y
  %i.ai = load i32, ptr %i.h, align 4, !tbaa !14  ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.aa, label %bb.ab, !prof !16

bb.aa:                                            ; preds = %bb.z
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %i.h, align 4, !tbaa !14
  br label %lean_dec.exit91

bb.ab:                                            ; preds = %bb.z
  %.not.i99 = icmp eq i32 %i.ai, 0
  br i1 %.not.i99, label %lean_dec.exit91, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #7
  br label %lean_dec.exit91

lean_dec.exit91:                                  ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = and i64 %i.al, 1
  %.not.i79 = icmp eq i64 %i.am, 0
  br i1 %.not.i79, label %bb.ad, label %lean_inc.exit80.thread

bb.ad:                                            ; preds = %lean_dec.exit91
  %.val.i.i112 = load i32, ptr %i.ah, align 4, !tbaa !14 ; 3 uses
  %i.an = icmp sgt i32 %.val.i.i112, 0
  br i1 %i.an, label %bb.ae, label %bb.af, !prof !16

bb.ae:                                            ; preds = %bb.ad
  %i.ao = add nuw i32 %.val.i.i112, 1
  store i32 %i.ao, ptr %i.ah, align 4, !tbaa !14
  br label %lean_inc.exit80

bb.af:                                            ; preds = %bb.ad
  %.not.i.i113 = icmp eq i32 %.val.i.i112, 0
  br i1 %.not.i.i113, label %lean_inc.exit80, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ap = atomicrmw add ptr %i.ah, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit80

lean_inc.exit80:                                  ; preds = %bb.ag, %bb.af, %bb.ae
  %i.aq = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef nonnull %i.ah, ptr noundef nonnull @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction___closed__5_value) #7
  %i.ar = icmp eq i8 %i.aq, 0
  %.val.i.i115 = load i32, ptr %i.ah, align 4, !tbaa !14 ; 6 uses
  br i1 %i.ar, label %bb.ah, label %bb.ay

lean_inc.exit80.thread:                           ; preds = %lean_dec.exit91
  %i.as = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %i.ah, ptr noundef nonnull @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction___closed__5_value) #7
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %lean_inc.exit.thread, label %lean_dec.exit87

bb.ah:                                            ; preds = %lean_inc.exit80
  %i.au = icmp sgt i32 %.val.i.i115, 0
  br i1 %i.au, label %bb.ai, label %bb.aj, !prof !16

bb.ai:                                            ; preds = %bb.ah
  %i.av = add nuw i32 %.val.i.i115, 1
  store i32 %i.av, ptr %i.ah, align 4, !tbaa !14
  br label %lean_inc.exit

bb.aj:                                            ; preds = %bb.ah
  %.not.i.i116 = icmp eq i32 %.val.i.i115, 0
  br i1 %.not.i.i116, label %lean_inc.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.aw = atomicrmw add ptr %i.ah, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.ax = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef nonnull %i.ah, ptr noundef nonnull @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction___closed__7_value) #7
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.al, label %bb.ar

lean_inc.exit.thread:                             ; preds = %lean_inc.exit80.thread
  %i.az = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %i.ah, ptr noundef nonnull @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction___closed__7_value) #7
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.al, label %lean_dec.exit89

bb.al:                                            ; preds = %lean_inc.exit.thread, %lean_inc.exit
  %i.bb = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %i.ah, ptr noundef nonnull @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction___closed__9_value) #7
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.bd = ptrtoint ptr %.074 to i64
  %i.be = and i64 %i.bd, 1
  %.not.i118 = icmp eq i64 %i.be, 0
  br i1 %.not.i118, label %bb.an, label %lean_del_object.exit119

bb.an:                                            ; preds = %bb.am
  tail call void @lean_free_object(ptr noundef nonnull %.074) #7
  br label %lean_del_object.exit119

lean_del_object.exit119:                          ; preds = %bb.am, %bb.an
  %i.bf = tail call ptr @l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg()
  br label %bb.bk

bb.ao:                                            ; preds = %bb.al
  br i1 %i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.bg = getelementptr inbounds nuw i8, ptr %.074, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = and i32 %i.bh, 16777215
  store i32 %i.bi, ptr %i.bg, align 4
  br label %.sink.split

bb.aq:                                            ; preds = %bb.ao
  %i.bj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %.sink.split

bb.ar:                                            ; preds = %lean_inc.exit
  %i.bk = load i32, ptr %i.ah, align 4, !tbaa !14 ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %bb.as, label %bb.at, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.bm = add nsw i32 %i.bk, -1
  store i32 %i.bm, ptr %i.ah, align 4, !tbaa !14
  br label %lean_dec.exit89

bb.at:                                            ; preds = %bb.ar
  %.not.i101 = icmp eq i32 %i.bk, 0
  br i1 %.not.i101, label %lean_dec.exit89, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ah) #7
  br label %lean_dec.exit89

lean_dec.exit89:                                  ; preds = %lean_inc.exit.thread, %bb.au, %bb.at, %bb.as
  br i1 %i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %lean_dec.exit89
  %i.bn = getelementptr inbounds nuw i8, ptr %.074, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = and i32 %i.bo, 16777215
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.074, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.bq, align 8, !tbaa !10
  br label %bb.bk

bb.aw:                                            ; preds = %lean_dec.exit89
  tail call void @lean_inc_heartbeat() #7
  %i.br = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ax, label %lean_alloc_ctor.exit

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.aw
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 1, ptr %i.br, align 4, !tbaa !14
  store i32 65552, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.bu, align 8, !tbaa !10
  br label %bb.bk

bb.ay:                                            ; preds = %lean_inc.exit80
  %i.bv = icmp sgt i32 %.val.i.i115, 1
  br i1 %i.bv, label %bb.az, label %bb.ba, !prof !16

bb.az:                                            ; preds = %bb.ay
  %i.bw = add nsw i32 %.val.i.i115, -1
  store i32 %i.bw, ptr %i.ah, align 4, !tbaa !14
  br label %lean_dec.exit87

bb.ba:                                            ; preds = %bb.ay
  %.not.i103 = icmp eq i32 %.val.i.i115, 0
  br i1 %.not.i103, label %lean_dec.exit87, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ah) #7
  br label %lean_dec.exit87

lean_dec.exit87:                                  ; preds = %lean_inc.exit80.thread, %bb.bb, %bb.ba, %bb.az
  br i1 %i.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %lean_dec.exit87
  %i.bx = getelementptr inbounds nuw i8, ptr %.074, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = and i32 %i.by, 16777215
  store i32 %i.bz, ptr %i.bx, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.074, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ca, align 8, !tbaa !10
  br label %bb.bk

bb.bd:                                            ; preds = %lean_dec.exit87
  tail call void @lean_inc_heartbeat() #7
  %i.cb = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.be, label %lean_alloc_ctor.exit120

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit120:                          ; preds = %bb.bd
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 1, ptr %i.cb, align 4, !tbaa !14
  store i32 65552, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ce, align 8, !tbaa !10
  br label %bb.bk

bb.bf:                                            ; preds = %lean_obj_tag.exit
  %i.cf = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.bg, label %bb.bh, !prof !16

bb.bg:                                            ; preds = %bb.bf
  %i.ch = add nsw i32 %i.cf, -1
  store i32 %i.ch, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.bh:                                            ; preds = %bb.bf
  %.not.i105 = icmp eq i32 %i.cf, 0
  br i1 %.not.i105, label %lean_dec.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit.thread, %bb.bi, %bb.bh, %bb.bg
  tail call void @lean_inc_heartbeat() #7
  %i.ci = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.bj, label %lean_alloc_ctor.exit121

bb.bj:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit121:                          ; preds = %lean_dec.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 1, ptr %i.ci, align 4, !tbaa !14
  store i32 65552, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cl, align 8, !tbaa !10
  br label %bb.bk

.sink.split:                                      ; preds = %bb.aq, %bb.ap
  %.074.sink = phi ptr [ %.074, %bb.ap ], [ %i.bj, %bb.aq ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.074.sink, i64 8
  store ptr inttoptr (i64 5 to ptr), ptr %3, align 8, !tbaa !10
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split, %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg.exit, %lean_alloc_ctor.exit120, %bb.bc, %lean_del_object.exit119, %bb.av, %lean_alloc_ctor.exit, %lean_alloc_ctor.exit121
  %.7 = phi ptr [ %i.ci, %lean_alloc_ctor.exit121 ], [ %i.ad, %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction_spec__0___redArg.exit ], [ %i.br, %lean_alloc_ctor.exit ], [ %.074, %bb.bc ], [ %i.bf, %lean_del_object.exit119 ], [ %i.cb, %lean_alloc_ctor.exit120 ], [ %.074, %bb.av ], [ %.074.sink, %.sink.split ]
  ret ptr %.7
}

declare zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Syntax_getArg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterAction(ptr noundef %0, ptr poison, ptr poison)
  %i.b = ptrtoint ptr %2 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !14     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %2, align 4, !tbaa !14
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i6 = icmp eq i32 %i.d, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %lean_dec.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit8

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i7 = icmp eq i32 %i.g, 0
  br i1 %.not.i7, label %lean_dec_ref.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit8

lean_dec_ref.exit8:                               ; preds = %bb.f, %bb.g, %bb.h
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i8 @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__0(i8 noundef returned zeroext %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  ret i8 %0
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__0___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1
  store i32 %i.c, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %i.d = ptrtoint ptr %0 to i64
  %i.e = and i64 %i.d, 510
  %i.f = or disjoint i64 %i.e, 1
  %i.g = inttoptr i64 %i.f to ptr
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__1(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @l_Lean_Message_isTrace(ptr noundef %1) #7
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.d = load i8, ptr %i.c, align 1, !tbaa !15
  %i.e = tail call zeroext i8 @l_Lean_instBEqMessageSeverity_beq(i8 noundef zeroext %i.d, i8 noundef zeroext 2) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.e, %bb.b ], [ %0, %bb.a ]
  ret i8 %.0
}

declare zeroext i8 @l_Lean_instBEqMessageSeverity_beq(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__1___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call zeroext i8 @l_Lean_Message_isTrace(ptr noundef %1) #7
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__1.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15
  %i.h = tail call zeroext i8 @l_Lean_instBEqMessageSeverity_beq(i8 noundef zeroext %i.g, i8 noundef zeroext 2) #7
  br label %l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__1.exit

l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__1.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i8 [ %i.h, %bb.b ], [ %i.c, %bb.a ]
  %i.i = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__1.exit
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit

bb.d:                                             ; preds = %l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__1.exit
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %i.l = zext i8 %.0.i to i64
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  ret ptr %i.o
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__2(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @l_Lean_Message_isTrace(ptr noundef %1) #7
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.d = load i8, ptr %i.c, align 1, !tbaa !15
  %i.e = tail call zeroext i8 @l_Lean_instBEqMessageSeverity_beq(i8 noundef zeroext %i.d, i8 noundef zeroext 1) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.e, %bb.b ], [ %0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__2___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call zeroext i8 @l_Lean_Message_isTrace(ptr noundef %1) #7
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__2.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15
  %i.h = tail call zeroext i8 @l_Lean_instBEqMessageSeverity_beq(i8 noundef zeroext %i.g, i8 noundef zeroext 1) #7
  br label %l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__2.exit

l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__2.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i8 [ %i.h, %bb.b ], [ %i.c, %bb.a ]
  %i.i = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__2.exit
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit

bb.d:                                             ; preds = %l_Lean_Elab_Tactic_GuardMsgs_parseGuardMsgsFilterSeverity___redArg___lam__2.exit
  %.not.i = icmp eq i32 %i.i, 0
end_hunk_0
