Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Markdown?download=true
inline.NumInlined: 1404
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@l_WellFounded_opaqueFix_u2083___at___00String_Slice_contains___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__0_spec__0___boxed:bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.e, 0
  br i1 %.not.i12, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = ptrtoint ptr %5 to i64
  %i.i = lshr i64 %i.h, 1
  %i.j = trunc i64 %i.i to i8
  %i.k = tail call noundef zeroext i8 @l_WellFounded_opaqueFix_u2083___at___00String_Slice_contains___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__0_spec__0___redArg(ptr noundef readonly %0, i32 noundef %i.c, ptr noundef %4, i8 noundef zeroext %i.j)
  %i.l = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit14

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i13, label %lean_dec_ref.exit14, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit14

lean_dec_ref.exit14:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.o = zext i8 %i.k to i64
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = or disjoint i64 %i.p, 1
  %i.r = inttoptr i64 %i.q to ptr
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l___private_Lean_DocString_Markdown_0__Lean_Doc_markerPrefixSpecial(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_DocString_Markdown_0__Lean_Doc_markerPrefixSpecial___closed__0_once seq_cst, align 4, !tbaa !19
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_DocString_Markdown_0__Lean_Doc_markerPrefixSpecial___closed__0, align 8, !tbaa !9
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_DocString_Markdown_0__Lean_Doc_markerPrefixSpecial___closed__0, ptr noundef nonnull @l___private_Lean_DocString_Markdown_0__Lean_Doc_markerPrefixSpecial___closed__0_once, ptr noundef nonnull @_init_l___private_Lean_DocString_Markdown_0__Lean_Doc_markerPrefixSpecial___closed__0) #8
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 4 uses
  %i.e = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = lshr i64 %i.e, 1
  %i.h = trunc i64 %i.g to i32
  br label %lean_obj_tag.exit.i

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.i = getelementptr i8, ptr %2, i64 4
  %.val.i.i = load i32, ptr %i.i, align 4
  %i.j = lshr i32 %.val.i.i, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.h, %bb.d ], [ %i.j, %bb.e ]
  %i.k = icmp eq i32 %.0.i.i, 0
  %i.l = ptrtoint ptr %.0.i to i64                ; 3 uses
  %i.m = and i64 %i.l, 1
  %.not.i13.i = icmp eq i64 %i.m, 0               ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %lean_obj_tag.exit.i
  br i1 %.not.i13.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = lshr i64 %i.l, 1
  %i.o = trunc i64 %i.n to i32
  br label %lean_obj_tag.exit16.i

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %.0.i, i64 4
  %.val.i15.i = load i32, ptr %i.p, align 4
  %i.q = lshr i32 %.val.i15.i, 24
  br label %lean_obj_tag.exit16.i

lean_obj_tag.exit16.i:                            ; preds = %bb.h, %bb.g
  %.0.i14.i = phi i32 [ %i.o, %bb.g ], [ %i.q, %bb.h ]
  %i.r = icmp eq i32 %.0.i14.i, 0
  br i1 %i.r, label %bb.n, label %l_Option_instBEq_beq___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__1.exit.thread

bb.i:                                             ; preds = %lean_obj_tag.exit.i
  br i1 %.not.i13.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = lshr i64 %i.l, 1
  %i.t = trunc i64 %i.s to i32
  br label %lean_obj_tag.exit20.i

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %.0.i, i64 4
  %.val.i19.i = load i32, ptr %i.u, align 4
  %i.v = lshr i32 %.val.i19.i, 24
  br label %lean_obj_tag.exit20.i

lean_obj_tag.exit20.i:                            ; preds = %bb.k, %bb.j
  %.0.i18.i = phi i32 [ %i.t, %bb.j ], [ %i.v, %bb.k ]
  %i.w = icmp eq i32 %.0.i18.i, 0
  br i1 %i.w, label %l_Option_instBEq_beq___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__1.exit.thread, label %l_Option_instBEq_beq___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__1.exit

l_Option_instBEq_beq___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__1.exit: ; preds = %lean_obj_tag.exit20.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !9
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = lshr i64 %i.ae, 1
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp eq i32 %i.ad, %i.ag
  br i1 %i.ah, label %bb.n, label %l_Option_instBEq_beq___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__1.exit.thread

l_Option_instBEq_beq___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__1.exit.thread: ; preds = %lean_obj_tag.exit16.i, %lean_obj_tag.exit20.i, %l_Option_instBEq_beq___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__1.exit
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %l_Option_instBEq_beq___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__1.exit.thread
  %i.ai = lshr i64 %i.e, 1
  %i.aj = trunc i64 %i.ai to i32
  br label %lean_obj_tag.exit

bb.m:                                             ; preds = %l_Option_instBEq_beq___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__1.exit.thread
  %i.ak = getelementptr i8, ptr %2, i64 4
  %.val.i = load i32, ptr %i.ak, align 4
  %i.al = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.l, %bb.m
  %.0.i44 = phi i32 [ %i.aj, %bb.l ], [ %i.al, %bb.m ]
  %i.am = icmp eq i32 %.0.i44, 0
  %. = zext i1 %i.am to i8
  br label %bb.n

