Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ExprDefEq?download=true
inline.NumInlined: 14717
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0_@l_Lean_MVarId_isDelayedAssigned___at___00Lean_Meta_CheckAssignment_checkApp_spec__5___redArg:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !15
  ret ptr %i.w
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_MVarId_isDelayedAssigned___at___00Lean_Meta_CheckAssignment_checkApp_spec__5___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_MVarId_isDelayedAssigned___at___00Lean_Meta_CheckAssignment_checkApp_spec__5___redArg(ptr noundef %0, ptr noundef %1)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i5 = icmp eq i64 %i.c, 0
  br i1 %.not.i5, label %bb.b, label %lean_dec.exit6

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit6

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = ptrtoint ptr %0 to i64
  %i.h = and i64 %i.g, 1
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.f, label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit6
  %i.i = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i32 %i.i, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %lean_dec.exit6
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 2) i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_CheckAssignment_checkApp_spec__6(i8 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, %3
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = icmp eq i8 %0, 0
  br i1 %i.c, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.01826.us = phi i64 [ %i.g, %.lr.ph.split.us ], [ %2, %.lr.ph ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01826.us
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = tail call zeroext i8 @l_Lean_Expr_isFVar(ptr noundef %i.e) #12 ; 0 uses
  %i.g = add i64 %.01826.us, 1                    ; 2 uses
  %i.h = icmp eq i64 %i.g, %3
  br i1 %i.h, label %._crit_edge, label %.lr.ph.split.us

bb.b:                                             ; preds = %.lr.ph.split
  %i.i = add i64 %.01826, 1                       ; 2 uses
  %i.j = icmp eq i64 %i.i, %3
  br i1 %i.j, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.b
  %.01826 = phi i64 [ %i.i, %bb.b ], [ %2, %.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01826
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = tail call zeroext i8 @l_Lean_Expr_isFVar(ptr noundef %i.l) #12
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %.2.ph = phi i8 [ 0, %.lr.ph.split.us ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph.split ]
  ret i8 %.2.ph
}

declare zeroext i8 @l_Lean_Expr_isFVar(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_CheckAssignment_checkApp_spec__6___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val18 = load i64, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !11     ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %2, align 8, !tbaa !11
  br label %lean_dec.exit12

bb.c:                                             ; preds = %bb.a
  %.not.i13 = icmp eq i32 %i.c, 0
  br i1 %.not.i13, label %lean_dec.exit12, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.f = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.f, align 8, !tbaa !13  ; 3 uses
  %i.g = load i32, ptr %3, align 8, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %lean_dec.exit12
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 8, !tbaa !11
  br label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit12
  %.not.i14 = icmp eq i32 %i.g, 0
  br i1 %.not.i14, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #12
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.f, %bb.e
  %i.j = icmp eq i64 %.val18, %.val
  br i1 %i.j, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_CheckAssignment_checkApp_spec__6.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %lean_dec.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = and i64 %i.a, 510
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.01826.us.i = phi i64 [ %i.q, %.lr.ph.split.us.i ], [ %.val18, %.lr.ph.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01826.us.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.p = tail call zeroext i8 @l_Lean_Expr_isFVar(ptr noundef %i.o) #12 ; 0 uses
  %i.q = add i64 %.01826.us.i, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.q, %.val
  br i1 %i.r, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_CheckAssignment_checkApp_spec__6.exit, label %.lr.ph.split.us.i

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.s = add i64 %.01826.i, 1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, %.val
  br i1 %i.t, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_CheckAssignment_checkApp_spec__6.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.h
  %.01826.i = phi i64 [ %i.s, %bb.h ], [ %.val18, %.lr.ph.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01826.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.w = tail call zeroext i8 @l_Lean_Expr_isFVar(ptr noundef %i.v) #12
  %.not.i19 = icmp eq i8 %i.w, 0
  br i1 %.not.i19, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_CheckAssignment_checkApp_spec__6.exit, label %bb.h

l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_CheckAssignment_checkApp_spec__6.exit: ; preds = %bb.h, %.lr.ph.split.i, %.lr.ph.split.us.i, %lean_dec.exit
  %.2.ph.i = phi i64 [ 1, %.lr.ph.split.us.i ], [ 1, %lean_dec.exit ], [ 1, %bb.h ], [ 3, %.lr.ph.split.i ]
  %i.x = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.i, label %bb.j, !prof !17

bb.i:                                             ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_CheckAssignment_checkApp_spec__6.exit
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit17

bb.j:                                             ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Meta_CheckAssignment_checkApp_spec__6.exit
  %.not.i16 = icmp eq i32 %i.x, 0
  br i1 %.not.i16, label %lean_dec_ref.exit17, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit17

lean_dec_ref.exit17:                              ; preds = %bb.i, %bb.j, %bb.k
  %i.aa = inttoptr i64 %.2.ph.i to ptr
  ret ptr %i.aa
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_CheckAssignment_checkFVar(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef captures(none) %3, ptr noundef %4, ptr noundef captures(none) %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call zeroext i8 @l_Lean_LocalContext_containsFVar(ptr noundef %i.f, ptr noundef %0) #12
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.cf

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 4 uses
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !11 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i, 0
  br i1 %i.k, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i32 %.val.i.i, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !11
  br label %lean_inc_ref.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %i.n = tail call ptr @l_Lean_LocalContext_findFVar_x3f(ptr noundef nonnull %i.j, ptr noundef %0) #12 ; 10 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = and i64 %i.o, 1
  %.not.i171 = icmp eq i64 %i.p, 0
  br i1 %.not.i171, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %lean_inc_ref.exit
  %i.q = getelementptr i8, ptr %i.n, i64 4
  %.val.i = load i32, ptr %i.q, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.r = icmp eq i32 %.mask, 16777216
  br i1 %i.r, label %bb.f, label %bb.cb

lean_obj_tag.exit.thread:                         ; preds = %lean_inc_ref.exit
  %i.s = and i64 %i.o, 8589934590
  %i.t = icmp eq i64 %i.s, 2
  br i1 %i.t, label %bb.f, label %.thread273

bb.f:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15   ; 27 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = and i64 %i.w, 1
  %.not.i148 = icmp eq i64 %i.x, 0                ; 2 uses
  br i1 %.not.i148, label %bb.g, label %lean_inc.exit149

bb.g:                                             ; preds = %bb.f
  %.val.i.i172 = load i32, ptr %i.v, align 4, !tbaa !11 ; 3 uses
  %i.y = icmp sgt i32 %.val.i.i172, 0
  br i1 %i.y, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %bb.g
  %i.z = add nuw i32 %.val.i.i172, 1
  store i32 %i.z, ptr %i.v, align 4, !tbaa !11
  br label %lean_inc.exit149

bb.i:                                             ; preds = %bb.g
  %.not.i.i173 = icmp eq i32 %.val.i.i172, 0
  br i1 %.not.i.i173, label %lean_inc.exit149, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit149

lean_inc.exit149:                                 ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %.val.i175 = load i32, ptr %i.n, align 8, !tbaa !11 ; 4 uses
  %i.ab = icmp eq i32 %.val.i175, 1
  br i1 %i.ab, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %lean_inc.exit149
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !15  ; 4 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i.i176 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i176, label %bb.k, label %lean_dec.exit.i

bb.k:                                             ; preds = %.preheader.i
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !11 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !17

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.m:                                             ; preds = %bb.k
  %.not.i7.i = icmp eq i32 %i.af, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #12
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.n, %bb.m, %bb.l, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.n) #12
  br label %lean_dec_ref_known.exit

bb.o:                                             ; preds = %lean_inc.exit149
  %i.ai = icmp sgt i32 %.val.i175, 1
  br i1 %i.ai, label %bb.p, label %bb.q, !prof !17

bb.p:                                             ; preds = %bb.o
  %i.aj = add nsw i32 %.val.i175, -1
  store i32 %i.aj, ptr %i.n, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.q:                                             ; preds = %bb.o
  %.not.i8.i = icmp eq i32 %.val.i175, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #12
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.p, %bb.q, %bb.r
  br i1 %.not.i148, label %lean_obj_tag.exit180, label %lean_obj_tag.exit180.thread

lean_obj_tag.exit180:                             ; preds = %lean_dec_ref_known.exit
  %i.ak = getelementptr i8, ptr %i.v, i64 4
  %.val.i179 = load i32, ptr %i.ak, align 4
  %.mask274 = and i32 %.val.i179, -16777216
  %i.al = icmp eq i32 %.mask274, 16777216
  br i1 %i.al, label %bb.s, label %bb.bx

lean_obj_tag.exit180.thread:                      ; preds = %lean_dec_ref_known.exit
  %i.am = and i64 %i.w, 8589934590
  %i.an = icmp eq i64 %i.am, 2
  br i1 %i.an, label %bb.s, label %.thread273

bb.s:                                             ; preds = %lean_obj_tag.exit180.thread, %lean_obj_tag.exit180
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %.not = icmp eq i8 %i.aq, 0
  br i1 %.not, label %bb.t, label %bb.ay

bb.t:                                             ; preds = %bb.s
  %i.ar = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.u, label %bb.v, !prof !17

bb.u:                                             ; preds = %bb.t
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit169

bb.v:                                             ; preds = %bb.t
  %.not.i168 = icmp eq i32 %i.ar, 0
  br i1 %.not.i168, label %lean_dec_ref.exit169, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit169

lean_dec_ref.exit169:                             ; preds = %bb.u, %bb.v, %bb.w
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !15 ; 4 uses
  %.val.i.i181 = load i32, ptr %i.av, align 4, !tbaa !11 ; 3 uses
  %i.aw = icmp sgt i32 %.val.i.i181, 0
  br i1 %i.aw, label %bb.x, label %bb.y, !prof !17

bb.x:                                             ; preds = %lean_dec_ref.exit169
  %i.ax = add nuw i32 %.val.i.i181, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !11
  br label %lean_inc_ref.exit183

bb.y:                                             ; preds = %lean_dec_ref.exit169
  %.not.i.i182 = icmp eq i32 %.val.i.i181, 0
  br i1 %.not.i.i182, label %lean_inc_ref.exit183, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = atomicrmw sub ptr %i.av, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit183

lean_inc_ref.exit183:                             ; preds = %bb.x, %bb.y, %bb.z
  %.val.i184 = load i32, ptr %i.v, align 8, !tbaa !11 ; 4 uses
  %i.az = icmp eq i32 %.val.i184, 1
  br i1 %i.az, label %.preheader.i186.preheader, label %bb.au

.preheader.i186.preheader:                        ; preds = %lean_inc_ref.exit183
  %i.ba = load ptr, ptr %i.ao, align 8, !tbaa !15 ; 4 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.bb, 1
  %.not.i.i188 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i188, label %bb.aa, label %lean_dec.exit.i189

bb.aa:                                            ; preds = %.preheader.i186.preheader
end_hunk_0
begin_hunk_1_@l_Lean_Meta_CheckAssignment_checkFVar:bb.a
  %i.fx = icmp eq i32 %.0.i211, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !15 ; 10 uses
  br i1 %i.fx, label %bb.cz, label %bb.ds

bb.cz:                                            ; preds = %lean_obj_tag.exit213
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = and i64 %i.ga, 1
  %.not.i146 = icmp eq i64 %i.gb, 0
  br i1 %.not.i146, label %bb.da, label %lean_inc.exit147

bb.da:                                            ; preds = %bb.cz
  %.val.i.i214 = load i32, ptr %i.fz, align 4, !tbaa !11 ; 3 uses
  %i.gc = icmp sgt i32 %.val.i.i214, 0
  br i1 %i.gc, label %bb.db, label %bb.dc, !prof !17

bb.db:                                            ; preds = %bb.da
  %i.gd = add nuw i32 %.val.i.i214, 1
  store i32 %i.gd, ptr %i.fz, align 4, !tbaa !11
  br label %lean_inc.exit147

bb.dc:                                            ; preds = %bb.da
  %.not.i.i215 = icmp eq i32 %.val.i.i214, 0
  br i1 %.not.i.i215, label %lean_inc.exit147, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ge = atomicrmw sub ptr %i.fz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit147

lean_inc.exit147:                                 ; preds = %bb.dd, %bb.dc, %bb.db, %bb.cz
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.fq, i32 noundef 1)
  %i.gf = tail call ptr @l_Lean_addTrace___at___00Lean_Meta_CheckAssignment_checkFVar_spec__1___redArg(ptr noundef nonnull @l_Lean_Meta_CheckAssignment_checkFVar___closed__1_value, ptr noundef %i.fz, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6) ; 9 uses
  %i.gg = ptrtoint ptr %i.gf to i64               ; 2 uses
  %i.gh = and i64 %i.gg, 1
  %.not.i217 = icmp eq i64 %i.gh, 0               ; 2 uses
  br i1 %.not.i217, label %bb.df, label %bb.de

bb.de:                                            ; preds = %lean_inc.exit147
  %i.gi = lshr i64 %i.gg, 1
  %i.gj = trunc i64 %i.gi to i32
  br label %lean_obj_tag.exit220

bb.df:                                            ; preds = %lean_inc.exit147
  %i.gk = getelementptr i8, ptr %i.gf, i64 4
  %.val.i219 = load i32, ptr %i.gk, align 4
  %i.gl = lshr i32 %.val.i219, 24
  br label %lean_obj_tag.exit220

lean_obj_tag.exit220:                             ; preds = %bb.de, %bb.df
  %.0.i218 = phi i32 [ %i.gj, %bb.de ], [ %i.gl, %bb.df ]
  %i.gm = icmp eq i32 %.0.i218, 0
  br i1 %i.gm, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %lean_obj_tag.exit220
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.gf, i32 noundef 1)
  %i.gn = tail call ptr @l_Lean_Meta_CheckAssignment_throwOutOfScopeFVar___redArg()
  br label %lean_dec.exit152

bb.dh:                                            ; preds = %lean_obj_tag.exit220
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !15 ; 5 uses
  %.val170 = load i32, ptr %i.gf, align 8, !tbaa !11
  %i.gq = icmp eq i32 %.val170, 1
  br i1 %i.gq, label %lean_dec.exit152, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = and i64 %i.gr, 1
  %.not.i144 = icmp eq i64 %i.gs, 0
  br i1 %.not.i144, label %bb.dj, label %lean_inc.exit145

bb.dj:                                            ; preds = %bb.di
  %.val.i.i221 = load i32, ptr %i.gp, align 4, !tbaa !11 ; 3 uses
  %i.gt = icmp sgt i32 %.val.i.i221, 0
  br i1 %i.gt, label %bb.dk, label %bb.dl, !prof !17

bb.dk:                                            ; preds = %bb.dj
  %i.gu = add nuw i32 %.val.i.i221, 1
  store i32 %i.gu, ptr %i.gp, align 4, !tbaa !11
  br label %lean_inc.exit145

bb.dl:                                            ; preds = %bb.dj
  %.not.i.i222 = icmp eq i32 %.val.i.i221, 0
  br i1 %.not.i.i222, label %lean_inc.exit145, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.gv = atomicrmw sub ptr %i.gp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit145

lean_inc.exit145:                                 ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.di
  br i1 %.not.i217, label %bb.dn, label %bb.dr

bb.dn:                                            ; preds = %lean_inc.exit145
  %i.gw = load i32, ptr %i.gf, align 8, !tbaa !11 ; 3 uses
  %i.gx = icmp sgt i32 %i.gw, 1
  br i1 %i.gx, label %bb.do, label %bb.dp, !prof !17

bb.do:                                            ; preds = %bb.dn
  %i.gy = add nsw i32 %i.gw, -1
  store i32 %i.gy, ptr %i.gf, align 8, !tbaa !11
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dn
  %.not.i160 = icmp eq i32 %i.gw, 0
  br i1 %.not.i160, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gf) #12
  br label %bb.dr

bb.dr:                                            ; preds = %lean_inc.exit145, %bb.do, %bb.dp, %bb.dq
  %i.gz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.gp, ptr %i.ha, align 8, !tbaa !15
  br label %lean_dec.exit152

bb.ds:                                            ; preds = %lean_obj_tag.exit213
  %.val = load i32, ptr %i.fq, align 8, !tbaa !11
  %i.hb = icmp eq i32 %.val, 1
  br i1 %i.hb, label %lean_dec.exit152, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.hc = ptrtoint ptr %i.fz to i64
  %i.hd = and i64 %i.hc, 1
  %.not.i = icmp eq i64 %i.hd, 0
  br i1 %.not.i, label %bb.du, label %lean_inc.exit

bb.du:                                            ; preds = %bb.dt
  %.val.i.i224 = load i32, ptr %i.fz, align 4, !tbaa !11 ; 3 uses
  %i.he = icmp sgt i32 %.val.i.i224, 0
  br i1 %i.he, label %bb.dv, label %bb.dw, !prof !17

bb.dv:                                            ; preds = %bb.du
  %i.hf = add nuw i32 %.val.i.i224, 1
  store i32 %i.hf, ptr %i.fz, align 4, !tbaa !11
  br label %lean_inc.exit

bb.dw:                                            ; preds = %bb.du
  %.not.i.i225 = icmp eq i32 %.val.i.i224, 0
  br i1 %.not.i.i225, label %lean_inc.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.hg = atomicrmw sub ptr %i.fz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dt
  br i1 %.not.i210, label %bb.dy, label %bb.ec

bb.dy:                                            ; preds = %lean_inc.exit
  %i.hh = load i32, ptr %i.fq, align 8, !tbaa !11 ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, 1
  br i1 %i.hi, label %bb.dz, label %bb.ea, !prof !17

bb.dz:                                            ; preds = %bb.dy
  %i.hj = add nsw i32 %i.hh, -1
  store i32 %i.hj, ptr %i.fq, align 8, !tbaa !11
  br label %bb.ec

bb.ea:                                            ; preds = %bb.dy
  %.not.i162 = icmp eq i32 %i.hh, 0
  br i1 %.not.i162, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fq) #12
  br label %bb.ec

bb.ec:                                            ; preds = %lean_inc.exit, %bb.dz, %bb.ea, %bb.eb
  %i.hk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store ptr %i.fz, ptr %i.hl, align 8, !tbaa !15
  br label %lean_dec.exit152

l_Array_contains___at___00Lean_Meta_CheckAssignment_checkFVar_spec__0.exit: ; preds = %.lr.ph.i.i
  tail call void @lean_inc_heartbeat() #12
  %i.hm = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.ed, label %lean_alloc_ctor.exit227

bb.ed:                                            ; preds = %l_Array_contains___at___00Lean_Meta_CheckAssignment_checkFVar_spec__0.exit
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit227:                          ; preds = %l_Array_contains___at___00Lean_Meta_CheckAssignment_checkFVar_spec__0.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  store i32 1, ptr %i.hm, align 4, !tbaa !11
  store i32 65552, ptr %i.ho, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %0, ptr %i.hp, align 8, !tbaa !15
  br label %lean_dec.exit152

lean_dec.exit152:                                 ; preds = %bb.ds, %bb.dh, %lean_dec_ref_known.exit205, %lean_alloc_ctor.exit227, %lean_dec_ref.exit165, %bb.ec, %bb.dg, %bb.dr, %l_Lean_Meta_CheckAssignment_throwOutOfScopeFVar___redArg.exit, %lean_alloc_ctor.exit
  %.10 = phi ptr [ %i.ec, %lean_alloc_ctor.exit ], [ %i.eb, %lean_dec_ref_known.exit205 ], [ %i.hm, %lean_alloc_ctor.exit227 ], [ %i.ez, %l_Lean_Meta_CheckAssignment_throwOutOfScopeFVar___redArg.exit ], [ %i.fo, %lean_dec_ref.exit165 ], [ %i.gf, %bb.dh ], [ %i.gn, %bb.dg ], [ %i.gz, %bb.dr ], [ %i.hk, %bb.ec ], [ %i.fq, %bb.ds ]
  ret ptr %.10
}

