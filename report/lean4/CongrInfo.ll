Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/CongrInfo?download=true
inline.NumInlined: 553
inline.NumDeleted: 55
begin_hunk_0_@l_Lean_PersistentHashMap_insertAtCollisionNode___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Meta_Sym_getCongrInfo_spec__1_spec__2_spec__4:bb.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Data_PersistentHashMap_0__Lean_PersistentHashMap_insertAux_traverse___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Meta_Sym_getCongrInfo_spec__1_spec__2_spec__5(ptr nofree noundef readnone captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Data_PersistentHashMap_0__Lean_PersistentHashMap_insertAux_traverse___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Meta_Sym_getCongrInfo_spec__1_spec__2_spec__5___redArg(i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %6)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Data_PersistentHashMap_0__Lean_PersistentHashMap_insertAux_traverse___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Meta_Sym_getCongrInfo_spec__1_spec__2_spec__5___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !10
  %i.b = load i32, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !13
  br label %lean_dec.exit

bb.c:                                             ; preds = %bb.a
  %.not.i11 = icmp eq i32 %i.b, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.e = tail call ptr @l___private_Lean_Data_PersistentHashMap_0__Lean_PersistentHashMap_insertAux_traverse___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Meta_Sym_getCongrInfo_spec__1_spec__2_spec__5___redArg(i64 noundef %.val, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %5, ptr noundef %6)
  %i.f = load i32, ptr %3, align 4, !tbaa !13     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %lean_dec.exit
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !13
  br label %lean_dec_ref.exit15

bb.f:                                             ; preds = %lean_dec.exit
  %.not.i14 = icmp eq i32 %i.f, 0
  br i1 %.not.i14, label %lean_dec_ref.exit15, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit15

lean_dec_ref.exit15:                              ; preds = %bb.e, %bb.f, %bb.g
  %i.i = load i32, ptr %2, align 4, !tbaa !13     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %lean_dec_ref.exit15
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %2, align 4, !tbaa !13
  br label %lean_dec_ref.exit13

bb.i:                                             ; preds = %lean_dec_ref.exit15
  %.not.i12 = icmp eq i32 %i.i, 0
  br i1 %.not.i12, label %lean_dec_ref.exit13, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec_ref.exit13

lean_dec_ref.exit13:                              ; preds = %bb.h, %bb.i, %bb.j
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_insertAtCollisionNodeAux___at___00Lean_PersistentHashMap_insertAtCollisionNode___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Meta_Sym_getCongrInfo_spec__1_spec__2_spec__4_spec__5(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_PersistentHashMap_insertAtCollisionNodeAux___at___00Lean_PersistentHashMap_insertAtCollisionNode___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Meta_Sym_getCongrInfo_spec__1_spec__2_spec__4_spec__5___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_List_mapTR_loop___at___00__private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData_spec__0(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.040 = phi ptr [ %1, %bb.a ], [ %.040.be, %.backedge ] ; 3 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.l, %.backedge ] ; 9 uses
  %i.a = ptrtoint ptr %.0 to i64                  ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i54 = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i54, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %lean_obj_tag.exit
  %i.h = tail call ptr @l_List_reverse___redArg(ptr noundef %.040) #6
  ret ptr %i.h

bb.f:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16   ; 5 uses
  %.0.val = load i32, ptr %.0, align 8, !tbaa !13
  %i.m = icmp eq i32 %.0.val, 1                   ; 2 uses
  br i1 %i.m, label %.lean_dec.exit47_crit_edge, label %bb.g

.lean_dec.exit47_crit_edge:                       ; preds = %bb.f
  %.pre = ptrtoint ptr %i.j to i64                ; 2 uses
  %.pre66 = and i64 %.pre, 1
  br label %lean_dec.exit47

bb.g:                                             ; preds = %bb.f
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = and i64 %i.n, 1
  %.not.i52 = icmp eq i64 %i.o, 0
  br i1 %.not.i52, label %bb.h, label %lean_inc.exit53

bb.h:                                             ; preds = %bb.g
  %.val.i.i = load i32, ptr %i.l, align 4, !tbaa !13 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i, 0
  br i1 %i.p, label %bb.i, label %bb.j, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.q = add nuw i32 %.val.i.i, 1
  store i32 %i.q, ptr %i.l, align 4, !tbaa !13
  br label %lean_inc.exit53

bb.j:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit53, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw add ptr %i.l, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit53

lean_inc.exit53:                                  ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %i.s = ptrtoint ptr %i.j to i64                 ; 5 uses
  %i.t = and i64 %i.s, 1                          ; 5 uses
  %.not.i51 = icmp eq i64 %i.t, 0
  br i1 %.not.i51, label %bb.l, label %lean_inc.exit

bb.l:                                             ; preds = %lean_inc.exit53
  %.val.i.i55 = load i32, ptr %i.j, align 4, !tbaa !13 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i55, 0
  br i1 %i.u, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.v = add nuw i32 %.val.i.i55, 1
  store i32 %i.v, ptr %i.j, align 4, !tbaa !13
  br label %lean_inc.exit

bb.n:                                             ; preds = %bb.l
  %.not.i.i56 = icmp eq i32 %.val.i.i55, 0
  br i1 %.not.i.i56, label %lean_inc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = atomicrmw add ptr %i.j, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.o, %bb.n, %bb.m, %lean_inc.exit53
  br i1 %.not.i54, label %bb.p, label %lean_dec.exit47

bb.p:                                             ; preds = %lean_inc.exit
  %i.x = load i32, ptr %.0, align 8, !tbaa !13    ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.q, label %bb.r, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %.0, align 8, !tbaa !13
  br label %lean_dec.exit47

bb.r:                                             ; preds = %bb.p
  %.not.i48 = icmp eq i32 %i.x, 0
  br i1 %.not.i48, label %lean_dec.exit47, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0) #6
  br label %lean_dec.exit47

lean_dec.exit47:                                  ; preds = %.lean_dec.exit47_crit_edge, %lean_inc.exit, %bb.q, %bb.r, %bb.s
  %.pre-phi67 = phi i64 [ %.pre66, %.lean_dec.exit47_crit_edge ], [ %i.t, %lean_inc.exit ], [ %i.t, %bb.q ], [ %i.t, %bb.r ], [ %i.t, %bb.s ]
  %.pre-phi = phi i64 [ %.pre, %.lean_dec.exit47_crit_edge ], [ %i.s, %lean_inc.exit ], [ %i.s, %bb.q ], [ %i.s, %bb.r ], [ %i.s, %bb.s ]
  %.045 = phi ptr [ %.0, %.lean_dec.exit47_crit_edge ], [ inttoptr (i64 1 to ptr), %lean_inc.exit ], [ inttoptr (i64 1 to ptr), %bb.q ], [ inttoptr (i64 1 to ptr), %bb.r ], [ inttoptr (i64 1 to ptr), %bb.s ] ; 3 uses
  %.not.i = icmp eq i64 %.pre-phi67, 0
  br i1 %.not.i, label %bb.t, label %lean_inc_ref.exit60

bb.t:                                             ; preds = %lean_dec.exit47
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !13  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.u, label %bb.v, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %i.j, align 4, !tbaa !13
  br label %lean_inc_ref.exit60

bb.v:                                             ; preds = %bb.t
  %.not.i49 = icmp eq i32 %i.aa, 0
  br i1 %.not.i49, label %lean_inc_ref.exit60, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #6
  br label %lean_inc_ref.exit60

lean_inc_ref.exit60:                              ; preds = %bb.w, %bb.v, %bb.u, %lean_dec.exit47
  tail call void @lean_inc_heartbeat() #6
  %i.ad = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.x, label %lean_alloc_ctor.exit

bb.x:                                             ; preds = %lean_inc_ref.exit60
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit60
  %2 = and i64 %.pre-phi, 510
  %3 = icmp eq i64 %2, 0
  %l_List_mapTR_loop___at___00__private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData_spec__0___closed__0_value.l_List_mapTR_loop___at___00__private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData_spec__0___closed__1_value = select i1 %3, ptr @l_List_mapTR_loop___at___00__private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData_spec__0___closed__0_value, ptr @l_List_mapTR_loop___at___00__private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData_spec__0___closed__1_value
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 1, ptr %i.ad, align 4, !tbaa !13
  store i32 50397200, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %l_List_mapTR_loop___at___00__private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData_spec__0___closed__0_value.l_List_mapTR_loop___at___00__private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData_spec__0___closed__1_value, ptr %i.ag, align 8, !tbaa !16
  %i.ah = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.ad) #6 ; 2 uses
  br i1 %i.m, label %bb.y, label %bb.z

