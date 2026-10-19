Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/LetToHave?download=true
inline.NumInlined: 4145
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@l_Lean_mkFreshFVarId___at___00__private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visitLambdaLet_go_spec__1:bb.a
  %i.i = atomicrmw sub ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %i.j = icmp sgt i32 %.val, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %lean_inc.exit
  %i.k = add nsw i32 %.val, -1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  br label %bb.j

bb.h:                                             ; preds = %lean_inc.exit
  %.not.i.i = icmp eq i32 %.val, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  tail call void @lean_inc_heartbeat() #6
  %i.l = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.k, label %lean_alloc_ctor.exit

bb.k:                                             ; preds = %bb.j
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 1, ptr %i.l, align 4, !tbaa !11
  store i32 65552, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.c, ptr %i.o, align 8, !tbaa !14
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.a, %lean_alloc_ctor.exit
  %.016 = phi ptr [ %i.l, %lean_alloc_ctor.exit ], [ %i.a, %bb.a ]
  ret ptr %.016
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_mkFreshFVarId___at___00__private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visitLambdaLet_go_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_mkFreshFVarId___at___00__private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visitLambdaLet_go_spec__1(ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr noundef %5)
  %i.b = ptrtoint ptr %5 to i64
  %i.c = and i64 %i.b, 1
  %.not.i24 = icmp eq i64 %i.c, 0
  br i1 %.not.i24, label %bb.b, label %lean_dec.exit27

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %5, align 4, !tbaa !11
  br label %lean_dec.exit27

bb.d:                                             ; preds = %bb.b
  %.not.i.i25 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i25, label %lean_dec.exit27, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #6
  br label %lean_dec.exit27

lean_dec.exit27:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %i.g = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %lean_dec.exit27
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %4, align 4, !tbaa !11
  br label %lean_dec_ref.exit14

bb.g:                                             ; preds = %lean_dec.exit27
  %.not.i13 = icmp eq i32 %i.g, 0
  br i1 %.not.i13, label %lean_dec_ref.exit14, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec_ref.exit14

lean_dec_ref.exit14:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = and i64 %i.j, 1
  %.not.i20 = icmp eq i64 %i.k, 0
  br i1 %.not.i20, label %bb.i, label %lean_dec.exit23

bb.i:                                             ; preds = %lean_dec_ref.exit14
  %i.l = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %3, align 4, !tbaa !11
  br label %lean_dec.exit23

bb.k:                                             ; preds = %bb.i
  %.not.i.i21 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i21, label %lean_dec.exit23, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit23

lean_dec.exit23:                                  ; preds = %bb.j, %bb.k, %bb.l, %lean_dec_ref.exit14
  %i.o = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %lean_dec.exit23
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.n:                                             ; preds = %lean_dec.exit23
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %1 to i64
  %i.s = and i64 %i.r, 1
  %.not.i16 = icmp eq i64 %i.s, 0
  br i1 %.not.i16, label %bb.p, label %lean_dec.exit19

bb.p:                                             ; preds = %lean_dec_ref.exit
  %i.t = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit19

bb.r:                                             ; preds = %bb.p
  %.not.i.i17 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i17, label %lean_dec.exit19, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit19

lean_dec.exit19:                                  ; preds = %bb.q, %bb.r, %bb.s, %lean_dec_ref.exit
  %i.w = ptrtoint ptr %0 to i64
  %i.x = and i64 %i.w, 1
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.t, label %lean_dec.exit

bb.t:                                             ; preds = %lean_dec.exit19
  %i.y = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.u, label %bb.v, !prof !12

bb.u:                                             ; preds = %bb.t
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.v:                                             ; preds = %bb.t
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.u, %bb.v, %bb.w, %lean_dec.exit19
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) local_unnamed_addr #1 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__1_once seq_cst, align 4, !tbaa !19
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__1, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__1, ptr noundef nonnull @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__1_once, ptr noundef nonnull @_init_l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call zeroext i8 @l_List_isEmpty___redArg(ptr noundef %2) #6
  %.not = icmp eq i8 %i.e, 0
  %l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__4_value.l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__5_value = select i1 %.not, ptr @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__5_value, ptr @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__4_value ; 3 uses
  %.val.i.i = load i32, ptr %l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__4_value.l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__5_value, align 8, !tbaa !11 ; 2 uses
  %8 = icmp sgt i32 %.val.i.i, 0
  br i1 %8, label %lean_inc_ref.exit, label %9, !prof !12

9:                                                ; preds = %lean_obj_once.exit
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %10

10:                                               ; preds = %9
  %11 = atomicrmw sub ptr %l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__4_value.l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__5_value, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %lean_obj_once.exit, %9, %10
  tail call void @lean_inc_heartbeat() #6
  %12 = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %13 = icmp eq ptr %12, null
  br i1 %13, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_inc_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 1, ptr %12, align 4, !tbaa !11
  store i32 50397200, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__4_value.l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__5_value, ptr %i.g, align 8, !tbaa !14
  %i.h = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %12) #6
  tail call void @lean_inc_heartbeat() #6
  %i.i = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %lean_alloc_ctor.exit28

