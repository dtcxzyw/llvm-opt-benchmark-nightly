Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/SpecInfo?download=true
inline.NumInlined: 1274
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0:bb.a
bb.r:                                             ; preds = %bb.q
  %i.ab = load ptr, ptr @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__14, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.s:                                             ; preds = %bb.q
  %i.ac = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__14, ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__14_once, ptr noundef nonnull @_init_l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__14) #7
  br label %lean_obj_once.exit

bb.t:                                             ; preds = %lean_obj_tag.exit
  %i.ad = load atomic i32, ptr @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__17_once seq_cst, align 4, !tbaa !15
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.af = load ptr, ptr @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__17, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.v:                                             ; preds = %bb.t
  %i.ag = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__17, ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__17_once, ptr noundef nonnull @_init_l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__17) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.v, %bb.u, %bb.s, %bb.r, %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f
  %.1 = phi ptr [ %i.ac, %bb.s ], [ %i.y, %bb.p ], [ %i.q, %bb.j ], [ %i.u, %bb.m ], [ %i.m, %bb.g ], [ %i.l, %bb.f ], [ %i.p, %bb.i ], [ %i.t, %bb.l ], [ %i.x, %bb.o ], [ %i.ab, %bb.r ], [ %i.af, %bb.u ], [ %i.ag, %bb.v ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__2() #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__1_value) #7
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__5() #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__4_value) #7
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__8() #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__7_value) #7
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__11() #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__10_value) #7
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__14() #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__13_value) #7
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__17() #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___closed__16_value) #7
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0___boxed(ptr noundef %0) #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Compiler_LCNF_instToMessageDataSpecParamInfo___lam__0(ptr noundef %0)
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i3 = icmp eq i32 %i.d, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw add ptr %i.b, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 4 uses
  %.val.i.i41 = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i41, 0
  br i1 %i.j, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_inc.exit
  %i.k = add nuw i32 %.val.i.i41, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !10
  br label %lean_inc_ref.exit43

bb.g:                                             ; preds = %lean_inc.exit
  %.not.i.i42 = icmp eq i32 %.val.i.i41, 0
  br i1 %.not.i.i42, label %lean_inc_ref.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = atomicrmw add ptr %i.i, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit43

lean_inc_ref.exit43:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i8, ptr %i.m, align 8, !tbaa !12
  %i.o = load i32, ptr %1, align 8, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %lean_inc_ref.exit43
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 8, !tbaa !10
  br label %lean_dec_ref.exit

bb.j:                                             ; preds = %lean_inc_ref.exit43
  %.not.i40 = icmp eq i32 %i.o, 0
  br i1 %.not.i40, label %lean_dec_ref.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.i, %bb.j, %bb.k
  %i.r = tail call ptr @l_Lean_MessageData_ofName(ptr noundef %i.b) #7
  %i.s = load atomic i32, ptr @l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__1_once seq_cst, align 4, !tbaa !15
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %lean_dec_ref.exit
  %i.u = load ptr, ptr @l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__1, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.m:                                             ; preds = %lean_dec_ref.exit
  %i.v = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__1, ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__1_once, ptr noundef nonnull @_init_l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__1) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %i.u, %bb.l ], [ %i.v, %bb.m ]
  tail call void @lean_inc_heartbeat() #7
  %i.w = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.n, label %lean_alloc_ctor.exit

bb.n:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 1, ptr %i.w, align 4, !tbaa !10
  store i32 117571608, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.r, ptr %i.z, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %.0.i, ptr %i.aa, align 8, !tbaa !17
  %2 = icmp eq i8 %i.n, 0
  %l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__4_value.l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__5_value = select i1 %2, ptr @l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__4_value, ptr @l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__5_value ; 3 uses
  %.val.i.i44 = load i32, ptr %l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__4_value.l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__5_value, align 8, !tbaa !10 ; 2 uses
  %3 = icmp sgt i32 %.val.i.i44, 0
  br i1 %3, label %lean_inc_ref.exit46, label %4, !prof !11

