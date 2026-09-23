Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/SyntheticMVars?download=true
inline.NumInlined: 8114
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_markAsResolved:bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_markAsResolved___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call nonnull ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_markAsResolved___redArg(ptr noundef %0, ptr noundef %2)
  %i.b = ptrtoint ptr %6 to i64
  %i.c = and i64 %i.b, 1
  %.not.i19 = icmp eq i64 %i.c, 0
  br i1 %.not.i19, label %bb.b, label %lean_dec.exit20

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %6, align 4, !tbaa !13     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %6, align 4, !tbaa !13
  br label %lean_dec.exit20

bb.d:                                             ; preds = %bb.b
  %.not.i21 = icmp eq i32 %i.d, 0
  br i1 %.not.i21, label %lean_dec.exit20, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #7
  br label %lean_dec.exit20

lean_dec.exit20:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %5, align 4, !tbaa !13     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %lean_dec.exit20
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %5, align 4, !tbaa !13
  br label %lean_dec_ref.exit33

bb.g:                                             ; preds = %lean_dec.exit20
  %.not.i32 = icmp eq i32 %i.g, 0
  br i1 %.not.i32, label %lean_dec_ref.exit33, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec_ref.exit33

lean_dec_ref.exit33:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %4 to i64
  %i.k = and i64 %i.j, 1
  %.not.i17 = icmp eq i64 %i.k, 0
  br i1 %.not.i17, label %bb.i, label %lean_dec.exit18

bb.i:                                             ; preds = %lean_dec_ref.exit33
  %i.l = load i32, ptr %4, align 4, !tbaa !13     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %4, align 4, !tbaa !13
  br label %lean_dec.exit18

bb.k:                                             ; preds = %bb.i
  %.not.i22 = icmp eq i32 %i.l, 0
  br i1 %.not.i22, label %lean_dec.exit18, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit18

lean_dec.exit18:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit33
  %i.o = load i32, ptr %3, align 4, !tbaa !13     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %lean_dec.exit18
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %3, align 4, !tbaa !13
  br label %lean_dec_ref.exit31

bb.n:                                             ; preds = %lean_dec.exit18
  %.not.i30 = icmp eq i32 %i.o, 0
  br i1 %.not.i30, label %lean_dec_ref.exit31, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec_ref.exit31

lean_dec_ref.exit31:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %2 to i64
  %i.s = and i64 %i.r, 1
  %.not.i15 = icmp eq i64 %i.s, 0
  br i1 %.not.i15, label %bb.p, label %lean_dec.exit16

bb.p:                                             ; preds = %lean_dec_ref.exit31
  %i.t = load i32, ptr %2, align 4, !tbaa !13     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %2, align 4, !tbaa !13
  br label %lean_dec.exit16

bb.r:                                             ; preds = %bb.p
  %.not.i24 = icmp eq i32 %i.t, 0
  br i1 %.not.i24, label %lean_dec.exit16, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit31
  %i.w = load i32, ptr %1, align 4, !tbaa !13     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.t, label %bb.u, !prof !14

bb.t:                                             ; preds = %lean_dec.exit16
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %1, align 4, !tbaa !13
  br label %lean_dec_ref.exit29

bb.u:                                             ; preds = %lean_dec.exit16
  %.not.i28 = icmp eq i32 %i.w, 0
  br i1 %.not.i28, label %lean_dec_ref.exit29, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit29

lean_dec_ref.exit29:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.z = ptrtoint ptr %0 to i64
  %i.aa = and i64 %i.z, 1
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %bb.w, label %lean_dec.exit

bb.w:                                             ; preds = %lean_dec_ref.exit29
  %i.ab = load i32, ptr %0, align 4, !tbaa !13    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.x, label %bb.y, !prof !14

bb.x:                                             ; preds = %bb.w
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit

