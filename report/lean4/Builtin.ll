Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Builtin?download=true
inline.NumInlined: 20714
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 193
loop-unroll.NumUnrolled: 193
begin_hunk_0_@l_Array_filterMapM___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_similarNames_spec__1:bb.a
  %i.am = tail call i64 @lean_usize_of_big_nat(ptr noundef %2) #11
  br label %lean_usize_of_nat.exit39

lean_usize_of_nat.exit39:                         ; preds = %bb.o, %bb.p
  %i.an = phi i64 [ %i.al, %bb.o ], [ %i.am, %bb.p ] ; 2 uses
  br i1 %.not.i32, label %bb.r, label %bb.q

bb.q:                                             ; preds = %lean_usize_of_nat.exit39
  %i.ao = lshr i64 %i.b, 1
  br label %lean_usize_of_nat.exit41

bb.r:                                             ; preds = %lean_usize_of_nat.exit39
  %i.ap = tail call i64 @lean_usize_of_big_nat(ptr noundef %3) #11
  br label %lean_usize_of_nat.exit41

lean_usize_of_nat.exit41:                         ; preds = %bb.q, %bb.r
  %i.aq = phi i64 [ %i.ao, %bb.q ], [ %i.ap, %bb.r ] ; 2 uses
  %.not38.i42 = icmp eq i64 %i.an, %i.aq
  br i1 %.not38.i42, label %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_filterMapM___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_similarNames_spec__1_spec__1.exit, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %lean_usize_of_nat.exit41
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = ptrtoint ptr %0 to i64
  %i.at = and i64 %i.as, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %.lr.ph.i43
  %.02240.i44 = phi i64 [ %i.an, %.lr.ph.i43 ], [ %i.bj, %bb.y ] ; 2 uses
  %.02639.i45 = phi ptr [ @l_Lean_unresolveNameGlobal_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_getQualified_spec__0_spec__0_spec__2___closed__0_value, %.lr.ph.i43 ], [ %.028.i51, %bb.y ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02240.i44
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !10 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !10 ; 3 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = and i64 %i.at, %i.ba
  %or.cond.not.i46 = icmp eq i64 %i.bb, 0
  br i1 %or.cond.not.i46, label %lean_nat_le.exit.i56, label %.split.i47, !prof !25

.split.i47:                                       ; preds = %bb.s
  %.not43.i48 = icmp ugt ptr %i.az, %0
  br i1 %.not43.i48, label %bb.y, label %bb.t

lean_nat_le.exit.i56:                             ; preds = %bb.s
  %i.bc = tail call zeroext i1 @lean_nat_big_le(ptr noundef %i.az, ptr noundef %0) #11
  br i1 %i.bc, label %bb.t, label %bb.y

bb.t:                                             ; preds = %lean_nat_le.exit.i56, %.split.i47
  %i.bd = ptrtoint ptr %i.ax to i64
  %i.be = and i64 %i.bd, 1
  %.not.i.i49 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i49, label %bb.u, label %lean_inc.exit.i50

bb.u:                                             ; preds = %bb.t
  %.val.i.i.i54 = load i32, ptr %i.ax, align 4, !tbaa !12 ; 3 uses
  %i.bf = icmp sgt i32 %.val.i.i.i54, 0
  br i1 %i.bf, label %bb.v, label %bb.w, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.bg = add nuw i32 %.val.i.i.i54, 1
  store i32 %i.bg, ptr %i.ax, align 4, !tbaa !12
  br label %lean_inc.exit.i50

bb.w:                                             ; preds = %bb.u
  %.not.i.i.i55 = icmp eq i32 %.val.i.i.i54, 0
  br i1 %.not.i.i.i55, label %lean_inc.exit.i50, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = atomicrmw sub ptr %i.ax, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i50

lean_inc.exit.i50:                                ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %i.bi = tail call ptr @lean_array_push(ptr noundef %.02639.i45, ptr noundef %i.ax) #11
  br label %bb.y

bb.y:                                             ; preds = %lean_inc.exit.i50, %lean_nat_le.exit.i56, %.split.i47
  %.028.i51 = phi ptr [ %i.bi, %lean_inc.exit.i50 ], [ %.02639.i45, %lean_nat_le.exit.i56 ], [ %.02639.i45, %.split.i47 ] ; 2 uses
  %i.bj = add i64 %.02240.i44, 1                  ; 2 uses
  %.not.i52 = icmp eq i64 %i.bj, %i.aq
  br i1 %.not.i52, label %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_filterMapM___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_similarNames_spec__1_spec__1.exit, label %bb.s

l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_filterMapM___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_similarNames_spec__1_spec__1.exit: ; preds = %bb.m, %bb.y, %.split69, %.split, %lean_usize_of_nat.exit41, %lean_usize_of_nat.exit, %lean_nat_lt.exit31, %lean_nat_lt.exit
  %.2 = phi ptr [ @l_Lean_unresolveNameGlobal_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_getQualified_spec__0_spec__0_spec__2___closed__0_value, %lean_nat_lt.exit ], [ @l_Lean_unresolveNameGlobal_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_getQualified_spec__0_spec__0_spec__2___closed__0_value, %.split69 ], [ @l_Lean_unresolveNameGlobal_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_getQualified_spec__0_spec__0_spec__2___closed__0_value, %lean_nat_lt.exit31 ], [ @l_Lean_unresolveNameGlobal_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_getQualified_spec__0_spec__0_spec__2___closed__0_value, %lean_usize_of_nat.exit ], [ @l_Lean_unresolveNameGlobal_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_getQualified_spec__0_spec__0_spec__2___closed__0_value, %lean_usize_of_nat.exit41 ], [ %.028.i51, %bb.y ], [ @l_Lean_unresolveNameGlobal_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals_x3f___at___00Lean_unresolveNameGlobalAvoidingLocals___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_getQualified_spec__0_spec__0_spec__2___closed__0_value, %.split ], [ %.028.i, %bb.m ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define ptr @l_Array_filterMapM___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_similarNames_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Array_filterMapM___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_similarNames_spec__1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = ptrtoint ptr %3 to i64
  %i.c = and i64 %i.b, 1
  %.not.i11 = icmp eq i64 %i.c, 0
  br i1 %.not.i11, label %bb.b, label %lean_dec.exit12

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit12

bb.d:                                             ; preds = %bb.b
  %.not.i13 = icmp eq i32 %i.d, 0
  br i1 %.not.i13, label %lean_dec.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #11
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = ptrtoint ptr %2 to i64
  %i.h = and i64 %i.g, 1
  %.not.i9 = icmp eq i64 %i.h, 0
  br i1 %.not.i9, label %bb.f, label %lean_dec.exit10

bb.f:                                             ; preds = %lean_dec.exit12
  %i.i = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit10

bb.h:                                             ; preds = %bb.f
  %.not.i14 = icmp eq i32 %i.i, 0
  br i1 %.not.i14, label %lean_dec.exit10, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #11
  br label %lean_dec.exit10

lean_dec.exit10:                                  ; preds = %bb.i, %bb.h, %bb.g, %lean_dec.exit12
  %i.l = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %lean_dec.exit10
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit19

bb.k:                                             ; preds = %lean_dec.exit10
  %.not.i18 = icmp eq i32 %i.l, 0
  br i1 %.not.i18, label %lean_dec_ref.exit19, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #11
  br label %lean_dec_ref.exit19

lean_dec_ref.exit19:                              ; preds = %bb.j, %bb.k, %bb.l
  %i.o = ptrtoint ptr %0 to i64
  %i.p = and i64 %i.o, 1
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.m, label %lean_dec.exit

bb.m:                                             ; preds = %lean_dec_ref.exit19
  %i.q = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.o:                                             ; preds = %bb.m
  %.not.i16 = icmp eq i32 %i.q, 0
  br i1 %.not.i16, label %lean_dec.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #11
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.p, %bb.o, %bb.n, %lean_dec_ref.exit19
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_DocString_Builtin_0__Lean_Doc_similarNames(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
lean_nat_lt.exit:
  %i.a = tail call ptr @l_Lean_Name_toString(ptr noundef %0, i8 noundef zeroext 1) #11 ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %.val59 = load i64, ptr %i.b, align 8, !tbaa !15
  tail call void @lean_inc_heartbeat() #11
  %i.c = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #11 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.a, label %lean_alloc_ctor.exit

bb.a:                                             ; preds = %lean_nat_lt.exit
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_nat_lt.exit
  %i.e = shl i64 %.val59, 1
  %2 = or disjoint i64 %i.e, 1                    ; 2 uses
  %i.f = icmp ugt i64 %2, 10
  %i.g = icmp ugt i64 %2, 16
  %spec.select = select i1 %i.g, ptr inttoptr (i64 7 to ptr), ptr inttoptr (i64 5 to ptr)
  %.1 = select i1 %i.f, ptr %spec.select, ptr inttoptr (i64 3 to ptr)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !12
  store i32 131096, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.1, ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @l___private_Lean_Elab_DocString_Builtin_0__Lean_Doc_similarNames___closed__0_value, ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.k, align 8, !tbaa !15
  %i.l = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_similarNames_spec__0(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %.val, i64 noundef 0, ptr noundef nonnull %i.c) ; 5 uses
  %i.m = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %lean_alloc_ctor.exit
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec_ref.exit52

bb.c:                                             ; preds = %lean_alloc_ctor.exit
  %.not.i51 = icmp eq i32 %i.m, 0
  br i1 %.not.i51, label %lean_dec_ref.exit52, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #11
  br label %lean_dec_ref.exit52

lean_dec_ref.exit52:                              ; preds = %bb.b, %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10   ; 8 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 1
  %.not.i41 = icmp eq i64 %i.s, 0                 ; 2 uses
  br i1 %.not.i41, label %bb.e, label %lean_inc.exit42

bb.e:                                             ; preds = %lean_dec_ref.exit52
  %.val.i.i = load i32, ptr %i.q, align 4, !tbaa !12 ; 3 uses
  %i.t = icmp sgt i32 %.val.i.i, 0
  br i1 %i.t, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.u = add nuw i32 %.val.i.i, 1
  store i32 %i.u, ptr %i.q, align 4, !tbaa !12
  br label %lean_inc.exit42

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit42, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = atomicrmw sub ptr %i.q, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit42

lean_inc.exit42:                                  ; preds = %bb.h, %bb.g, %bb.f, %lean_dec_ref.exit52
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10   ; 9 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = and i64 %i.y, 1
  %.not.i = icmp eq i64 %i.z, 0                   ; 2 uses
  br i1 %.not.i, label %bb.i, label %lean_inc.exit

bb.i:                                             ; preds = %lean_inc.exit42
  %.val.i.i60 = load i32, ptr %i.x, align 4, !tbaa !12 ; 3 uses
  %i.aa = icmp sgt i32 %.val.i.i60, 0
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.ab = add nuw i32 %.val.i.i60, 1
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !12
  br label %lean_inc.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i61 = icmp eq i32 %.val.i.i60, 0
  br i1 %.not.i.i61, label %lean_inc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = atomicrmw sub ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_inc.exit42
  %i.ad = load i32, ptr %i.l, align 8, !tbaa !12  ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_inc.exit
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %i.l, align 8, !tbaa !12
  br label %lean_dec_ref.exit50

bb.n:                                             ; preds = %lean_inc.exit
  %.not.i49 = icmp eq i32 %i.ad, 0
  br i1 %.not.i49, label %lean_dec_ref.exit50, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.l) #11
  br label %lean_dec_ref.exit50

lean_dec_ref.exit50:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.ag = getelementptr i8, ptr %i.x, i64 8
  %.val58 = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.ah = shl i64 %.val58, 1
  %i.ai = or disjoint i64 %i.ah, 1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = tail call ptr @l_Array_filterMapM___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_similarNames_spec__1(ptr noundef %i.q, ptr noundef %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.aj)
  br i1 %.not.i, label %bb.p, label %lean_dec.exit45

bb.p:                                             ; preds = %lean_dec_ref.exit50
  %i.al = load i32, ptr %i.x, align 8, !tbaa !12  ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.an = add nsw i32 %i.al, -1
  store i32 %i.an, ptr %i.x, align 8, !tbaa !12
  br label %lean_dec.exit45

bb.r:                                             ; preds = %bb.p
  %.not.i46 = icmp eq i32 %i.al, 0
  br i1 %.not.i46, label %lean_dec.exit45, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #11
  br label %lean_dec.exit45

lean_dec.exit45:                                  ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit50
  br i1 %.not.i41, label %bb.t, label %lean_dec.exit

bb.t:                                             ; preds = %lean_dec.exit45
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !12  ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %i.q, align 4, !tbaa !12
  br label %lean_dec.exit

bb.v:                                             ; preds = %bb.t
  %.not.i47 = icmp eq i32 %i.ao, 0
  br i1 %.not.i47, label %lean_dec.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #11
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.w, %bb.v, %bb.u, %lean_dec.exit45
  ret ptr %i.ak
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_DocString_Builtin_0__Lean_Doc_similarNames___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Elab_DocString_Builtin_0__Lean_Doc_similarNames(ptr noundef %0, ptr noundef %1)
  %i.b = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #11
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Doc_module_spec__0(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not88 = icmp ult i64 %4, %3
  br i1 %.not88, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = ptrtoint ptr %2 to i64
  %.pre91 = and i64 %.pre, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 1
  %.not.i54 = icmp eq i64 %i.b, 0
  %i.c = ptrtoint ptr %2 to i64
  %i.d = and i64 %i.c, 1                          ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br label %bb.j

._crit_edge:                                      ; preds = %lean_dec.exit, %.._crit_edge_crit_edge
  %.pre-phi92 = phi i64 [ %.pre91, %.._crit_edge_crit_edge ], [ %i.d, %lean_dec.exit ]
  %.051.lcssa = phi ptr [ %5, %.._crit_edge_crit_edge ], [ %.0.i.i74, %lean_dec.exit ]
  %.not.i57 = icmp eq i64 %.pre-phi92, 0
end_hunk_0
begin_hunk_1_@l___private_Lean_Elab_DocString_Builtin_0__Lean_Doc_attr_validateAttr___redArg:bb.a
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit308, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit308

lean_inc.exit308:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.f = tail call ptr @l_Lean_Syntax_getKind(ptr noundef %0) #11 ; 5 uses
  %i.g = tail call zeroext i8 @lean_name_eq(ptr noundef %i.f, ptr noundef nonnull @l___private_Lean_Elab_DocString_Builtin_0__Lean_Doc_attr_validateAttr___redArg___closed__3_value) #11 ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = and i64 %i.h, 1
  %.not.i344 = icmp eq i64 %i.i, 0
  br i1 %.not.i344, label %bb.f, label %lean_dec.exit345

bb.f:                                             ; preds = %lean_inc.exit308
  %i.j = load i32, ptr %i.f, align 4, !tbaa !12   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %i.f, align 4, !tbaa !12
  br label %lean_dec.exit345

bb.h:                                             ; preds = %bb.f
  %.not.i346 = icmp eq i32 %i.j, 0
  br i1 %.not.i346, label %lean_dec.exit345, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.f) #11
  br label %lean_dec.exit345

lean_dec.exit345:                                 ; preds = %bb.i, %bb.h, %bb.g, %lean_inc.exit308
  %i.m = icmp eq i8 %i.g, 0
  br i1 %i.m, label %bb.j, label %bb.p

bb.j:                                             ; preds = %lean_dec.exit345
  br i1 %.not.i307, label %bb.k, label %lean_dec.exit343

bb.k:                                             ; preds = %bb.j
  %i.n = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit343

bb.m:                                             ; preds = %bb.k
  %.not.i347 = icmp eq i32 %i.n, 0
  br i1 %.not.i347, label %lean_dec.exit343, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #11
  br label %lean_dec.exit343

lean_dec.exit343:                                 ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  tail call void @lean_inc_heartbeat() #11
  %i.q = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #11 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %lean_alloc_ctor.exit

bb.o:                                             ; preds = %lean_dec.exit343
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec.exit343
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 1, ptr %i.q, align 4, !tbaa !12
  store i32 65552, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.t, align 8, !tbaa !10
  br label %lean_dec.exit323

bb.p:                                             ; preds = %lean_dec.exit345
  %i.u = tail call ptr @lean_st_ref_get(ptr noundef %1) #11 ; 4 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 1
  %.not.i340 = icmp eq i64 %i.w, 0
  br i1 %.not.i340, label %bb.q, label %lean_dec.exit341

bb.q:                                             ; preds = %bb.p
  %i.x = load i32, ptr %i.u, align 4, !tbaa !12   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %i.u, align 4, !tbaa !12
  br label %lean_dec.exit341

bb.s:                                             ; preds = %bb.q
  %.not.i349 = icmp eq i32 %i.x, 0
  br i1 %.not.i349, label %lean_dec.exit341, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.u) #11
  br label %lean_dec.exit341

lean_dec.exit341:                                 ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  %i.aa = tail call ptr @lean_st_ref_get(ptr noundef %5) #11 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !10 ; 4 uses
  %.val.i.i412 = load i32, ptr %i.ac, align 4, !tbaa !12 ; 3 uses
  %i.ad = icmp sgt i32 %.val.i.i412, 0
  br i1 %i.ad, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %lean_dec.exit341
  %i.ae = add nuw i32 %.val.i.i412, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !12
  br label %lean_inc_ref.exit414

bb.v:                                             ; preds = %lean_dec.exit341
  %.not.i.i413 = icmp eq i32 %.val.i.i412, 0
  br i1 %.not.i.i413, label %lean_inc_ref.exit414, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.af = atomicrmw sub ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit414

lean_inc_ref.exit414:                             ; preds = %bb.w, %bb.v, %bb.u
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !12 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %lean_inc_ref.exit414
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !12
  br label %lean_dec.exit339

bb.y:                                             ; preds = %lean_inc_ref.exit414
  %.not.i351 = icmp eq i32 %i.ag, 0
  br i1 %.not.i351, label %lean_dec.exit339, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #11
  br label %lean_dec.exit339

lean_dec.exit339:                                 ; preds = %bb.z, %bb.y, %bb.x
  %i.aj = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #11 ; 5 uses
  %i.ak = tail call ptr @l_Lean_Syntax_getId(ptr noundef %i.aj) #11
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = and i64 %i.al, 1
  %.not.i336 = icmp eq i64 %i.am, 0
  br i1 %.not.i336, label %bb.aa, label %lean_dec.exit337

bb.aa:                                            ; preds = %lean_dec.exit339
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !12 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.ab, label %bb.ac, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %i.aj, align 4, !tbaa !12
  br label %lean_dec.exit337

bb.ac:                                            ; preds = %bb.aa
  %.not.i353 = icmp eq i32 %i.an, 0
  br i1 %.not.i353, label %lean_dec.exit337, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #11
  br label %lean_dec.exit337

lean_dec.exit337:                                 ; preds = %bb.ad, %bb.ac, %bb.ab, %lean_dec.exit339
  %i.aq = tail call ptr @lean_erase_macro_scopes(ptr noundef %i.ak) #11 ; 13 uses
  %i.ar = tail call zeroext i8 @l_Lean_isAttribute(ptr noundef nonnull %i.ac, ptr noundef %i.aq) #11
  %i.as = icmp eq i8 %i.ar, 0
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = and i64 %i.at, 1
  %.not.i305 = icmp eq i64 %i.au, 0               ; 3 uses
  br i1 %i.as, label %bb.ae, label %bb.az

bb.ae:                                            ; preds = %lean_dec.exit337
  br i1 %.not.i305, label %bb.af, label %lean_nat_le.exit

bb.af:                                            ; preds = %bb.ae
  %.val.i.i415 = load i32, ptr %i.aq, align 4, !tbaa !12 ; 3 uses
  %i.av = icmp sgt i32 %.val.i.i415, 0
  br i1 %i.av, label %bb.ag, label %bb.ah, !prof !13

bb.ag:                                            ; preds = %bb.af
  %i.aw = add nuw i32 %.val.i.i415, 1
  store i32 %i.aw, ptr %i.aq, align 4, !tbaa !12
  br label %lean_nat_le.exit

bb.ah:                                            ; preds = %bb.af
  %.not.i.i416 = icmp eq i32 %.val.i.i415, 0
  br i1 %.not.i.i416, label %lean_nat_le.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ax = atomicrmw sub ptr %i.aq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_nat_le.exit

lean_nat_le.exit:                                 ; preds = %bb.ae, %bb.ag, %bb.ah, %bb.ai
  %i.ay = tail call ptr @l_Lean_Name_toString(ptr noundef %i.aq, i8 noundef zeroext %i.g) #11 ; 5 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 24
  %.val411 = load i64, ptr %i.az, align 8, !tbaa !15
  %i.ba = and i64 %.val411, 9223372036854775807
  %i.bb = udiv i64 %i.ba, 3
  %i.bc = shl nuw nsw i64 %i.bb, 1
  %i.bd = or disjoint i64 %i.bc, 1                ; 2 uses
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = icmp samesign ult i64 %i.bd, 5
  %spec.select = select i1 %i.bf, ptr inttoptr (i64 5 to ptr), ptr %i.be
  %i.bg = tail call ptr @lean_st_ref_get(ptr noundef %1) #11 ; 4 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = and i64 %i.bh, 1
  %.not.i332 = icmp eq i64 %i.bi, 0
  br i1 %.not.i332, label %bb.aj, label %lean_dec.exit333

bb.aj:                                            ; preds = %lean_nat_le.exit
  %i.bj = load i32, ptr %i.bg, align 4, !tbaa !12 ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.ak, label %bb.al, !prof !13

bb.ak:                                            ; preds = %bb.aj
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %i.bg, align 4, !tbaa !12
  br label %lean_dec.exit333

bb.al:                                            ; preds = %bb.aj
  %.not.i357 = icmp eq i32 %i.bj, 0
  br i1 %.not.i357, label %lean_dec.exit333, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #11
  br label %lean_dec.exit333

lean_dec.exit333:                                 ; preds = %bb.am, %bb.al, %bb.ak, %lean_nat_le.exit
  %i.bm = tail call ptr @lean_st_ref_get(ptr noundef %5) #11 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !10 ; 4 uses
  %.val.i.i421 = load i32, ptr %i.bo, align 4, !tbaa !12 ; 3 uses
  %i.bp = icmp sgt i32 %.val.i.i421, 0
  br i1 %i.bp, label %bb.an, label %bb.ao, !prof !13

bb.an:                                            ; preds = %lean_dec.exit333
  %i.bq = add nuw i32 %.val.i.i421, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !12
  br label %lean_inc_ref.exit423

bb.ao:                                            ; preds = %lean_dec.exit333
  %.not.i.i422 = icmp eq i32 %.val.i.i421, 0
  br i1 %.not.i.i422, label %lean_inc_ref.exit423, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.br = atomicrmw sub ptr %i.bo, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit423

lean_inc_ref.exit423:                             ; preds = %bb.ap, %bb.ao, %bb.an
  %i.bs = load i32, ptr %i.bm, align 8, !tbaa !12 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.aq, label %bb.ar, !prof !13

bb.aq:                                            ; preds = %lean_inc_ref.exit423
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.bm, align 8, !tbaa !12
  br label %lean_dec.exit331

bb.ar:                                            ; preds = %lean_inc_ref.exit423
  %.not.i359 = icmp eq i32 %i.bs, 0
  br i1 %.not.i359, label %lean_dec.exit331, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bm) #11
  br label %lean_dec.exit331

