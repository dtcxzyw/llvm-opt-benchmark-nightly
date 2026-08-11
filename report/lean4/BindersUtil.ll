inline.NumInlined: 557
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@l_Lean_Elab_Term_clearInMatchAlt___boxed:bb.a
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Elab_Term_clearInMatch_spec__0(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not36 = icmp ult i64 %2, %1
  br i1 %.not36, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.p
  %.01938 = phi i64 [ %i.t, %bb.p ], [ %2, %bb.a ] ; 4 uses
  %.02137 = phi ptr [ %.0.i.i27, %bb.p ], [ %3, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.02137, i64 24
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01938
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 5 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = and i64 %i.d, 1
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.b, label %lean_array_uget.exit

bb.b:                                             ; preds = %.lr.ph
  %.val.i.i.i = load i32, ptr %i.c, align 4, !tbaa !9 ; 3 uses
  %i.f = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i32 %.val.i.i.i, 1
  store i32 %i.g, ptr %i.c, align 4, !tbaa !9
  br label %lean_array_uget.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_array_uget.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = atomicrmw sub ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_array_uget.exit

lean_array_uget.exit:                             ; preds = %.lr.ph, %bb.c, %bb.d, %bb.e
  %.val.i.i = load i32, ptr %.02137, align 4, !tbaa !9
  %i.i = icmp eq i32 %.val.i.i, 1
  br i1 %i.i, label %lean_ensure_exclusive_array.exit.i, label %bb.f

bb.f:                                             ; preds = %lean_array_uget.exit
  %i.j = tail call ptr @lean_copy_expand_array_nonlinear(ptr noundef nonnull %.02137, i1 noundef zeroext false) #4
  br label %lean_ensure_exclusive_array.exit.i

lean_ensure_exclusive_array.exit.i:               ; preds = %bb.f, %lean_array_uget.exit
  %.0.i.i = phi ptr [ %i.j, %bb.f ], [ %.02137, %lean_array_uget.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01938 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %.not.i.i24 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i24, label %bb.g, label %lean_array_uset.exit

bb.g:                                             ; preds = %lean_ensure_exclusive_array.exit.i
  %i.p = load i32, ptr %i.m, align 4, !tbaa !9    ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.m, align 4, !tbaa !9
  br label %lean_array_uset.exit

bb.i:                                             ; preds = %bb.g
  %.not.i6.i = icmp eq i32 %i.p, 0
  br i1 %.not.i6.i, label %lean_array_uset.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #4
  br label %lean_array_uset.exit

lean_array_uset.exit:                             ; preds = %lean_ensure_exclusive_array.exit.i, %bb.h, %bb.i, %bb.j
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8, !tbaa !14
  %i.s = tail call ptr @l_Lean_Elab_Term_clearInMatchAlt(ptr noundef %i.c, ptr noundef %0)
  %i.t = add nuw i64 %.01938, 1                   ; 2 uses
  %.val.i.i25 = load i32, ptr %.0.i.i, align 4, !tbaa !9
  %i.u = icmp eq i32 %.val.i.i25, 1
  br i1 %i.u, label %lean_ensure_exclusive_array.exit.i26, label %bb.k

bb.k:                                             ; preds = %lean_array_uset.exit
  %i.v = tail call ptr @lean_copy_expand_array_nonlinear(ptr noundef nonnull %.0.i.i, i1 noundef zeroext false) #4
  br label %lean_ensure_exclusive_array.exit.i26

lean_ensure_exclusive_array.exit.i26:             ; preds = %bb.k, %lean_array_uset.exit
  %.0.i.i27 = phi ptr [ %i.v, %bb.k ], [ %.0.i.i, %lean_array_uset.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i27, i64 24
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.01938 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14   ; 4 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, 1
  %.not.i.i28 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i28, label %bb.l, label %bb.p

bb.l:                                             ; preds = %lean_ensure_exclusive_array.exit.i26
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !9   ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !9
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %.not.i6.i29 = icmp eq i32 %i.ab, 0
  br i1 %.not.i6.i29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.y) #4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %lean_ensure_exclusive_array.exit.i26
  store ptr %i.s, ptr %i.x, align 8, !tbaa !14
  %exitcond.not = icmp eq i64 %i.t, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.021.lcssa = phi ptr [ %3, %bb.a ], [ %.0.i.i27, %bb.p ]
  ret ptr %.021.lcssa
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Elab_Term_clearInMatch_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val16 = load i64, ptr %i.a, align 8, !tbaa !12
  %i.b = load i32, ptr %1, align 8, !tbaa !9      ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !9
  br label %lean_dec.exit10

bb.c:                                             ; preds = %bb.a
  %.not.i11 = icmp eq i32 %i.b, 0
  br i1 %.not.i11, label %lean_dec.exit10, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec.exit10

lean_dec.exit10:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !12
  %i.f = load i32, ptr %2, align 8, !tbaa !9      ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_dec.exit10
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 8, !tbaa !9
  br label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit10
  %.not.i12 = icmp eq i32 %i.f, 0
  br i1 %.not.i12, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Elab_Term_clearInMatch_spec__0(ptr noundef %0, i64 noundef %.val16, i64 noundef %.val, ptr noundef %3)
  %i.j = load i32, ptr %0, align 4, !tbaa !9      ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %lean_dec.exit
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %0, align 4, !tbaa !9
  br label %lean_dec_ref.exit15

bb.i:                                             ; preds = %lean_dec.exit
  %.not.i14 = icmp eq i32 %i.j, 0
  br i1 %.not.i14, label %lean_dec_ref.exit15, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit15

lean_dec_ref.exit15:                              ; preds = %bb.h, %bb.i, %bb.j
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_Lean_Elab_Term_clearInMatch(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
lean_nat_eq.exit:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val376 = load i64, ptr %i.a, align 8, !tbaa !12
  %.mask = and i64 %.val376, 9223372036854775807
  %i.b = icmp eq i64 %.mask, 0                    ; 2 uses
  %4 = zext i1 %i.b to i8
  br i1 %i.b, label %bb.fe, label %bb.a

bb.a:                                             ; preds = %lean_nat_eq.exit
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 1
  %.not.i373 = icmp eq i64 %i.d, 0                ; 2 uses
  br i1 %.not.i373, label %bb.b, label %lean_inc.exit374

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !9 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i, 1
  store i32 %i.f, ptr %0, align 4, !tbaa !9
  br label %lean_inc.exit374

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit374, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit374

lean_inc.exit374:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %0, ptr noundef nonnull @l_Lean_Elab_Term_expandMatchAlts_x3f___closed__1_value) #4
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %lean_inc.exit374
  tail call void @lean_inc_heartbeat() #4
  %i.j = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %lean_dec.exit304

bb.g:                                             ; preds = %bb.f
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.h:                                             ; preds = %lean_inc.exit374
  %i.l = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %0, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4 ; 18 uses
  %i.m = tail call zeroext i8 @l_Lean_Syntax_isNone(ptr noundef %i.l) #4
  %i.n = icmp eq i8 %i.m, 0
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = and i64 %i.o, 1
  %.not.i371 = icmp eq i64 %i.p, 0                ; 2 uses
  br i1 %i.n, label %bb.i, label %bb.y

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i371, label %bb.j, label %lean_inc.exit372.thread

bb.j:                                             ; preds = %bb.i
  %.val.i.i377 = load i32, ptr %i.l, align 4, !tbaa !9 ; 3 uses
  %i.q = icmp sgt i32 %.val.i.i377, 0
  br i1 %i.q, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.r = add nuw i32 %.val.i.i377, 1
  store i32 %i.r, ptr %i.l, align 4, !tbaa !9
  br label %lean_inc.exit372

bb.l:                                             ; preds = %bb.j
  %.not.i.i378 = icmp eq i32 %.val.i.i377, 0
  br i1 %.not.i.i378, label %lean_inc.exit372, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = atomicrmw sub ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit372

lean_inc.exit372:                                 ; preds = %bb.m, %bb.l, %bb.k
  %i.t = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef nonnull %i.l, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.n, label %bb.s

lean_inc.exit372.thread:                          ; preds = %bb.i
  %i.u = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef %i.l, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4
  %.not438 = icmp eq i8 %i.u, 0
  br i1 %.not438, label %lean_dec.exit316, label %.thread444

.thread444:                                       ; preds = %lean_inc.exit372.thread
  %i.v = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr)) #4
  br label %lean_dec.exit314

bb.n:                                             ; preds = %lean_inc.exit372
  %i.w = load i32, ptr %i.l, align 4, !tbaa !9    ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.o, label %bb.p, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.l, align 4, !tbaa !9
  br label %lean_dec.exit316

bb.p:                                             ; preds = %bb.n
  %.not.i317 = icmp eq i32 %i.w, 0
  br i1 %.not.i317, label %lean_dec.exit316, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.l) #4
  br label %lean_dec.exit316