bb.y:                                             ; preds = %bb.w
  %.not.i26 = icmp eq i32 %i.ab, 0
  br i1 %.not.i26, label %lean_dec.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.z, %bb.y, %bb.x, %lean_dec_ref.exit29
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_DTreeMap_Internal_Impl_erase___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_markAsResolved_spec__0(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Std_DTreeMap_Internal_Impl_erase___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_markAsResolved_spec__0___redArg(ptr noundef %1, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_DTreeMap_Internal_Impl_erase___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_markAsResolved_spec__0___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Std_DTreeMap_Internal_Impl_erase___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_markAsResolved_spec__0___redArg(ptr noundef %1, ptr noundef %2)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !13     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !13
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i6 = icmp eq i32 %i.d, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Elab_Term_PostponeBehavior_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
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
define noundef nonnull ptr @l_Lean_Elab_Term_PostponeBehavior_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit

l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit:   ; preds = %bb.a, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Elab_Term_PostponeBehavior_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
  switch i8 %0, label %3 [
    i8 0, label %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit

3:                                                ; preds = %1
  br label %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit

l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit:   ; preds = %1, %2, %3
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Elab_Term_PostponeBehavior_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_Elab_Term_PostponeBehavior_toCtorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_Elab_Term_PostponeBehavior_toCtorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_Elab_Term_PostponeBehavior_toCtorIdx.exit

l_Lean_Elab_Term_PostponeBehavior_toCtorIdx.exit: ; preds = %bb.a, %1, %2
  %.0.i.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_Term_PostponeBehavior_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !13 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !13
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
define noundef ptr @l_Lean_Elab_Term_PostponeBehavior_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !13 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !13
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_Term_PostponeBehavior_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !13 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !13
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
define noundef ptr @l_Lean_Elab_Term_PostponeBehavior_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !13 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !13
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !13
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !13     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !13
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_Term_PostponeBehavior_yes_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !13 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !13
end_hunk_0
begin_hunk_1_@l_Lean_Elab_Term_instReprPostponeBehavior_repr:bb.a

bb.z:                                             ; preds = %bb.y
  %i.ah = atomicrmw sub ptr %.057, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit64

lean_inc.exit64:                                  ; preds = %bb.z, %bb.y, %bb.x, %lean_obj_once.exit
  tail call void @lean_inc_heartbeat() #7
  %i.ai = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.aa, label %lean_alloc_ctor.exit

bb.aa:                                            ; preds = %lean_inc.exit64
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !13
  store i32 67239960, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.057, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr @l_Lean_Elab_Term_instReprPostponeBehavior_repr___closed__1_value, ptr %i.am, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #7
  %i.an = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.ab, label %lean_alloc_ctor.exit85

bb.ab:                                            ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_obj_once.exit78:                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.058 = phi ptr [ %i.p, %bb.l ], [ %i.o, %bb.k ], [ %i.s, %bb.n ], [ %i.t, %bb.o ] ; 5 uses
  %i.ap = ptrtoint ptr %.058 to i64
  %i.aq = and i64 %i.ap, 1
  %.not.i61 = icmp eq i64 %i.aq, 0
  br i1 %.not.i61, label %bb.ac, label %lean_inc.exit62

bb.ac:                                            ; preds = %lean_obj_once.exit78
  %.val.i.i86 = load i32, ptr %.058, align 4, !tbaa !13 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i86, 0
  br i1 %i.ar, label %bb.ad, label %bb.ae, !prof !14

bb.ad:                                            ; preds = %bb.ac
  %i.as = add nuw i32 %.val.i.i86, 1
  store i32 %i.as, ptr %.058, align 4, !tbaa !13
  br label %lean_inc.exit62

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i87 = icmp eq i32 %.val.i.i86, 0
  br i1 %.not.i.i87, label %lean_inc.exit62, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.at = atomicrmw sub ptr %.058, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit62

lean_inc.exit62:                                  ; preds = %bb.af, %bb.ae, %bb.ad, %lean_obj_once.exit78
  tail call void @lean_inc_heartbeat() #7
  %i.au = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.ag, label %lean_alloc_ctor.exit89

bb.ag:                                            ; preds = %lean_inc.exit62
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit89:                           ; preds = %lean_inc.exit62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 1, ptr %i.au, align 4, !tbaa !13
  store i32 67239960, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.058, ptr %i.ax, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr @l_Lean_Elab_Term_instReprPostponeBehavior_repr___closed__3_value, ptr %i.ay, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #7
  %i.az = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.ah, label %lean_alloc_ctor.exit85

bb.ah:                                            ; preds = %lean_alloc_ctor.exit89
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_obj_once.exit82:                             ; preds = %bb.v, %bb.u, %bb.s, %bb.r
  %.059 = phi ptr [ %i.y, %bb.s ], [ %i.x, %bb.r ], [ %i.ab, %bb.u ], [ %i.ac, %bb.v ] ; 5 uses
  %i.bb = ptrtoint ptr %.059 to i64
  %i.bc = and i64 %i.bb, 1
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %bb.ai, label %lean_inc.exit

bb.ai:                                            ; preds = %lean_obj_once.exit82
  %.val.i.i92 = load i32, ptr %.059, align 4, !tbaa !13 ; 3 uses
  %i.bd = icmp sgt i32 %.val.i.i92, 0
  br i1 %i.bd, label %bb.aj, label %bb.ak, !prof !14

bb.aj:                                            ; preds = %bb.ai
  %i.be = add nuw i32 %.val.i.i92, 1
  store i32 %i.be, ptr %.059, align 4, !tbaa !13
  br label %lean_inc.exit

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i93 = icmp eq i32 %.val.i.i92, 0
  br i1 %.not.i.i93, label %lean_inc.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bf = atomicrmw sub ptr %.059, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.al, %bb.ak, %bb.aj, %lean_obj_once.exit82
  tail call void @lean_inc_heartbeat() #7
  %i.bg = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.am, label %lean_alloc_ctor.exit95

bb.am:                                            ; preds = %lean_inc.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit95:                           ; preds = %lean_inc.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 1, ptr %i.bg, align 4, !tbaa !13
  store i32 67239960, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.059, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr @l_Lean_Elab_Term_instReprPostponeBehavior_repr___closed__5_value, ptr %i.bk, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #7
  %i.bl = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.an, label %lean_alloc_ctor.exit85

bb.an:                                            ; preds = %lean_alloc_ctor.exit95
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit85:                           ; preds = %lean_alloc_ctor.exit95, %lean_alloc_ctor.exit89, %lean_alloc_ctor.exit
  %.sink115 = phi ptr [ %i.az, %lean_alloc_ctor.exit89 ], [ %i.an, %lean_alloc_ctor.exit ], [ %i.bl, %lean_alloc_ctor.exit95 ] ; 5 uses
  %.sink108 = phi ptr [ %i.au, %lean_alloc_ctor.exit89 ], [ %i.ai, %lean_alloc_ctor.exit ], [ %i.bg, %lean_alloc_ctor.exit95 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink115, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sink115, i64 16
  store i64 0, ptr %i.bo, align 8, !tbaa !16
  store i32 1, ptr %.sink115, align 8, !tbaa !13
  store i32 100728856, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.sink115, i64 8
  store ptr %.sink108, ptr %i.bp, align 8, !tbaa !10
  %i.bq = tail call ptr @l_Repr_addAppParen(ptr noundef nonnull %.sink115, ptr noundef %1) #7
  ret ptr %i.bq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Lean_Elab_Term_instReprPostponeBehavior_repr___closed__6() #3 {
bb.a:
  ret ptr inttoptr (i64 5 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Lean_Elab_Term_instReprPostponeBehavior_repr___closed__7() #3 {
bb.a:
  ret ptr inttoptr (i64 3 to ptr)
}

declare ptr @l_Repr_addAppParen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_instReprPostponeBehavior_repr___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l_Lean_Elab_Term_instReprPostponeBehavior_repr(i8 noundef zeroext %i.c, ptr noundef %1)
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 4, !tbaa !13     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %1, align 4, !tbaa !13
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i4 = icmp eq i32 %i.g, 0
  br i1 %.not.i4, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_Elab_Term_instBEqPostponeBehavior_beq(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  switch i8 %0, label %4 [
    i8 0, label %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit
    i8 1, label %3
  ]

3:                                                ; preds = %2
  br label %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit

4:                                                ; preds = %2
  br label %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit

l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit:   ; preds = %2, %3, %4
  %.0.i12 = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %2 ]
  switch i8 %1, label %6 [
    i8 0, label %lean_dec.exit
    i8 1, label %5
  ]

5:                                                ; preds = %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit
  br label %lean_dec.exit

6:                                                ; preds = %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %6, %5, %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit
  %.0.i13 = phi ptr [ inttoptr (i64 5 to ptr), %6 ], [ inttoptr (i64 3 to ptr), %5 ], [ inttoptr (i64 1 to ptr), %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit ]
  %i.a = icmp eq ptr %.0.i12, %.0.i13
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Elab_Term_instBEqPostponeBehavior_beq___boxed(ptr noundef %0, ptr noundef %1) #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  switch i8 %i.c, label %3 [
    i8 0, label %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit.i
    i8 1, label %2
  ]

2:                                                ; preds = %bb.a
  br label %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit.i

3:                                                ; preds = %bb.a
  br label %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit.i

l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit.i: ; preds = %3, %2, %bb.a
  %.0.i12.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  switch i8 %i.f, label %5 [
    i8 0, label %l_Lean_Elab_Term_instBEqPostponeBehavior_beq.exit
    i8 1, label %4
  ]

4:                                                ; preds = %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit.i
  br label %l_Lean_Elab_Term_instBEqPostponeBehavior_beq.exit

5:                                                ; preds = %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit.i
  br label %l_Lean_Elab_Term_instBEqPostponeBehavior_beq.exit

l_Lean_Elab_Term_instBEqPostponeBehavior_beq.exit: ; preds = %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit.i, %4, %5
  %.0.i13.i = phi ptr [ inttoptr (i64 5 to ptr), %5 ], [ inttoptr (i64 3 to ptr), %4 ], [ inttoptr (i64 1 to ptr), %l_Lean_Elab_Term_PostponeBehavior_ctorIdx.exit.i ]
  %6 = icmp eq ptr %.0.i12.i, %.0.i13.i
  %7 = select i1 %6, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_Elab_Term_PostponeBehavior_ofBool(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i8 %0, 0
  %. = zext i1 %i.a to i8
  ret i8 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Elab_Term_PostponeBehavior_ofBool___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 510
  %i.c = icmp eq i64 %i.b, 0
  %i.d = select i1 %i.c, i64 3, i64 1
  %i.e = inttoptr i64 %i.d to ptr
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_TacticMVarKind_logError(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i80 = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i80, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i, label %bb.y [
    i32 0, label %bb.d
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  tail call void @lean_inc_heartbeat() #7
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %lean_alloc_ctor.exit

bb.e:                                             ; preds = %bb.d
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !13
  store i32 65552, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.j, align 8, !tbaa !10
  br label %bb.az

bb.f:                                             ; preds = %lean_obj_tag.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10   ; 5 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, 1
  %.not.i76 = icmp eq i64 %i.n, 0
  br i1 %.not.i76, label %bb.g, label %lean_inc.exit77

bb.g:                                             ; preds = %bb.f
  %.val.i.i = load i32, ptr %i.l, align 4, !tbaa !13 ; 3 uses
  %i.o = icmp sgt i32 %.val.i.i, 0
  br i1 %i.o, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.p = add nuw i32 %.val.i.i, 1
  store i32 %i.p, ptr %i.l, align 4, !tbaa !13
  br label %lean_inc.exit77

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = atomicrmw sub ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit77

lean_inc.exit77:                                  ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %.val.i81 = load i32, ptr %1, align 8, !tbaa !13 ; 4 uses
  %i.r = icmp eq i32 %.val.i81, 1
  br i1 %i.r, label %.preheader.i.preheader, label %bb.o

.preheader.i.preheader:                           ; preds = %lean_inc.exit77
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !10   ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 1
  %.not.i.i82 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i82, label %bb.k, label %lean_dec.exit.i

bb.k:                                             ; preds = %.preheader.i.preheader
  %i.v = load i32, ptr %i.s, align 4, !tbaa !13   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.l, label %bb.m, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.s, align 4, !tbaa !13
  br label %lean_dec.exit.i

bb.m:                                             ; preds = %bb.k
  %.not.i7.i = icmp eq i32 %i.v, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.n, %bb.m, %bb.l, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %1) #7
  br label %lean_dec_ref_known.exit

bb.o:                                             ; preds = %lean_inc.exit77
  %i.y = icmp sgt i32 %.val.i81, 1
  br i1 %i.y, label %bb.p, label %bb.q, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.z = add nsw i32 %.val.i81, -1
  store i32 %i.z, ptr %1, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit

bb.q:                                             ; preds = %bb.o
  %.not.i8.i = icmp eq i32 %.val.i81, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.p, %bb.q, %bb.r
  %i.aa = load atomic i32, ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_TacticMVarKind_logError___closed__1_once seq_cst, align 4, !tbaa !18
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !14

bb.s:                                             ; preds = %lean_dec_ref_known.exit
  %i.ac = load ptr, ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_TacticMVarKind_logError___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.t:                                             ; preds = %lean_dec_ref_known.exit
  %i.ad = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_TacticMVarKind_logError___closed__1, ptr noundef nonnull @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_TacticMVarKind_logError___closed__1_once, ptr noundef nonnull @_init_l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_TacticMVarKind_logError___closed__1) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.s, %bb.t
  %.0.i83 = phi ptr [ %i.ac, %bb.s ], [ %i.ad, %bb.t ]
  %i.ae = tail call ptr @l_Lean_MessageData_ofName(ptr noundef %i.l) #7
  tail call void @lean_inc_heartbeat() #7
  %i.af = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.u, label %lean_alloc_ctor.exit84

bb.u:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit84:                           ; preds = %lean_obj_once.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 1, ptr %i.af, align 4, !tbaa !13
  store i32 117571608, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.0.i83, ptr %i.ai, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ae, ptr %i.aj, align 8, !tbaa !10
  %i.ak = load atomic i32, ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_TacticMVarKind_logError___closed__3_once seq_cst, align 4, !tbaa !18
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.v, label %bb.w, !prof !14

bb.v:                                             ; preds = %lean_alloc_ctor.exit84
  %i.am = load ptr, ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_TacticMVarKind_logError___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit86

bb.w:                                             ; preds = %lean_alloc_ctor.exit84
  %i.an = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_TacticMVarKind_logError___closed__3, ptr noundef nonnull @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_TacticMVarKind_logError___closed__3_once, ptr noundef nonnull @_init_l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_TacticMVarKind_logError___closed__3) #7
  br label %lean_obj_once.exit86

lean_obj_once.exit86:                             ; preds = %bb.v, %bb.w
  %.0.i85 = phi ptr [ %i.am, %bb.v ], [ %i.an, %bb.w ]
  tail call void @lean_inc_heartbeat() #7
  %i.ao = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.x, label %lean_alloc_ctor.exit87

bb.x:                                             ; preds = %lean_obj_once.exit86
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit87:                           ; preds = %lean_obj_once.exit86
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
end_hunk_1
