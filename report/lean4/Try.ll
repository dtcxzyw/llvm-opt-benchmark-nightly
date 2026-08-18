inline.NumInlined: 9001
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isExprAccessible_spec__0___redArg:bb.a
lean_inc.exit75:                                  ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  br i1 %.not.i88, label %bb.m, label %lean_dec.exit82

bb.m:                                             ; preds = %lean_inc.exit75
  %i.v = load i32, ptr %i.i, align 8, !tbaa !10   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.i, align 8, !tbaa !10
  br label %lean_dec.exit82

bb.o:                                             ; preds = %bb.m
  %.not.i83.a = icmp eq i32 %i.v, 0
  br i1 %.not.i83.a, label %lean_dec.exit82, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #10
  br label %lean_dec.exit82

lean_dec.exit82:                                  ; preds = %bb.g, %lean_inc.exit75, %bb.n, %bb.o, %bb.p
  %.067 = phi ptr [ inttoptr (i64 1 to ptr), %bb.p ], [ inttoptr (i64 1 to ptr), %lean_inc.exit75 ], [ inttoptr (i64 1 to ptr), %bb.n ], [ inttoptr (i64 1 to ptr), %bb.o ], [ %i.i, %bb.g ] ; 3 uses
  %.not.i79 = icmp eq i64 %.pre130, 0
  br i1 %.not.i79, label %bb.q, label %lean_dec.exit80

bb.q:                                             ; preds = %lean_dec.exit82
  %i.y = load i32, ptr %i.q, align 4, !tbaa !10   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.r, label %bb.s, !prof !16

bb.r:                                             ; preds = %bb.q
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %i.q, align 4, !tbaa !10
  br label %lean_dec.exit80

bb.s:                                             ; preds = %bb.q
  %.not.i84 = icmp eq i32 %i.y, 0
  br i1 %.not.i84, label %lean_dec.exit80, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #10
  br label %lean_dec.exit80

lean_dec.exit80:                                  ; preds = %bb.t, %bb.s, %bb.r, %lean_dec.exit82
  %i.ab = and i64 %.pre, 510
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.u, label %bb.x

bb.u:                                             ; preds = %lean_dec.exit80
  br i1 %i.r, label %lean_del_object.exit.thread.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_inc_heartbeat() #10
  %i.ac = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.w, label %lean_del_object.exit.thread.sink.split.sink.split

bb.w:                                             ; preds = %bb.v
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.x:                                             ; preds = %lean_dec.exit80
  %i.ae = ptrtoint ptr %.067 to i64
  %i.af = and i64 %i.ae, 1
  %.not.i92 = icmp eq i64 %i.af, 0
  br i1 %.not.i92, label %bb.y, label %lean_del_object.exit.thread109

bb.y:                                             ; preds = %bb.x
  tail call void @lean_free_object(ptr noundef nonnull %.067) #10
  br label %lean_del_object.exit.thread109

lean_obj_tag.exit96:                              ; preds = %lean_obj_tag.exit.thread
  %i.ag = and i64 %i.j, 8589934590
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.z, label %lean_del_object.exit.thread

bb.z:                                             ; preds = %lean_obj_tag.exit96
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14 ; 7 uses
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = and i64 %i.ak, 1
  %.not.i = icmp eq i64 %i.al, 0                  ; 2 uses
  br i1 %.not.i, label %bb.aa, label %lean_inc.exit

bb.aa:                                            ; preds = %bb.z
  %.val.i.i97 = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.am = icmp sgt i32 %.val.i.i97, 0
  br i1 %i.am, label %bb.ab, label %bb.ac, !prof !16

bb.ab:                                            ; preds = %bb.aa
  %i.an = add nuw i32 %.val.i.i97, 1
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !10
  br label %lean_inc.exit

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i98.a = icmp eq i32 %.val.i.i97, 0
  br i1 %.not.i.i98.a, label %lean_inc.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ao = atomicrmw sub ptr %i.aj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.val.i100 = load i32, ptr %i.i, align 8, !tbaa !10 ; 4 uses
  %i.ap = icmp eq i32 %.val.i100, 1
  br i1 %i.ap, label %.preheader.i.preheader, label %bb.ai

.preheader.i.preheader:                           ; preds = %lean_inc.exit
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !14 ; 4 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 1
  %.not.i.i101 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i101, label %bb.ae, label %lean_dec.exit.i

bb.ae:                                            ; preds = %.preheader.i.preheader
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !10 ; 3 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %bb.ae
  %i.av = add nsw i32 %i.at, -1
  store i32 %i.av, ptr %i.aq, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.ag:                                            ; preds = %bb.ae
  %.not.i7.i = icmp eq i32 %i.at, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aq) #10
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.ah, %bb.ag, %bb.af, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.i) #10
  br label %lean_dec_ref_known.exit

bb.ai:                                            ; preds = %lean_inc.exit
  %i.aw = icmp sgt i32 %.val.i100, 1
  br i1 %i.aw, label %bb.aj, label %bb.ak, !prof !16

bb.aj:                                            ; preds = %bb.ai
  %i.ax = add nsw i32 %.val.i100, -1
  store i32 %i.ax, ptr %i.i, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.ak:                                            ; preds = %bb.ai
  %.not.i8.i = icmp eq i32 %.val.i100, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #10
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aj, %bb.ak, %bb.al
  br i1 %.not.i, label %bb.am, label %lean_del_object.exit

bb.am:                                            ; preds = %lean_dec_ref_known.exit
  %i.ay = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %bb.an, label %bb.ao, !prof !16

bb.an:                                            ; preds = %bb.am
  %i.ba = add nsw i32 %i.ay, -1
  store i32 %i.ba, ptr %i.aj, align 4, !tbaa !10
  br label %lean_del_object.exit

bb.ao:                                            ; preds = %bb.am
  %.not.i86 = icmp eq i32 %i.ay, 0
  br i1 %.not.i86, label %lean_del_object.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #10
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %lean_dec_ref_known.exit, %bb.an, %bb.ao, %bb.ap
  %i.bb = and i64 %i.ak, 510
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %lean_del_object.exit.thread109, label %bb.aq

bb.aq:                                            ; preds = %lean_del_object.exit
  tail call void @lean_inc_heartbeat() #10
  %i.bd = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.ar, label %lean_del_object.exit.thread.sink.split.sink.split

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

._crit_edge:                                      ; preds = %lean_del_object.exit.thread109, %bb.a
  tail call void @lean_inc_heartbeat() #10
  %i.bf = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.as, label %lean_del_object.exit.thread.sink.split.sink.split

bb.as:                                            ; preds = %._crit_edge
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_del_object.exit.thread109:                   ; preds = %bb.y, %bb.x, %lean_del_object.exit
  %i.bh = add i64 %.059125, 1                     ; 2 uses
  %.not120 = icmp eq i64 %i.bh, %2
  br i1 %.not120, label %._crit_edge, label %bb.b