declare zeroext i8 @l_Lean_LocalContext_containsFVar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_LocalContext_findFVar_x3f(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_CheckAssignment_check(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef captures(none) %3, ptr noundef %4, ptr noundef captures(none) %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i8 @l_Lean_Expr_hasExprMVar(ptr noundef %0) #12
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.ds

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i8 @l_Lean_Expr_hasFVar(ptr noundef %0) #12
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.ds

bb.c:                                             ; preds = %bb.b
  tail call void @lean_inc_heartbeat() #12
  %i.d = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

.thread:                                          ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 1, ptr %i.d, align 4, !tbaa !11
  store i32 65552, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %0, ptr %i.g, align 8, !tbaa !15
  br label %lean_dec.exit724

lean_dec_ref_known.exitthread-pre-split:          ; preds = %bb.mc, %bb.ky, %lean_inc.exit649, %lean_inc.exit655, %bb.mb, %bb.ly, %bb.lx, %bb.kx, %bb.kw, %bb.lz, %bb.md, %.thread1240, %.thread1243, %lean_dec_ref.exit775, %bb.bm, %bb.cd, %bb.da, %lean_dec.exit.i, %bb.u, %bb.v, %bb.w, %bb.ca, %bb.cr, %bb.dr
  %.0489.ph = phi ptr [ %0, %bb.dr ], [ %i.z, %bb.v ], [ %i.z, %bb.u ], [ %i.z, %lean_dec.exit.i ], [ %i.ee, %bb.da ], [ %i.dl, %bb.cd ], [ %i.cv, %bb.bm ], [ %0, %bb.ca ], [ %i.eb, %lean_dec_ref.exit775 ], [ %i.z, %bb.w ], [ %i.di, %.thread1243 ], [ %0, %bb.cr ], [ %i.cs, %.thread1240 ], [ %0, %bb.mc ], [ %i.rk, %lean_inc.exit649 ], [ %0, %bb.ky ], [ %i.pv, %lean_inc.exit655 ], [ %0, %bb.mb ], [ %0, %bb.ly ], [ %0, %bb.lx ], [ %0, %bb.kx ], [ %0, %bb.kw ], [ %0, %bb.lz ], [ %0, %bb.md ] ; 2 uses
  %.val.i.i.pr = load i32, ptr %.0489.ph, align 4, !tbaa !11
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec_ref_known.exitthread-pre-split, %bb.dp, %bb.cp, %bb.by
  %.val.i.i = phi i32 [ %.val.i.i.pr, %lean_dec_ref_known.exitthread-pre-split ], [ %i.dw, %bb.cp ], [ %i.es, %bb.dp ], [ %i.dg, %bb.by ] ; 3 uses
  %.0489 = phi ptr [ %.0489.ph, %lean_dec_ref_known.exitthread-pre-split ], [ %0, %bb.cp ], [ %0, %bb.dp ], [ %0, %bb.by ] ; 5 uses
  %i.h = icmp sgt i32 %.val.i.i, 0
  br i1 %i.h, label %bb.e, label %bb.f, !prof !35

bb.e:                                             ; preds = %lean_dec_ref_known.exit
  %i.i = add nuw i32 %.val.i.i, 1
  store i32 %i.i, ptr %.0489, align 4, !tbaa !11
  br label %lean_inc_ref.exit

bb.f:                                             ; preds = %lean_dec_ref_known.exit
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = atomicrmw sub ptr %.0489, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.dq, %bb.cq, %bb.bz, %bb.e, %bb.f, %bb.g
  %.04891207 = phi ptr [ %.0489, %bb.e ], [ %.0489, %bb.f ], [ %.0489, %bb.g ], [ %0, %bb.bz ], [ %0, %bb.cq ], [ %0, %bb.dq ] ; 2 uses
  %i.k = tail call ptr @lean_st_ref_take(ptr noundef %2) #12
  %i.l = tail call ptr @l_Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_CheckAssignment_cache_spec__0___redArg(ptr noundef %i.k, ptr noundef nonnull %0, ptr noundef nonnull %.04891207)
  %i.m = tail call ptr @lean_st_ref_set(ptr noundef %2, ptr noundef %i.l) #12 ; 0 uses
  tail call void @lean_inc_heartbeat() #12
  %i.n = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_CheckAssignment_cache___redArg.exit

bb.h:                                             ; preds = %lean_inc_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_CheckAssignment_cache___redArg.exit: ; preds = %lean_inc_ref.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 1, ptr %i.n, align 4, !tbaa !11
  store i32 65552, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.04891207, ptr %i.q, align 8, !tbaa !15
  br label %lean_dec.exit724

lean_dec.exit720:                                 ; preds = %bb.jz, %bb.ka, %bb.kb, %bb.ju, %bb.jv, %bb.jw, %bb.hq, %bb.hr, %bb.hs, %bb.gg, %bb.gh, %bb.gi, %bb.jx, %lean_dec.exit706, %bb.ho, %bb.ge, %lean_obj_tag.exit866, %lean_obj_tag.exit973, %lean_obj_tag.exit931, %lean_obj_tag.exit905, %lean_obj_tag.exit879, %lean_obj_tag.exit989, %lean_inc_ref.exit859, %lean_inc_ref.exit856, %lean_dec.exit722, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bc, %lean_inc_ref.exit814, %bb.ab
  %.0500 = phi ptr [ %i.gd, %lean_dec.exit722 ], [ %i.gd, %bb.ab ], [ %i.gd, %bb.bg ], [ %i.gd, %bb.bj ], [ %i.ba, %lean_inc_ref.exit814 ], [ %i.gd, %bb.bc ], [ %i.gd, %bb.be ], [ %i.gd, %bb.bf ], [ %i.gd, %bb.bh ], [ %i.gd, %bb.bi ], [ %i.mo, %bb.jz ], [ %i.mo, %bb.ka ], [ %i.mo, %bb.kb ], [ %i.ng, %bb.ju ], [ %i.ng, %bb.jv ], [ %i.ng, %bb.jw ], [ %i.kh, %bb.hq ], [ %i.kh, %bb.hr ], [ %i.kh, %bb.hs ], [ %i.ic, %bb.gg ], [ %i.ic, %bb.gh ], [ %i.ic, %bb.gi ], [ %i.ql, %lean_obj_tag.exit989 ], [ %i.pb, %lean_obj_tag.exit973 ], [ %i.kh, %bb.ho ], [ %i.ng, %lean_dec.exit706 ], [ %i.ic, %bb.ge ], [ %i.mo, %bb.jx ], [ %i.lw, %lean_obj_tag.exit931 ], [ %i.jp, %lean_obj_tag.exit905 ], [ %i.hk, %lean_obj_tag.exit879 ], [ %i.gd, %lean_obj_tag.exit866 ], [ %i.fz, %lean_inc_ref.exit859 ], [ %i.fv, %lean_inc_ref.exit856 ] ; 10 uses
  %i.r = ptrtoint ptr %.0500 to i64               ; 2 uses
  %i.s = and i64 %i.r, 1
  %.not.i803 = icmp eq i64 %i.s, 0
  br i1 %.not.i803, label %bb.j, label %bb.i

bb.i:                                             ; preds = %lean_dec.exit720
  %i.t = lshr i64 %i.r, 1
  %i.u = trunc i64 %i.t to i32
  br label %lean_obj_tag.exit806

bb.j:                                             ; preds = %lean_dec.exit720
  %i.v = getelementptr i8, ptr %.0500, i64 4
  %.val.i805 = load i32, ptr %i.v, align 4
  %i.w = lshr i32 %.val.i805, 24
  br label %lean_obj_tag.exit806

lean_obj_tag.exit806:                             ; preds = %bb.i, %bb.j
  %.0.i804 = phi i32 [ %i.u, %bb.i ], [ %i.w, %bb.j ]
  %i.x = icmp eq i32 %.0.i804, 0
  br i1 %i.x, label %bb.k, label %bb.x

bb.k:                                             ; preds = %lean_obj_tag.exit806
  %i.y = getelementptr inbounds nuw i8, ptr %.0500, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15   ; 8 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 1
  %.not.i692 = icmp eq i64 %i.ab, 0
  br i1 %.not.i692, label %bb.l, label %lean_inc.exit693

bb.l:                                             ; preds = %bb.k
  %.val.i.i807 = load i32, ptr %i.z, align 4, !tbaa !11 ; 3 uses
  %i.ac = icmp sgt i32 %.val.i.i807, 0
  br i1 %i.ac, label %bb.m, label %bb.n, !prof !17

bb.m:                                             ; preds = %bb.l
  %i.ad = add nuw i32 %.val.i.i807, 1
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !11
  br label %lean_inc.exit693

bb.n:                                             ; preds = %bb.l
  %.not.i.i808 = icmp eq i32 %.val.i.i807, 0
  br i1 %.not.i.i808, label %lean_inc.exit693, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = atomicrmw sub ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit693

lean_inc.exit693:                                 ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.val.i810 = load i32, ptr %.0500, align 8, !tbaa !11 ; 4 uses
  %i.af = icmp eq i32 %.val.i810, 1
  br i1 %i.af, label %.preheader.i, label %bb.t

.preheader.i:                                     ; preds = %lean_inc.exit693
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !15  ; 4 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i.i811 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i811, label %bb.p, label %lean_dec.exit.i

bb.p:                                             ; preds = %.preheader.i
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !11 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.q, label %bb.r, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %i.ag, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.r:                                             ; preds = %bb.p
  %.not.i7.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ag) #12
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.s, %bb.r, %bb.q, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %.0500) #12
  br label %lean_dec_ref_known.exitthread-pre-split

