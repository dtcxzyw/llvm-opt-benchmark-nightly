Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Model?download=true
inline.NumInlined: 1620
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg:bb.a
  %.not.i40 = icmp eq i64 %i.at, 0
  br i1 %.not.i40, label %bb.s, label %lean_inc.exit

bb.s:                                             ; preds = %bb.r
  %.val.i.i = load i32, ptr %i.ap, align 4, !tbaa !12 ; 3 uses
  %i.au = icmp sgt i32 %.val.i.i, 0
  br i1 %i.au, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.av = add nuw i32 %.val.i.i, 1
  store i32 %i.av, ptr %i.ap, align 4, !tbaa !12
  br label %lean_inc.exit

bb.u:                                             ; preds = %bb.s
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = atomicrmw add ptr %i.ap, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  tail call void @lean_inc_heartbeat() #5
  %i.ax = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.w, label %lean_alloc_ctor.exit

bb.w:                                             ; preds = %lean_inc.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 1, ptr %i.ax, align 4, !tbaa !12
  store i32 16842768, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ap, ptr %i.ba, align 8, !tbaa !15
  br label %.thread

bb.x:                                             ; preds = %lean_obj_tag.exit50
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i66, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !15
  %i.bd = lshr i64 %.036, 5
  br label %bb.b

bb.y:                                             ; preds = %lean_obj_tag.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15
  %i.bg = tail call ptr @l_Lean_PersistentHashMap_findAtAux___at___00Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0_spec__1___redArg(ptr noundef %i.i, ptr noundef %i.bf, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %2)
  br label %.thread

.thread:                                          ; preds = %lean_obj_tag.exit50, %lean_alloc_ctor.exit, %bb.q, %bb.y
  %.3 = phi ptr [ %i.bg, %bb.y ], [ inttoptr (i64 1 to ptr), %bb.q ], [ %i.ax, %lean_alloc_ctor.exit ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit50 ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal i64 @_init_l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg___closed__0_once seq_cst, align 4, !tbaa !17
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg___closed__0, align 8, !tbaa !10
  br label %lean_usize_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @lean_usize_once_cold(ptr noundef nonnull @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg___closed__0, ptr noundef nonnull @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg___closed__0_once, ptr noundef nonnull @_init_l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg___closed__0) #5
  br label %lean_usize_once.exit

lean_usize_once.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = add i64 %.0.i, -1
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !10
  %i.b = load i32, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !12
  br label %lean_dec.exit

bb.c:                                             ; preds = %bb.a
  %.not.i7 = icmp eq i32 %i.b, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.e = tail call ptr @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg(ptr noundef %0, i64 noundef %.val, ptr noundef %2)
  %i.f = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit11

bb.f:                                             ; preds = %lean_dec.exit
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec_ref.exit11, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec_ref.exit11

lean_dec_ref.exit11:                              ; preds = %bb.e, %bb.f, %bb.g
  %i.i = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec_ref.exit11
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit9

bb.i:                                             ; preds = %lean_dec_ref.exit11
  %.not.i8 = icmp eq i32 %i.i, 0
  br i1 %.not.i8, label %lean_dec_ref.exit9, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit9

lean_dec_ref.exit9:                               ; preds = %bb.h, %bb.i, %bb.j
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @l_Lean_Meta_Sym_hashPtrExpr_unsafe__1(ptr noundef %1) #5
  %i.b = tail call ptr @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg(ptr noundef %0, i64 noundef %i.a, ptr noundef %1)
  ret ptr %i.b
}