lean_del_object.exit.thread.sink.split.sink.split: ; preds = %._crit_edge, %bb.aq, %bb.v
  %.sink152 = phi ptr [ %i.ac, %bb.v ], [ %i.bd, %bb.aq ], [ %i.bf, %._crit_edge ] ; 3 uses
  %.sink.ph = phi ptr [ inttoptr (i64 3 to ptr), %bb.v ], [ inttoptr (i64 3 to ptr), %bb.aq ], [ inttoptr (i64 1 to ptr), %._crit_edge ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink152, i64 4
  store i32 1, ptr %.sink152, align 4, !tbaa !10
  store i32 65552, ptr %i.bi, align 4
  br label %lean_del_object.exit.thread.sink.split

lean_del_object.exit.thread.sink.split:           ; preds = %lean_del_object.exit.thread.sink.split.sink.split, %bb.u
  %.067.sink = phi ptr [ %.067, %bb.u ], [ %.sink152, %lean_del_object.exit.thread.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ inttoptr (i64 3 to ptr), %bb.u ], [ %.sink.ph, %lean_del_object.exit.thread.sink.split.sink.split ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.067.sink, i64 8
  store ptr %.sink, ptr %i.bj, align 8, !tbaa !14
  br label %lean_del_object.exit.thread

lean_del_object.exit.thread:                      ; preds = %lean_obj_tag.exit, %lean_obj_tag.exit96, %lean_del_object.exit.thread.sink.split
  %.5.ph = phi ptr [ %.067.sink, %lean_del_object.exit.thread.sink.split ], [ %i.i, %lean_obj_tag.exit96 ], [ %i.i, %lean_obj_tag.exit ]
  ret ptr %.5.ph
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isExprAccessible_spec__0___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val29 = load i64, ptr %i.a, align 8, !tbaa !12
  %i.b = load i32, ptr %1, align 8, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !10
  br label %lean_dec.exit17

bb.c:                                             ; preds = %bb.a
  %.not.i18 = icmp eq i32 %i.b, 0
  br i1 %.not.i18, label %lean_dec.exit17, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit17

lean_dec.exit17:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !12
  %i.f = load i32, ptr %2, align 8, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %lean_dec.exit17
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 8, !tbaa !10
  br label %lean_dec.exit15

bb.f:                                             ; preds = %lean_dec.exit17
  %.not.i19 = icmp eq i32 %i.f, 0
  br i1 %.not.i19, label %lean_dec.exit15, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec.exit15

lean_dec.exit15:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isExprAccessible_spec__0___redArg(ptr noundef %0, i64 noundef %.val29, i64 noundef %.val, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %i.j = ptrtoint ptr %5 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.h, label %lean_dec.exit

bb.h:                                             ; preds = %lean_dec.exit15
  %i.l = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit

bb.j:                                             ; preds = %bb.h
  %.not.i21 = icmp eq i32 %i.l, 0
  br i1 %.not.i21, label %lean_dec.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.k, %bb.j, %bb.i, %lean_dec.exit15
  %i.o = load i32, ptr %4, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %4, align 4, !tbaa !10
  br label %lean_dec_ref.exit28

bb.m:                                             ; preds = %lean_dec.exit
  %.not.i27 = icmp eq i32 %i.o, 0
  br i1 %.not.i27, label %lean_dec_ref.exit28, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #10
  br label %lean_dec_ref.exit28

lean_dec_ref.exit28:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.r = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %lean_dec_ref.exit28
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %3, align 4, !tbaa !10
  br label %lean_dec_ref.exit26

bb.p:                                             ; preds = %lean_dec_ref.exit28
  %.not.i25 = icmp eq i32 %i.r, 0
  br i1 %.not.i25, label %lean_dec_ref.exit26, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec_ref.exit26

lean_dec_ref.exit26:                              ; preds = %bb.o, %bb.p, %bb.q
  %i.u = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.r, label %bb.s, !prof !16

bb.r:                                             ; preds = %lean_dec_ref.exit26
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit24

bb.s:                                             ; preds = %lean_dec_ref.exit26
  %.not.i23 = icmp eq i32 %i.u, 0
  br i1 %.not.i23, label %lean_dec_ref.exit24, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit24

lean_dec_ref.exit24:                              ; preds = %bb.r, %bb.s, %bb.t
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isExprAccessible(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isExprAccessible___closed__3_once seq_cst, align 4, !tbaa !18
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isExprAccessible___closed__3, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isExprAccessible___closed__3, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isExprAccessible___closed__3_once, ptr noundef nonnull @_init_l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isExprAccessible___closed__3) #10
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i153 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call ptr @lean_st_mk_ref(ptr noundef %.0.i153) #10 ; 10 uses
  %i.f = tail call ptr @l_Lean_Expr_collectFVars(ptr noundef %0, ptr noundef %i.e, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #10 ; 16 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 1
  %.not.i154 = icmp eq i64 %i.h, 0                ; 3 uses
  br i1 %.not.i154, label %bb.e, label %bb.d

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.i = lshr i64 %i.g, 1
  %i.j = trunc i64 %i.i to i32
  br label %lean_obj_tag.exit

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.k = getelementptr i8, ptr %i.f, i64 4
  %.val.i = load i32, ptr %i.k, align 4
  %i.l = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.d, %bb.e
  %.0.i155 = phi i32 [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  %i.m = icmp eq i32 %.0.i155, 0
  br i1 %i.m, label %bb.f, label %bb.bd

bb.f:                                             ; preds = %lean_obj_tag.exit
  %.val151 = load i32, ptr %i.f, align 4, !tbaa !10 ; 4 uses
  %i.n = icmp eq i32 %.val151, 1
  br i1 %i.n, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14   ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 1
  %.not.i128 = icmp eq i64 %i.r, 0
end_hunk_0
begin_hunk_1_@l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__0:bb.a

.critedge:                                        ; preds = %.critedgethread-pre-split, %bb.m
  %i.ba = phi i32 [ %.pr, %.critedgethread-pre-split ], [ %i.ax, %bb.m ] ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.p, label %bb.q, !prof !25

bb.p:                                             ; preds = %.critedge
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %0, align 4, !tbaa !10
  br label %.split58.us

bb.q:                                             ; preds = %.critedge
  %.not.i34 = icmp eq i32 %i.ba, 0
  br i1 %.not.i34, label %.split58.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %.split58.us

lean_nat_eq.exit:                                 ; preds = %l_Array_contains___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_removeDuplicates_spec__0.exit
  %i.bd = add i64 %.02254, 1                      ; 2 uses
  %.not = icmp eq i64 %i.bd, %4
  br i1 %.not, label %.split58.us, label %lean_inc.exit

.critedge115:                                     ; preds = %.critedge.i.us.us, %l_Array_contains___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_removeDuplicates_spec__0.exit.us.us104
  %i.be = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.s, label %bb.t, !prof !16

bb.s:                                             ; preds = %.critedge115
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %0, align 4, !tbaa !10
  br label %.split58.us

bb.t:                                             ; preds = %.critedge115
  %.not.i35 = icmp eq i32 %i.be, 0
  br i1 %.not.i35, label %.split58.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %.split58.us

._crit_edge:                                      ; preds = %bb.a
  %.pre = ptrtoint ptr %0 to i64
  %.pre124 = and i64 %.pre, 1
  %i.bh = icmp eq i64 %.pre124, 0
  br i1 %i.bh, label %._crit_edge.thread, label %.split58.us

._crit_edge.thread:                               ; preds = %lean_nat_eq.exit.us, %bb.b, %._crit_edge
  %i.bi = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %._crit_edge.thread
  %i.bk = add nsw i32 %i.bi, -1
  store i32 %i.bk, ptr %0, align 4, !tbaa !10
  br label %.split58.us

bb.w:                                             ; preds = %._crit_edge.thread
  %.not.i37 = icmp eq i32 %i.bi, 0
  br i1 %.not.i37, label %.split58.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %.split58.us

.split58.us:                                      ; preds = %lean_nat_eq.exit, %l_Array_contains___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_removeDuplicates_spec__0.exit, %bb.l, %l_Array_contains___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_removeDuplicates_spec__0.exit.us66, %.critedge.i.us67, %l_Array_contains___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_removeDuplicates_spec__0.exit.us83, %bb.n, %lean_inc.exit.us78, %.split.us, %bb.r, %bb.q, %bb.p, %bb.u, %bb.t, %bb.s, %bb.x, %bb.w, %bb.v, %._crit_edge
  %.3.ph = phi i8 [ 0, %._crit_edge ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.x ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.n ], [ 1, %l_Array_contains___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_removeDuplicates_spec__0.exit.us83 ], [ 1, %lean_inc.exit.us78 ], [ 1, %.split.us ], [ 1, %l_Array_contains___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_removeDuplicates_spec__0.exit.us66 ], [ 0, %bb.l ], [ 1, %.critedge.i.us67 ], [ 1, %l_Array_contains___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_removeDuplicates_spec__0.exit ], [ 0, %lean_nat_eq.exit ]
  ret i8 %.3.ph
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8
  %.val23 = load i64, ptr %i.a, align 8, !tbaa !12
  %i.b = load i32, ptr %3, align 8, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %3, align 8, !tbaa !10
  br label %lean_dec.exit15

bb.c:                                             ; preds = %bb.a
  %.not.i16 = icmp eq i32 %i.b, 0
  br i1 %.not.i16, label %lean_dec.exit15, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec.exit15

lean_dec.exit15:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %4, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !12
  %i.f = load i32, ptr %4, align 8, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %lean_dec.exit15
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 8, !tbaa !10
  br label %lean_dec.exit13

bb.f:                                             ; preds = %lean_dec.exit15
  %.not.i17 = icmp eq i32 %i.f, 0
  br i1 %.not.i17, label %lean_dec.exit13, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #10
  br label %lean_dec.exit13

lean_dec.exit13:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.val23, i64 noundef %.val)
  %i.j = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %lean_dec.exit13
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit22

bb.i:                                             ; preds = %lean_dec.exit13
  %.not.i21 = icmp eq i32 %i.j, 0
  br i1 %.not.i21, label %lean_dec_ref.exit22, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec_ref.exit22

lean_dec_ref.exit22:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.m = ptrtoint ptr %1 to i64
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.k, label %lean_dec.exit

bb.k:                                             ; preds = %lean_dec_ref.exit22
  %i.o = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.m:                                             ; preds = %bb.k
  %.not.i19 = icmp eq i32 %i.o, 0
  br i1 %.not.i19, label %lean_dec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.m, %bb.l, %lean_dec_ref.exit22
  %i.r = shl nuw nsw i8 %i.i, 1
  %i.s = or disjoint i8 %i.r, 1
  %i.t = zext nneg i8 %i.s to i64
  %i.u = inttoptr i64 %i.t to ptr
  ret ptr %i.u
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__1_spec__1(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %.not171 = icmp ult i64 %4, %3
  br i1 %.not171, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = ptrtoint ptr %1 to i64
  %i.d = and i64 %i.c, 1
  %.not.i127 = icmp eq i64 %i.d, 0
  %i.e = icmp eq ptr %1, inttoptr (i64 1 to ptr)
  br label %bb.e

._crit_edge:                                      ; preds = %lean_dec_ref.exit118, %bb.a
  %.068.lcssa = phi ptr [ %5, %bb.a ], [ %.3157, %lean_dec_ref.exit118 ]
  %i.f = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %._crit_edge
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !10
  br label %bb.bv

bb.c:                                             ; preds = %._crit_edge
  %.not.i117 = icmp eq i32 %i.f, 0
  br i1 %.not.i117, label %bb.bv, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %bb.bv

bb.e:                                             ; preds = %.lr.ph, %lean_dec_ref.exit118
  %.066174 = phi i64 [ %4, %.lr.ph ], [ %i.cz, %lean_dec_ref.exit118 ] ; 2 uses
  %.070172 = phi ptr [ %5, %.lr.ph ], [ %.3157, %lean_dec_ref.exit118 ] ; 2 uses
  %.val130 = load i64, ptr %i.a, align 8, !tbaa !12
  %i.i = shl i64 %.val130, 1
  %i.j = or disjoint i64 %i.i, 1
  %i.k = inttoptr i64 %i.j to ptr
  %.val.i.i = load i32, ptr %0, align 8, !tbaa !10 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i, 0
  br i1 %i.l, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i32 %.val.i.i, 1
  store i32 %i.m, ptr %0, align 8, !tbaa !10
  br label %lean_inc_ref.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  %i.o = tail call ptr @l_Array_toSubarray___redArg(ptr noundef nonnull %0, ptr noundef nonnull inttoptr (i64 3 to ptr), ptr noundef nonnull %i.k) #10 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 14 uses
  %.val.i.i131 = load i32, ptr %i.q, align 4, !tbaa !10 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i131, 0
  br i1 %i.r, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %lean_inc_ref.exit
  %i.s = add nuw i32 %.val.i.i131, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !10
  br label %lean_inc_ref.exit133

bb.j:                                             ; preds = %lean_inc_ref.exit
  %.not.i.i132 = icmp eq i32 %.val.i.i131, 0
  br i1 %.not.i.i132, label %lean_inc_ref.exit133, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = atomicrmw sub ptr %i.q, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit133

lean_inc_ref.exit133:                             ; preds = %bb.i, %bb.j, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 18 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 3 uses
  %.not.i81 = trunc i64 %i.w to i1                ; 5 uses
  br i1 %.not.i81, label %lean_inc.exit82, label %bb.l

bb.l:                                             ; preds = %lean_inc_ref.exit133
  %.val.i.i134 = load i32, ptr %i.v, align 4, !tbaa !10 ; 3 uses
  %i.x = icmp sgt i32 %.val.i.i134, 0
  br i1 %i.x, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.y = add nuw i32 %.val.i.i134, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !10
  br label %lean_inc.exit82

bb.n:                                             ; preds = %bb.l
  %.not.i.i135 = icmp eq i32 %.val.i.i134, 0
  br i1 %.not.i.i135, label %lean_inc.exit82, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit82

lean_inc.exit82:                                  ; preds = %bb.o, %bb.n, %bb.m, %lean_inc_ref.exit133
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14 ; 16 uses
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = and i64 %i.ac, 1
  %.not.i79 = icmp eq i64 %i.ad, 0                ; 3 uses
  br i1 %.not.i79, label %bb.p, label %lean_inc.exit80

bb.p:                                             ; preds = %lean_inc.exit82
  %.val.i.i137 = load i32, ptr %i.ab, align 4, !tbaa !10 ; 3 uses
  %i.ae = icmp sgt i32 %.val.i.i137, 0
  br i1 %i.ae, label %bb.q, label %bb.r, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.af = add nuw i32 %.val.i.i137, 1
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !10
  br label %lean_inc.exit80

bb.r:                                             ; preds = %bb.p
  %.not.i.i138 = icmp eq i32 %.val.i.i137, 0
  br i1 %.not.i.i138, label %lean_inc.exit80, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = atomicrmw sub ptr %i.ab, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit80

lean_inc.exit80:                                  ; preds = %bb.s, %bb.r, %bb.q, %lean_inc.exit82
  %i.ah = load i32, ptr %i.o, align 8, !tbaa !10  ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.t, label %bb.u, !prof !16

bb.t:                                             ; preds = %lean_inc.exit80
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !10
  br label %lean_dec_ref.exit116

bb.u:                                             ; preds = %lean_inc.exit80
  %.not.i115 = icmp eq i32 %i.ah, 0
  br i1 %.not.i115, label %lean_dec_ref.exit116, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #10
  br label %lean_dec_ref.exit116

lean_dec_ref.exit116:                             ; preds = %bb.t, %bb.u, %bb.v
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.066174
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14 ; 10 uses
  %i.am = and i64 %i.w, 1                         ; 2 uses
  %i.an = and i64 %i.am, %i.ac
  %or.cond.not = icmp eq i64 %i.an, 0
  br i1 %or.cond.not, label %lean_nat_lt.exit, label %.split, !prof !26

.split:                                           ; preds = %lean_dec_ref.exit116
  %i.ao = icmp ult ptr %i.v, %i.ab
  br i1 %i.ao, label %bb.ai, label %bb.w

lean_nat_lt.exit:                                 ; preds = %lean_dec_ref.exit116
  %i.ap = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.v, ptr noundef %i.ab) #10
  br i1 %i.ap, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %.split, %lean_nat_lt.exit
  br i1 %.not.i79, label %bb.x, label %lean_dec.exit95

bb.x:                                             ; preds = %bb.w
  %i.aq = load i32, ptr %i.ab, align 4, !tbaa !10 ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %bb.y, label %bb.z, !prof !16

bb.y:                                             ; preds = %bb.x
  %i.as = add nsw i32 %i.aq, -1
  store i32 %i.as, ptr %i.ab, align 4, !tbaa !10
  br label %lean_dec.exit95

bb.z:                                             ; preds = %bb.x
  %.not.i96.a = icmp eq i32 %i.aq, 0
  br i1 %.not.i96.a, label %lean_dec.exit95, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #10
  br label %lean_dec.exit95

lean_dec.exit95:                                  ; preds = %bb.aa, %bb.z, %bb.y, %bb.w
  br i1 %.not.i81, label %lean_dec.exit93, label %bb.ab

bb.ab:                                            ; preds = %lean_dec.exit95
  %i.at = load i32, ptr %i.v, align 4, !tbaa !10  ; 3 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %bb.ab
  %i.av = add nsw i32 %i.at, -1
  store i32 %i.av, ptr %i.v, align 4, !tbaa !10
  br label %lean_dec.exit93

bb.ad:                                            ; preds = %bb.ab
  %.not.i97 = icmp eq i32 %i.at, 0
  br i1 %.not.i97, label %lean_dec.exit93, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #10
  br label %lean_dec.exit93

lean_dec.exit93:                                  ; preds = %bb.ae, %bb.ad, %bb.ac, %lean_dec.exit95
  %i.aw = load i32, ptr %i.q, align 4, !tbaa !10  ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %lean_dec.exit93
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %i.q, align 4, !tbaa !10
  br label %lean_dec_ref.exit114

bb.ag:                                            ; preds = %lean_dec.exit93
  %.not.i113 = icmp eq i32 %i.aw, 0
  br i1 %.not.i113, label %lean_dec_ref.exit114, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #10
  br label %lean_dec_ref.exit114

bb.ai:                                            ; preds = %.split, %lean_nat_lt.exit
  br i1 %.not.i127, label %.critedge.i128, label %lean_nat_eq.exit, !prof !9

.critedge.i128:                                   ; preds = %bb.ai
  %i.az = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %1, ptr noundef nonnull inttoptr (i64 1 to ptr)) #10
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.ai, %.critedge.i128
  %.0.i129 = phi i1 [ %i.az, %.critedge.i128 ], [ %i.e, %bb.ai ] ; 2 uses
  %i.ba = getelementptr i8, ptr %i.q, i64 8
  %.val = load i64, ptr %i.ba, align 8, !tbaa !12
  %i.bb = shl i64 %.val, 1
  %i.bc = or disjoint i64 %i.bb, 1
end_hunk_1
begin_hunk_2_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__1_spec__1:bb.a
  br i1 %i.bg, label %bb.ak, label %bb.al, !prof !16

bb.ak:                                            ; preds = %bb.aj
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %i.ab, align 4, !tbaa !10
  br label %lean_dec.exit91

bb.al:                                            ; preds = %bb.aj
  %.not.i99 = icmp eq i32 %i.bf, 0
  br i1 %.not.i99, label %lean_dec.exit91, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #10
  br label %lean_dec.exit91

lean_dec.exit91:                                  ; preds = %lean_nat_le.exit.thread, %bb.ak, %bb.al, %bb.am, %lean_nat_le.exit
  %.076 = phi ptr [ %spec.select, %lean_nat_le.exit.thread ], [ %i.ab, %lean_nat_le.exit ], [ %i.bd, %bb.am ], [ %i.bd, %bb.al ], [ %i.bd, %bb.ak ] ; 10 uses
  %i.bi = ptrtoint ptr %.076 to i64               ; 4 uses
  %i.bj = trunc i64 %i.bi to i1
  %or.cond168 = select i1 %.not.i81, i1 %i.bj, i1 false, !prof !27
  br i1 %or.cond168, label %.split200, label %lean_nat_lt.exit123, !prof !27

.split200:                                        ; preds = %lean_dec.exit91
  %i.bk = icmp ult ptr %i.v, %.076
  br i1 %i.bk, label %bb.az, label %bb.an

lean_nat_lt.exit123:                              ; preds = %lean_dec.exit91
  %i.bl = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.v, ptr noundef %.076) #10
  br i1 %i.bl, label %bb.az, label %bb.an

bb.an:                                            ; preds = %.split200, %lean_nat_lt.exit123
  %i.bm = and i64 %i.bi, 1
  %.not.i88 = icmp eq i64 %i.bm, 0
  br i1 %.not.i88, label %bb.ao, label %lean_dec.exit89

bb.ao:                                            ; preds = %bb.an
  %i.bn = load i32, ptr %.076, align 4, !tbaa !10 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.ap, label %bb.aq, !prof !16

bb.ap:                                            ; preds = %bb.ao
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %.076, align 4, !tbaa !10
  br label %lean_dec.exit89

bb.aq:                                            ; preds = %bb.ao
  %.not.i101 = icmp eq i32 %i.bn, 0
  br i1 %.not.i101, label %lean_dec.exit89, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.076) #10
  br label %lean_dec.exit89

lean_dec.exit89:                                  ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an
  br i1 %.not.i81, label %lean_dec.exit87, label %bb.as

bb.as:                                            ; preds = %lean_dec.exit89
  %i.bq = load i32, ptr %i.v, align 4, !tbaa !10  ; 3 uses
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %bb.at, label %bb.au, !prof !16

bb.at:                                            ; preds = %bb.as
  %i.bs = add nsw i32 %i.bq, -1
  store i32 %i.bs, ptr %i.v, align 4, !tbaa !10
  br label %lean_dec.exit87

bb.au:                                            ; preds = %bb.as
  %.not.i103 = icmp eq i32 %i.bq, 0
  br i1 %.not.i103, label %lean_dec.exit87, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #10
  br label %lean_dec.exit87

lean_dec.exit87:                                  ; preds = %bb.av, %bb.au, %bb.at, %lean_dec.exit89
  %i.bt = load i32, ptr %i.q, align 8, !tbaa !10  ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.aw, label %bb.ax, !prof !16

bb.aw:                                            ; preds = %lean_dec.exit87
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !10
  br label %lean_dec_ref.exit114

bb.ax:                                            ; preds = %lean_dec.exit87
  %.not.i111 = icmp eq i32 %i.bt, 0
  br i1 %.not.i111, label %lean_dec_ref.exit114, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #10
  br label %lean_dec_ref.exit114

bb.az:                                            ; preds = %.split200, %lean_nat_lt.exit123
  %.not.i140.a = icmp eq i64 %i.am, 0
  br i1 %.not.i140.a, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bw = lshr i64 %i.w, 1
  br label %lean_usize_of_nat.exit

bb.bb:                                            ; preds = %bb.az
  %i.bx = tail call i64 @lean_usize_of_big_nat(ptr noundef %i.v) #10
  br label %lean_usize_of_nat.exit

lean_usize_of_nat.exit:                           ; preds = %bb.ba, %bb.bb
  %i.by = phi i64 [ %i.bw, %bb.ba ], [ %i.bx, %bb.bb ]
  br i1 %.not.i81, label %lean_dec.exit85, label %bb.bc

bb.bc:                                            ; preds = %lean_usize_of_nat.exit
  %i.bz = load i32, ptr %i.v, align 4, !tbaa !10  ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.bd, label %bb.be, !prof !16

bb.bd:                                            ; preds = %bb.bc
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.v, align 4, !tbaa !10
  br label %lean_dec.exit85

bb.be:                                            ; preds = %bb.bc
  %.not.i105 = icmp eq i32 %i.bz, 0
  br i1 %.not.i105, label %lean_dec.exit85, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #10
  br label %lean_dec.exit85

lean_dec.exit85:                                  ; preds = %bb.bf, %bb.be, %bb.bd, %lean_usize_of_nat.exit
  %i.cc = and i64 %i.bi, 1
  %.not.i141 = icmp eq i64 %i.cc, 0
  br i1 %.not.i141, label %bb.bg, label %lean_usize_of_nat.exit142

lean_usize_of_nat.exit142:                        ; preds = %lean_dec.exit85
  %i.cd = lshr i64 %i.bi, 1
  br label %lean_dec.exit

bb.bg:                                            ; preds = %lean_dec.exit85
  %i.ce = tail call i64 @lean_usize_of_big_nat(ptr noundef %.076) #10 ; 3 uses
  %i.cf = load i32, ptr %.076, align 4, !tbaa !10 ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.bh, label %bb.bi, !prof !16

bb.bh:                                            ; preds = %bb.bg
  %i.ch = add nsw i32 %i.cf, -1
  store i32 %i.ch, ptr %.076, align 4, !tbaa !10
  br label %lean_dec.exit

bb.bi:                                            ; preds = %bb.bg
  %.not.i107 = icmp eq i32 %i.cf, 0
  br i1 %.not.i107, label %lean_dec.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.076) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_usize_of_nat.exit142, %bb.bj, %bb.bi, %bb.bh
  %i.ci = phi i64 [ %i.ce, %bb.bj ], [ %i.ce, %bb.bi ], [ %i.ce, %bb.bh ], [ %i.cd, %lean_usize_of_nat.exit142 ]
  %i.cj = ptrtoint ptr %i.al to i64
  %i.ck = and i64 %i.cj, 1
  %.not.i77 = icmp eq i64 %i.ck, 0
  br i1 %.not.i77, label %bb.bk, label %lean_inc.exit78

