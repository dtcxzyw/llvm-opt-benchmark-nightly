Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Watchdog?download=true
inline.NumInlined: 14664
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumUnrolled: 43
begin_hunk_0_@l_Lean_Server_Watchdog_shutdown:bb.a
  %.not.i61 = icmp eq i32 %i.ag, 0
  br i1 %.not.i61, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ad) #12
  br label %bb.z

bb.v:                                             ; preds = %lean_dec_ref_known.exit
  %i.aj = icmp sgt i32 %.val68, 1
  br i1 %i.aj, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.ak = add nsw i32 %.val68, -1
  store i32 %i.ak, ptr %i.aa, align 4, !tbaa !10
  br label %lean_dec.exit57

bb.x:                                             ; preds = %bb.v
  %.not.i62 = icmp eq i32 %.val68, 0
  br i1 %.not.i62, label %lean_dec.exit57, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #12
  br label %lean_dec.exit57

bb.z:                                             ; preds = %bb.q, %bb.s, %bb.t, %bb.u
  store ptr inttoptr (i64 1 to ptr), ptr %i.ac, align 8, !tbaa !14
  br label %lean_dec.exit

lean_dec.exit57:                                  ; preds = %bb.y, %bb.x, %bb.w
  tail call void @lean_inc_heartbeat() #12
  %i.al = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.aa, label %lean_alloc_ctor.exit

bb.aa:                                            ; preds = %lean_dec.exit57
  tail call void @lean_internal_panic_out_of_memory() #13
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec.exit57
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 1, ptr %i.al, align 4, !tbaa !10
  store i32 65552, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !tbaa !14
  br label %lean_dec.exit

bb.ab:                                            ; preds = %lean_obj_tag.exit
  br i1 %.not.i59, label %bb.ac, label %lean_dec.exit53

bb.ac:                                            ; preds = %bb.ab
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !10  ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.ad, label %bb.ae, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %i.c, align 4, !tbaa !10
  br label %lean_dec.exit53

bb.ae:                                            ; preds = %bb.ac
  %.not.i64 = icmp eq i32 %i.ap, 0
  br i1 %.not.i64, label %lean_dec.exit53, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #12
  br label %lean_dec.exit53

lean_dec.exit53:                                  ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !14 ; 5 uses
  %.val = load i32, ptr %i.i, align 8, !tbaa !10
  %i.au = icmp eq i32 %.val, 1
  br i1 %i.au, label %lean_dec.exit, label %bb.ag

bb.ag:                                            ; preds = %lean_dec.exit53
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = and i64 %i.av, 1
  %.not.i58 = icmp eq i64 %i.aw, 0
  br i1 %.not.i58, label %bb.ah, label %lean_inc.exit

bb.ah:                                            ; preds = %bb.ag
  %.val.i.i72 = load i32, ptr %i.at, align 4, !tbaa !10 ; 3 uses
  %i.ax = icmp sgt i32 %.val.i.i72, 0
  br i1 %i.ax, label %bb.ai, label %bb.aj, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.ay = add nuw i32 %.val.i.i72, 1
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !10
  br label %lean_inc.exit

bb.aj:                                            ; preds = %bb.ah
  %.not.i.i73 = icmp eq i32 %.val.i.i72, 0
  br i1 %.not.i.i73, label %lean_inc.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.az = atomicrmw sub ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag
  br i1 %.not.i69, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %lean_inc.exit
  %i.ba = load i32, ptr %i.i, align 8, !tbaa !10  ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.am, label %bb.an, !prof !11

bb.am:                                            ; preds = %bb.al
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %i.i, align 8, !tbaa !10
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %.not.i66 = icmp eq i32 %i.ba, 0
  br i1 %.not.i66, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #12
  br label %bb.ap

bb.ap:                                            ; preds = %lean_inc.exit, %bb.am, %bb.an, %bb.ao
  tail call void @lean_inc_heartbeat() #12
  %i.bd = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.aq, label %lean_alloc_ctor.exit75

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_internal_panic_out_of_memory() #13
  unreachable