declare i64 @l_Lean_Meta_Sym_hashPtrExpr_unsafe__1(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0___redArg___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @l_Lean_Meta_Sym_hashPtrExpr_unsafe__1(ptr noundef %1) #5
  %i.b = tail call ptr @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg(ptr noundef %0, i64 noundef %i.a, ptr noundef %1)
  %i.c = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit6

bb.c:                                             ; preds = %bb.a
  %.not.i5 = icmp eq i32 %i.c, 0
  br i1 %.not.i5, label %lean_dec_ref.exit6, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit6

lean_dec_ref.exit6:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.f = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec_ref.exit6
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_dec_ref.exit6
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Grind_Arith_Linear_getAssignment_x3f(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = tail call i64 @l_Lean_Meta_Sym_hashPtrExpr_unsafe__1(ptr noundef %1) #5
  %i.f = tail call ptr @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg(ptr noundef %i.b, i64 noundef %i.e, ptr noundef %1) ; 11 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 1
  %.not.i53 = icmp eq i64 %i.h, 0                 ; 2 uses
  br i1 %.not.i53, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.f, i64 4
  %.val.i = load i32, ptr %i.i, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.j = icmp eq i32 %.mask, 16777216
  br i1 %i.j, label %bb.b, label %bb.z

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.k = and i64 %i.g, 8589934590
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.b, label %lean_dec.exit41

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 13 uses
  %.val = load i32, ptr %i.f, align 8, !tbaa !12
  %i.o = icmp eq i32 %.val, 1                     ; 2 uses
  %.pre = ptrtoint ptr %i.n to i64                ; 2 uses
  br i1 %i.o, label %lean_dec.exit43, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = and i64 %.pre, 1
  %.not.i44 = icmp eq i64 %i.p, 0
  br i1 %.not.i44, label %bb.d, label %lean_inc.exit

bb.d:                                             ; preds = %bb.c
  %.val.i.i = load i32, ptr %i.n, align 4, !tbaa !12 ; 3 uses
  %i.q = icmp sgt i32 %.val.i.i, 0
  br i1 %i.q, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.r = add nuw i32 %.val.i.i, 1
  store i32 %i.r, ptr %i.n, align 4, !tbaa !12
  br label %lean_inc.exit

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = atomicrmw add ptr %i.n, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  br i1 %.not.i53, label %bb.h, label %lean_dec.exit43

bb.h:                                             ; preds = %lean_inc.exit
  %i.t = load i32, ptr %i.f, align 8, !tbaa !12   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.f, align 8, !tbaa !12
  br label %lean_dec.exit43

bb.j:                                             ; preds = %bb.h
  %.not.i45 = icmp eq i32 %i.t, 0
  br i1 %.not.i45, label %lean_dec.exit43, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.f) #5
  br label %lean_dec.exit43

lean_dec.exit43:                                  ; preds = %bb.b, %lean_inc.exit, %bb.i, %bb.j, %bb.k
  %.037 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit ], [ inttoptr (i64 1 to ptr), %bb.i ], [ inttoptr (i64 1 to ptr), %bb.j ], [ %i.f, %bb.b ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15   ; 3 uses
  %.not.i52 = trunc i64 %.pre to i1               ; 3 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = trunc i64 %i.y to i1
  %or.cond = select i1 %.not.i52, i1 %i.z, i1 false, !prof !18
  br i1 %or.cond, label %.split, label %lean_nat_lt.exit, !prof !18

.split:                                           ; preds = %lean_dec.exit43
  %i.aa = icmp ult ptr %i.n, %i.x
  br i1 %i.aa, label %bb.r, label %bb.l

lean_nat_lt.exit:                                 ; preds = %lean_dec.exit43
  %i.ab = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.n, ptr noundef %i.x) #5
  br i1 %i.ab, label %bb.r, label %bb.l

bb.l:                                             ; preds = %.split, %lean_nat_lt.exit
  %i.ac = ptrtoint ptr %.037 to i64
  %i.ad = and i64 %i.ac, 1
  %.not.i55 = icmp eq i64 %i.ad, 0
  br i1 %.not.i55, label %bb.m, label %lean_del_object.exit

bb.m:                                             ; preds = %bb.l
  tail call void @lean_free_object(ptr noundef nonnull %.037) #5
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.l, %bb.m
  br i1 %.not.i52, label %lean_dec.exit41, label %bb.n

bb.n:                                             ; preds = %lean_del_object.exit
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !12  ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %i.n, align 4, !tbaa !12
  br label %lean_dec.exit41

bb.p:                                             ; preds = %bb.n
  %.not.i46 = icmp eq i32 %i.ae, 0
  br i1 %.not.i46, label %lean_dec.exit41, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #5
  br label %lean_dec.exit41

bb.r:                                             ; preds = %.split, %lean_nat_lt.exit
  %i.ah = load ptr, ptr @l_instInhabitedRat, align 8, !tbaa !15
  %i.ai = tail call ptr @l_Lean_PersistentArray_get_x21___redArg(ptr noundef %i.ah, ptr noundef nonnull %i.d, ptr noundef %i.n) #5 ; 2 uses
  br i1 %.not.i52, label %lean_dec.exit39, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !12  ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %i.n, align 4, !tbaa !12
  br label %lean_dec.exit39

bb.u:                                             ; preds = %bb.s
  %.not.i48 = icmp eq i32 %i.aj, 0
  br i1 %.not.i48, label %lean_dec.exit39, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #5
  br label %lean_dec.exit39

lean_dec.exit39:                                  ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  br i1 %i.o, label %bb.w, label %bb.x