bb.bk:                                            ; preds = %lean_dec.exit
  %.val.i.i143 = load i32, ptr %i.al, align 4, !tbaa !10 ; 3 uses
  %i.cl = icmp sgt i32 %.val.i.i143, 0
  br i1 %i.cl, label %bb.bl, label %bb.bm, !prof !16

bb.bl:                                            ; preds = %bb.bk
  %i.cm = add nuw i32 %.val.i.i143, 1
  store i32 %i.cm, ptr %i.al, align 4, !tbaa !10
  br label %lean_inc.exit78

bb.bm:                                            ; preds = %bb.bk
  %.not.i.i144 = icmp eq i32 %.val.i.i143, 0
  br i1 %.not.i.i144, label %lean_inc.exit78, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.cn = atomicrmw sub ptr %i.al, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit78

lean_inc.exit78:                                  ; preds = %bb.bn, %bb.bm, %bb.bl, %lean_dec.exit
  %i.co = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__0(ptr noundef %i.al, ptr noundef %1, ptr noundef nonnull %i.q, i64 noundef %i.by, i64 noundef %i.ci)
  %i.cp = load i32, ptr %i.q, align 8, !tbaa !10  ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %bb.bo, label %bb.bp, !prof !16

bb.bo:                                            ; preds = %lean_inc.exit78
  %i.cr = add nsw i32 %i.cp, -1
  store i32 %i.cr, ptr %i.q, align 8, !tbaa !10
  br label %lean_dec_ref.exit110