bb.t:                                             ; preds = %lean_inc.exit693
  %i.am = icmp sgt i32 %.val.i810, 1
  br i1 %i.am, label %bb.u, label %bb.v, !prof !17

bb.u:                                             ; preds = %bb.t
  %i.an = add nsw i32 %.val.i810, -1
  store i32 %i.an, ptr %.0500, align 8, !tbaa !11
  br label %lean_dec_ref_known.exitthread-pre-split

bb.v:                                             ; preds = %bb.t
  %.not.i8.i = icmp eq i32 %.val.i810, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exitthread-pre-split, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0500) #12
  br label %lean_dec_ref_known.exitthread-pre-split

bb.x:                                             ; preds = %lean_obj_tag.exit806
  %i.ao = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.y, label %bb.z, !prof !17

bb.y:                                             ; preds = %bb.x
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit724

bb.z:                                             ; preds = %bb.x
  %.not.i790 = icmp eq i32 %i.ao, 0
  br i1 %.not.i790, label %lean_dec.exit724, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec.exit724

bb.ab:                                            ; preds = %lean_dec.exit722, %bb.bb, %bb.ba, %bb.az, %bb.ax
  %i.ar = tail call zeroext i8 @l_Lean_Expr_isHeadBetaTarget(ptr noundef nonnull %0, i8 noundef zeroext 0) #12
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %lean_dec.exit720, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.at = load i32, ptr %i.gd, align 8, !tbaa !11 ; 3 uses
  %i.au = icmp sgt i32 %i.at, 1