lean_alloc_ctor.exit75:                           ; preds = %bb.ap
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 1, ptr %i.bd, align 4, !tbaa !10
  store i32 16842768, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.at, ptr %i.bg, align 8, !tbaa !14
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit53, %lean_alloc_ctor.exit75, %bb.z, %lean_alloc_ctor.exit
  %.3 = phi ptr [ %i.al, %lean_alloc_ctor.exit ], [ %i.aa, %bb.z ], [ %i.bd, %lean_alloc_ctor.exit75 ], [ %i.i, %lean_dec.exit53 ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Server_Watchdog_shutdown___boxed(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Server_Watchdog_shutdown(ptr noundef %0)
  %i.b = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Std_DTreeMap_Internal_Impl_forInStep___at___00Lean_Server_Watchdog_shutdown_spec__1(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Std_DTreeMap_Internal_Impl_forInStep___at___00Lean_Server_Watchdog_shutdown_spec__1___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Std_DTreeMap_Internal_Impl_forInStep___at___00Lean_Server_Watchdog_shutdown_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call nonnull ptr @l_Std_DTreeMap_Internal_Impl_forInStep___at___00Lean_Server_Watchdog_shutdown_spec__1___redArg(ptr noundef %0, ptr noundef %1)
  %i.b = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l_Lean_Server_Watchdog_ServerEvent_ctorIdx(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %switch.selectcmp = icmp eq i32 %.0.i, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp5 = icmp eq i32 %.0.i, 0
  %switch.select6 = select i1 %switch.selectcmp5, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select6
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Server_Watchdog_ServerEvent_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %l_Lean_Server_Watchdog_ServerEvent_ctorIdx.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %l_Lean_Server_Watchdog_ServerEvent_ctorIdx.exit

l_Lean_Server_Watchdog_ServerEvent_ctorIdx.exit:  ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %l_Lean_Server_Watchdog_ServerEvent_ctorIdx.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.e:                                             ; preds = %l_Lean_Server_Watchdog_ServerEvent_ctorIdx.exit
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.d, %bb.e, %bb.f
  %switch.selectcmp5.i = icmp eq i32 %.0.i.i, 0
  %switch.selectcmp.i = icmp eq i32 %.0.i.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.select6.i = select i1 %switch.selectcmp5.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select6.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_Watchdog_ServerEvent_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i25 = icmp eq i64 %i.b, 0
  br i1 %.not.i25, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 13 uses
  switch i32 %.0.i, label %bb.aj [
    i32 0, label %bb.d
    i32 1, label %bb.x
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !10 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i, 0
  br i1 %i.i, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw i32 %.val.i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !10
  br label %lean_inc_ref.exit

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 5 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %.not.i23 = icmp eq i64 %i.o, 0
  br i1 %.not.i23, label %bb.h, label %lean_inc.exit24

bb.h:                                             ; preds = %lean_inc_ref.exit
  %.val.i.i26 = load i32, ptr %i.m, align 4, !tbaa !10 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i26, 0
  br i1 %i.p, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.q = add nuw i32 %.val.i.i26, 1
  store i32 %i.q, ptr %i.m, align 4, !tbaa !10
  br label %lean_inc.exit24

bb.j:                                             ; preds = %bb.h
  %.not.i.i27 = icmp eq i32 %.val.i.i26, 0
  br i1 %.not.i.i27, label %lean_inc.exit24, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit24

lean_inc.exit24:                                  ; preds = %bb.k, %bb.j, %bb.i, %lean_inc_ref.exit
  %.val.i29 = load i32, ptr %0, align 8, !tbaa !10 ; 4 uses
  %i.s = icmp eq i32 %.val.i29, 1
  br i1 %i.s, label %.preheader.i.preheader, label %bb.t

.preheader.i.preheader:                           ; preds = %lean_inc.exit24
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !14   ; 4 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 1
  %.not.i.i30 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i30, label %bb.l, label %lean_dec.exit.i

bb.l:                                             ; preds = %.preheader.i.preheader
  %i.w = load i32, ptr %i.t, align 4, !tbaa !10   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.t, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.n:                                             ; preds = %bb.l
  %.not.i7.i = icmp eq i32 %i.w, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #12
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.o, %bb.n, %bb.m, %.preheader.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14  ; 4 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 1
  %.not.i.i30.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i30.1, label %bb.p, label %lean_dec.exit.i.1

bb.p:                                             ; preds = %lean_dec.exit.i
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !10 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.s, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  %.not.i7.i.1 = icmp eq i32 %i.ad, 0
  br i1 %.not.i7.i.1, label %lean_dec.exit.i.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #12
  br label %lean_dec.exit.i.1

bb.s:                                             ; preds = %bb.p
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !10
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.s, %bb.r, %bb.q, %lean_dec.exit.i
  tail call void @lean_free_object(ptr noundef nonnull %0) #12
  br label %lean_dec_ref_known.exit

bb.t:                                             ; preds = %lean_inc.exit24
  %i.ag = icmp sgt i32 %.val.i29, 1
  br i1 %i.ag, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.ah = add nsw i32 %.val.i29, -1
  store i32 %i.ah, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.v:                                             ; preds = %bb.t
  %.not.i8.i = icmp eq i32 %.val.i29, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.1, %bb.u, %bb.v, %bb.w
  %i.ai = tail call ptr @lean_apply_2(ptr noundef %1, ptr noundef nonnull %i.h, ptr noundef %i.m) #12
  br label %bb.aw

bb.x:                                             ; preds = %lean_obj_tag.exit
  %.val.i.i31 = load i32, ptr %i.h, align 4, !tbaa !10 ; 3 uses
  %i.aj = icmp sgt i32 %.val.i.i31, 0
  br i1 %i.aj, label %bb.y, label %bb.z, !prof !11

bb.y:                                             ; preds = %bb.x
  %i.ak = add nuw i32 %.val.i.i31, 1
  store i32 %i.ak, ptr %i.h, align 4, !tbaa !10
  br label %lean_inc_ref.exit33

bb.z:                                             ; preds = %bb.x
  %.not.i.i32 = icmp eq i32 %.val.i.i31, 0
  br i1 %.not.i.i32, label %lean_inc_ref.exit33, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.al = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit33

lean_inc_ref.exit33:                              ; preds = %bb.y, %bb.z, %bb.aa
  %.val.i34 = load i32, ptr %0, align 8, !tbaa !10 ; 4 uses
  %i.am = icmp eq i32 %.val.i34, 1
  br i1 %i.am, label %.preheader.i36.preheader, label %bb.af

.preheader.i36.preheader:                         ; preds = %lean_inc_ref.exit33
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !14  ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = and i64 %i.ao, 1
  %.not.i.i38 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i38, label %bb.ab, label %lean_dec.exit.i39

bb.ab:                                            ; preds = %.preheader.i36.preheader
  %i.aq = load i32, ptr %i.an, align 4, !tbaa !10 ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %bb.ac, label %bb.ad, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.as = add nsw i32 %i.aq, -1
  store i32 %i.as, ptr %i.an, align 4, !tbaa !10
  br label %lean_dec.exit.i39

bb.ad:                                            ; preds = %bb.ab
  %.not.i7.i43 = icmp eq i32 %i.aq, 0
  br i1 %.not.i7.i43, label %lean_dec.exit.i39, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
end_hunk_0