bb.bp:                                            ; preds = %lean_inc.exit78
  %.not.i109 = icmp eq i32 %i.cp, 0
  br i1 %.not.i109, label %lean_dec_ref.exit110, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #10
  br label %lean_dec_ref.exit110

lean_dec_ref.exit110:                             ; preds = %bb.bo, %bb.bp, %bb.bq
  %i.cs = icmp eq i8 %i.co, 0
  %.068..070 = select i1 %.0.i129, ptr undef, ptr %.070172
  %or.cond169 = select i1 %i.cs, i1 true, i1 %.0.i129
  br i1 %or.cond169, label %lean_dec_ref.exit114, label %lean_dec_ref.exit118

lean_dec_ref.exit114:                             ; preds = %lean_dec_ref.exit110, %bb.ay, %bb.ax, %bb.aw, %bb.ah, %bb.ag, %bb.af
  %i.ct = ptrtoint ptr %i.al to i64
  %i.cu = and i64 %i.ct, 1
  %.not.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i, label %bb.br, label %.thread153

bb.br:                                            ; preds = %lean_dec_ref.exit114
  %.val.i.i146 = load i32, ptr %i.al, align 4, !tbaa !10 ; 3 uses
  %i.cv = icmp sgt i32 %.val.i.i146, 0
  br i1 %i.cv, label %bb.bs, label %bb.bt, !prof !16