lean_dec.exit316:                                 ; preds = %lean_inc.exit372.thread, %bb.q, %bb.p, %bb.o
  tail call void @lean_inc_heartbeat() #4
  %i.z = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.r, label %lean_dec.exit304

bb.r:                                             ; preds = %lean_dec.exit316
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.s:                                             ; preds = %lean_inc.exit372
  %i.ab = tail call ptr @l_Lean_Syntax_getArg(ptr noundef nonnull %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr)) #4 ; 3 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !9   ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %i.l, align 4, !tbaa !9
  br label %lean_dec.exit314

bb.u:                                             ; preds = %bb.s
  %.not.i318 = icmp eq i32 %i.ac, 0
  br i1 %.not.i318, label %lean_dec.exit314, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.l) #4
  br label %lean_dec.exit314

lean_dec.exit314:                                 ; preds = %bb.v, %bb.u, %bb.t, %.thread444
  %i.af = phi ptr [ %i.v, %.thread444 ], [ %i.ab, %bb.v ], [ %i.ab, %bb.t ], [ %i.ab, %bb.u ]
  tail call void @lean_inc_heartbeat() #4
  %i.ag = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.w, label %bb.x

bb.w:                                             ; preds = %lean_dec.exit314
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.x:                                             ; preds = %lean_dec.exit314
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 1, ptr %i.ag, align 4, !tbaa !9
  store i32 16842768, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !14
  br label %lean_dec.exit312

