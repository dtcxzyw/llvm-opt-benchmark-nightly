Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Version?download=true
inline.NumInlined: 2733
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumUnrolled: 59
begin_hunk_0_@l___private_Lake_Util_Version_0__Lake_parseVerNat:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 5 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.c, label %lean_inc.exit

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.i, align 4, !tbaa !14 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i, 0
  br i1 %i.l, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i32 %.val.i.i, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !14
  br label %lean_inc.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.val.i37 = load i32, ptr %i.a, align 8, !tbaa !14 ; 4 uses
  %i.o = icmp eq i32 %.val.i37, 1
  br i1 %i.o, label %.preheader.i.preheader, label %bb.k

.preheader.i.preheader:                           ; preds = %lean_inc.exit
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !17   ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 1
  %.not.i.i38 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i38, label %bb.g, label %lean_dec.exit.i

bb.g:                                             ; preds = %.preheader.i.preheader
  %i.s = load i32, ptr %i.p, align 4, !tbaa !14   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.p, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i7.i = icmp eq i32 %i.s, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #8
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.j, %bb.i, %bb.h, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.a) #8
  br label %lean_dec_ref_known.exit

bb.k:                                             ; preds = %lean_inc.exit
  %i.v = icmp sgt i32 %.val.i37, 1
  br i1 %i.v, label %bb.l, label %bb.m, !prof !15

bb.l:                                             ; preds = %bb.k
  %i.w = add nsw i32 %.val.i37, -1
  store i32 %i.w, ptr %i.a, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %bb.k
  %.not.i8.i = icmp eq i32 %.val.i37, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.l, %bb.m, %bb.n
  tail call void @lean_inc_heartbeat() #8
  %i.x = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.o, label %lean_alloc_ctor.exit

bb.o:                                             ; preds = %lean_dec_ref_known.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.p:                                             ; preds = %lean_obj_tag.exit
  %i.z = load i32, ptr %i.a, align 4, !tbaa !14   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !14
  br label %lean_dec.exit

bb.r:                                             ; preds = %bb.p
  %.not.i33 = icmp eq i32 %i.z, 0
  br i1 %.not.i33, label %lean_dec.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit.thread, %bb.s, %bb.r, %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.ai = tail call ptr @lean_string_append(ptr noundef nonnull @l___private_Lake_Util_Version_0__Lake_parseVerNat___redArg___closed__0_value, ptr noundef %1) #8
  %i.aj = tail call ptr @lean_string_append(ptr noundef %i.ai, ptr noundef nonnull @l___private_Lake_Util_Version_0__Lake_parseVerNat___redArg___closed__1_value) #8
  %i.ak = tail call ptr @lean_string_utf8_extract(ptr noundef %i.ad, ptr noundef %i.af, ptr noundef %i.ah) #8 ; 4 uses
  %i.al = tail call ptr @lean_string_append(ptr noundef %i.aj, ptr noundef %i.ak) #8
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !14 ; 3 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %lean_dec.exit
  %i.ao = add nsw i32 %i.am, -1
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !14
  br label %lean_dec_ref.exit35

bb.u:                                             ; preds = %lean_dec.exit
  %.not.i34 = icmp eq i32 %i.am, 0
  br i1 %.not.i34, label %lean_dec_ref.exit35, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ak) #8
  br label %lean_dec_ref.exit35

lean_dec_ref.exit35:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.ap = tail call ptr @lean_string_append(ptr noundef %i.al, ptr noundef nonnull @l___private_Lake_Util_Version_0__Lake_parseVerNat___redArg___closed__2_value) #8
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.w, label %lean_alloc_ctor.exit