lean_dec.exit331:                                 ; preds = %bb.as, %bb.ar, %bb.aq
  %i.bv = tail call ptr @l_Lean_getAttributeNames(ptr noundef nonnull %i.bo) #11
  %i.bw = tail call ptr @lean_array_mk(ptr noundef %i.bv) #11 ; 5 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %.val409 = load i64, ptr %i.bx, align 8, !tbaa !15
  %i.by = shl i64 %.val409, 1
  %i.bz = or disjoint i64 %i.by, 1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = tail call ptr @l_Array_filterMapM___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_attr_validateAttr_spec__1(i8 noundef zeroext %i.g, ptr noundef nonnull %i.ay, ptr noundef nonnull %spec.select, ptr noundef %i.bw, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.ca) ; 3 uses
  %i.cc = load i32, ptr %i.bw, align 8, !tbaa !12 ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %bb.at, label %bb.au, !prof !13

bb.at:                                            ; preds = %lean_dec.exit331
  %i.ce = add nsw i32 %i.cc, -1
  store i32 %i.ce, ptr %i.bw, align 8, !tbaa !12
  br label %lean_dec.exit329

bb.au:                                            ; preds = %lean_dec.exit331
  %.not.i389 = icmp eq i32 %i.cc, 0
  br i1 %.not.i389, label %lean_dec.exit329, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bw) #11
  br label %lean_dec.exit329