4:                                                ; preds = %lean_alloc_ctor.exit
  %.not.i.i45 = icmp eq i32 %.val.i.i44, 0
  br i1 %.not.i.i45, label %lean_inc_ref.exit46, label %5

5:                                                ; preds = %4
  %6 = atomicrmw add ptr %l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__4_value.l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__5_value, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit46

lean_inc_ref.exit46:                              ; preds = %lean_alloc_ctor.exit, %4, %5
  tail call void @lean_inc_heartbeat() #7
  %7 = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb.o, label %lean_alloc_ctor.exit47

bb.o:                                             ; preds = %lean_inc_ref.exit46
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit47:                           ; preds = %lean_inc_ref.exit46
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 1, ptr %7, align 4, !tbaa !10
  store i32 50397200, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__4_value.l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__5_value, ptr %i.ac, align 8, !tbaa !17
  %i.ad = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %7) #7
  tail call void @lean_inc_heartbeat() #7
  %i.ae = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.p, label %lean_alloc_ctor.exit48

bb.p:                                             ; preds = %lean_alloc_ctor.exit47
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit48:                           ; preds = %lean_alloc_ctor.exit47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 1, ptr %i.ae, align 4, !tbaa !10
  store i32 117571608, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.w, ptr %i.ah, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ad, ptr %i.ai, align 8, !tbaa !17
  %i.aj = load atomic i32, ptr @l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__3_once seq_cst, align 4, !tbaa !15
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %lean_alloc_ctor.exit48
  %i.al = load ptr, ptr @l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit50

bb.r:                                             ; preds = %lean_alloc_ctor.exit48
  %i.am = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__3, ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__3_once, ptr noundef nonnull @_init_l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__3) #7
  br label %lean_obj_once.exit50

lean_obj_once.exit50:                             ; preds = %bb.q, %bb.r
  %.0.i49 = phi ptr [ %i.al, %bb.q ], [ %i.am, %bb.r ]
  tail call void @lean_inc_heartbeat() #7
  %i.an = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.s, label %lean_alloc_ctor.exit51

bb.s:                                             ; preds = %lean_obj_once.exit50
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit51:                           ; preds = %lean_obj_once.exit50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 1, ptr %i.an, align 4, !tbaa !10
  store i32 117571608, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ae, ptr %i.aq, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.0.i49, ptr %i.ar, align 8, !tbaa !17
  %i.as = tail call ptr @lean_array_to_list(ptr noundef nonnull %i.i) #7
  %i.at = tail call ptr @l_List_mapTR_loop___redArg(ptr noundef %0, ptr noundef %i.as, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  %i.au = tail call ptr @l_Lean_MessageData_ofList(ptr noundef %i.at) #7
  tail call void @lean_inc_heartbeat() #7
  %i.av = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.t, label %lean_alloc_ctor.exit52

bb.t:                                             ; preds = %lean_alloc_ctor.exit51
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit52:                           ; preds = %lean_alloc_ctor.exit51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 1, ptr %i.av, align 4, !tbaa !10
  store i32 117571608, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.an, ptr %i.ay, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.au, ptr %i.az, align 8, !tbaa !17
  ret ptr %i.av
}

declare ptr @l_Lean_MessageData_ofName(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__1() #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_stringToMessageData(ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__0_value) #7
  ret ptr %i.a
}

declare ptr @l_Lean_MessageData_ofFormat(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__3() #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_stringToMessageData(ptr noundef nonnull @l_Lean_Compiler_LCNF_instToMessageDataSpecEntry___lam__1___closed__2_value) #7
  ret ptr %i.a
}

declare ptr @lean_array_to_list(ptr noundef) local_unnamed_addr #2

declare ptr @l_List_mapTR_loop___redArg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_MessageData_ofList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_insertAtCollisionNodeAux___at___00Lean_PersistentHashMap_insertAtCollisionNode___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Compiler_LCNF_SpecState_addEntry_spec__0_spec__0_spec__1_spec__2___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  br label %lean_dec.exit93