bb.y:                                             ; preds = %bb.h
  br i1 %.not.i371, label %bb.z, label %lean_dec.exit312

bb.z:                                             ; preds = %bb.y
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !9   ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %bb.aa, label %bb.ab, !prof !11

bb.aa:                                            ; preds = %bb.z
  %i.am = add nsw i32 %i.ak, -1
  store i32 %i.am, ptr %i.l, align 4, !tbaa !9
  br label %lean_dec.exit312

bb.ab:                                            ; preds = %bb.z
  %.not.i320 = icmp eq i32 %i.ak, 0
  br i1 %.not.i320, label %lean_dec.exit312, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.l) #4
  br label %lean_dec.exit312

lean_dec.exit312:                                 ; preds = %bb.y, %bb.aa, %bb.ab, %bb.ac, %bb.x
  %.1281 = phi ptr [ %i.ag, %bb.x ], [ inttoptr (i64 1 to ptr), %bb.ac ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.y ] ; 18 uses
  %i.an = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %0, ptr noundef nonnull inttoptr (i64 5 to ptr)) #4 ; 18 uses
  %i.ao = tail call zeroext i8 @l_Lean_Syntax_isNone(ptr noundef %i.an) #4
  %i.ap = icmp eq i8 %i.ao, 0
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = and i64 %i.aq, 1
  %.not.i369 = icmp eq i64 %i.ar, 0               ; 2 uses
  br i1 %i.ap, label %bb.ad, label %bb.aw

bb.ad:                                            ; preds = %lean_dec.exit312
  br i1 %.not.i369, label %bb.ae, label %lean_inc.exit370.thread

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i382 = load i32, ptr %i.an, align 4, !tbaa !9 ; 3 uses
  %i.as = icmp sgt i32 %.val.i.i382, 0
  br i1 %i.as, label %bb.af, label %bb.ag, !prof !11