lean_dec.exit329:                                 ; preds = %bb.av, %bb.au, %bb.at
  %i.cf = load i32, ptr %i.ay, align 8, !tbaa !12 ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %lean_dec.exit329
  %i.ch = add nsw i32 %i.cf, -1
  store i32 %i.ch, ptr %i.ay, align 8, !tbaa !12
  br label %lean_nat_eq.exit

bb.ax:                                            ; preds = %lean_dec.exit329
  %.not.i387 = icmp eq i32 %i.cf, 0
  br i1 %.not.i387, label %lean_nat_eq.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #11
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.ci = getelementptr i8, ptr %i.cb, i64 8
  %.val408 = load i64, ptr %i.ci, align 8, !tbaa !15 ; 3 uses
  %i.cj = shl i64 %.val408, 1                     ; 3 uses
  %.not = icmp eq i64 %i.cj, 0
  br i1 %.not, label %lean_nat_eq.exit407, label %lean_nat_sub.exit

lean_nat_sub.exit:                                ; preds = %lean_nat_eq.exit
  %i.ck = or disjoint i64 %i.cj, 1
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = and i64 %.val408, 9223372036854775807
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = add i64 %i.cj, -1
  %i.cp = inttoptr i64 %i.co to ptr
  %.1.i = select i1 %i.cn, ptr inttoptr (i64 1 to ptr), ptr %i.cp
  %i.cq = tail call ptr @l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00__private_Lean_Elab_DocString_Builtin_0__Lean_Doc_attr_validateAttr_spec__2___redArg(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cb, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %.1.i) ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %i.cq, i64 8
  %.1265.val.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %lean_nat_eq.exit407