lean_dec.exit93:                                  ; preds = %lean_dec.exit93.backedge, %bb.a
  %.078 = phi ptr [ %1, %bb.a ], [ %.078.be, %lean_dec.exit93.backedge ] ; 13 uses
  %.074 = phi ptr [ %0, %bb.a ], [ %.082, %lean_dec.exit93.backedge ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.074, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.074, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 9 uses
  %.074.val = load i32, ptr %.074, align 8, !tbaa !10
  %i.e = icmp eq i32 %.074.val, 1                 ; 4 uses
  br i1 %i.e, label %lean_dec.exit97, label %bb.b

bb.b:                                             ; preds = %lean_dec.exit93
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = and i64 %i.f, 1
  %.not.i99 = icmp eq i64 %i.g, 0
  br i1 %.not.i99, label %bb.c, label %lean_inc.exit100

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !10 ; 3 uses
  %i.h = icmp sgt i32 %.val.i.i, 0
  br i1 %i.h, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i32 %.val.i.i, 1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !10
  br label %lean_inc.exit100

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit100, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = atomicrmw add ptr %i.d, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit100

lean_inc.exit100:                                 ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = and i64 %i.k, 1
  %.not.i98 = icmp eq i64 %i.l, 0
  br i1 %.not.i98, label %bb.g, label %lean_inc.exit

bb.g:                                             ; preds = %lean_inc.exit100
  %.val.i.i111 = load i32, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i111, 0
  br i1 %i.m, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.n = add nuw i32 %.val.i.i111, 1
  store i32 %i.n, ptr %i.b, align 4, !tbaa !10
  br label %lean_inc.exit

bb.i:                                             ; preds = %bb.g
  %.not.i.i112 = icmp eq i32 %.val.i.i111, 0
  br i1 %.not.i.i112, label %lean_inc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = atomicrmw add ptr %i.b, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %lean_inc.exit100, %bb.h, %bb.i, %bb.j
  %i.p = load i32, ptr %.074, align 8, !tbaa !10  ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %lean_inc.exit
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %.074, align 8, !tbaa !10
  br label %lean_dec.exit97

bb.l:                                             ; preds = %lean_inc.exit
  %.not.i101 = icmp eq i32 %i.p, 0
  br i1 %.not.i101, label %lean_dec.exit97, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.074) #7
  br label %lean_dec.exit97

lean_dec.exit97:                                  ; preds = %bb.k, %bb.l, %bb.m, %lean_dec.exit93
  %.090 = phi ptr [ %.074, %lean_dec.exit93 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ inttoptr (i64 1 to ptr), %bb.k ] ; 7 uses
  %i.s = getelementptr i8, ptr %i.b, i64 8
  %.val = load i64, ptr %i.s, align 8, !tbaa !19
  %i.t = shl i64 %.val, 1
  %i.u = or disjoint i64 %i.t, 1
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = ptrtoint ptr %.078 to i64                ; 2 uses
  %i.x = and i64 %i.w, 1
  %.not.i108 = icmp eq i64 %i.x, 0                ; 3 uses
  br i1 %.not.i108, label %lean_nat_lt.exit, label %lean_nat_lt.exit.thread, !prof !13

lean_nat_lt.exit:                                 ; preds = %lean_dec.exit97
  %i.y = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %.078, ptr noundef nonnull %i.v) #7
  br i1 %i.y, label %bb.u, label %bb.n

lean_nat_lt.exit.thread:                          ; preds = %lean_dec.exit97
  %.not = icmp ult ptr %.078, %i.v
  br i1 %.not, label %bb.u, label %lean_dec.exit95

bb.n:                                             ; preds = %lean_nat_lt.exit
  %i.z = load i32, ptr %.078, align 4, !tbaa !10  ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
end_hunk_0