bb.y:                                             ; preds = %lean_alloc_ctor.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.045, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.045, i64 16
  store ptr %.040, ptr %i.aj, align 8, !tbaa !16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !16
  br label %.backedge

bb.z:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_inc_heartbeat() #6
  %i.ak = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.aa, label %lean_alloc_ctor.exit61

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit61:                           ; preds = %bb.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 1, ptr %i.ak, align 4, !tbaa !13
  store i32 16908312, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.ah, ptr %i.an, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.040, ptr %i.ao, align 8, !tbaa !16
  br label %.backedge

.backedge:                                        ; preds = %lean_alloc_ctor.exit61, %bb.y
  %.040.be = phi ptr [ %.045, %bb.y ], [ %i.ak, %lean_alloc_ctor.exit61 ]
  br label %bb.b
}

declare ptr @l_List_reverse___redArg(ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_MessageData_ofFormat(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i75 = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i75, label %bb.c, label %bb.b

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
  switch i32 %.0.i, label %bb.av [
    i32 0, label %bb.d
    i32 1, label %bb.g
    i32 2, label %bb.ag
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.g = load atomic i32, ptr @l___private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData___closed__2_once seq_cst, align 4, !tbaa !18
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @l___private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData___closed__2, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.f:                                             ; preds = %bb.d
  %i.j = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData___closed__2, ptr noundef nonnull @l___private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData___closed__2_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData___closed__2) #6
  br label %lean_obj_once.exit

bb.g:                                             ; preds = %lean_obj_tag.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 5 uses
  %.val = load i32, ptr %0, align 8, !tbaa !13
  %i.o = icmp eq i32 %.val, 1                     ; 2 uses
  br i1 %i.o, label %lean_dec.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = and i64 %i.p, 1
  %.not.i73 = icmp eq i64 %i.q, 0
  br i1 %.not.i73, label %bb.i, label %lean_inc.exit74

bb.i:                                             ; preds = %bb.h
  %.val.i.i = load i32, ptr %i.n, align 4, !tbaa !13 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i, 0
  br i1 %i.r, label %bb.j, label %bb.k, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.s = add nuw i32 %.val.i.i, 1
  store i32 %i.s, ptr %i.n, align 4, !tbaa !13
  br label %lean_inc.exit74

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit74, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = atomicrmw add ptr %i.n, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit74

lean_inc.exit74:                                  ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %i.u = ptrtoint ptr %i.l to i64
  %i.v = and i64 %i.u, 1
  %.not.i72 = icmp eq i64 %i.v, 0
  br i1 %.not.i72, label %bb.m, label %lean_inc.exit

bb.m:                                             ; preds = %lean_inc.exit74
  %.val.i.i77 = load i32, ptr %i.l, align 4, !tbaa !13 ; 3 uses
  %i.w = icmp sgt i32 %.val.i.i77, 0
  br i1 %i.w, label %bb.n, label %bb.o, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.x = add nuw i32 %.val.i.i77, 1
  store i32 %i.x, ptr %i.l, align 4, !tbaa !13
  br label %lean_inc.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i78 = icmp eq i32 %.val.i.i77, 0
  br i1 %.not.i.i78, label %lean_inc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = atomicrmw add ptr %i.l, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.p, %bb.o, %bb.n, %lean_inc.exit74
  br i1 %.not.i75, label %bb.q, label %lean_dec.exit

bb.q:                                             ; preds = %lean_inc.exit
  %i.z = load i32, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.r, label %bb.s, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %0, align 8, !tbaa !13
  br label %lean_dec.exit

bb.s:                                             ; preds = %bb.q
  %.not.i69 = icmp eq i32 %i.z, 0
  br i1 %.not.i69, label %lean_dec.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_inc.exit, %bb.r, %bb.s, %bb.t, %bb.g
  %.066 = phi ptr [ %0, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.t ], [ inttoptr (i64 1 to ptr), %bb.s ], [ inttoptr (i64 1 to ptr), %bb.r ], [ inttoptr (i64 1 to ptr), %lean_inc.exit ] ; 4 uses
  %i.ac = load atomic i32, ptr @l___private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData___closed__4_once seq_cst, align 4, !tbaa !18
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.u, label %bb.v, !prof !14

bb.u:                                             ; preds = %lean_dec.exit
  %i.ae = load ptr, ptr @l___private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData___closed__4, align 8, !tbaa !16
  br label %lean_obj_once.exit81

bb.v:                                             ; preds = %lean_dec.exit
  %i.af = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData___closed__4, ptr noundef nonnull @l___private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData___closed__4_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Sym_Simp_CongrInfo_0__Lean_Meta_Sym_CongrInfo_toMessageData___closed__4) #6
  br label %lean_obj_once.exit81

lean_obj_once.exit81:                             ; preds = %bb.u, %bb.v
  %.0.i80 = phi ptr [ %i.ae, %bb.u ], [ %i.af, %bb.v ] ; 2 uses
  %i.ag = tail call ptr @l_Nat_reprFast(ptr noundef %i.l) #6
  tail call void @lean_inc_heartbeat() #6
  %i.ah = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.w, label %lean_alloc_ctor.exit

bb.w:                                             ; preds = %lean_obj_once.exit81
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit81
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 1, ptr %i.ah, align 4, !tbaa !13
  store i32 50397200, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !16
  %i.al = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.ah) #6 ; 2 uses
  br i1 %i.o, label %bb.x, label %bb.y

bb.x:                                             ; preds = %lean_alloc_ctor.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.066, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
end_hunk_0