end_hunk_1
begin_hunk_2_@l_Lean_Meta_CheckAssignment_assignToConstFun:bb.a
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.ae, %bb.af, %bb.ag
  %i.ar = ptrtoint ptr %1 to i64
  %i.as = and i64 %i.ar, 1
  %.not.i54 = icmp eq i64 %i.as, 0
  br i1 %.not.i54, label %bb.ah, label %lean_inc.exit55

bb.ah:                                            ; preds = %lean_dec_ref_known.exit
  %.val.i.i90 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.at = icmp sgt i32 %.val.i.i90, 0
  br i1 %i.at, label %bb.ai, label %bb.aj, !prof !17

bb.ai:                                            ; preds = %bb.ah
  %i.au = add nuw i32 %.val.i.i90, 1
  store i32 %i.au, ptr %1, align 4, !tbaa !11
  br label %lean_inc.exit55

bb.aj:                                            ; preds = %bb.ah
  %.not.i.i91 = icmp eq i32 %.val.i.i90, 0
  br i1 %.not.i.i91, label %lean_inc.exit55, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.av = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit55

lean_inc.exit55:                                  ; preds = %bb.ak, %bb.aj, %bb.ai, %lean_dec_ref_known.exit
  %i.aw = tail call ptr @lean_alloc_object(i64 noundef 48) #12 ; 9 uses
  store i32 1, ptr %i.aw, align 4, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %i.ay, 65535
  %i.ba = or disjoint i32 %i.az, -184549376
  store i32 %i.ba, ptr %i.ax, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @l_Lean_Meta_CheckAssignment_assignToConstFun___lam__0___boxed, ptr %i.bb, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i16 10, ptr %i.bc, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  store i16 3, ptr %i.bd, align 2, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %1, ptr %i.be, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %2, ptr %i.bf, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr %0, ptr %i.bg, align 8, !tbaa !15
  tail call void @lean_inc_heartbeat() #12
  %i.bh = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.al, label %lean_alloc_ctor.exit