bb.w:                                             ; preds = %lean_dec_ref.exit35
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec_ref.exit35, %lean_dec_ref_known.exit
  %.sink54 = phi ptr [ %i.x, %lean_dec_ref_known.exit ], [ %i.aq, %lean_dec_ref.exit35 ] ; 5 uses
  %.sink51 = phi i32 [ 131096, %lean_dec_ref_known.exit ], [ 16908312, %lean_dec_ref.exit35 ]
  %.sink = phi ptr [ %i.i, %lean_dec_ref_known.exit ], [ %i.ap, %lean_dec_ref.exit35 ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sink54, i64 4
  store i32 1, ptr %.sink54, align 4, !tbaa !14
  store i32 %.sink51, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.sink54, i64 8
  store ptr %.sink, ptr %i.at, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %.sink54, i64 16
  store ptr %3, ptr %i.au, align 8, !tbaa !17
  ret ptr %.sink54
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l___private_Lake_Util_Version_0__Lake_parseVerNat___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Util_Version_0__Lake_parseVerNat(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = load i32, ptr %2, align 4, !tbaa !14     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 4, !tbaa !14
  br label %lean_dec_ref.exit8

bb.c:                                             ; preds = %bb.a
  %.not.i7 = icmp eq i32 %i.b, 0
  br i1 %.not.i7, label %lean_dec_ref.exit8, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec_ref.exit8

lean_dec_ref.exit8:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.e = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.f, !prof !15

bb.e:                                             ; preds = %lean_dec_ref.exit8
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_dec_ref.exit8
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_ctorIdx(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

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
  switch i32 %.0.i, label %2 [
    i32 0, label %bb.d
    i32 1, label %1
  ]

1:                                                ; preds = %lean_obj_tag.exit
  br label %bb.d

2:                                                ; preds = %lean_obj_tag.exit
  br label %bb.d

bb.d:                                             ; preds = %lean_obj_tag.exit, %2, %1
  %.0 = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i.i, label %2 [
    i32 0, label %l___private_Lake_Util_Version_0__Lake_VerComponent_ctorIdx.exit
    i32 1, label %1
  ]

1:                                                ; preds = %lean_obj_tag.exit.i
  br label %l___private_Lake_Util_Version_0__Lake_VerComponent_ctorIdx.exit

2:                                                ; preds = %lean_obj_tag.exit.i
  br label %l___private_Lake_Util_Version_0__Lake_VerComponent_ctorIdx.exit

l___private_Lake_Util_Version_0__Lake_VerComponent_ctorIdx.exit: ; preds = %lean_obj_tag.exit.i, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i ]
  br i1 %.not.i.i, label %3, label %lean_dec.exit

3:                                                ; preds = %l___private_Lake_Util_Version_0__Lake_VerComponent_ctorIdx.exit
  %4 = load i32, ptr %0, align 4, !tbaa !14       ; 3 uses
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %3
  %i.g = add nsw i32 %4, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.e:                                             ; preds = %3
  %.not.i3 = icmp eq i32 %4, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %l___private_Lake_Util_Version_0__Lake_VerComponent_ctorIdx.exit
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i12 = icmp eq i64 %i.b, 0
  br i1 %.not.i12, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.d = icmp eq i32 %.mask, 33554432
  br i1 %i.d, label %bb.b, label %bb.o

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.e = and i64 %i.a, 8589934590
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 5 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %lean_inc.exit

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !14 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i, 0
  br i1 %i.k, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i32 %.val.i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !14
  br label %lean_inc.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.val.i13 = load i32, ptr %0, align 8, !tbaa !14 ; 4 uses
  %i.n = icmp eq i32 %.val.i13, 1
  br i1 %i.n, label %.preheader.i.preheader, label %bb.k

.preheader.i.preheader:                           ; preds = %lean_inc.exit
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !17   ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i14 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i14, label %bb.g, label %lean_dec.exit.i

bb.g:                                             ; preds = %.preheader.i.preheader
  %i.r = load i32, ptr %i.o, align 4, !tbaa !14   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %i.o, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i7.i = icmp eq i32 %i.r, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #8
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.j, %bb.i, %bb.h, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %0) #8
  br label %lean_dec_ref_known.exit

bb.k:                                             ; preds = %lean_inc.exit
  %i.u = icmp sgt i32 %.val.i13, 1
  br i1 %i.u, label %bb.l, label %bb.m, !prof !15

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %.val.i13, -1
  store i32 %i.v, ptr %0, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %bb.k
  %.not.i8.i = icmp eq i32 %.val.i13, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.l, %bb.m, %bb.n
  %i.w = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef %i.h) #8
  br label %lean_dec.exit

bb.o:                                             ; preds = %lean_obj_tag.exit
  %i.x = load i32, ptr %0, align 4, !tbaa !14     ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.p, label %bb.q, !prof !15

bb.p:                                             ; preds = %bb.o
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.q:                                             ; preds = %bb.o
  %.not.i11 = icmp eq i32 %i.x, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit.thread, %bb.p, %bb.q, %bb.r, %lean_dec_ref_known.exit
  %.0 = phi ptr [ %i.w, %lean_dec_ref_known.exit ], [ %1, %bb.r ], [ %1, %bb.q ], [ %1, %bb.p ], [ %1, %lean_obj_tag.exit.thread ]
  ret ptr %.0
}

declare ptr @lean_apply_1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_none_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_none_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_wild_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_wild_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_nat_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Util_Version_0__Lake_VerComponent_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}
end_hunk_0