bb.af:                                            ; preds = %bb.ae
  %i.at = add nuw i32 %.val.i.i382, 1
  store i32 %i.at, ptr %i.an, align 4, !tbaa !9
  br label %lean_inc.exit370

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i383 = icmp eq i32 %.val.i.i382, 0
  br i1 %.not.i.i383, label %lean_inc.exit370, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
end_hunk_0
begin_hunk_1_@l_Lean_Elab_Term_clearInMatch:lean_nat_eq.exit

bb.db:                                            ; preds = %bb.cz
  %.not.i.i412 = icmp eq i32 %.val.i.i411, 0
  br i1 %.not.i.i412, label %lean_inc.exit360, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.fi = atomicrmw sub ptr %i.fd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit360

lean_inc.exit360:                                 ; preds = %bb.dc, %bb.db, %bb.da
  %i.fj = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef nonnull %i.fd, ptr noundef nonnull @l_Lean_Elab_Term_expandMatchAlts_x3f___closed__6_value) #4
  %.not286 = icmp eq i8 %i.fj, 0
  br i1 %.not286, label %bb.dd, label %bb.dq

lean_inc.exit360.thread:                          ; preds = %bb.cy
  %i.fk = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %i.fd, ptr noundef nonnull @l_Lean_Elab_Term_expandMatchAlts_x3f___closed__6_value) #4
  %.not286462 = icmp eq i8 %i.fk, 0
  br i1 %.not286462, label %lean_dec.exit300, label %.thread469

.thread469:                                       ; preds = %lean_inc.exit360.thread
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !14
  %i.fn = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.fd, ptr noundef nonnull inttoptr (i64 1 to ptr)) #4
  br label %lean_dec.exit294

bb.dd:                                            ; preds = %lean_inc.exit360
  %i.fo = load i32, ptr %i.fd, align 4, !tbaa !9  ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 1
  br i1 %i.fp, label %bb.de, label %bb.df, !prof !11

bb.de:                                            ; preds = %bb.dd
  %i.fq = add nsw i32 %i.fo, -1
  store i32 %i.fq, ptr %i.fd, align 4, !tbaa !9
  br label %lean_dec.exit300

bb.df:                                            ; preds = %bb.dd
  %.not.i332 = icmp eq i32 %i.fo, 0
  br i1 %.not.i332, label %lean_dec.exit300, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fd) #4
  br label %lean_dec.exit300

lean_dec.exit300:                                 ; preds = %lean_inc.exit360.thread, %bb.dg, %bb.df, %bb.de
  %i.fr = ptrtoint ptr %.2267.ph to i64
  %i.fs = and i64 %i.fr, 1
  %.not.i297 = icmp eq i64 %i.fs, 0
  br i1 %.not.i297, label %bb.dh, label %lean_dec.exit298

bb.dh:                                            ; preds = %lean_dec.exit300
  %i.ft = load i32, ptr %.2267.ph, align 4, !tbaa !9 ; 3 uses
  %i.fu = icmp sgt i32 %i.ft, 1
  br i1 %i.fu, label %bb.di, label %bb.dj, !prof !11

bb.di:                                            ; preds = %bb.dh
  %i.fv = add nsw i32 %i.ft, -1
  store i32 %i.fv, ptr %.2267.ph, align 4, !tbaa !9
  br label %lean_dec.exit298

bb.dj:                                            ; preds = %bb.dh
  %.not.i334 = icmp eq i32 %i.ft, 0
  br i1 %.not.i334, label %lean_dec.exit298, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.2267.ph) #4
  br label %lean_dec.exit298

lean_dec.exit298:                                 ; preds = %bb.dk, %bb.dj, %bb.di, %lean_dec.exit300
  %i.fw = ptrtoint ptr %.1281 to i64
  %i.fx = and i64 %i.fw, 1
  %.not.i295 = icmp eq i64 %i.fx, 0
  br i1 %.not.i295, label %bb.dl, label %lean_dec.exit296

bb.dl:                                            ; preds = %lean_dec.exit298
  %i.fy = load i32, ptr %.1281, align 4, !tbaa !9 ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, 1
  br i1 %i.fz, label %bb.dm, label %bb.dn, !prof !11