bb.al:                                            ; preds = %lean_inc.exit55
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit55
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 1, ptr %i.bh, align 4, !tbaa !11
  store i32 16842768, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %1, ptr %i.bk, align 8, !tbaa !15
  %i.bl = tail call ptr @l_Lean_Meta_forallBoundedTelescope___at___00Lean_Meta_CheckAssignment_assignToConstFun_spec__9___redArg(ptr noundef %i.ac, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.aw, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6)
  br label %lean_dec.exit

bb.am:                                            ; preds = %lean_obj_tag.exit
  %i.bm = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.an, label %bb.ao, !prof !17

bb.an:                                            ; preds = %bb.am
  %i.bo = add nsw i32 %i.bm, -1
  store i32 %i.bo, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit71

bb.ao:                                            ; preds = %bb.am
  %.not.i70 = icmp eq i32 %i.bm, 0
  br i1 %.not.i70, label %lean_dec_ref.exit71, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec_ref.exit71

lean_dec_ref.exit71:                              ; preds = %bb.an, %bb.ao, %bb.ap
  %i.bp = ptrtoint ptr %1 to i64
  %i.bq = and i64 %i.bp, 1
  %.not.i63 = icmp eq i64 %i.bq, 0
  br i1 %.not.i63, label %bb.aq, label %lean_dec.exit64

