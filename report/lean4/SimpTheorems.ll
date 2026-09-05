Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/SimpTheorems?download=true
inline.NumInlined: 5828
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isErased_spec__0___boxed:bb.a
  br label %lean_dec_ref.exit19

lean_dec_ref.exit19:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.w = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %lean_dec_ref.exit19
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit17

bb.l:                                             ; preds = %lean_dec_ref.exit19
  %.not.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i16, label %lean_dec_ref.exit17, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit17

lean_dec_ref.exit17:                              ; preds = %bb.k, %bb.l, %bb.m
  %i.z = inttoptr i64 %.2.ph.i to ptr
  ret ptr %i.z
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l_Lean_Meta_SimpTheoremsArray_isErased(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
lean_nat_lt.exit:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !15
  %.mask = and i64 %.val, 9223372036854775807     ; 2 uses
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isErased_spec__0.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %lean_nat_lt.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph.i

bb.a:                                             ; preds = %.lr.ph.i
  %i.c = add nuw nsw i64 %.01725.i, 1             ; 2 uses
  %.not.i14 = icmp eq i64 %i.c, %.mask
  br i1 %.not.i14, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isErased_spec__0.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.a
  %.01725.i = phi i64 [ %i.c, %bb.a ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01725.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = tail call zeroext i8 @l_Lean_PersistentHashMap_contains___at___00__private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_eraseIfExists_spec__0___redArg(ptr noundef %i.g, ptr noundef %1) ; 2 uses
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.a, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isErased_spec__0.exit

l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isErased_spec__0.exit: ; preds = %.lr.ph.i, %bb.a, %lean_nat_lt.exit
  %.0 = phi i8 [ 0, %lean_nat_lt.exit ], [ 0, %bb.a ], [ %i.h, %.lr.ph.i ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Meta_SimpTheoremsArray_isErased___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !15
  %.mask.i = and i64 %.val.i, 9223372036854775807 ; 2 uses
  %.not.i7 = icmp eq i64 %.mask.i, 0
  br i1 %.not.i7, label %l_Lean_Meta_SimpTheoremsArray_isErased.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.01725.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01725.i.i
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = tail call zeroext i8 @l_Lean_PersistentHashMap_contains___at___00__private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_eraseIfExists_spec__0___redArg(ptr noundef %i.f, ptr noundef %1) ; 2 uses
  %i.h = icmp ne i8 %i.g, 0
  %i.i = add nuw nsw i64 %.01725.i.i, 1           ; 2 uses
  %.not.i14.i = icmp eq i64 %i.i, %.mask.i
  %or.cond = select i1 %i.h, i1 true, i1 %.not.i14.i
  br i1 %or.cond, label %l_Lean_Meta_SimpTheoremsArray_isErased.exit.loopexit, label %.lr.ph.i.i

l_Lean_Meta_SimpTheoremsArray_isErased.exit.loopexit: ; preds = %.lr.ph.i.i
  %i.j = zext i8 %i.g to i64
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = or disjoint i64 %i.k, 1
  br label %l_Lean_Meta_SimpTheoremsArray_isErased.exit

l_Lean_Meta_SimpTheoremsArray_isErased.exit:      ; preds = %l_Lean_Meta_SimpTheoremsArray_isErased.exit.loopexit, %bb.a
  %.0.i = phi i64 [ 1, %bb.a ], [ %i.l, %l_Lean_Meta_SimpTheoremsArray_isErased.exit.loopexit ]
  %i.m = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %l_Lean_Meta_SimpTheoremsArray_isErased.exit
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit6

bb.c:                                             ; preds = %l_Lean_Meta_SimpTheoremsArray_isErased.exit
  %.not.i5 = icmp eq i32 %i.m, 0
  br i1 %.not.i5, label %lean_dec_ref.exit6, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit6

lean_dec_ref.exit6:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.p = load i32, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec_ref.exit6
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_dec_ref.exit6
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.s = inttoptr i64 %.0.i to ptr
  ret ptr %i.s
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isDeclToUnfold_spec__0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %.not23 = icmp eq i64 %2, %3
  br i1 %.not23, label %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i.i.i = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not.i.i.i, label %lean_obj_tag.exit.i.i.us, label %.lr.ph.split

lean_obj_tag.exit.i.i.us:                         ; preds = %.lr.ph, %bb.b
  %.01624.us = phi i64 [ %i.k, %bb.b ], [ %2, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01624.us
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %.val.i.i.i.us = load i32, ptr %i.d, align 4
  %i.j = icmp ult i32 %.val.i.i.i.us, 16777216
  br i1 %i.j, label %bb.d, label %bb.c

bb.b:                                             ; preds = %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit.us
  %i.k = add i64 %.01624.us, 1                    ; 2 uses
  %.not.us = icmp eq i64 %i.k, %3
  br i1 %.not.us, label %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit._crit_edge, label %lean_obj_tag.exit.i.i.us

bb.c:                                             ; preds = %lean_obj_tag.exit.i.i.us
  %i.l = load i64, ptr %i.e, align 8, !tbaa !15
  br label %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit.us

bb.d:                                             ; preds = %lean_obj_tag.exit.i.i.us
  %i.m = load atomic i32, ptr @l_Lean_Meta_instHashableOrigin___lam__0___closed__0_once seq_cst, align 4, !tbaa !19
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.e, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i64 @lean_uint64_once_cold(ptr noundef nonnull @l_Lean_Meta_instHashableOrigin___lam__0___closed__0, ptr noundef nonnull @l_Lean_Meta_instHashableOrigin___lam__0___closed__0_once, ptr noundef nonnull @_init_l_Lean_Meta_instHashableOrigin___lam__0___closed__0) #8
  br label %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit.us

bb.f:                                             ; preds = %bb.d
  %i.p = load i64, ptr @l_Lean_Meta_instHashableOrigin___lam__0___closed__0, align 8, !tbaa !15
  br label %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit.us

l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit.us:  ; preds = %bb.f, %bb.e, %bb.c
  %.012.i.i.us = phi i64 [ %i.l, %bb.c ], [ %i.p, %bb.f ], [ %i.o, %bb.e ]
  %i.q = tail call zeroext i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Meta_SimpTheorems_isDeclToUnfold_spec__0_spec__0___redArg(ptr noundef %i.i, i64 noundef %.012.i.i.us, ptr noundef nonnull %0) ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.s = and i64 %i.b, 8589934590
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %lean_obj_tag.exit.i.i.us27, label %lean_obj_tag.exit.i.i

lean_obj_tag.exit.i.i.us27:                       ; preds = %.lr.ph.split, %4
  %.01624.us28 = phi i64 [ %5, %4 ], [ %2, %.lr.ph.split ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01624.us28
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.y = load atomic i32, ptr @l_Lean_Meta_instHashableOrigin___lam__0___closed__0_once seq_cst, align 4, !tbaa !19
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %lean_obj_tag.exit.i.i.us27
  %i.aa = tail call i64 @lean_uint64_once_cold(ptr noundef nonnull @l_Lean_Meta_instHashableOrigin___lam__0___closed__0, ptr noundef nonnull @l_Lean_Meta_instHashableOrigin___lam__0___closed__0_once, ptr noundef nonnull @_init_l_Lean_Meta_instHashableOrigin___lam__0___closed__0) #8
  br label %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit.us30

bb.h:                                             ; preds = %lean_obj_tag.exit.i.i.us27
  %i.ab = load i64, ptr @l_Lean_Meta_instHashableOrigin___lam__0___closed__0, align 8, !tbaa !15
  br label %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit.us30

l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit.us30: ; preds = %bb.h, %bb.g
  %.012.i.i.us31 = phi i64 [ %i.aa, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = tail call zeroext i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Meta_SimpTheorems_isDeclToUnfold_spec__0_spec__0___redArg(ptr noundef %i.x, i64 noundef %.012.i.i.us31, ptr noundef %0) ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %4, label %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit._crit_edge

4:                                                ; preds = %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit.us30
  %5 = add i64 %.01624.us28, 1                    ; 2 uses
  %.not.us31 = icmp eq i64 %5, %3
  br i1 %.not.us31, label %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit._crit_edge, label %lean_obj_tag.exit.i.i.us27

bb.i:                                             ; preds = %lean_obj_tag.exit.i.i
  %i.ae = add i64 %.01624, 1                      ; 2 uses
  %.not = icmp eq i64 %i.ae, %3
  br i1 %.not, label %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit._crit_edge, label %lean_obj_tag.exit.i.i

lean_obj_tag.exit.i.i:                            ; preds = %.lr.ph.split, %bb.i
  %.01624 = phi i64 [ %i.ae, %bb.i ], [ %2, %.lr.ph.split ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01624
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !12
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !15
  %i.ak = tail call zeroext i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Meta_SimpTheorems_isDeclToUnfold_spec__0_spec__0___redArg(ptr noundef %i.ai, i64 noundef %i.aj, ptr noundef %0) ; 2 uses
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit._crit_edge

l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit._crit_edge: ; preds = %bb.i, %lean_obj_tag.exit.i.i, %4, %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit.us30, %bb.b, %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit.us, %bb.a
  %.2.ph = phi i8 [ 0, %4 ], [ 0, %bb.a ], [ %i.q, %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit.us ], [ 0, %bb.b ], [ %i.ac, %l_Lean_Meta_SimpTheorems_isDeclToUnfold.exit.us30 ], [ %i.ak, %lean_obj_tag.exit.i.i ], [ 0, %bb.i ]
  ret i8 %.2.ph
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isDeclToUnfold_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val22 = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = load i32, ptr %2, align 8, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 8, !tbaa !10
  br label %lean_dec.exit14

bb.c:                                             ; preds = %bb.a
  %.not.i15 = icmp eq i32 %i.b, 0
  br i1 %.not.i15, label %lean_dec.exit14, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !15
  %i.f = load i32, ptr %3, align 8, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit14
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 8, !tbaa !10
  br label %lean_dec.exit12

bb.f:                                             ; preds = %lean_dec.exit14
  %.not.i16 = icmp eq i32 %i.f, 0
  br i1 %.not.i16, label %lean_dec.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isDeclToUnfold_spec__0(ptr noundef %0, ptr noundef %1, i64 noundef %.val22, i64 noundef %.val)
  %i.j = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec.exit12
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit21

bb.i:                                             ; preds = %lean_dec.exit12
  %.not.i20 = icmp eq i32 %i.j, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.m = ptrtoint ptr %0 to i64
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.k, label %lean_dec.exit

bb.k:                                             ; preds = %lean_dec_ref.exit21
  %i.o = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.m:                                             ; preds = %bb.k
  %.not.i18 = icmp eq i32 %i.o, 0
  br i1 %.not.i18, label %lean_dec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.m, %bb.l, %lean_dec_ref.exit21
  %i.r = zext i8 %i.i to i64
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = or disjoint i64 %i.s, 1
  %i.u = inttoptr i64 %i.t to ptr
  ret ptr %i.u
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l_Lean_Meta_SimpTheoremsArray_isDeclToUnfold(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
lean_nat_lt.exit:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !15
  %.mask = and i64 %.val, 9223372036854775807     ; 2 uses
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %lean_nat_lt.exit
  %i.b = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isDeclToUnfold_spec__0(ptr noundef %1, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %.mask)
  br label %bb.b

bb.b:                                             ; preds = %lean_nat_lt.exit, %bb.a
  %.0 = phi i8 [ %i.b, %bb.a ], [ 0, %lean_nat_lt.exit ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Meta_SimpTheoremsArray_isDeclToUnfold___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !15
  %.mask.i = and i64 %.val.i, 9223372036854775807 ; 2 uses
  %.not.i8 = icmp eq i64 %.mask.i, 0
  br i1 %.not.i8, label %l_Lean_Meta_SimpTheoremsArray_isDeclToUnfold.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isDeclToUnfold_spec__0(ptr noundef %1, ptr noundef nonnull readonly %0, i64 noundef 0, i64 noundef %.mask.i)
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 1
  %i.e = or disjoint i64 %i.d, 1
  br label %l_Lean_Meta_SimpTheoremsArray_isDeclToUnfold.exit

l_Lean_Meta_SimpTheoremsArray_isDeclToUnfold.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.e, %bb.b ], [ 1, %bb.a ]
  %i.f = ptrtoint ptr %1 to i64
  %i.g = and i64 %i.f, 1
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %lean_dec.exit

bb.c:                                             ; preds = %l_Lean_Meta_SimpTheoremsArray_isDeclToUnfold.exit
  %i.h = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i5 = icmp eq i32 %i.h, 0
  br i1 %.not.i5, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %l_Lean_Meta_SimpTheoremsArray_isDeclToUnfold.exit
  %i.k = load i32, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %lean_dec.exit
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref.exit7

bb.h:                                             ; preds = %lean_dec.exit
  %.not.i6 = icmp eq i32 %i.k, 0
  br i1 %.not.i6, label %lean_dec_ref.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit7

lean_dec_ref.exit7:                               ; preds = %bb.g, %bb.h, %bb.i
  %i.n = inttoptr i64 %.0.i to ptr
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isLetDeclToUnfold_spec__0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %.not23 = icmp eq i64 %2, %3
  br i1 %.not23, label %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i.i.i = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not.i.i.i, label %lean_obj_tag.exit.i.i.us, label %.lr.ph.split

lean_obj_tag.exit.i.i.us:                         ; preds = %.lr.ph, %bb.b
  %.01624.us = phi i64 [ %i.k, %bb.b ], [ %2, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01624.us
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %.val.i.i.i.us = load i32, ptr %i.d, align 4
  %i.j = icmp ult i32 %.val.i.i.i.us, 16777216
  br i1 %i.j, label %bb.d, label %bb.c

bb.b:                                             ; preds = %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit.us
  %i.k = add i64 %.01624.us, 1                    ; 2 uses
  %.not.us = icmp eq i64 %i.k, %3
  br i1 %.not.us, label %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit._crit_edge, label %lean_obj_tag.exit.i.i.us

bb.c:                                             ; preds = %lean_obj_tag.exit.i.i.us
  %i.l = load i64, ptr %i.e, align 8, !tbaa !15
  br label %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit.us

bb.d:                                             ; preds = %lean_obj_tag.exit.i.i.us
  %i.m = load atomic i32, ptr @l_Lean_Meta_instHashableOrigin___lam__0___closed__0_once seq_cst, align 4, !tbaa !19
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.e, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i64 @lean_uint64_once_cold(ptr noundef nonnull @l_Lean_Meta_instHashableOrigin___lam__0___closed__0, ptr noundef nonnull @l_Lean_Meta_instHashableOrigin___lam__0___closed__0_once, ptr noundef nonnull @_init_l_Lean_Meta_instHashableOrigin___lam__0___closed__0) #8
  br label %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit.us

bb.f:                                             ; preds = %bb.d
  %i.p = load i64, ptr @l_Lean_Meta_instHashableOrigin___lam__0___closed__0, align 8, !tbaa !15
  br label %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit.us

l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit.us: ; preds = %bb.f, %bb.e, %bb.c
  %.012.i.i.us = phi i64 [ %i.l, %bb.c ], [ %i.p, %bb.f ], [ %i.o, %bb.e ]
  %i.q = tail call zeroext i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Meta_SimpTheorems_isDeclToUnfold_spec__0_spec__0___redArg(ptr noundef %i.i, i64 noundef %.012.i.i.us, ptr noundef nonnull %0) ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.s = and i64 %i.b, 8589934590
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %lean_obj_tag.exit.i.i.us27, label %lean_obj_tag.exit.i.i

lean_obj_tag.exit.i.i.us27:                       ; preds = %.lr.ph.split, %4
  %.01624.us28 = phi i64 [ %5, %4 ], [ %2, %.lr.ph.split ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01624.us28
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.y = load atomic i32, ptr @l_Lean_Meta_instHashableOrigin___lam__0___closed__0_once seq_cst, align 4, !tbaa !19
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %lean_obj_tag.exit.i.i.us27
  %i.aa = tail call i64 @lean_uint64_once_cold(ptr noundef nonnull @l_Lean_Meta_instHashableOrigin___lam__0___closed__0, ptr noundef nonnull @l_Lean_Meta_instHashableOrigin___lam__0___closed__0_once, ptr noundef nonnull @_init_l_Lean_Meta_instHashableOrigin___lam__0___closed__0) #8
  br label %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit.us30

bb.h:                                             ; preds = %lean_obj_tag.exit.i.i.us27
  %i.ab = load i64, ptr @l_Lean_Meta_instHashableOrigin___lam__0___closed__0, align 8, !tbaa !15
  br label %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit.us30

l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit.us30: ; preds = %bb.h, %bb.g
  %.012.i.i.us31 = phi i64 [ %i.aa, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = tail call zeroext i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Meta_SimpTheorems_isDeclToUnfold_spec__0_spec__0___redArg(ptr noundef %i.x, i64 noundef %.012.i.i.us31, ptr noundef %0) ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %4, label %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit._crit_edge

4:                                                ; preds = %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit.us30
  %5 = add i64 %.01624.us28, 1                    ; 2 uses
  %.not.us31 = icmp eq i64 %5, %3
  br i1 %.not.us31, label %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit._crit_edge, label %lean_obj_tag.exit.i.i.us27

bb.i:                                             ; preds = %lean_obj_tag.exit.i.i
  %i.ae = add i64 %.01624, 1                      ; 2 uses
  %.not = icmp eq i64 %i.ae, %3
  br i1 %.not, label %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit._crit_edge, label %lean_obj_tag.exit.i.i

lean_obj_tag.exit.i.i:                            ; preds = %.lr.ph.split, %bb.i
  %.01624 = phi i64 [ %i.ae, %bb.i ], [ %2, %.lr.ph.split ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01624
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !12
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !15
  %i.ak = tail call zeroext i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Meta_SimpTheorems_isDeclToUnfold_spec__0_spec__0___redArg(ptr noundef %i.ai, i64 noundef %i.aj, ptr noundef %0) ; 2 uses
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit._crit_edge

l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit._crit_edge: ; preds = %bb.i, %lean_obj_tag.exit.i.i, %4, %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit.us30, %bb.b, %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit.us, %bb.a
  %.2.ph = phi i8 [ 0, %4 ], [ 0, %bb.a ], [ %i.q, %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit.us ], [ 0, %bb.b ], [ %i.ac, %l_Lean_Meta_SimpTheorems_isLetDeclToUnfold.exit.us30 ], [ %i.ak, %lean_obj_tag.exit.i.i ], [ 0, %bb.i ]
  ret i8 %.2.ph
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isLetDeclToUnfold_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val22 = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = load i32, ptr %2, align 8, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 8, !tbaa !10
  br label %lean_dec.exit14

bb.c:                                             ; preds = %bb.a
  %.not.i15 = icmp eq i32 %i.b, 0
  br i1 %.not.i15, label %lean_dec.exit14, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !15
  %i.f = load i32, ptr %3, align 8, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit14
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 8, !tbaa !10
  br label %lean_dec.exit12

bb.f:                                             ; preds = %lean_dec.exit14
  %.not.i16 = icmp eq i32 %i.f, 0
  br i1 %.not.i16, label %lean_dec.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isLetDeclToUnfold_spec__0(ptr noundef %0, ptr noundef %1, i64 noundef %.val22, i64 noundef %.val)
  %i.j = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec.exit12
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit21

bb.i:                                             ; preds = %lean_dec.exit12
  %.not.i20 = icmp eq i32 %i.j, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.m = ptrtoint ptr %0 to i64
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.k, label %lean_dec.exit

bb.k:                                             ; preds = %lean_dec_ref.exit21
  %i.o = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.m:                                             ; preds = %bb.k
  %.not.i18 = icmp eq i32 %i.o, 0
  br i1 %.not.i18, label %lean_dec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.m, %bb.l, %lean_dec_ref.exit21
  %i.r = zext i8 %i.i to i64
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = or disjoint i64 %i.s, 1
  %i.u = inttoptr i64 %i.t to ptr
  ret ptr %i.u
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l_Lean_Meta_SimpTheoremsArray_isLetDeclToUnfold(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
lean_nat_lt.exit:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !15
  %.mask = and i64 %.val, 9223372036854775807     ; 2 uses
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %lean_nat_lt.exit
  %i.b = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isLetDeclToUnfold_spec__0(ptr noundef %1, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %.mask)
  br label %bb.b

bb.b:                                             ; preds = %lean_nat_lt.exit, %bb.a
  %.0 = phi i8 [ %i.b, %bb.a ], [ 0, %lean_nat_lt.exit ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Meta_SimpTheoremsArray_isLetDeclToUnfold___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !15
  %.mask.i = and i64 %.val.i, 9223372036854775807 ; 2 uses
  %.not.i8 = icmp eq i64 %.mask.i, 0
  br i1 %.not.i8, label %l_Lean_Meta_SimpTheoremsArray_isLetDeclToUnfold.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_SimpTheoremsArray_isLetDeclToUnfold_spec__0(ptr noundef %1, ptr noundef nonnull readonly %0, i64 noundef 0, i64 noundef %.mask.i)
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 1
  %i.e = or disjoint i64 %i.d, 1
  br label %l_Lean_Meta_SimpTheoremsArray_isLetDeclToUnfold.exit

l_Lean_Meta_SimpTheoremsArray_isLetDeclToUnfold.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.e, %bb.b ], [ 1, %bb.a ]
  %i.f = ptrtoint ptr %1 to i64
  %i.g = and i64 %i.f, 1
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %lean_dec.exit

bb.c:                                             ; preds = %l_Lean_Meta_SimpTheoremsArray_isLetDeclToUnfold.exit
  %i.h = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i5 = icmp eq i32 %i.h, 0
  br i1 %.not.i5, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %l_Lean_Meta_SimpTheoremsArray_isLetDeclToUnfold.exit
  %i.k = load i32, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %lean_dec.exit
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref.exit7

bb.h:                                             ; preds = %lean_dec.exit
  %.not.i6 = icmp eq i32 %i.k, 0
  br i1 %.not.i6, label %lean_dec_ref.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit7

lean_dec_ref.exit7:                               ; preds = %bb.g, %bb.h, %bb.i
  %i.n = inttoptr i64 %.0.i to ptr
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define ptr @runtime_initialize_Lean_Meta_Tactic_Simp_SimpTheorems(i8 noundef zeroext %0) local_unnamed_addr #1 {
bb.a:
  %.b = load i1, ptr @_G_runtime_initialized, align 1
end_hunk_0