bb.dm:                                            ; preds = %bb.dl
  %i.ga = add nsw i32 %i.fy, -1
  store i32 %i.ga, ptr %.1281, align 4, !tbaa !9
  br label %lean_dec.exit296

bb.dn:                                            ; preds = %bb.dl
  %.not.i336 = icmp eq i32 %i.fy, 0
  br i1 %.not.i336, label %lean_dec.exit296, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1281) #4
  br label %lean_dec.exit296

lean_dec.exit296:                                 ; preds = %bb.do, %bb.dn, %bb.dm, %lean_dec.exit298
  tail call void @lean_inc_heartbeat() #4
  %i.gb = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.dp, label %lean_dec.exit304

bb.dp:                                            ; preds = %lean_dec.exit296
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.dq:                                            ; preds = %lean_inc.exit360
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !14 ; 3 uses
  %i.gf = tail call ptr @l_Lean_Syntax_getArg(ptr noundef nonnull %i.fd, ptr noundef nonnull inttoptr (i64 1 to ptr)) #4 ; 3 uses
  %i.gg = load i32, ptr %i.fd, align 4, !tbaa !9  ; 3 uses
  %i.gh = icmp sgt i32 %i.gg, 1
  br i1 %i.gh, label %bb.dr, label %bb.ds, !prof !11

bb.dr:                                            ; preds = %bb.dq
  %i.gi = add nsw i32 %i.gg, -1
  store i32 %i.gi, ptr %i.fd, align 4, !tbaa !9
  br label %lean_dec.exit294

bb.ds:                                            ; preds = %bb.dq
  %.not.i338 = icmp eq i32 %i.gg, 0
  br i1 %.not.i338, label %lean_dec.exit294, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fd) #4
  br label %lean_dec.exit294

lean_dec.exit294:                                 ; preds = %bb.dt, %bb.ds, %bb.dr, %.thread469
  %i.gj = phi ptr [ %i.fn, %.thread469 ], [ %i.gf, %bb.dt ], [ %i.gf, %bb.dr ], [ %i.gf, %bb.ds ] ; 5 uses
  %i.gk = phi ptr [ %i.fm, %.thread469 ], [ %i.ge, %bb.dt ], [ %i.ge, %bb.dr ], [ %i.ge, %bb.ds ]
  %i.gl = tail call ptr @l_Lean_Syntax_getArgs(ptr noundef %i.gj) #4 ; 2 uses
  %i.gm = ptrtoint ptr %i.gj to i64
  %i.gn = and i64 %i.gm, 1
  %.not.i291 = icmp eq i64 %i.gn, 0
  br i1 %.not.i291, label %bb.du, label %lean_dec.exit292

bb.du:                                            ; preds = %lean_dec.exit294
  %i.go = load i32, ptr %i.gj, align 4, !tbaa !9  ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %bb.dv, label %bb.dw, !prof !11

bb.dv:                                            ; preds = %bb.du
  %i.gq = add nsw i32 %i.go, -1
  store i32 %i.gq, ptr %i.gj, align 4, !tbaa !9
  br label %lean_dec.exit292

bb.dw:                                            ; preds = %bb.du
  %.not.i340 = icmp eq i32 %i.go, 0
  br i1 %.not.i340, label %lean_dec.exit292, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gj) #4
  br label %lean_dec.exit292

lean_dec.exit292:                                 ; preds = %bb.dx, %bb.dw, %bb.dv, %lean_dec.exit294
  %i.gr = getelementptr i8, ptr %i.gl, i64 8
  %.val = load i64, ptr %i.gr, align 8, !tbaa !12
  %i.gs = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %0, ptr noundef nonnull inttoptr (i64 7 to ptr)) #4 ; 5 uses
  br i1 %.not.i373, label %bb.dy, label %lean_dec.exit290

bb.dy:                                            ; preds = %lean_dec.exit292
  %i.gt = load i32, ptr %0, align 4, !tbaa !9     ; 3 uses
  %i.gu = icmp sgt i32 %i.gt, 1
  br i1 %i.gu, label %bb.dz, label %bb.ea, !prof !11