bb.aq:                                            ; preds = %lean_dec_ref.exit71
  %i.br = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %bb.ar, label %bb.as, !prof !17

bb.ar:                                            ; preds = %bb.aq
  %i.bt = add nsw i32 %i.br, -1
  store i32 %i.bt, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit64

bb.as:                                            ; preds = %bb.aq
  %.not.i65 = icmp eq i32 %i.br, 0
  br i1 %.not.i65, label %lean_dec.exit64, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec.exit64

lean_dec.exit64:                                  ; preds = %bb.at, %bb.as, %bb.ar, %lean_dec_ref.exit71
  %i.bu = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.au, label %bb.av, !prof !17

bb.au:                                            ; preds = %lean_dec.exit64
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit69

bb.av:                                            ; preds = %lean_dec.exit64
  %.not.i68 = icmp eq i32 %i.bu, 0
  br i1 %.not.i68, label %lean_dec_ref.exit69, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit69

lean_dec_ref.exit69:                              ; preds = %bb.au, %bb.av, %bb.aw
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !15 ; 5 uses
  %.val = load i32, ptr %i.t, align 8, !tbaa !11
  %i.bz = icmp eq i32 %.val, 1
  br i1 %i.bz, label %lean_dec.exit, label %bb.ax

bb.ax:                                            ; preds = %lean_dec_ref.exit69
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = and i64 %i.ca, 1
  %.not.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i, label %bb.ay, label %lean_inc.exit