bb.bs:                                            ; preds = %bb.br
  %i.cw = add nuw i32 %.val.i.i146, 1
  store i32 %i.cw, ptr %i.al, align 4, !tbaa !10
  br label %.thread153

bb.bt:                                            ; preds = %bb.br
  %.not.i.i147 = icmp eq i32 %.val.i.i146, 0
  br i1 %.not.i.i147, label %.thread153, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.cx = atomicrmw sub ptr %i.al, i32 1 monotonic, align 4 ; 0 uses
  br label %.thread153

.thread153:                                       ; preds = %lean_dec_ref.exit114, %bb.bs, %bb.bt, %bb.bu
  %i.cy = tail call ptr @lean_array_push(ptr noundef %.070172, ptr noundef %i.al) #10
  br label %lean_dec_ref.exit118

lean_dec_ref.exit118:                             ; preds = %lean_dec_ref.exit110, %.thread153
  %.3157 = phi ptr [ %i.cy, %.thread153 ], [ %.068..070, %lean_dec_ref.exit110 ] ; 2 uses
  %i.cz = add nuw i64 %.066174, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cz, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.e

bb.bv:                                            ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %.068.lcssa
}

declare ptr @l_Array_toSubarray___redArg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__1_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8
  %.val23 = load i64, ptr %i.a, align 8, !tbaa !12
  %i.b = load i32, ptr %3, align 8, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %3, align 8, !tbaa !10
  br label %lean_dec.exit15

bb.c:                                             ; preds = %bb.a
  %.not.i16 = icmp eq i32 %i.b, 0
  br i1 %.not.i16, label %lean_dec.exit15, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec.exit15

lean_dec.exit15:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %4, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !12
  %i.f = load i32, ptr %4, align 8, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %lean_dec.exit15
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 8, !tbaa !10
  br label %lean_dec.exit13