bb.dz:                                            ; preds = %bb.dy
  %i.gv = add nsw i32 %i.gt, -1
  store i32 %i.gv, ptr %0, align 4, !tbaa !9
  br label %lean_dec.exit290

bb.ea:                                            ; preds = %bb.dy
  %.not.i342 = icmp eq i32 %i.gt, 0
  br i1 %.not.i342, label %lean_dec.exit290, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec.exit290

lean_dec.exit290:                                 ; preds = %bb.eb, %bb.ea, %bb.dz, %lean_dec.exit292
  %i.gw = tail call ptr @l_Lean_Syntax_getArgs(ptr noundef %i.gs) #4 ; 4 uses
  %i.gx = ptrtoint ptr %i.gs to i64
  %i.gy = and i64 %i.gx, 1
  %.not.i287 = icmp eq i64 %i.gy, 0
  br i1 %.not.i287, label %bb.ec, label %lean_dec.exit288

bb.ec:                                            ; preds = %lean_dec.exit290
  %i.gz = load i32, ptr %i.gs, align 4, !tbaa !9  ; 3 uses
  %i.ha = icmp sgt i32 %i.gz, 1
  br i1 %i.ha, label %bb.ed, label %bb.ee, !prof !11

bb.ed:                                            ; preds = %bb.ec
  %i.hb = add nsw i32 %i.gz, -1
  store i32 %i.hb, ptr %i.gs, align 4, !tbaa !9
  br label %lean_dec.exit288

bb.ee:                                            ; preds = %bb.ec
  %.not.i344 = icmp eq i32 %i.gz, 0
  br i1 %.not.i344, label %lean_dec.exit288, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gs) #4
  br label %lean_dec.exit288

lean_dec.exit288:                                 ; preds = %bb.ef, %bb.ee, %bb.ed, %lean_dec.exit290
  %i.hc = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Elab_Term_clearInMatch_spec__0(ptr noundef nonnull %1, i64 noundef %.val, i64 noundef 0, ptr noundef nonnull %i.gl) ; 4 uses
  %i.hd = tail call ptr @l_Lean_SourceInfo_fromRef(ptr noundef %i.gk, i8 noundef zeroext %4) #4 ; 18 uses
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = and i64 %i.he, 1
  %.not.i357 = icmp eq i64 %i.hf, 0               ; 3 uses
  br i1 %.not.i357, label %bb.eg, label %lean_inc.exit358

bb.eg:                                            ; preds = %lean_dec.exit288
  %.val.i.i415 = load i32, ptr %i.hd, align 4, !tbaa !9 ; 3 uses
  %i.hg = icmp sgt i32 %.val.i.i415, 0
  br i1 %i.hg, label %bb.eh, label %bb.ei, !prof !11

bb.eh:                                            ; preds = %bb.eg
  %i.hh = add nuw i32 %.val.i.i415, 1
  store i32 %i.hh, ptr %i.hd, align 4, !tbaa !9
  br label %lean_inc.exit358

bb.ei:                                            ; preds = %bb.eg
  %.not.i.i416 = icmp eq i32 %.val.i.i415, 0
  br i1 %.not.i.i416, label %lean_inc.exit358, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.hi = atomicrmw sub ptr %i.hd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit358

lean_inc.exit358:                                 ; preds = %bb.ej, %bb.ei, %bb.eh, %lean_dec.exit288
  tail call void @lean_inc_heartbeat() #4
  %i.hj = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.ek, label %lean_alloc_ctor.exit418

bb.ek:                                            ; preds = %lean_inc.exit358
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit418:                          ; preds = %lean_inc.exit358
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store i32 1, ptr %i.hj, align 4, !tbaa !9
  store i32 33685528, ptr %i.hl, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr %i.hd, ptr %i.hm, align 8, !tbaa !14
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store ptr @l_Lean_Elab_Term_expandMatchAlts_x3f___closed__0_value, ptr %i.hn, align 8, !tbaa !14
  %i.ho = load atomic i32, ptr @l_Lean_Elab_Term_expandMatchAlts_x3f___closed__7_once seq_cst, align 4, !tbaa !18
  %i.hp = icmp eq i32 %i.ho, 1
  br i1 %i.hp, label %bb.el, label %bb.em, !prof !11