bb.ay:                                            ; preds = %bb.ax
  %.val.i.i93 = load i32, ptr %i.by, align 4, !tbaa !11 ; 3 uses
  %i.cc = icmp sgt i32 %.val.i.i93, 0
  br i1 %i.cc, label %bb.az, label %bb.ba, !prof !17

bb.az:                                            ; preds = %bb.ay
  %i.cd = add nuw i32 %.val.i.i93, 1
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !11
  br label %lean_inc.exit

bb.ba:                                            ; preds = %bb.ay
  %.not.i.i94 = icmp eq i32 %.val.i.i93, 0
  br i1 %.not.i.i94, label %lean_inc.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ce = atomicrmw sub ptr %i.by, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax
  br i1 %.not.i84, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %lean_inc.exit
  %i.cf = load i32, ptr %i.t, align 8, !tbaa !11  ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.bd, label %bb.be, !prof !17

bb.bd:                                            ; preds = %bb.bc
  %i.ch = add nsw i32 %i.cf, -1
  store i32 %i.ch, ptr %i.t, align 8, !tbaa !11
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %.not.i66 = icmp eq i32 %i.cf, 0
  br i1 %.not.i66, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #12
  br label %bb.bg

bb.bg:                                            ; preds = %lean_inc.exit, %bb.bd, %bb.be, %bb.bf
  tail call void @lean_inc_heartbeat() #12
  %i.ci = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.bh, label %lean_alloc_ctor.exit96

bb.bh:                                            ; preds = %bb.bg
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit96:                           ; preds = %bb.bg
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 1, ptr %i.ci, align 4, !tbaa !11
  store i32 16842768, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.by, ptr %i.cl, align 8, !tbaa !15
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec_ref.exit69, %lean_alloc_ctor.exit96, %lean_alloc_ctor.exit
  %.1 = phi ptr [ %i.bl, %lean_alloc_ctor.exit ], [ %i.ci, %lean_alloc_ctor.exit96 ], [ %i.t, %lean_dec_ref.exit69 ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Meta_CheckAssignment_checkApp_spec__4(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef captures(none) %5, ptr noundef %6, ptr noundef captures(none) %7, ptr noundef %8) local_unnamed_addr #1 {
bb.a:
  %.not97 = icmp ult i64 %1, %0
  br i1 %.not97, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %lean_dec.exit, %bb.a
  %.053.lcssa = phi ptr [ %2, %bb.a ], [ %.0.i.i78, %lean_dec.exit ]
  tail call void @lean_inc_heartbeat() #12
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %._crit_edge
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

.lr.ph:                                           ; preds = %bb.a, %lean_dec.exit
  %.05099 = phi i64 [ %i.as, %lean_dec.exit ], [ %1, %bb.a ] ; 5 uses
  %.05398 = phi ptr [ %.0.i.i78, %lean_dec.exit ], [ %2, %bb.a ] ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05398, i64 24
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.05099
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 5 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, 1
  %.not.i61 = icmp eq i64 %i.g, 0
  br i1 %.not.i61, label %bb.c, label %lean_inc.exit62

bb.c:                                             ; preds = %.lr.ph
  %.val.i.i = load i32, ptr %i.e, align 4, !tbaa !11 ; 3 uses
  %i.h = icmp sgt i32 %.val.i.i, 0
  br i1 %i.h, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i32 %.val.i.i, 1
  store i32 %i.i, ptr %i.e, align 4, !tbaa !11
  br label %lean_inc.exit62

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit62, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = atomicrmw sub ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit62

lean_inc.exit62:                                  ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph
  %i.k = tail call ptr @l_Lean_Meta_CheckAssignment_check(ptr noundef %i.e, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) ; 13 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = and i64 %i.l, 1
  %.not.i67 = icmp eq i64 %i.m, 0                 ; 2 uses
  br i1 %.not.i67, label %bb.h, label %bb.g

bb.g:                                             ; preds = %lean_inc.exit62
  %i.n = lshr i64 %i.l, 1
  %i.o = trunc i64 %i.n to i32
  br label %lean_obj_tag.exit

bb.h:                                             ; preds = %lean_inc.exit62
  %i.p = getelementptr i8, ptr %i.k, i64 4
  %.val.i = load i32, ptr %i.p, align 4
  %i.q = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.o, %bb.g ], [ %i.q, %bb.h ]
  %i.r = icmp eq i32 %.0.i, 0
  br i1 %i.r, label %bb.i, label %bb.af

