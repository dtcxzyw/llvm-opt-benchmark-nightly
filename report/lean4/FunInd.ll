Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/FunInd?download=true
inline.NumInlined: 24124
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumUnrolled: 55
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_deriveCases_spec__3___boxed:bb.a
  %.not.i25 = icmp eq i64 %i.s, 0
  br i1 %.not.i25, label %bb.o, label %lean_dec.exit

bb.o:                                             ; preds = %lean_dec_ref.exit24
  %i.t = load i32, ptr %6, align 4, !tbaa !11     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.p, label %bb.q, !prof !16

bb.p:                                             ; preds = %bb.o
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %6, align 4, !tbaa !11
  br label %lean_dec.exit

bb.q:                                             ; preds = %bb.o
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.p, %bb.q, %bb.r, %lean_dec_ref.exit24
  %i.w = load i32, ptr %5, align 4, !tbaa !11     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.s, label %bb.t, !prof !16

bb.s:                                             ; preds = %lean_dec.exit
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %5, align 4, !tbaa !11
  br label %lean_dec_ref.exit22

bb.t:                                             ; preds = %lean_dec.exit
  %.not.i21 = icmp eq i32 %i.w, 0
  br i1 %.not.i21, label %lean_dec_ref.exit22, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #9
  br label %lean_dec_ref.exit22

lean_dec_ref.exit22:                              ; preds = %bb.s, %bb.t, %bb.u
  %i.z = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %lean_dec_ref.exit22
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit20

bb.w:                                             ; preds = %lean_dec_ref.exit22
  %.not.i19 = icmp eq i32 %i.z, 0
  br i1 %.not.i19, label %lean_dec_ref.exit20, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec_ref.exit20

lean_dec_ref.exit20:                              ; preds = %bb.v, %bb.w, %bb.x
  %i.ac = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.y, label %bb.z, !prof !16

bb.y:                                             ; preds = %lean_dec_ref.exit20
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.z:                                             ; preds = %lean_dec_ref.exit20
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.y, %bb.z, %bb.aa
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_List_mapTR_loop___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_deriveCases_spec__4(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.040 = phi ptr [ %1, %bb.a ], [ %.040.be, %.backedge ] ; 3 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.l, %.backedge ] ; 9 uses
  %i.a = ptrtoint ptr %.0 to i64                  ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i53 = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i53, label %bb.d, label %bb.c

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
  %i.h = tail call ptr @l_List_reverse___redArg(ptr noundef %.040) #9
  ret ptr %i.h

bb.f:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15   ; 5 uses
  %.0.val = load i32, ptr %.0, align 8, !tbaa !11
  %i.m = icmp eq i32 %.0.val, 1                   ; 2 uses
  br i1 %i.m, label %.lean_dec.exit52_crit_edge, label %bb.g

.lean_dec.exit52_crit_edge:                       ; preds = %bb.f
  %.pre = ptrtoint ptr %i.j to i64                ; 2 uses
  %.pre66 = and i64 %.pre, 1
  br label %lean_dec.exit52

bb.g:                                             ; preds = %bb.f
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = and i64 %i.n, 1
  %.not.i46 = icmp eq i64 %i.o, 0
  br i1 %.not.i46, label %bb.h, label %lean_inc.exit47

bb.h:                                             ; preds = %bb.g
  %.val.i.i = load i32, ptr %i.l, align 4, !tbaa !11 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i, 0
  br i1 %i.p, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.q = add nuw i32 %.val.i.i, 1
  store i32 %i.q, ptr %i.l, align 4, !tbaa !11
  br label %lean_inc.exit47

bb.j:                                             ; preds = %bb.h
  %.not.i.i54 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i54, label %lean_inc.exit47, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw add ptr %i.l, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit47

lean_inc.exit47:                                  ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %i.s = ptrtoint ptr %i.j to i64                 ; 5 uses
  %i.t = and i64 %i.s, 1                          ; 5 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.l, label %lean_inc.exit

bb.l:                                             ; preds = %lean_inc.exit47
  %.val.i.i55 = load i32, ptr %i.j, align 4, !tbaa !11 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i55, 0
  br i1 %i.u, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.v = add nuw i32 %.val.i.i55, 1
  store i32 %i.v, ptr %i.j, align 4, !tbaa !11
  br label %lean_inc.exit