bb.el:                                            ; preds = %lean_alloc_ctor.exit418
  %i.hq = load ptr, ptr @l_Lean_Elab_Term_expandMatchAlts_x3f___closed__7, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.em:                                            ; preds = %lean_alloc_ctor.exit418
  %i.hr = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Term_expandMatchAlts_x3f___closed__7, ptr noundef nonnull @l_Lean_Elab_Term_expandMatchAlts_x3f___closed__7_once, ptr noundef nonnull @_init_l_Lean_Elab_Term_expandMatchAlts_x3f___closed__7) #4
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.el, %bb.em
  %.0.i419 = phi ptr [ %i.hq, %bb.el ], [ %i.hr, %bb.em ] ; 10 uses
  %i.hs = ptrtoint ptr %.1281 to i64              ; 2 uses
  %i.ht = and i64 %i.hs, 1
  %.not.i420 = icmp eq i64 %i.ht, 0
  br i1 %.not.i420, label %lean_obj_tag.exit423, label %lean_obj_tag.exit423.thread

lean_obj_tag.exit423:                             ; preds = %lean_obj_once.exit
  %i.hu = getelementptr i8, ptr %.1281, i64 4
  %.val.i422 = load i32, ptr %i.hu, align 4
  %.mask567 = and i32 %.val.i422, -16777216
  %i.hv = icmp eq i32 %.mask567, 16777216
  br i1 %i.hv, label %bb.en, label %bb.fa

lean_obj_tag.exit423.thread:                      ; preds = %lean_obj_once.exit
  %i.hw = and i64 %i.hs, 8589934590
  %i.hx = icmp eq i64 %i.hw, 2
  br i1 %i.hx, label %bb.en, label %lean_dec.exit.thread

bb.en:                                            ; preds = %lean_obj_tag.exit423.thread, %lean_obj_tag.exit423
  %i.hy = getelementptr inbounds nuw i8, ptr %.1281, i64 8 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !14 ; 6 uses
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = and i64 %i.ia, 1
  %.not.i356 = icmp eq i64 %i.ib, 0
  br i1 %.not.i356, label %bb.eo, label %lean_inc.exit

bb.eo:                                            ; preds = %bb.en
  %.val.i.i424 = load i32, ptr %i.hz, align 4, !tbaa !9 ; 3 uses
  %i.ic = icmp sgt i32 %.val.i.i424, 0
  br i1 %i.ic, label %bb.ep, label %bb.eq, !prof !11

bb.ep:                                            ; preds = %bb.eo
  %i.id = add nuw i32 %.val.i.i424, 1
  store i32 %i.id, ptr %i.hz, align 4, !tbaa !9
  br label %lean_inc.exit

bb.eq:                                            ; preds = %bb.eo
  %.not.i.i425 = icmp eq i32 %.val.i.i424, 0
  br i1 %.not.i.i425, label %lean_inc.exit, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ie = atomicrmw sub ptr %i.hz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.er, %bb.eq, %bb.ep, %bb.en
  %.val.i427 = load i32, ptr %.1281, align 8, !tbaa !9 ; 4 uses
  %i.if = icmp eq i32 %.val.i427, 1
  br i1 %i.if, label %.preheader.i429.preheader, label %bb.ew

.preheader.i429.preheader:                        ; preds = %lean_inc.exit
  %i.ig = load ptr, ptr %i.hy, align 8, !tbaa !14 ; 4 uses
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = and i64 %i.ih, 1
  %.not.i.i431 = icmp eq i64 %i.ii, 0
  br i1 %.not.i.i431, label %bb.es, label %lean_dec.exit.i432

bb.es:                                            ; preds = %.preheader.i429.preheader
  %i.ij = load i32, ptr %i.ig, align 4, !tbaa !9  ; 3 uses
  %i.ik = icmp sgt i32 %i.ij, 1
  br i1 %i.ik, label %bb.et, label %bb.eu, !prof !11