bb.az:                                            ; preds = %lean_dec.exit337
  br i1 %.not.i305, label %bb.ba, label %lean_dec.exit327

bb.ba:                                            ; preds = %bb.az
  %i.cr = load i32, ptr %i.aq, align 4, !tbaa !12 ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.bb, label %bb.bc, !prof !13

bb.bb:                                            ; preds = %bb.ba
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %i.aq, align 4, !tbaa !12
  br label %lean_dec.exit327

bb.bc:                                            ; preds = %bb.ba
  %.not.i363 = icmp eq i32 %i.cr, 0
  br i1 %.not.i363, label %lean_dec.exit327, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aq) #11
  br label %lean_dec.exit327

lean_dec.exit327:                                 ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az
  br i1 %.not.i307, label %bb.be, label %lean_dec.exit325

bb.be:                                            ; preds = %lean_dec.exit327
  %i.cu = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.cv = icmp sgt i32 %i.cu, 1
  br i1 %i.cv, label %bb.bf, label %bb.bg, !prof !13

bb.bf:                                            ; preds = %bb.be
  %i.cw = add nsw i32 %i.cu, -1
  store i32 %i.cw, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit325

bb.bg:                                            ; preds = %bb.be
  %.not.i365 = icmp eq i32 %i.cu, 0
  br i1 %.not.i365, label %lean_dec.exit325, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #11
  br label %lean_dec.exit325