bb.e:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit28:                           ; preds = %lean_alloc_ctor.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 1, ptr %i.i, align 4, !tbaa !11
  store i32 117571608, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.h, ptr %i.m, align 8, !tbaa !14
  %i.n = load atomic i32, ptr @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__3_once seq_cst, align 4, !tbaa !19
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %lean_alloc_ctor.exit28
  %i.p = load ptr, ptr @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__3, align 8, !tbaa !14
  br label %lean_obj_once.exit30

bb.g:                                             ; preds = %lean_alloc_ctor.exit28
  %i.q = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__3, ptr noundef nonnull @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__3_once, ptr noundef nonnull @_init_l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__3) #6
  br label %lean_obj_once.exit30

lean_obj_once.exit30:                             ; preds = %bb.f, %bb.g
  %.0.i29 = phi ptr [ %i.p, %bb.f ], [ %i.q, %bb.g ]
  tail call void @lean_inc_heartbeat() #6
  %i.r = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %lean_alloc_ctor.exit31

bb.h:                                             ; preds = %lean_obj_once.exit30
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit31:                           ; preds = %lean_obj_once.exit30
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 1, ptr %i.r, align 4, !tbaa !11
  store i32 117571608, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.i, ptr %i.u, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.0.i29, ptr %i.v, align 8, !tbaa !14
  %i.w = tail call ptr @l_Lean_indentExpr(ptr noundef %0) #6
  tail call void @lean_inc_heartbeat() #6
  %i.x = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %lean_alloc_ctor.exit32

bb.i:                                             ; preds = %lean_alloc_ctor.exit31
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit32:                           ; preds = %lean_alloc_ctor.exit31
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 1, ptr %i.x, align 4, !tbaa !11
  store i32 117571608, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.r, ptr %i.aa, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.w, ptr %i.ab, align 8, !tbaa !14
  tail call void @lean_inc_heartbeat() #6
  %i.ac = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %lean_alloc_ctor.exit33

bb.j:                                             ; preds = %lean_alloc_ctor.exit32
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit33:                           ; preds = %lean_alloc_ctor.exit32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 1, ptr %i.ac, align 4, !tbaa !11
  store i32 65552, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.x, ptr %i.af, align 8, !tbaa !14
  ret ptr %i.ac
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__1() #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_stringToMessageData(ptr noundef nonnull @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__0_value) #6
  ret ptr %i.a
}

declare ptr @l_Lean_MessageData_ofFormat(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__3() #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_stringToMessageData(ptr noundef nonnull @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___closed__2_value) #6
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree readnone captures(none) %8) #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_LetToHave_0__Lean_Meta_LetToHave_visit___lam__2(ptr noundef %0, ptr poison, ptr noundef %2, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison)
  %i.b = ptrtoint ptr %7 to i64
  %i.c = and i64 %i.b, 1
  %.not.i29 = icmp eq i64 %i.c, 0
  br i1 %.not.i29, label %bb.b, label %lean_dec.exit32

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %7, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %7, align 4, !tbaa !11
  br label %lean_dec.exit32

bb.d:                                             ; preds = %bb.b
  %.not.i.i30 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i30, label %lean_dec.exit32, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec.exit32

lean_dec.exit32:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %i.g = load i32, ptr %6, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %lean_dec.exit32
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %6, align 4, !tbaa !11
  br label %lean_dec_ref.exit19

bb.g:                                             ; preds = %lean_dec.exit32
  %.not.i18 = icmp eq i32 %i.g, 0
  br i1 %.not.i18, label %lean_dec_ref.exit19, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #6
  br label %lean_dec_ref.exit19

lean_dec_ref.exit19:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %5 to i64
  %i.k = and i64 %i.j, 1
  %.not.i25 = icmp eq i64 %i.k, 0
  br i1 %.not.i25, label %bb.i, label %lean_dec.exit28

bb.i:                                             ; preds = %lean_dec_ref.exit19
  %i.l = load i32, ptr %5, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %5, align 4, !tbaa !11
  br label %lean_dec.exit28

bb.k:                                             ; preds = %bb.i
  %.not.i.i26 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i26, label %lean_dec.exit28, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #6
  br label %lean_dec.exit28

lean_dec.exit28:                                  ; preds = %bb.j, %bb.k, %bb.l, %lean_dec_ref.exit19
  %i.o = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %lean_dec.exit28
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %4, align 4, !tbaa !11
  br label %lean_dec_ref.exit17

bb.n:                                             ; preds = %lean_dec.exit28
  %.not.i16 = icmp eq i32 %i.o, 0
  br i1 %.not.i16, label %lean_dec_ref.exit17, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec_ref.exit17

lean_dec_ref.exit17:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %3 to i64
  %i.s = and i64 %i.r, 1
  %.not.i21 = icmp eq i64 %i.s, 0
  br i1 %.not.i21, label %bb.p, label %lean_dec.exit24

bb.p:                                             ; preds = %lean_dec_ref.exit17
  %i.t = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
end_hunk_0
