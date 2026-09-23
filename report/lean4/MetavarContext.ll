Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/MetavarContext?download=true
inline.NumInlined: 6856
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 118
loop-unroll.NumUnrolled: 118
begin_hunk_0_@l_Lean_instBEqLocalInstance___lam__0___boxed:bb.a
  ret ptr %i.o
}

; Function Attrs: nounwind uwtable
define i64 @l_Lean_instHashableLocalInstance___lam__0(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call i64 @l_Lean_Expr_hash(ptr noundef %i.b) #7
  ret i64 %i.c
}

declare i64 @l_Lean_Expr_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_instHashableLocalInstance___lam__0___boxed(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call i64 @l_Lean_Expr_hash(ptr noundef %i.b) #7
  %i.d = load i32, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %0, align 8, !tbaa !12
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  tail call void @lean_inc_heartbeat() #7
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %lean_box_uint64.exit

bb.e:                                             ; preds = %lean_dec_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_box_uint64.exit:                             ; preds = %lean_dec_ref.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !12
  store i32 16, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.c, ptr %i.j, align 8, !tbaa !15
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l_Lean_LocalInstances_erase___lam__0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call ptr @l_Lean_Expr_fvarId_x21(ptr noundef %i.b) #7 ; 5 uses
  %i.d = tail call zeroext i8 @l_Lean_instBEqFVarId_beq(ptr noundef %i.c, ptr noundef %0) #7
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.c, align 4, !tbaa !12   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.c, align 4, !tbaa !12
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  ret i8 %i.d
}

declare ptr @l_Lean_Expr_fvarId_x21(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @l_Lean_instBEqFVarId_beq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_LocalInstances_erase___lam__0___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call ptr @l_Lean_Expr_fvarId_x21(ptr noundef %i.b) #7 ; 5 uses
  %i.d = tail call zeroext i8 @l_Lean_instBEqFVarId_beq(ptr noundef %i.c, ptr noundef %0) #7
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = and i64 %i.e, 1
  %.not.i.i6 = icmp eq i64 %i.f, 0
  br i1 %.not.i.i6, label %bb.b, label %l_Lean_LocalInstances_erase___lam__0.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.c, align 4, !tbaa !12   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.c, align 4, !tbaa !12
  br label %l_Lean_LocalInstances_erase___lam__0.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %l_Lean_LocalInstances_erase___lam__0.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #7
  br label %l_Lean_LocalInstances_erase___lam__0.exit

l_Lean_LocalInstances_erase___lam__0.exit:        ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.j = load i32, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %l_Lean_LocalInstances_erase___lam__0.exit
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %1, align 8, !tbaa !12
  br label %lean_dec_ref.exit

bb.g:                                             ; preds = %l_Lean_LocalInstances_erase___lam__0.exit
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  %i.m = ptrtoint ptr %0 to i64
  %i.n = and i64 %i.m, 1
  %.not.i5 = icmp eq i64 %i.n, 0
  br i1 %.not.i5, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit
  %i.o = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.j, %bb.k, %bb.l, %lean_dec_ref.exit
  %i.r = zext i8 %i.d to i64
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = or disjoint i64 %i.s, 1
  %i.u = inttoptr i64 %i.t to ptr
  ret ptr %i.u
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_LocalInstances_erase(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_alloc_object(i64 noundef 32) #7 ; 7 uses
  store i32 1, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = or disjoint i32 %i.d, -184549376
  store i32 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @l_Lean_LocalInstances_erase___lam__0___boxed, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 2, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 1, ptr %i.h, align 2, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.i, align 8, !tbaa !10
  %i.j = tail call ptr @l_Array_eraseP___redArg(ptr noundef %0, ptr noundef nonnull %i.a) #7
  ret ptr %i.j
}

declare ptr @l_Array_eraseP___redArg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_MetavarKind_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #2 {
  switch i8 %0, label %3 [
    i8 0, label %bb.a
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %bb.a

3:                                                ; preds = %1
  br label %bb.a

bb.a:                                             ; preds = %1, %3, %2
  %.0 = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_MetavarKind_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_MetavarKind_ctorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_MetavarKind_ctorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_MetavarKind_ctorIdx.exit

l_Lean_MetavarKind_ctorIdx.exit:                  ; preds = %bb.a, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_MetavarKind_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #2 {
  switch i8 %0, label %3 [
    i8 0, label %l_Lean_MetavarKind_ctorIdx.exit
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %l_Lean_MetavarKind_ctorIdx.exit

3:                                                ; preds = %1
  br label %l_Lean_MetavarKind_ctorIdx.exit

l_Lean_MetavarKind_ctorIdx.exit:                  ; preds = %1, %2, %3
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_MetavarKind_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_MetavarKind_toCtorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_MetavarKind_toCtorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_MetavarKind_toCtorIdx.exit

l_Lean_MetavarKind_toCtorIdx.exit:                ; preds = %bb.a, %1, %2
  %.0.i.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_MetavarKind_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_MetavarKind_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i3 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i3, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.g, %bb.h, %bb.i
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_MetavarKind_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_MetavarKind_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i12 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i12, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit11

bb.h:                                             ; preds = %bb.f
  %.not.i.i9 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i9, label %lean_dec.exit11, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.d, %bb.a, %bb.g, %bb.h, %bb.i
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit11
  %i.k = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.k, %bb.l, %bb.m, %lean_dec.exit11
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_MetavarKind_natural_elim___redArg(ptr noundef returned %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
end_hunk_0