lean_dec.exit325:                                 ; preds = %bb.bh, %bb.bg, %bb.bf, %lean_dec.exit327
  tail call void @lean_inc_heartbeat() #11
  %i.cx = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #11 ; 5 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.bi, label %lean_alloc_ctor.exit427

bb.bi:                                            ; preds = %lean_dec.exit325
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit427:                          ; preds = %lean_dec.exit325
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 1, ptr %i.cx, align 4, !tbaa !12
  store i32 65552, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.da, align 8, !tbaa !10
  br label %lean_dec.exit323

bb.bj:                                            ; preds = %bb.hg, %lean_dec.exit.i495, %bb.he, %bb.hf, %bb.if, %bb.ig
  %.1250.ph = phi ptr [ %i.pc, %bb.ig ], [ %i.pb, %bb.if ], [ %i.nm, %bb.hf ], [ %i.nm, %bb.he ], [ %i.nm, %lean_dec.exit.i495 ], [ %i.nm, %bb.hg ]
  %i.db = load atomic i32, ptr @l___private_Lean_Elab_DocString_Builtin_0__Lean_Doc_attr_validateAttr___redArg___closed__5_once seq_cst, align 4, !tbaa !17
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.bk, label %bb.bl, !prof !13

bb.bk:                                            ; preds = %bb.bj
  %i.dd = load ptr, ptr @l___private_Lean_Elab_DocString_Builtin_0__Lean_Doc_attr_validateAttr___redArg___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.bl:                                            ; preds = %bb.bj
  %i.de = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_DocString_Builtin_0__Lean_Doc_attr_validateAttr___redArg___closed__5, ptr noundef nonnull @l___private_Lean_Elab_DocString_Builtin_0__Lean_Doc_attr_validateAttr___redArg___closed__5_once, ptr noundef nonnull @_init_l___private_Lean_Elab_DocString_Builtin_0__Lean_Doc_attr_validateAttr___redArg___closed__5) #11
end_hunk_1