bb.n:                                             ; preds = %lean_obj_tag.exit16.i, %l_Option_instBEq_beq___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__1.exit, %lean_obj_tag.exit
  %.042 = phi i8 [ %., %lean_obj_tag.exit ], [ 1, %l_Option_instBEq_beq___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__1.exit ], [ 1, %lean_obj_tag.exit16.i ] ; 2 uses
  switch i32 %1, label %bb.o [
    i32 62, label %bb.u
    i32 45, label %.fold.split
    i32 43, label %.fold.split
    i32 46, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.an = tail call zeroext i8 @l___private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial(i32 noundef %1, ptr noundef %2)
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.ao = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ap = and i64 %i.ao, 1
  %.not.i45 = icmp eq i64 %i.ap, 0
  br i1 %.not.i45, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = lshr i64 %i.ao, 1
  %i.ar = trunc i64 %i.aq to i32
  br label %lean_obj_tag.exit48

bb.r:                                             ; preds = %bb.p
  %i.as = getelementptr i8, ptr %0, i64 4
  %.val.i47 = load i32, ptr %i.as, align 4
  %i.at = lshr i32 %.val.i47, 24
  br label %lean_obj_tag.exit48

lean_obj_tag.exit48:                              ; preds = %bb.q, %bb.r
  %.0.i46 = phi i32 [ %i.ar, %bb.q ], [ %i.at, %bb.r ]
  %i.au = icmp eq i32 %.0.i46, 0
  br i1 %i.au, label %bb.u, label %bb.s

bb.s:                                             ; preds = %lean_obj_tag.exit48
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = lshr i64 %i.ax, 1
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = icmp ult i32 %i.az, 48
  br i1 %i.ba, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = icmp ult i32 %i.az, 58
  %..042 = select i1 %i.bb, i8 %.042, i8 0
  br label %bb.u

.fold.split:                                      ; preds = %bb.n, %bb.n
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %.fold.split, %bb.t, %bb.s, %lean_obj_tag.exit48, %bb.o
  %.5 = phi i8 [ 1, %bb.n ], [ %.042, %.fold.split ], [ 0, %bb.s ], [ %i.an, %bb.o ], [ 0, %lean_obj_tag.exit48 ], [ %..042, %bb.t ]
  ret i8 %.5
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @_init_l___private_Lean_DocString_Markdown_0__Lean_Doc_markerPrefixSpecial___closed__0() #0 {
bb.a:
  %i.a = load ptr, ptr @l___private_Lean_DocString_Markdown_0__Lean_Doc_markerPrefixSpecial___closed__0___boxed__const__1, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat() #8
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !11
  store i32 16842768, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !9
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Lean_DocString_Markdown_0__Lean_Doc_markerPrefixSpecial___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i32
  %i.d = and i64 %i.a, 1
  %.not.i10 = icmp eq i64 %i.d, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.e, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = tail call zeroext i8 @l___private_Lean_DocString_Markdown_0__Lean_Doc_markerPrefixSpecial(ptr noundef %0, i32 noundef %i.c, ptr noundef %2)
  %i.i = ptrtoint ptr %2 to i64
  %i.j = and i64 %i.i, 1
  %.not.i8 = icmp eq i64 %i.j, 0
  br i1 %.not.i8, label %bb.f, label %lean_dec.exit9

bb.f:                                             ; preds = %lean_dec.exit11
  %i.k = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %2, align 4, !tbaa !11
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i13 = icmp eq i32 %i.k, 0
  br i1 %.not.i13, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.i, %bb.h, %bb.g, %lean_dec.exit11
  %i.n = ptrtoint ptr %0 to i64
  %i.o = and i64 %i.n, 1
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.p = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i15 = icmp eq i32 %i.p, 0
  br i1 %.not.i15, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  %i.s = zext i8 %i.h to i64
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = or disjoint i64 %i.t, 1
  %i.v = inttoptr i64 %i.u to ptr
  ret ptr %i.v
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg___lam__0(i32 noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_string_push(ptr noundef %3, i32 noundef %0) #8
  tail call void @lean_inc_heartbeat() #8
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !11
  store i32 131096, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.f, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat() #8
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %lean_alloc_ctor.exit8

bb.c:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit8:                            ; preds = %lean_alloc_ctor.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !11
  store i32 16842768, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.b, ptr %i.j, align 8, !tbaa !9
  ret ptr %i.g
}

declare ptr @lean_string_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg___lam__0___boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i32
  %i.d = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i6 = icmp eq i32 %i.e, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = tail call ptr @lean_string_push(ptr noundef %3, i32 noundef %i.c) #8
  tail call void @lean_inc_heartbeat() #8
  %i.i = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %lean_alloc_ctor.exit.i

bb.f:                                             ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit.i:                           ; preds = %lean_dec.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 1, ptr %i.i, align 4, !tbaa !11
end_hunk_0