bb.f:                                             ; preds = %lean_dec.exit15
  %.not.i17 = icmp eq i32 %i.f, 0
  br i1 %.not.i17, label %lean_dec.exit13, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #10
  br label %lean_dec.exit13

lean_dec.exit13:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__1_spec__1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.val23, i64 noundef %.val, ptr noundef %5)
  %i.j = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %lean_dec.exit13
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit22

bb.i:                                             ; preds = %lean_dec.exit13
  %.not.i21 = icmp eq i32 %i.j, 0
  br i1 %.not.i21, label %lean_dec_ref.exit22, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec_ref.exit22

lean_dec_ref.exit22:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.m = ptrtoint ptr %1 to i64
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.k, label %lean_dec.exit

bb.k:                                             ; preds = %lean_dec_ref.exit22
  %i.o = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.m:                                             ; preds = %bb.k
  %.not.i19 = icmp eq i32 %i.o, 0
  br i1 %.not.i19, label %lean_dec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.m, %bb.l, %lean_dec_ref.exit22
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__1(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %.not = icmp ult i64 %4, %3
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %i.a, -1
  store i32 %i.c, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit116

bb.d:                                             ; preds = %bb.b
  %.not.i115 = icmp eq i32 %i.a, 0
  br i1 %.not.i115, label %lean_dec_ref.exit116, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec_ref.exit116

bb.f:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val128 = load i64, ptr %i.d, align 8, !tbaa !12
  %i.e = shl i64 %.val128, 1
  %i.f = or disjoint i64 %i.e, 1
  %i.g = inttoptr i64 %i.f to ptr
  %.val.i.i = load i32, ptr %1, align 8, !tbaa !10 ; 3 uses
  %i.h = icmp sgt i32 %.val.i.i, 0
  br i1 %i.h, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.i = add nuw i32 %.val.i.i, 1
  store i32 %i.i, ptr %1, align 8, !tbaa !10
  br label %lean_inc_ref.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.g, %bb.h, %bb.i
  %i.k = tail call ptr @l_Array_toSubarray___redArg(ptr noundef nonnull %1, ptr noundef nonnull inttoptr (i64 3 to ptr), ptr noundef nonnull %i.g) #10 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 14 uses
  %.val.i.i129 = load i32, ptr %i.m, align 4, !tbaa !10 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i129, 0
  br i1 %i.n, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %lean_inc_ref.exit
  %i.o = add nuw i32 %.val.i.i129, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !10
  br label %lean_inc_ref.exit131

bb.k:                                             ; preds = %lean_inc_ref.exit
  %.not.i.i130 = icmp eq i32 %.val.i.i129, 0
  br i1 %.not.i.i130, label %lean_inc_ref.exit131, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit131

lean_inc_ref.exit131:                             ; preds = %bb.j, %bb.k, %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14   ; 18 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 3 uses
  %.not.i79 = trunc i64 %i.s to i1                ; 5 uses
  br i1 %.not.i79, label %lean_inc.exit80, label %bb.m

bb.m:                                             ; preds = %lean_inc_ref.exit131
  %.val.i.i132 = load i32, ptr %i.r, align 4, !tbaa !10 ; 3 uses
  %i.t = icmp sgt i32 %.val.i.i132, 0
  br i1 %i.t, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.u = add nuw i32 %.val.i.i132, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !10
  br label %lean_inc.exit80

bb.o:                                             ; preds = %bb.m
  %.not.i.i133 = icmp eq i32 %.val.i.i132, 0
  br i1 %.not.i.i133, label %lean_inc.exit80, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = atomicrmw sub ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit80

lean_inc.exit80:                                  ; preds = %bb.p, %bb.o, %bb.n, %lean_inc_ref.exit131
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14   ; 16 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = and i64 %i.y, 1
  %.not.i77 = icmp eq i64 %i.z, 0                 ; 3 uses
  br i1 %.not.i77, label %bb.q, label %lean_inc.exit78

end_hunk_2
begin_hunk_3_@l___private_Init_Data_Array_Basic_0__Array_findSomeRevM_x3f_find___at___00Lean_PersistentArray_findSomeRevM_x3f___at___00Lean_resolveLocalName___at___00Lean_unresolveNameGlobalAvoidingLocals_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_toIdent_spec__0_spec__0_spec__1_spec__3_spec__4___redArg:bb.a
  %.val.i.i277.a = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.fh = icmp sgt i32 %.val.i.i277.a, 0
  br i1 %i.fh, label %bb.db, label %bb.dc, !prof !16

bb.db:                                            ; preds = %bb.da
  %i.fi = add nuw i32 %.val.i.i277.a, 1
  store i32 %i.fi, ptr %i.aj, align 4, !tbaa !10
  br label %lean_inc.exit152

bb.dc:                                            ; preds = %bb.da
  %.not.i.i278.a = icmp eq i32 %.val.i.i277.a, 0
  br i1 %.not.i.i278.a, label %lean_inc.exit152, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.fj = atomicrmw sub ptr %i.aj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit152

lean_inc.exit152:                                 ; preds = %bb.dd, %bb.dc, %bb.db, %lean_inc_ref.exit276
  %i.fk = tail call ptr @l___private_Lean_ResolveName_0__Lean_resolveLocalName_go(ptr noundef %i.aj, ptr noundef nonnull %4, ptr noundef %i.et, ptr noundef %3) #10 ; 4 uses
  %i.fl = ptrtoint ptr %i.et to i64
  %i.fm = and i64 %i.fl, 1
  %.not.i174 = icmp eq i64 %i.fm, 0
  br i1 %.not.i174, label %bb.de, label %lean_dec.exit175.thread

bb.de:                                            ; preds = %lean_inc.exit152
  %i.fn = load i32, ptr %i.et, align 4, !tbaa !10 ; 3 uses
  %i.fo = icmp sgt i32 %i.fn, 1
  br i1 %i.fo, label %bb.df, label %bb.dg, !prof !16

bb.df:                                            ; preds = %bb.de
  %i.fp = add nsw i32 %i.fn, -1
  store i32 %i.fp, ptr %i.et, align 4, !tbaa !10
  br label %lean_dec.exit175.thread

bb.dg:                                            ; preds = %bb.de
  %.not.i203 = icmp eq i32 %i.fn, 0
  br i1 %.not.i203, label %lean_dec.exit175.thread, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.et) #10
  br label %lean_dec.exit175.thread

bb.di:                                            ; preds = %lean_inc_ref.exit270
  %i.fq = ptrtoint ptr %i.et to i64
  %i.fr = and i64 %i.fq, 1
  %.not.i172 = icmp eq i64 %i.fr, 0
  br i1 %.not.i172, label %bb.dj, label %lean_dec.exit173

bb.dj:                                            ; preds = %bb.di
  %i.fs = load i32, ptr %i.et, align 4, !tbaa !10 ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 1
  br i1 %i.ft, label %bb.dk, label %bb.dl, !prof !16

bb.dk:                                            ; preds = %bb.dj
  %i.fu = add nsw i32 %i.fs, -1
  store i32 %i.fu, ptr %i.et, align 4, !tbaa !10
  br label %lean_dec.exit173

bb.dl:                                            ; preds = %bb.dj
  %.not.i205 = icmp eq i32 %i.fs, 0
  br i1 %.not.i205, label %lean_dec.exit173, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.et) #10
  br label %lean_dec.exit173

lean_dec.exit173:                                 ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.di
  %i.fv = tail call ptr @l_Lean_LocalDecl_userName(ptr noundef %i.aj) #10
  %i.fw = tail call ptr @l_Lean_extractMacroScopes(ptr noundef %i.fv) #10 ; 4 uses
  %i.fx = tail call zeroext i8 @l_Lean_MacroScopesView_isSuffixOf(ptr noundef %i.fw, ptr noundef %4) #10
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !10 ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, 1
  br i1 %i.fz, label %bb.dn, label %bb.do, !prof !16