bb.n:                                             ; preds = %bb.l
  %.not.i.i56 = icmp eq i32 %.val.i.i55, 0
  br i1 %.not.i.i56, label %lean_inc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = atomicrmw add ptr %i.j, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.o, %bb.n, %bb.m, %lean_inc.exit47
  br i1 %.not.i53, label %bb.p, label %lean_dec.exit52

bb.p:                                             ; preds = %lean_inc.exit
  %i.x = load i32, ptr %.0, align 8, !tbaa !11    ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.q, label %bb.r, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %.0, align 8, !tbaa !11
  br label %lean_dec.exit52

bb.r:                                             ; preds = %bb.p
  %.not.i.i50 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i50, label %lean_dec.exit52, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0) #9
  br label %lean_dec.exit52

lean_dec.exit52:                                  ; preds = %.lean_dec.exit52_crit_edge, %lean_inc.exit, %bb.s, %bb.r, %bb.q
  %.pre-phi67 = phi i64 [ %.pre66, %.lean_dec.exit52_crit_edge ], [ %i.t, %lean_inc.exit ], [ %i.t, %bb.s ], [ %i.t, %bb.r ], [ %i.t, %bb.q ]
  %.pre-phi = phi i64 [ %.pre, %.lean_dec.exit52_crit_edge ], [ %i.s, %lean_inc.exit ], [ %i.s, %bb.s ], [ %i.s, %bb.r ], [ %i.s, %bb.q ]
  %.045 = phi ptr [ %.0, %.lean_dec.exit52_crit_edge ], [ inttoptr (i64 1 to ptr), %lean_inc.exit ], [ inttoptr (i64 1 to ptr), %bb.s ], [ inttoptr (i64 1 to ptr), %bb.r ], [ inttoptr (i64 1 to ptr), %bb.q ] ; 3 uses
  %.not.i48 = icmp eq i64 %.pre-phi67, 0
  br i1 %.not.i48, label %bb.t, label %lean_inc_ref.exit60

bb.t:                                             ; preds = %lean_dec.exit52
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.u, label %bb.v, !prof !16

bb.u:                                             ; preds = %bb.t
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %i.j, align 4, !tbaa !11
  br label %lean_inc_ref.exit60

bb.v:                                             ; preds = %bb.t
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit60, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #9
  br label %lean_inc_ref.exit60

lean_inc_ref.exit60:                              ; preds = %bb.u, %bb.v, %bb.w, %lean_dec.exit52
  tail call void @lean_inc_heartbeat() #9
  %i.ad = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.x, label %lean_alloc_ctor.exit

bb.x:                                             ; preds = %lean_inc_ref.exit60
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit60
  %2 = and i64 %.pre-phi, 510
  %3 = icmp eq i64 %2, 0
  %l___private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_buildInductionBody___closed__13_value.l___private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_buildInductionBody___closed__10_value = select i1 %3, ptr @l___private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_buildInductionBody___closed__13_value, ptr @l___private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_buildInductionBody___closed__10_value
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 1, ptr %i.ad, align 4, !tbaa !11
  store i32 50397200, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %l___private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_buildInductionBody___closed__13_value.l___private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_buildInductionBody___closed__10_value, ptr %i.ag, align 8, !tbaa !15
  %i.ah = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.ad) #9 ; 2 uses
  br i1 %i.m, label %bb.y, label %bb.z

bb.y:                                             ; preds = %lean_alloc_ctor.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.045, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.045, i64 16
  store ptr %.040, ptr %i.aj, align 8, !tbaa !15
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !15
  br label %.backedge

bb.z:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_inc_heartbeat() #9
  %i.ak = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #9 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.aa, label %lean_alloc_ctor.exit61

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit61:                           ; preds = %bb.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 1, ptr %i.ak, align 4, !tbaa !11
  store i32 16908312, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.ah, ptr %i.an, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.040, ptr %i.ao, align 8, !tbaa !15
  br label %.backedge