bb.et:                                            ; preds = %bb.es
  %i.il = add nsw i32 %i.ij, -1
  store i32 %i.il, ptr %i.ig, align 4, !tbaa !9
  br label %lean_dec.exit.i432

bb.eu:                                            ; preds = %bb.es
  %.not.i7.i435 = icmp eq i32 %i.ij, 0
  br i1 %.not.i7.i435, label %lean_dec.exit.i432, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ig) #4
  br label %lean_dec.exit.i432

lean_dec.exit.i432:                               ; preds = %bb.ev, %bb.eu, %bb.et, %.preheader.i429.preheader
  tail call void @lean_free_object(ptr noundef nonnull %.1281) #4
  %i.im = tail call ptr @l_Array_mkArray1___redArg(ptr noundef %i.hz) #4
  br label %lean_dec.exit.thread

bb.ew:                                            ; preds = %lean_inc.exit
  %i.in = icmp sgt i32 %.val.i427, 1
  br i1 %i.in, label %bb.ex, label %bb.ey, !prof !11

bb.ex:                                            ; preds = %bb.ew
  %i.io = add nsw i32 %.val.i427, -1
  store i32 %i.io, ptr %.1281, align 8, !tbaa !9
  br label %lean_dec.exit.thread499

bb.ey:                                            ; preds = %bb.ew
  %.not.i8.i428 = icmp eq i32 %.val.i427, 0
  br i1 %.not.i8.i428, label %lean_dec.exit.thread499, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1281) #4
  br label %lean_dec.exit.thread499

bb.fa:                                            ; preds = %lean_obj_tag.exit423
  %i.ip = load i32, ptr %.1281, align 4, !tbaa !9 ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.fb, label %bb.fc, !prof !11

bb.fb:                                            ; preds = %bb.fa
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %.1281, align 4, !tbaa !9
  br label %lean_dec.exit.thread

bb.fc:                                            ; preds = %bb.fa
  %.not.i346 = icmp eq i32 %i.ip, 0
  br i1 %.not.i346, label %lean_dec.exit.thread, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1281) #4
  br label %lean_dec.exit.thread

lean_dec.exit.thread499:                          ; preds = %bb.ez, %bb.ey, %bb.ex
  %i.is = tail call ptr @l_Array_mkArray1___redArg(ptr noundef %i.hz) #4
  br label %lean_dec.exit.thread

bb.fe:                                            ; preds = %lean_nat_eq.exit
  tail call void @lean_inc_heartbeat() #4
  %i.it = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.ff, label %lean_dec.exit304

bb.ff:                                            ; preds = %bb.fe
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_dec.exit304:                                 ; preds = %bb.fe, %lean_dec.exit296, %lean_inc.exit368, %lean_dec.exit308, %lean_dec.exit316, %bb.f
  %.sink566 = phi ptr [ %i.fb, %lean_inc.exit368 ], [ %i.z, %lean_dec.exit316 ], [ %i.j, %bb.f ], [ %i.gb, %lean_dec.exit296 ], [ %i.bg, %lean_dec.exit308 ], [ %i.it, %bb.fe ] ; 5 uses
  %.sink = phi ptr [ %i.fa, %lean_inc.exit368 ], [ %0, %lean_dec.exit316 ], [ %0, %bb.f ], [ %0, %lean_dec.exit296 ], [ %0, %lean_dec.exit308 ], [ %0, %bb.fe ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.sink566, i64 4
  store i32 1, ptr %.sink566, align 4, !tbaa !9
  store i32 131096, ptr %i.iv, align 4
  %i.iw = getelementptr inbounds nuw i8, ptr %.sink566, i64 8
  store ptr %.sink, ptr %i.iw, align 8, !tbaa !14
  %i.ix = getelementptr inbounds nuw i8, ptr %.sink566, i64 16
  store ptr %3, ptr %i.ix, align 8, !tbaa !14
  ret ptr %.sink566
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_Lean_Elab_Term_clearInMatch___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_clearInMatch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = load i32, ptr %2, align 4, !tbaa !9      ; 3 uses
end_hunk_1