bb.i:                                             ; preds = %lean_obj_tag.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 5 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 1
  %.not.i59 = icmp eq i64 %i.v, 0
  br i1 %.not.i59, label %bb.j, label %lean_inc.exit60

bb.j:                                             ; preds = %bb.i
  %.val.i.i68 = load i32, ptr %i.t, align 4, !tbaa !11 ; 3 uses
  %i.w = icmp sgt i32 %.val.i.i68, 0
  br i1 %i.w, label %bb.k, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.j
  %i.x = add nuw i32 %.val.i.i68, 1
  store i32 %i.x, ptr %i.t, align 4, !tbaa !11
  br label %lean_inc.exit60

bb.l:                                             ; preds = %bb.j
  %.not.i.i69 = icmp eq i32 %.val.i.i68, 0
  br i1 %.not.i.i69, label %lean_inc.exit60, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = atomicrmw sub ptr %i.t, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit60

lean_inc.exit60:                                  ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  %.val.i71 = load i32, ptr %i.k, align 8, !tbaa !11 ; 4 uses
  %i.z = icmp eq i32 %.val.i71, 1
  br i1 %i.z, label %.preheader.i, label %bb.r

.preheader.i:                                     ; preds = %lean_inc.exit60
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !15  ; 4 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 1
  %.not.i.i72 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i72, label %bb.n, label %lean_dec.exit.i

bb.n:                                             ; preds = %.preheader.i
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !11 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.o, label %bb.p, !prof !17

bb.o:                                             ; preds = %bb.n
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.p:                                             ; preds = %bb.n
  %.not.i7.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #12
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.k) #12
  br label %lean_dec_ref_known.exit

bb.r:                                             ; preds = %lean_inc.exit60
  %i.ag = icmp sgt i32 %.val.i71, 1
  br i1 %i.ag, label %bb.s, label %bb.t, !prof !17

bb.s:                                             ; preds = %bb.r
  %i.ah = add nsw i32 %.val.i71, -1
  store i32 %i.ah, ptr %i.k, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.t:                                             ; preds = %bb.r
  %.not.i8.i = icmp eq i32 %.val.i71, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #12
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.s, %bb.t, %bb.u
  %.val.i.i73 = load i32, ptr %.05398, align 4, !tbaa !11
  %i.ai = icmp eq i32 %.val.i.i73, 1
  br i1 %i.ai, label %lean_ensure_exclusive_array.exit.i, label %bb.v

bb.v:                                             ; preds = %lean_dec_ref_known.exit
  %i.aj = tail call ptr @lean_copy_expand_array_nonlinear(ptr noundef nonnull %.05398, i1 noundef zeroext false) #12
  br label %lean_ensure_exclusive_array.exit.i

lean_ensure_exclusive_array.exit.i:               ; preds = %bb.v, %lean_dec_ref_known.exit
  %.0.i.i = phi ptr [ %i.aj, %bb.v ], [ %.05398, %lean_dec_ref_known.exit ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.05099 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15 ; 4 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 1
  %.not.i.i74 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i74, label %bb.w, label %lean_array_uset.exit

bb.w:                                             ; preds = %lean_ensure_exclusive_array.exit.i
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !11 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %bb.y, !prof !17

bb.x:                                             ; preds = %bb.w
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !11
  br label %lean_array_uset.exit

bb.y:                                             ; preds = %bb.w
  %.not.i6.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i6.i, label %lean_array_uset.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #12
  br label %lean_array_uset.exit

lean_array_uset.exit:                             ; preds = %lean_ensure_exclusive_array.exit.i, %bb.x, %bb.y, %bb.z
  store ptr inttoptr (i64 1 to ptr), ptr %i.al, align 8, !tbaa !15
  %i.as = add nuw i64 %.05099, 1                  ; 2 uses
  %.val.i.i76 = load i32, ptr %.0.i.i, align 4, !tbaa !11
  %i.at = icmp eq i32 %.val.i.i76, 1
  br i1 %i.at, label %lean_ensure_exclusive_array.exit.i77, label %bb.aa

bb.aa:                                            ; preds = %lean_array_uset.exit
  %i.au = tail call ptr @lean_copy_expand_array_nonlinear(ptr noundef nonnull %.0.i.i, i1 noundef zeroext false) #12 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.phi.trans.insert104 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert, i64 %.05099
  %.pre = load ptr, ptr %.phi.trans.insert104, align 8, !tbaa !15
  br label %lean_ensure_exclusive_array.exit.i77

lean_ensure_exclusive_array.exit.i77:             ; preds = %bb.aa, %lean_array_uset.exit
  %i.av = phi ptr [ %.pre, %bb.aa ], [ inttoptr (i64 1 to ptr), %lean_array_uset.exit ] ; 4 uses
  %.0.i.i78 = phi ptr [ %i.au, %bb.aa ], [ %.0.i.i, %lean_array_uset.exit ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i78, i64 24
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.05099
end_hunk_2
