Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Prelude?download=true
inline.NumInlined: 3396
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@l_mixHash___boxed:bb.a

lean_dec_ref.exit8:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !20
  %i.f = load i32, ptr %1, align 8, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_dec_ref.exit8
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %1, align 8, !tbaa !10
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_dec_ref.exit8
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #11
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  tail call void @lean_inc_heartbeat() #11
  %i.i = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #11 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.h, label %lean_box_uint64.exit

bb.h:                                             ; preds = %lean_dec_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_box_uint64.exit:                             ; preds = %lean_dec_ref.exit
  %i.k = mul i64 %.val, -4132994306676758123      ; 2 uses
  %i.l = lshr i64 %i.k, 47
  %i.m = xor i64 %.val9, %i.l
  %i.n = xor i64 %i.m, %i.k
  %i.o = xor i64 %i.n, -4132994306676758123
  %i.p = mul i64 %i.o, -4132994306676758123
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 1, ptr %i.i, align 4, !tbaa !10
  store i32 16, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !20
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define i64 @l_instHashableSubtype___redArg___lam__0(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @lean_apply_1(ptr noundef %0, ptr noundef %1) #11 ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load i64, ptr %i.b, align 8, !tbaa !20
  %i.c = load i32, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !10
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #11
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret i64 %.val
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_instHashableSubtype___redArg___lam__0___boxed(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call ptr @lean_apply_1(ptr noundef %0, ptr noundef %1) #11 ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !20
  %i.c = load i32, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !10
  br label %l_instHashableSubtype___redArg___lam__0.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %l_instHashableSubtype___redArg___lam__0.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #11
  br label %l_instHashableSubtype___redArg___lam__0.exit

l_instHashableSubtype___redArg___lam__0.exit:     ; preds = %bb.b, %bb.c, %bb.d
  tail call void @lean_inc_heartbeat() #11
  %i.f = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #11 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %lean_box_uint64.exit

bb.e:                                             ; preds = %l_instHashableSubtype___redArg___lam__0.exit
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_box_uint64.exit:                             ; preds = %l_instHashableSubtype___redArg___lam__0.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 1, ptr %i.f, align 4, !tbaa !10
  store i32 16, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val.i, ptr %i.i, align 8, !tbaa !20
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_instHashableSubtype___redArg(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @lean_alloc_object(i64 noundef 32) #11 ; 7 uses
  store i32 1, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = or disjoint i32 %i.d, -184549376
  store i32 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @l_instHashableSubtype___redArg___lam__0___boxed, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 2, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 1, ptr %i.h, align 2, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.i, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_instHashableSubtype(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @lean_alloc_object(i64 noundef 32) #11 ; 7 uses
  store i32 1, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = or disjoint i32 %i.d, -184549376
  store i32 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @l_instHashableSubtype___redArg___lam__0___boxed, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 2, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 1, ptr %i.h, align 2, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.i, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_String_hash___boxed(ptr noundef %0) #1 {
bb.a:
  %i.a = tail call i64 @lean_string_hash(ptr noundef %0) #11
  %i.b = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #11
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  tail call void @lean_inc_heartbeat() #11
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #11 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %lean_box_uint64.exit

bb.e:                                             ; preds = %lean_dec_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_box_uint64.exit:                             ; preds = %lean_dec_ref.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !10
  store i32 16, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.a, ptr %i.h, align 8, !tbaa !20
  ret ptr %i.e
}

declare i64 @lean_string_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l_Lean_Name_ctorIdx(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %switch.selectcmp = icmp eq i32 %.0.i, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp5 = icmp eq i32 %.0.i, 0
  %switch.select6 = select i1 %switch.selectcmp5, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select6
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Name_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_dec.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24                   ; 3 uses
  %1 = load i32, ptr %0, align 4, !tbaa !10       ; 3 uses
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %1, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i3 = icmp eq i32 %1, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #11
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.b, %bb.f, %bb.e, %bb.d
  %.0.i.i5 = phi i32 [ %i.f, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.d, %bb.b ] ; 2 uses
  %switch.selectcmp5.i = icmp eq i32 %.0.i.i5, 0
  %switch.selectcmp.i = icmp eq i32 %.0.i.i5, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.select6.i = select i1 %switch.selectcmp5.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select6.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Name_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i25 = icmp eq i64 %i.b, 0
  br i1 %.not.i25, label %bb.c, label %bb.b

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
  switch i32 %.0.i, label %bb.x [
    i32 0, label %bb.as
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 5 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i23 = icmp eq i64 %i.j, 0
  br i1 %.not.i23, label %bb.e, label %lean_inc.exit24

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !10 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i, 0
  br i1 %i.k, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i32 %.val.i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !10
  br label %lean_inc.exit24

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit24, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit24

lean_inc.exit24:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 4 uses
  %.val.i.i26 = load i32, ptr %i.o, align 4, !tbaa !10 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i26, 0
  br i1 %i.p, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %lean_inc.exit24
  %i.q = add nuw i32 %.val.i.i26, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !10
  br label %lean_inc_ref.exit28

bb.j:                                             ; preds = %lean_inc.exit24
  %.not.i.i27 = icmp eq i32 %.val.i.i26, 0
  br i1 %.not.i.i27, label %lean_inc_ref.exit28, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit28

lean_inc_ref.exit28:                              ; preds = %bb.i, %bb.j, %bb.k
  %.val.i29 = load i32, ptr %0, align 8, !tbaa !10 ; 4 uses
  %i.s = icmp eq i32 %.val.i29, 1
  br i1 %i.s, label %.preheader.i.preheader, label %bb.t

.preheader.i.preheader:                           ; preds = %lean_inc_ref.exit28
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !14   ; 4 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 1
  %.not.i.i30 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i30, label %bb.l, label %lean_dec.exit.i

bb.l:                                             ; preds = %.preheader.i.preheader
  %i.w = load i32, ptr %i.t, align 4, !tbaa !10   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.t, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.n:                                             ; preds = %bb.l
  %.not.i7.i = icmp eq i32 %i.w, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #11
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.o, %bb.n, %bb.m, %.preheader.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14  ; 4 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 1
  %.not.i.i30.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i30.1, label %bb.p, label %lean_dec.exit.i.1

bb.p:                                             ; preds = %lean_dec.exit.i
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !10 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.s, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  %.not.i7.i.1 = icmp eq i32 %i.ad, 0
  br i1 %.not.i7.i.1, label %lean_dec.exit.i.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #11
  br label %lean_dec.exit.i.1

bb.s:                                             ; preds = %bb.p
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !10
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.s, %bb.r, %bb.q, %lean_dec.exit.i
  tail call void @lean_free_object(ptr noundef nonnull %0) #11
  br label %lean_dec_ref_known.exit

bb.t:                                             ; preds = %lean_inc_ref.exit28
  %i.ag = icmp sgt i32 %.val.i29, 1
  br i1 %i.ag, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.ah = add nsw i32 %.val.i29, -1
  store i32 %i.ah, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.v:                                             ; preds = %bb.t
  %.not.i8.i = icmp eq i32 %.val.i29, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #11
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.1, %bb.u, %bb.v, %bb.w
  %i.ai = tail call ptr @lean_apply_2(ptr noundef %1, ptr noundef %i.h, ptr noundef nonnull %i.o) #11
  br label %bb.as

bb.x:                                             ; preds = %lean_obj_tag.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !14 ; 5 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, 1
  %.not.i21 = icmp eq i64 %i.am, 0
  br i1 %.not.i21, label %bb.y, label %lean_inc.exit22

bb.y:                                             ; preds = %bb.x
  %.val.i.i31 = load i32, ptr %i.ak, align 4, !tbaa !10 ; 3 uses
  %i.an = icmp sgt i32 %.val.i.i31, 0
  br i1 %i.an, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.ao = add nuw i32 %.val.i.i31, 1
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !10
  br label %lean_inc.exit22

bb.aa:                                            ; preds = %bb.y
  %.not.i.i32 = icmp eq i32 %.val.i.i31, 0
  br i1 %.not.i.i32, label %lean_inc.exit22, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ap = atomicrmw sub ptr %i.ak, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit22

lean_inc.exit22:                                  ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14 ; 5 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, 1
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %bb.ac, label %lean_inc.exit

bb.ac:                                            ; preds = %lean_inc.exit22
  %.val.i.i34 = load i32, ptr %i.ar, align 4, !tbaa !10 ; 3 uses
  %i.au = icmp sgt i32 %.val.i.i34, 0
  br i1 %i.au, label %bb.ad, label %bb.ae, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.av = add nuw i32 %.val.i.i34, 1
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !10
  br label %lean_inc.exit

bb.ae:                                            ; preds = %bb.ac
end_hunk_0
begin_hunk_1_@l_Lean_Name_appendCore:bb.a
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !10
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.x, %bb.w, %bb.v, %lean_dec.exit.i
  tail call void @lean_free_object(ptr noundef nonnull %1) #11
  br label %lean_dec_ref_known.exit

bb.y:                                             ; preds = %lean_inc_ref.exit36
  %i.al = icmp sgt i32 %.val.i37, 1
  br i1 %i.al, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.am = add nsw i32 %.val.i37, -1
  store i32 %i.am, ptr %1, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.aa:                                            ; preds = %bb.y
  %.not.i8.i = icmp eq i32 %.val.i37, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #11
  br label %lean_dec_ref_known.exit

common.ret61:                                     ; preds = %bb.d, %bb.f, %bb.g, %bb.h, %lean_dec_ref_known.exit54, %lean_dec_ref_known.exit
  %common.ret61.op = phi ptr [ %i.bu, %lean_dec_ref_known.exit54 ], [ %i.ao, %lean_dec_ref_known.exit ], [ %0, %bb.h ], [ %0, %bb.g ], [ %0, %bb.f ], [ %0, %bb.d ]
  ret ptr %common.ret61.op

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.1, %bb.z, %bb.aa, %bb.ab
  %i.an = tail call ptr @l_Lean_Name_appendCore(ptr noundef %0, ptr noundef %i.m)
  %i.ao = tail call ptr @l_Lean_Name_str___override(ptr noundef %i.an, ptr noundef nonnull %i.t)
  br label %common.ret61

bb.ac:                                            ; preds = %lean_obj_tag.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !14 ; 5 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 1
  %.not.i24 = icmp eq i64 %i.as, 0
  br i1 %.not.i24, label %bb.ad, label %lean_inc.exit25

bb.ad:                                            ; preds = %bb.ac
  %.val.i.i39 = load i32, ptr %i.aq, align 4, !tbaa !10 ; 3 uses
  %i.at = icmp sgt i32 %.val.i.i39, 0
  br i1 %i.at, label %bb.ae, label %bb.af, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.au = add nuw i32 %.val.i.i39, 1
  store i32 %i.au, ptr %i.aq, align 4, !tbaa !10
  br label %lean_inc.exit25

bb.af:                                            ; preds = %bb.ad
  %.not.i.i40 = icmp eq i32 %.val.i.i39, 0
  br i1 %.not.i.i40, label %lean_inc.exit25, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.av = atomicrmw sub ptr %i.aq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit25

lean_inc.exit25:                                  ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !14 ; 5 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, 1
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %bb.ah, label %lean_inc.exit

bb.ah:                                            ; preds = %lean_inc.exit25
  %.val.i.i42 = load i32, ptr %i.ax, align 4, !tbaa !10 ; 3 uses
  %i.ba = icmp sgt i32 %.val.i.i42, 0
  br i1 %i.ba, label %bb.ai, label %bb.aj, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.bb = add nuw i32 %.val.i.i42, 1
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !10
  br label %lean_inc.exit

bb.aj:                                            ; preds = %bb.ah
  %.not.i.i43 = icmp eq i32 %.val.i.i42, 0
  br i1 %.not.i.i43, label %lean_inc.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bc = atomicrmw sub ptr %i.ax, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ak, %bb.aj, %bb.ai, %lean_inc.exit25
  %.val.i45 = load i32, ptr %1, align 8, !tbaa !10 ; 4 uses
  %i.bd = icmp eq i32 %.val.i45, 1
  br i1 %i.bd, label %.preheader.i47.preheader, label %bb.at

.preheader.i47.preheader:                         ; preds = %lean_inc.exit
  %i.be = load ptr, ptr %i.ap, align 8, !tbaa !14 ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = and i64 %i.bf, 1
  %.not.i.i49 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i49, label %bb.al, label %lean_dec.exit.i50

bb.al:                                            ; preds = %.preheader.i47.preheader
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !10 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.am, label %bb.an, !prof !11

bb.am:                                            ; preds = %bb.al
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !10
  br label %lean_dec.exit.i50

bb.an:                                            ; preds = %bb.al
  %.not.i7.i53 = icmp eq i32 %i.bh, 0
  br i1 %.not.i7.i53, label %lean_dec.exit.i50, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #11
  br label %lean_dec.exit.i50

lean_dec.exit.i50:                                ; preds = %bb.ao, %bb.an, %bb.am, %.preheader.i47.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !14 ; 4 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = and i64 %i.bm, 1
  %.not.i.i49.1 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i49.1, label %bb.ap, label %lean_dec.exit.i50.1

bb.ap:                                            ; preds = %lean_dec.exit.i50
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !10 ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %bb.as, label %bb.aq, !prof !11

bb.aq:                                            ; preds = %bb.ap
  %.not.i7.i53.1 = icmp eq i32 %i.bo, 0
  br i1 %.not.i7.i53.1, label %lean_dec.exit.i50.1, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bl) #11
  br label %lean_dec.exit.i50.1

bb.as:                                            ; preds = %bb.ap
  %i.bq = add nsw i32 %i.bo, -1
  store i32 %i.bq, ptr %i.bl, align 4, !tbaa !10
  br label %lean_dec.exit.i50.1

lean_dec.exit.i50.1:                              ; preds = %bb.as, %bb.ar, %bb.aq, %lean_dec.exit.i50
  tail call void @lean_free_object(ptr noundef nonnull %1) #11
  br label %lean_dec_ref_known.exit54

bb.at:                                            ; preds = %lean_inc.exit
  %i.br = icmp sgt i32 %.val.i45, 1
  br i1 %i.br, label %bb.au, label %bb.av, !prof !11

bb.au:                                            ; preds = %bb.at
  %i.bs = add nsw i32 %.val.i45, -1
  store i32 %i.bs, ptr %1, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit54

bb.av:                                            ; preds = %bb.at
  %.not.i8.i46 = icmp eq i32 %.val.i45, 0
  br i1 %.not.i8.i46, label %lean_dec_ref_known.exit54, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #11
  br label %lean_dec_ref_known.exit54

lean_dec_ref_known.exit54:                        ; preds = %lean_dec.exit.i50.1, %bb.au, %bb.av, %bb.aw
  %i.bt = tail call ptr @l_Lean_Name_appendCore(ptr noundef %0, ptr noundef %i.aq)
  %i.bu = tail call ptr @l_Lean_Name_num___override(ptr noundef %i.bt, ptr noundef %i.ax)
  br label %common.ret61
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Name_appendCore___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Name_appendCore(ptr noundef %0, ptr noundef %1)
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
  %.not.i4 = icmp eq i32 %i.d, 0
  br i1 %.not.i4, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #11
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l_Lean_SourceInfo_ctorIdx(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %switch.selectcmp = icmp eq i32 %.0.i, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp5 = icmp eq i32 %.0.i, 0
  %switch.select6 = select i1 %switch.selectcmp5, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select6
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_SourceInfo_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_dec.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24                   ; 3 uses
  %1 = load i32, ptr %0, align 4, !tbaa !10       ; 3 uses
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %1, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i3 = icmp eq i32 %1, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #11
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.b, %bb.f, %bb.e, %bb.d
  %.0.i.i5 = phi i32 [ %i.f, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.d, %bb.b ] ; 2 uses
  %switch.selectcmp5.i = icmp eq i32 %.0.i.i5, 0
  %switch.selectcmp.i = icmp eq i32 %.0.i.i5, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.select6.i = select i1 %switch.selectcmp5.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select6.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_SourceInfo_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i35 = icmp eq i64 %i.b, 0
  br i1 %.not.i35, label %bb.c, label %bb.b

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
  switch i32 %.0.i, label %bb.bh [
    i32 0, label %bb.d
    i32 1, label %bb.am
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 4 uses
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !10 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i, 0
  br i1 %i.i, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw i32 %.val.i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !10
  br label %lean_inc_ref.exit

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 5 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %.not.i33 = icmp eq i64 %i.o, 0
  br i1 %.not.i33, label %bb.h, label %lean_inc.exit34

bb.h:                                             ; preds = %lean_inc_ref.exit
  %.val.i.i36 = load i32, ptr %i.m, align 4, !tbaa !10 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i36, 0
  br i1 %i.p, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.q = add nuw i32 %.val.i.i36, 1
  store i32 %i.q, ptr %i.m, align 4, !tbaa !10
  br label %lean_inc.exit34

bb.j:                                             ; preds = %bb.h
  %.not.i.i37 = icmp eq i32 %.val.i.i36, 0
  br i1 %.not.i.i37, label %lean_inc.exit34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit34

lean_inc.exit34:                                  ; preds = %bb.k, %bb.j, %bb.i, %lean_inc_ref.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14   ; 4 uses
  %.val.i.i39 = load i32, ptr %i.t, align 4, !tbaa !10 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i39, 0
  br i1 %i.u, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %lean_inc.exit34
  %i.v = add nuw i32 %.val.i.i39, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !10
  br label %lean_inc_ref.exit41

bb.m:                                             ; preds = %lean_inc.exit34
  %.not.i.i40 = icmp eq i32 %.val.i.i39, 0
  br i1 %.not.i.i40, label %lean_inc_ref.exit41, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = atomicrmw sub ptr %i.t, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit41

lean_inc_ref.exit41:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14   ; 5 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, 1
  %.not.i31 = icmp eq i64 %i.aa, 0
  br i1 %.not.i31, label %bb.o, label %lean_inc.exit32

bb.o:                                             ; preds = %lean_inc_ref.exit41
  %.val.i.i42 = load i32, ptr %i.y, align 4, !tbaa !10 ; 3 uses
  %i.ab = icmp sgt i32 %.val.i.i42, 0
  br i1 %i.ab, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.ac = add nuw i32 %.val.i.i42, 1
  store i32 %i.ac, ptr %i.y, align 4, !tbaa !10
  br label %lean_inc.exit32

bb.q:                                             ; preds = %bb.o
  %.not.i.i43 = icmp eq i32 %.val.i.i42, 0
  br i1 %.not.i.i43, label %lean_inc.exit32, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = atomicrmw sub ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit32

lean_inc.exit32:                                  ; preds = %bb.r, %bb.q, %bb.p, %lean_inc_ref.exit41
  %.val.i45 = load i32, ptr %0, align 8, !tbaa !10 ; 4 uses
  %i.ae = icmp eq i32 %.val.i45, 1
  br i1 %i.ae, label %.preheader.i.preheader, label %bb.ai

.preheader.i.preheader:                           ; preds = %lean_inc.exit32
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !14  ; 4 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = and i64 %i.ag, 1
  %.not.i.i46 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i46, label %bb.s, label %lean_dec.exit.i

bb.s:                                             ; preds = %.preheader.i.preheader
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !10 ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.u:                                             ; preds = %bb.s
  %.not.i7.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.af) #11
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.v, %bb.u, %bb.t, %.preheader.i.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14 ; 4 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 1
  %.not.i.i46.1 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i46.1, label %bb.w, label %lean_dec.exit.i.1

bb.w:                                             ; preds = %lean_dec.exit.i
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !10 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.z, label %bb.x, !prof !11

bb.x:                                             ; preds = %bb.w
  %.not.i7.i.1 = icmp eq i32 %i.ap, 0
  br i1 %.not.i7.i.1, label %lean_dec.exit.i.1, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #11
  br label %lean_dec.exit.i.1

bb.z:                                             ; preds = %bb.w
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !10
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.z, %bb.y, %bb.x, %lean_dec.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !14 ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = and i64 %i.au, 1
  %.not.i.i46.2 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i46.2, label %bb.aa, label %lean_dec.exit.i.2

bb.aa:                                            ; preds = %lean_dec.exit.i.1
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !10 ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.ad, label %bb.ab, !prof !11

bb.ab:                                            ; preds = %bb.aa
  %.not.i7.i.2 = icmp eq i32 %i.aw, 0
  br i1 %.not.i7.i.2, label %lean_dec.exit.i.2, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.at) #11
  br label %lean_dec.exit.i.2

bb.ad:                                            ; preds = %bb.aa
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !10
end_hunk_1