bb.dn:                                            ; preds = %lean_dec.exit173
  %i.ga = add nsw i32 %i.fy, -1
  store i32 %i.ga, ptr %i.fw, align 4, !tbaa !10
  br label %lean_dec_ref.exit220

bb.do:                                            ; preds = %lean_dec.exit173
  %.not.i219 = icmp eq i32 %i.fy, 0
  br i1 %.not.i219, label %lean_dec_ref.exit220, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fw) #10
  br label %lean_dec_ref.exit220

lean_dec_ref.exit220:                             ; preds = %bb.dn, %bb.do, %bb.dp
  %i.gb = icmp eq i8 %i.fx, 0
  br i1 %i.gb, label %bb.dq, label %bb.du

bb.dq:                                            ; preds = %lean_dec_ref.exit220
  %i.gc = load i32, ptr %.0149360, align 4, !tbaa !10 ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.dr, label %bb.ds, !prof !16

bb.dr:                                            ; preds = %bb.dq
  %i.ge = add nsw i32 %i.gc, -1
  store i32 %i.ge, ptr %.0149360, align 4, !tbaa !10
  br label %lean_dec.exit187.backedge

bb.ds:                                            ; preds = %bb.dq
  %.not.i217 = icmp eq i32 %i.gc, 0
  br i1 %.not.i217, label %lean_dec.exit187.backedge, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0149360) #10
  br label %lean_dec.exit187.backedge

bb.du:                                            ; preds = %lean_dec_ref.exit220
  %i.gf = tail call zeroext i8 @l_Lean_MacroScopesView_isSuffixOf(ptr noundef %4, ptr noundef nonnull %.0149360) #10
  %i.gg = load i32, ptr %.0149360, align 4, !tbaa !10 ; 3 uses
  %i.gh = icmp sgt i32 %i.gg, 1
  br i1 %i.gh, label %bb.dv, label %bb.dw, !prof !16

bb.dv:                                            ; preds = %bb.du
  %i.gi = add nsw i32 %i.gg, -1
  store i32 %i.gi, ptr %.0149360, align 4, !tbaa !10
  br label %lean_dec_ref.exit216

bb.dw:                                            ; preds = %bb.du
  %.not.i215 = icmp eq i32 %i.gg, 0
  br i1 %.not.i215, label %lean_dec_ref.exit216, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0149360) #10
  br label %lean_dec_ref.exit216

lean_dec_ref.exit216:                             ; preds = %bb.dv, %bb.dw, %bb.dx
  %.not = icmp eq i8 %i.gf, 0
  br i1 %.not, label %lean_dec.exit187.backedge, label %bb.dy

lean_dec.exit187.backedge:                        ; preds = %lean_dec_ref.exit216, %bb.z, %bb.dr, %bb.ds, %bb.dt, %lean_obj_tag.exit289
  br label %lean_dec.exit187

bb.dy:                                            ; preds = %lean_dec_ref.exit216
  %.val.i.i280.a = load i32, ptr %i.aa, align 8, !tbaa !10 ; 3 uses
  %i.gj = icmp sgt i32 %.val.i.i280.a, 0
  br i1 %i.gj, label %bb.dz, label %bb.ea, !prof !16

bb.dz:                                            ; preds = %bb.dy
  %i.gk = add nuw i32 %.val.i.i280.a, 1
  store i32 %i.gk, ptr %i.aa, align 8, !tbaa !10
  br label %lean_dec.exit175.thread

bb.ea:                                            ; preds = %bb.dy
  %.not.i.i281.a = icmp eq i32 %.val.i.i280.a, 0
  br i1 %.not.i.i281.a, label %lean_dec.exit175.thread, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.gl = atomicrmw sub ptr %i.aa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_dec.exit175.thread

bb.ec:                                            ; preds = %lean_obj_tag.exit232
  %i.gm = load i32, ptr %i.at, align 4, !tbaa !10 ; 3 uses
  %i.gn = icmp sgt i32 %i.gm, 1
  br i1 %i.gn, label %bb.ed, label %bb.ee, !prof !16

bb.ed:                                            ; preds = %bb.ec
  %i.go = add nsw i32 %i.gm, -1
  store i32 %i.go, ptr %i.at, align 4, !tbaa !10
  br label %lean_dec.exit171

bb.ee:                                            ; preds = %bb.ec
  %.not.i207 = icmp eq i32 %i.gm, 0
  br i1 %.not.i207, label %lean_dec.exit171, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.at) #10
  br label %lean_dec.exit171

lean_dec.exit171:                                 ; preds = %lean_obj_tag.exit232.thread, %bb.ef, %bb.ee, %bb.ed
  %i.gp = ptrtoint ptr %i.aj to i64
  %i.gq = and i64 %i.gp, 1
  %.not.i150 = icmp eq i64 %i.gq, 0
  br i1 %.not.i150, label %bb.eg, label %lean_inc.exit

bb.eg:                                            ; preds = %lean_dec.exit171
  %.val.i.i283 = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.gr = icmp sgt i32 %.val.i.i283, 0
  br i1 %i.gr, label %bb.eh, label %bb.ei, !prof !16

bb.eh:                                            ; preds = %bb.eg
  %i.gs = add nuw i32 %.val.i.i283, 1
  store i32 %i.gs, ptr %i.aj, align 4, !tbaa !10
  br label %lean_inc.exit

bb.ei:                                            ; preds = %bb.eg
  %.not.i.i284 = icmp eq i32 %.val.i.i283, 0
  br i1 %.not.i.i284, label %lean_inc.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.gt = atomicrmw sub ptr %i.aj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ej, %bb.ei, %bb.eh, %lean_dec.exit171
  %i.gu = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_findSomeRevM_x3f_find___at___00Lean_PersistentArray_findSomeRevM_x3f___at___00Lean_resolveLocalName___at___00Lean_unresolveNameGlobalAvoidingLocals_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_toIdent_spec__0_spec__0_spec__1_spec__3_spec__4___redArg___lam__0(ptr noundef %i.aj, ptr noundef %0)
  br label %lean_dec.exit175.thread

lean_dec.exit175.thread:                          ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.df, %bb.dg, %bb.dh, %lean_inc.exit152, %lean_inc.exit, %lean_inc.exit166, %lean_obj_tag.exit
  %.9143 = phi ptr [ %i.aa, %lean_obj_tag.exit ], [ %i.aa, %bb.eb ], [ %i.aa, %bb.ea ], [ %i.aa, %bb.dz ], [ %i.fk, %bb.df ], [ %i.fk, %bb.dg ], [ %i.fk, %bb.dh ], [ %i.gu, %lean_inc.exit ], [ %i.fk, %lean_inc.exit152 ], [ %i.ar, %lean_inc.exit166 ] ; 6 uses
  %i.gv = ptrtoint ptr %.9143 to i64              ; 2 uses
  %i.gw = and i64 %i.gv, 1
  %.not.i286 = icmp eq i64 %i.gw, 0
  br i1 %.not.i286, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %lean_dec.exit175.thread
  %i.gx = lshr i64 %i.gv, 1
  %i.gy = trunc i64 %i.gx to i32
  br label %lean_obj_tag.exit289

bb.el:                                            ; preds = %lean_dec.exit175.thread
  %i.gz = getelementptr i8, ptr %.9143, i64 4
  %.val.i288 = load i32, ptr %i.gz, align 4
  %i.ha = lshr i32 %.val.i288, 24
  br label %lean_obj_tag.exit289