bb.w:                                             ; preds = %lean_dec.exit39
  %i.am = getelementptr inbounds nuw i8, ptr %.037, i64 8
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !15
  br label %lean_dec.exit41

bb.x:                                             ; preds = %lean_dec.exit39
  tail call void @lean_inc_heartbeat() #5
  %i.an = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.y, label %lean_alloc_ctor.exit

bb.y:                                             ; preds = %bb.x
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.x
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 1, ptr %i.an, align 4, !tbaa !12
  store i32 16842768, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ai, ptr %i.aq, align 8, !tbaa !15
  br label %lean_dec.exit41

bb.z:                                             ; preds = %lean_obj_tag.exit
  %i.ar = load i32, ptr %i.f, align 4, !tbaa !12  ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.aa, label %bb.ab, !prof !13

bb.aa:                                            ; preds = %bb.z
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %i.f, align 4, !tbaa !12
  br label %lean_dec.exit41

bb.ab:                                            ; preds = %bb.z
  %.not.i50 = icmp eq i32 %i.ar, 0
  br i1 %.not.i50, label %lean_dec.exit41, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.f) #5
  br label %lean_dec.exit41

lean_dec.exit41:                                  ; preds = %lean_obj_tag.exit.thread, %bb.aa, %bb.ab, %bb.ac, %lean_del_object.exit, %bb.o, %bb.p, %bb.q, %bb.w, %lean_alloc_ctor.exit
  %.2 = phi ptr [ inttoptr (i64 1 to ptr), %lean_del_object.exit ], [ %i.an, %lean_alloc_ctor.exit ], [ %.037, %bb.w ], [ inttoptr (i64 1 to ptr), %bb.q ], [ inttoptr (i64 1 to ptr), %bb.p ], [ inttoptr (i64 1 to ptr), %bb.o ], [ inttoptr (i64 1 to ptr), %bb.ac ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.aa ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.thread ]
  ret ptr %.2
}

declare ptr @l_Lean_PersistentArray_get_x21___redArg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Grind_Arith_Linear_getAssignment_x3f___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_Grind_Arith_Linear_getAssignment_x3f(ptr noundef %0, ptr noundef %1)
  %i.b = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit6

bb.c:                                             ; preds = %bb.a
  %.not.i5 = icmp eq i32 %i.b, 0
  br i1 %.not.i5, label %lean_dec_ref.exit6, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit6

lean_dec_ref.exit6:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.e = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec_ref.exit6
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_dec_ref.exit6
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @l_Lean_Meta_Sym_hashPtrExpr_unsafe__1(ptr noundef %2) #5
  %i.b = tail call ptr @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg(ptr noundef %1, i64 noundef %i.a, ptr noundef %2)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @l_Lean_Meta_Sym_hashPtrExpr_unsafe__1(ptr noundef %2) #5
  %i.b = tail call ptr @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg(ptr noundef %1, i64 noundef %i.a, ptr noundef %2)
  %i.c = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit7

bb.c:                                             ; preds = %bb.a
  %.not.i6 = icmp eq i32 %i.c, 0
  br i1 %.not.i6, label %lean_dec_ref.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec_ref.exit7

lean_dec_ref.exit7:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.f = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec_ref.exit7
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_dec_ref.exit7
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg(ptr noundef %1, i64 noundef %2, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !10
  %i.b = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 8, !tbaa !12
  br label %lean_dec.exit

bb.c:                                             ; preds = %bb.a
  %.not.i8 = icmp eq i32 %i.b, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.e = tail call ptr @l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0___redArg(ptr noundef %1, i64 noundef %.val, ptr noundef %3)
  %i.f = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit12

bb.f:                                             ; preds = %lean_dec.exit
  %.not.i11 = icmp eq i32 %i.f, 0
  br i1 %.not.i11, label %lean_dec_ref.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec_ref.exit12

lean_dec_ref.exit12:                              ; preds = %bb.e, %bb.f, %bb.g
  %i.i = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec_ref.exit12
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit10

bb.i:                                             ; preds = %lean_dec_ref.exit12
  %.not.i9 = icmp eq i32 %i.i, 0
  br i1 %.not.i9, label %lean_dec_ref.exit10, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit10

lean_dec_ref.exit10:                              ; preds = %bb.h, %bb.i, %bb.j
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_findAtAux___at___00Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0_spec__1(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_PersistentHashMap_findAtAux___at___00Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Arith_Linear_getAssignment_x3f_spec__0_spec__0_spec__1___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
end_hunk_0