.backedge:                                        ; preds = %lean_alloc_ctor.exit61, %bb.y
  %.040.be = phi ptr [ %.045, %bb.y ], [ %i.ak, %lean_alloc_ctor.exit61 ]
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_deriveCases___lam__10(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i786 = icmp eq i64 %i.b, 0                ; 15 uses
  br i1 %.not.i786, label %bb.b, label %lean_inc.exit787

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !11
  br label %lean_inc.exit787

bb.d:                                             ; preds = %bb.b
  %.not.i.i1195 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i1195, label %lean_inc.exit787, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit787

lean_inc.exit787:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.f = tail call ptr @l_Lean_getConstInfo___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_projectMutualInduct_spec__0(ptr noundef %0, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 13 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 1
  %.not.i1196 = icmp eq i64 %i.h, 0               ; 2 uses
  br i1 %.not.i1196, label %bb.g, label %bb.f

bb.f:                                             ; preds = %lean_inc.exit787
  %i.i = lshr i64 %i.g, 1
  %i.j = trunc i64 %i.i to i32
  br label %lean_obj_tag.exit

bb.g:                                             ; preds = %lean_inc.exit787
  %i.k = getelementptr i8, ptr %i.f, i64 4
  %.val.i = load i32, ptr %i.k, align 4
  %i.l = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.j, %bb.f ], [ %i.l, %bb.g ]
  %i.m = icmp eq i32 %.0.i, 0
  br i1 %i.m, label %bb.h, label %bb.ach

bb.h:                                             ; preds = %lean_obj_tag.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15   ; 42 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i784 = icmp eq i64 %i.q, 0                ; 13 uses
  br i1 %.not.i784, label %bb.i, label %lean_inc.exit785

bb.i:                                             ; preds = %bb.h
  %.val.i.i1197 = load i32, ptr %i.o, align 4, !tbaa !11 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i1197, 0
  br i1 %i.r, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.s = add nuw i32 %.val.i.i1197, 1
  store i32 %i.s, ptr %i.o, align 4, !tbaa !11
  br label %lean_inc.exit785

bb.k:                                             ; preds = %bb.i
  %.not.i.i1198 = icmp eq i32 %.val.i.i1197, 0
  br i1 %.not.i.i1198, label %lean_inc.exit785, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = atomicrmw add ptr %i.o, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit785

lean_inc.exit785:                                 ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %.val.i1200 = load i32, ptr %i.f, align 8, !tbaa !11 ; 4 uses
  %i.u = icmp eq i32 %.val.i1200, 1
  br i1 %i.u, label %.preheader.i, label %bb.q

.preheader.i:                                     ; preds = %lean_inc.exit785
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !15   ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, 1
  %.not.i7.i = icmp eq i64 %i.x, 0
  br i1 %.not.i7.i, label %bb.m, label %lean_dec.exit.i

bb.m:                                             ; preds = %.preheader.i
  %i.y = load i32, ptr %i.v, align 4, !tbaa !11   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.o:                                             ; preds = %bb.m
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #9
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.p, %bb.o, %bb.n, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.f) #9
  br label %lean_dec_ref_known.exit

bb.q:                                             ; preds = %lean_inc.exit785
  %i.ab = icmp sgt i32 %.val.i1200, 1
  br i1 %i.ab, label %bb.r, label %bb.s, !prof !16

bb.r:                                             ; preds = %bb.q
  %i.ac = add nsw i32 %.val.i1200, -1
  store i32 %i.ac, ptr %i.f, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.s:                                             ; preds = %bb.q
  %.not.i.i1201 = icmp eq i32 %.val.i1200, 0
  br i1 %.not.i.i1201, label %lean_dec_ref_known.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.f) #9
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.r, %bb.s, %bb.t
  br i1 %.not.i786, label %bb.u, label %lean_inc.exit783

bb.u:                                             ; preds = %lean_dec_ref_known.exit
  %.val.i.i1203 = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.ad = icmp sgt i32 %.val.i.i1203, 0
  br i1 %i.ad, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %bb.u
  %i.ae = add nuw i32 %.val.i.i1203, 1
  store i32 %i.ae, ptr %0, align 4, !tbaa !11
  br label %lean_inc.exit783

bb.w:                                             ; preds = %bb.u
  %.not.i.i1204 = icmp eq i32 %.val.i.i1203, 0
  br i1 %.not.i.i1204, label %lean_inc.exit783, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.af = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit783

lean_inc.exit783:                                 ; preds = %bb.x, %bb.w, %bb.v, %lean_dec_ref_known.exit
  %i.ag = tail call ptr @l_Lean_Meta_getUnfoldEqnFor_x3f(ptr noundef %0, i8 noundef zeroext 1, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #9 ; 13 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %.not.i1206 = icmp eq i64 %i.ai, 0              ; 2 uses
  br i1 %.not.i1206, label %bb.z, label %bb.y

bb.y:                                             ; preds = %lean_inc.exit783
  %i.aj = lshr i64 %i.ah, 1
  %i.ak = trunc i64 %i.aj to i32
  br label %lean_obj_tag.exit1209

bb.z:                                             ; preds = %lean_inc.exit783
end_hunk_0