lean_obj_tag.exit289:                             ; preds = %bb.ek, %bb.el
  %.0.i287 = phi i32 [ %i.gy, %bb.ek ], [ %i.ha, %bb.el ]
  %i.hb = icmp eq i32 %.0.i287, 0
  br i1 %i.hb, label %lean_dec.exit187.backedge, label %bb.em

bb.em:                                            ; preds = %lean_obj_tag.exit289
  %i.hc = and i64 %i.x, 1
  %.not.i168 = icmp eq i64 %i.hc, 0
  br i1 %.not.i168, label %bb.en, label %lean_dec.exit169

bb.en:                                            ; preds = %bb.em
  %i.hd = load i32, ptr %.1.i294, align 4, !tbaa !10 ; 3 uses
  %i.he = icmp sgt i32 %i.hd, 1
  br i1 %i.he, label %bb.eo, label %bb.ep, !prof !16

bb.eo:                                            ; preds = %bb.en
  %i.hf = add nsw i32 %i.hd, -1
  store i32 %i.hf, ptr %.1.i294, align 4, !tbaa !10
  br label %lean_dec.exit169

bb.ep:                                            ; preds = %bb.en
  %.not.i209 = icmp eq i32 %i.hd, 0
  br i1 %.not.i209, label %lean_dec.exit169, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i294) #10
  br label %lean_dec.exit169

lean_dec.exit169:                                 ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.em
  %i.hg = load i32, ptr %4, align 4, !tbaa !10    ; 3 uses
  %i.hh = icmp sgt i32 %i.hg, 1
  br i1 %i.hh, label %bb.er, label %bb.es, !prof !16

bb.er:                                            ; preds = %lean_dec.exit169
  %i.hi = add nsw i32 %i.hg, -1
  store i32 %i.hi, ptr %4, align 4, !tbaa !10
  br label %lean_dec_ref.exit214

bb.es:                                            ; preds = %lean_dec.exit169
  %.not.i213 = icmp eq i32 %i.hg, 0
  br i1 %.not.i213, label %lean_dec_ref.exit214, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #10
  br label %lean_dec_ref.exit214

lean_dec_ref.exit214:                             ; preds = %bb.er, %bb.es, %bb.et
  br i1 %.not.i153, label %bb.eu, label %bb.ey

bb.eu:                                            ; preds = %lean_dec_ref.exit214
  %i.hj = load i32, ptr %3, align 4, !tbaa !10    ; 3 uses
  %i.hk = icmp sgt i32 %i.hj, 1
  br i1 %i.hk, label %bb.ev, label %bb.ew, !prof !16

bb.ev:                                            ; preds = %bb.eu
  %i.hl = add nsw i32 %i.hj, -1
  store i32 %i.hl, ptr %3, align 4, !tbaa !10
  br label %bb.ey

bb.ew:                                            ; preds = %bb.eu
  %.not.i211 = icmp eq i32 %i.hj, 0
  br i1 %.not.i211, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %bb.ey

bb.ey:                                            ; preds = %lean_dec_ref.exit224, %bb.l, %bb.k, %bb.j, %bb.ex, %bb.ew, %bb.ev, %lean_dec_ref.exit214
  %.2.ph = phi ptr [ %.9143, %lean_dec_ref.exit214 ], [ %.9143, %bb.ev ], [ %.9143, %bb.ew ], [ %.9143, %bb.ex ], [ inttoptr (i64 1 to ptr), %bb.j ], [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %bb.l ], [ inttoptr (i64 1 to ptr), %lean_dec_ref.exit224 ]
  ret ptr %.2.ph
}

declare zeroext i8 @l_Lean_LocalDecl_isAuxDecl(ptr noundef) local_unnamed_addr #2

declare ptr @lean_private_to_user_name(ptr noundef) local_unnamed_addr #2

declare ptr @l___private_Lean_ResolveName_0__Lean_resolveLocalName_go(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @l_Lean_MacroScopesView_isSuffixOf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_findSomeRevM_x3f_find___at___00Lean_PersistentArray_findSomeRevM_x3f___at___00Lean_resolveLocalName___at___00Lean_unresolveNameGlobalAvoidingLocals_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_toIdent_spec__0_spec__0_spec__1_spec__3_spec__4___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_findSomeRevM_x3f_find___at___00Lean_PersistentArray_findSomeRevM_x3f___at___00Lean_resolveLocalName___at___00Lean_unresolveNameGlobalAvoidingLocals_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_toIdent_spec__0_spec__0_spec__1_spec__3_spec__4___redArg(ptr noundef %0, i8 noundef zeroext %i.c, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %i.e = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %5, align 4, !tbaa !10
  br label %lean_dec_ref.exit17

bb.c:                                             ; preds = %bb.a
  %.not.i16 = icmp eq i32 %i.e, 0
  br i1 %.not.i16, label %lean_dec_ref.exit17, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #10
  br label %lean_dec_ref.exit17

lean_dec_ref.exit17:                              ; preds = %bb.b, %bb.c, %bb.d
  %i.h = ptrtoint ptr %2 to i64
  %i.i = and i64 %i.h, 1
  %.not.i11 = icmp eq i64 %i.i, 0
  br i1 %.not.i11, label %bb.e, label %lean_dec.exit12

bb.e:                                             ; preds = %lean_dec_ref.exit17
  %i.j = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit12

bb.g:                                             ; preds = %bb.e
  %.not.i13 = icmp eq i32 %i.j, 0
  br i1 %.not.i13, label %lean_dec.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.h, %bb.g, %bb.f, %lean_dec_ref.exit17
  %i.m = ptrtoint ptr %0 to i64
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec.exit12
  %i.o = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i14 = icmp eq i32 %i.o, 0
  br i1 %.not.i14, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec.exit12
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_findSomeRevM_x3f_find___at___00Lean_PersistentArray_findSomeRevMAux___at___00Lean_PersistentArray_findSomeRevM_x3f___at___00Lean_resolveLocalName___at___00Lean_unresolveNameGlobalAvoidingLocals_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_toIdent_spec__0_spec__0_spec__1_spec__3_spec__5_spec__7___redArg(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.b = ptrtoint ptr %3 to i64
  %i.c = and i64 %i.b, 1
  %.not.i32 = icmp eq i64 %i.c, 0                 ; 3 uses
  br label %lean_dec.exit39

lean_dec.exit39:                                  ; preds = %lean_obj_tag.exit, %bb.a
  %.027 = phi ptr [ %6, %bb.a ], [ %.1.i66, %lean_obj_tag.exit ] ; 11 uses
  %i.d = ptrtoint ptr %.027 to i64                ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not.i55 = icmp eq i64 %i.e, 0
  br i1 %.not.i55, label %lean_nat_eq.exit, label %lean_nat_eq.exit.thread, !prof !9

lean_nat_eq.exit:                                 ; preds = %lean_dec.exit39
  %i.f = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.027, ptr noundef nonnull inttoptr (i64 1 to ptr)) #10
  br i1 %i.f, label %bb.b, label %bb.n

lean_nat_eq.exit.thread:                          ; preds = %lean_dec.exit39
  %.not71 = icmp eq ptr %.027, inttoptr (i64 1 to ptr)
  br i1 %.not71, label %lean_dec.exit41, label %.thread64

bb.b:                                             ; preds = %lean_nat_eq.exit
  %i.g = load i32, ptr %.027, align 4, !tbaa !10  ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !16
end_hunk_3
