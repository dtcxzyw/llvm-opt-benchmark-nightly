Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/MetaTypes?download=true
inline.NumInlined: 278
inline.NumDeleted: 34
begin_hunk_0_@l_Lean_Meta_TransparencyMode_none_elim___redArg___boxed:bb.a

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Meta_TransparencyMode_none_elim(ptr nofree noundef readnone captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %3, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Meta_TransparencyMode_none_elim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_Meta_instBEqTransparencyMode_beq(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  switch i8 %0, label %bb.e [
    i8 0, label %l_Lean_Meta_TransparencyMode_ctorIdx.exit
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %l_Lean_Meta_TransparencyMode_ctorIdx.exit

bb.c:                                             ; preds = %bb.a
  br label %l_Lean_Meta_TransparencyMode_ctorIdx.exit

bb.d:                                             ; preds = %bb.a
  br label %l_Lean_Meta_TransparencyMode_ctorIdx.exit

bb.e:                                             ; preds = %bb.a
  br label %l_Lean_Meta_TransparencyMode_ctorIdx.exit

l_Lean_Meta_TransparencyMode_ctorIdx.exit:        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i12 = phi ptr [ inttoptr (i64 9 to ptr), %bb.e ], [ inttoptr (i64 7 to ptr), %bb.d ], [ inttoptr (i64 3 to ptr), %bb.b ], [ inttoptr (i64 5 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ]
  switch i8 %1, label %bb.i [
    i8 0, label %lean_dec.exit
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

bb.f:                                             ; preds = %l_Lean_Meta_TransparencyMode_ctorIdx.exit
  br label %lean_dec.exit

bb.g:                                             ; preds = %l_Lean_Meta_TransparencyMode_ctorIdx.exit
  br label %lean_dec.exit

bb.h:                                             ; preds = %l_Lean_Meta_TransparencyMode_ctorIdx.exit
  br label %lean_dec.exit

bb.i:                                             ; preds = %l_Lean_Meta_TransparencyMode_ctorIdx.exit
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %l_Lean_Meta_TransparencyMode_ctorIdx.exit
  %.0.i13 = phi ptr [ inttoptr (i64 9 to ptr), %bb.i ], [ inttoptr (i64 7 to ptr), %bb.h ], [ inttoptr (i64 3 to ptr), %bb.f ], [ inttoptr (i64 5 to ptr), %bb.g ], [ inttoptr (i64 1 to ptr), %l_Lean_Meta_TransparencyMode_ctorIdx.exit ]
  %i.a = icmp eq ptr %.0.i12, %.0.i13
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Meta_instBEqTransparencyMode_beq___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  switch i8 %i.c, label %bb.e [
    i8 0, label %l_Lean_Meta_TransparencyMode_ctorIdx.exit.i
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %l_Lean_Meta_TransparencyMode_ctorIdx.exit.i

bb.c:                                             ; preds = %bb.a
  br label %l_Lean_Meta_TransparencyMode_ctorIdx.exit.i

bb.d:                                             ; preds = %bb.a
  br label %l_Lean_Meta_TransparencyMode_ctorIdx.exit.i

bb.e:                                             ; preds = %bb.a
  br label %l_Lean_Meta_TransparencyMode_ctorIdx.exit.i

l_Lean_Meta_TransparencyMode_ctorIdx.exit.i:      ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i12.i = phi ptr [ inttoptr (i64 9 to ptr), %bb.e ], [ inttoptr (i64 7 to ptr), %bb.d ], [ inttoptr (i64 3 to ptr), %bb.b ], [ inttoptr (i64 5 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ]
  switch i8 %i.f, label %bb.i [
    i8 0, label %l_Lean_Meta_instBEqTransparencyMode_beq.exit
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

bb.f:                                             ; preds = %l_Lean_Meta_TransparencyMode_ctorIdx.exit.i
  br label %l_Lean_Meta_instBEqTransparencyMode_beq.exit

bb.g:                                             ; preds = %l_Lean_Meta_TransparencyMode_ctorIdx.exit.i
  br label %l_Lean_Meta_instBEqTransparencyMode_beq.exit

bb.h:                                             ; preds = %l_Lean_Meta_TransparencyMode_ctorIdx.exit.i
  br label %l_Lean_Meta_instBEqTransparencyMode_beq.exit

bb.i:                                             ; preds = %l_Lean_Meta_TransparencyMode_ctorIdx.exit.i
  br label %l_Lean_Meta_instBEqTransparencyMode_beq.exit

l_Lean_Meta_instBEqTransparencyMode_beq.exit:     ; preds = %l_Lean_Meta_TransparencyMode_ctorIdx.exit.i, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i13.i = phi ptr [ inttoptr (i64 9 to ptr), %bb.i ], [ inttoptr (i64 7 to ptr), %bb.h ], [ inttoptr (i64 3 to ptr), %bb.f ], [ inttoptr (i64 5 to ptr), %bb.g ], [ inttoptr (i64 1 to ptr), %l_Lean_Meta_TransparencyMode_ctorIdx.exit.i ]
  %i.g = icmp eq ptr %.0.i12.i, %.0.i13.i
  %i.h = select i1 %i.g, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Meta_EtaStructMode_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
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
define noundef nonnull ptr @l_Lean_Meta_EtaStructMode_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_Meta_EtaStructMode_ctorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_Meta_EtaStructMode_ctorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_Meta_EtaStructMode_ctorIdx.exit

l_Lean_Meta_EtaStructMode_ctorIdx.exit:           ; preds = %bb.a, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Meta_EtaStructMode_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
  switch i8 %0, label %3 [
    i8 0, label %l_Lean_Meta_EtaStructMode_ctorIdx.exit
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %l_Lean_Meta_EtaStructMode_ctorIdx.exit

3:                                                ; preds = %1
  br label %l_Lean_Meta_EtaStructMode_ctorIdx.exit

l_Lean_Meta_EtaStructMode_ctorIdx.exit:           ; preds = %1, %2, %3
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Meta_EtaStructMode_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_Meta_EtaStructMode_toCtorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_Meta_EtaStructMode_toCtorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_Meta_EtaStructMode_toCtorIdx.exit

l_Lean_Meta_EtaStructMode_toCtorIdx.exit:         ; preds = %bb.a, %1, %2
  %.0.i.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Meta_EtaStructMode_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
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
define noundef ptr @l_Lean_Meta_EtaStructMode_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Meta_EtaStructMode_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !10
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
define noundef ptr @l_Lean_Meta_EtaStructMode_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Meta_EtaStructMode_all_elim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
end_hunk_0
begin_hunk_1_@l_Lean_Meta_EtaStructMode_notClasses_elim___boxed:bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Meta_EtaStructMode_none_elim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
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
define noundef ptr @l_Lean_Meta_EtaStructMode_none_elim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Meta_EtaStructMode_none_elim(ptr nofree noundef readnone captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %3, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Meta_EtaStructMode_none_elim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_Meta_instBEqEtaStructMode_beq(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  switch i8 %0, label %4 [
    i8 0, label %l_Lean_Meta_EtaStructMode_ctorIdx.exit
    i8 1, label %3
  ]

3:                                                ; preds = %2
  br label %l_Lean_Meta_EtaStructMode_ctorIdx.exit

4:                                                ; preds = %2
  br label %l_Lean_Meta_EtaStructMode_ctorIdx.exit

l_Lean_Meta_EtaStructMode_ctorIdx.exit:           ; preds = %2, %3, %4
  %.0.i12 = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %2 ]
  switch i8 %1, label %6 [
    i8 0, label %lean_dec.exit
    i8 1, label %5
  ]

5:                                                ; preds = %l_Lean_Meta_EtaStructMode_ctorIdx.exit
  br label %lean_dec.exit

6:                                                ; preds = %l_Lean_Meta_EtaStructMode_ctorIdx.exit
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %6, %5, %l_Lean_Meta_EtaStructMode_ctorIdx.exit
  %.0.i13 = phi ptr [ inttoptr (i64 5 to ptr), %6 ], [ inttoptr (i64 3 to ptr), %5 ], [ inttoptr (i64 1 to ptr), %l_Lean_Meta_EtaStructMode_ctorIdx.exit ]
  %i.a = icmp eq ptr %.0.i12, %.0.i13
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Meta_instBEqEtaStructMode_beq___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  switch i8 %i.c, label %3 [
    i8 0, label %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i
    i8 1, label %2
  ]

2:                                                ; preds = %bb.a
  br label %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i

3:                                                ; preds = %bb.a
  br label %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i

l_Lean_Meta_EtaStructMode_ctorIdx.exit.i:         ; preds = %3, %2, %bb.a
  %.0.i12.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  switch i8 %i.f, label %5 [
    i8 0, label %l_Lean_Meta_instBEqEtaStructMode_beq.exit
    i8 1, label %4
  ]

4:                                                ; preds = %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i
  br label %l_Lean_Meta_instBEqEtaStructMode_beq.exit

5:                                                ; preds = %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i
  br label %l_Lean_Meta_instBEqEtaStructMode_beq.exit

l_Lean_Meta_instBEqEtaStructMode_beq.exit:        ; preds = %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i, %4, %5
  %.0.i13.i = phi ptr [ inttoptr (i64 5 to ptr), %5 ], [ inttoptr (i64 3 to ptr), %4 ], [ inttoptr (i64 1 to ptr), %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i ]
  %6 = icmp eq ptr %.0.i12.i, %.0.i13.i
  %7 = select i1 %6, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i8 @l_Lean_Meta_DSimp_instBEqConfig_beq(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.at = load i8, ptr %i.as, align 1, !tbaa !13  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13  ; 2 uses
  %i.bm = icmp eq i8 %i.b, 0
  %i.bn = icmp eq i8 %i.ah, 0                     ; 2 uses
  br i1 %i.bm, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.bn, label %bb.ao, label %.thread152

bb.c:                                             ; preds = %bb.a
  br i1 %i.bn, label %.thread152, label %bb.ao

bb.d:                                             ; preds = %bb.h, %bb.g
  %.0144 = phi i8 [ %.0143, %bb.g ], [ %i.bj, %bb.h ]
  %i.bo = icmp eq i8 %i.af, 0
  br i1 %i.bo, label %bb.e, label %.thread152

bb.e:                                             ; preds = %bb.d
  %i.bp = icmp eq i8 %i.bl, 0
  %.0144. = select i1 %i.bp, i8 %.0144, i8 0
  br label %.thread152

bb.f:                                             ; preds = %bb.k, %bb.j
  %.0143 = phi i8 [ %.0142, %bb.j ], [ %i.bh, %bb.k ]
  %i.bq = icmp eq i8 %i.ad, 0
  %i.br = icmp eq i8 %i.bj, 0                     ; 2 uses
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.br, label %bb.d, label %.thread152

bb.h:                                             ; preds = %bb.f
  br i1 %i.br, label %.thread152, label %bb.d

bb.i:                                             ; preds = %bb.n, %bb.m
  %.0142 = phi i8 [ %.0141, %bb.m ], [ %i.bf, %bb.n ]
  %i.bs = icmp eq i8 %i.ab, 0
  %i.bt = icmp eq i8 %i.bh, 0                     ; 2 uses
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.bt, label %bb.f, label %.thread152

bb.k:                                             ; preds = %bb.i
  br i1 %i.bt, label %.thread152, label %bb.f

bb.l:                                             ; preds = %bb.q, %bb.p
  %.0141 = phi i8 [ %.0140, %bb.p ], [ %i.bd, %bb.q ]
  %i.bu = icmp eq i8 %i.z, 0
  %i.bv = icmp eq i8 %i.bf, 0                     ; 2 uses
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.bv, label %bb.i, label %.thread152

bb.n:                                             ; preds = %bb.l
  br i1 %i.bv, label %.thread152, label %bb.i

bb.o:                                             ; preds = %bb.t, %bb.s
  %.0140 = phi i8 [ %.0139, %bb.s ], [ %i.bb, %bb.t ]
  %i.bw = icmp eq i8 %i.x, 0
  %i.bx = icmp eq i8 %i.bd, 0                     ; 2 uses
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.bx, label %bb.l, label %.thread152

bb.q:                                             ; preds = %bb.o
  br i1 %i.bx, label %.thread152, label %bb.l

bb.r:                                             ; preds = %bb.w, %bb.v
  %.0139 = phi i8 [ %.0138, %bb.v ], [ %i.az, %bb.w ]
  %i.by = icmp eq i8 %i.v, 0
  %i.bz = icmp eq i8 %i.bb, 0                     ; 2 uses
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %i.bz, label %bb.o, label %.thread152

bb.t:                                             ; preds = %bb.r
  br i1 %i.bz, label %.thread152, label %bb.o

bb.u:                                             ; preds = %bb.z, %bb.y
  %.0138 = phi i8 [ %.0137, %bb.y ], [ %i.ax, %bb.z ]
  %i.ca = icmp eq i8 %i.t, 0
  %i.cb = icmp eq i8 %i.az, 0                     ; 2 uses
  br i1 %i.ca, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br i1 %i.cb, label %bb.r, label %.thread152

bb.w:                                             ; preds = %bb.u
  br i1 %i.cb, label %.thread152, label %bb.r

bb.x:                                             ; preds = %bb.ac, %bb.ab
  %.0137 = phi i8 [ %.0136, %bb.ab ], [ %i.av, %bb.ac ]
  %i.cc = icmp eq i8 %i.r, 0
  %i.cd = icmp eq i8 %i.ax, 0                     ; 2 uses
  br i1 %i.cc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  br i1 %i.cd, label %bb.u, label %.thread152

bb.z:                                             ; preds = %bb.x
  br i1 %i.cd, label %.thread152, label %bb.u

bb.aa:                                            ; preds = %bb.af, %bb.ae
  %.0136 = phi i8 [ %.0135, %bb.ae ], [ %i.at, %bb.af ]
  %i.ce = icmp eq i8 %i.p, 0
  %i.cf = icmp eq i8 %i.av, 0                     ; 2 uses
  br i1 %i.ce, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.cf, label %bb.x, label %.thread152

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.cf, label %.thread152, label %bb.x

bb.ad:                                            ; preds = %bb.ai, %bb.ah
  %.0135 = phi i8 [ %.0134151158, %bb.ah ], [ %i.ar, %bb.ai ]
  %i.cg = icmp eq i8 %i.n, 0
  %i.ch = icmp eq i8 %i.at, 0                     ; 2 uses
  br i1 %i.cg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ch, label %bb.aa, label %.thread152

bb.af:                                            ; preds = %bb.ad
  br i1 %i.ch, label %.thread152, label %bb.aa

bb.ag:                                            ; preds = %bb.aj
  br i1 %i.cl, label %.thread152, label %.thread156

.thread156:                                       ; preds = %bb.ak, %bb.ag
  %.0134151158 = phi i8 [ %i.ap, %bb.ag ], [ 1, %bb.ak ]
  %i.ci = icmp eq i8 %i.l, 0
  %i.cj = icmp eq i8 %i.ar, 0                     ; 2 uses
  br i1 %i.ci, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread156
  br i1 %i.cj, label %bb.ad, label %.thread152

bb.ai:                                            ; preds = %.thread156
  br i1 %i.cj, label %.thread152, label %bb.ad

2:                                                ; preds = %bb.an, %bb.am
  switch i8 %i.h, label %4 [
    i8 0, label %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i
    i8 1, label %3
  ]

3:                                                ; preds = %2
  br label %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i

4:                                                ; preds = %2
  br label %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i

l_Lean_Meta_EtaStructMode_ctorIdx.exit.i:         ; preds = %4, %3, %2
  %.0.i12.i = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %2 ]
  switch i8 %i.an, label %6 [
    i8 0, label %l_Lean_Meta_instBEqEtaStructMode_beq.exit
    i8 1, label %5
  ]

5:                                                ; preds = %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i
  br label %l_Lean_Meta_instBEqEtaStructMode_beq.exit

6:                                                ; preds = %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i
  br label %l_Lean_Meta_instBEqEtaStructMode_beq.exit

l_Lean_Meta_instBEqEtaStructMode_beq.exit:        ; preds = %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i, %5, %6
  %.0.i13.i = phi ptr [ inttoptr (i64 5 to ptr), %6 ], [ inttoptr (i64 3 to ptr), %5 ], [ inttoptr (i64 1 to ptr), %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i ]
  %.not = icmp eq ptr %.0.i12.i, %.0.i13.i
  br i1 %.not, label %bb.aj, label %.thread152

bb.aj:                                            ; preds = %l_Lean_Meta_instBEqEtaStructMode_beq.exit
  %i.ck = icmp eq i8 %i.j, 0
  %i.cl = icmp eq i8 %i.ap, 0                     ; 2 uses
  br i1 %i.ck, label %bb.ak, label %bb.ag

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.cl, label %.thread156, label %.thread152

bb.al:                                            ; preds = %bb.aq, %bb.ap
  %i.cm = icmp eq i8 %i.f, 0
  %i.cn = icmp eq i8 %i.al, 0                     ; 2 uses
  br i1 %i.cm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  br i1 %i.cn, label %2, label %.thread152

bb.an:                                            ; preds = %bb.al
  br i1 %i.cn, label %.thread152, label %2

bb.ao:                                            ; preds = %bb.c, %bb.b
  %i.co = icmp eq i8 %i.d, 0
  %i.cp = icmp eq i8 %i.aj, 0                     ; 2 uses
  br i1 %i.co, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.cp, label %bb.al, label %.thread152

bb.aq:                                            ; preds = %bb.ao
  br i1 %i.cp, label %.thread152, label %bb.al

.thread152:                                       ; preds = %l_Lean_Meta_instBEqEtaStructMode_beq.exit, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.w, %bb.v, %bb.t, %bb.s, %bb.q, %bb.p, %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %bb.d, %bb.e, %bb.c, %bb.b, %bb.ak
  %.1 = phi i8 [ 0, %bb.af ], [ %.0144., %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.bl, %bb.d ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 0, %bb.ae ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ak ], [ 0, %bb.ai ], [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %l_Lean_Meta_instBEqEtaStructMode_beq.exit ]
  ret i8 %.1
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Meta_DSimp_instBEqConfig_beq___boxed(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = tail call zeroext i8 @l_Lean_Meta_DSimp_instBEqConfig_beq(ptr noundef %0, ptr noundef %1)
  %i.b = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit6

bb.c:                                             ; preds = %bb.a
  %.not.i5 = icmp eq i32 %i.b, 0
  br i1 %.not.i5, label %lean_dec_ref.exit6, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit6

lean_dec_ref.exit6:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.e = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_dec_ref.exit6
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_dec_ref.exit6
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.h = zext i8 %i.a to i64
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = or disjoint i64 %i.i, 1
  %i.k = inttoptr i64 %i.j to ptr
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 2) i8 @l_instBEqOption_beq___at___00Lean_Meta_Simp_instBEqConfig_beq_spec__0(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i11 = icmp eq i64 %i.b, 0
  br i1 %.not.i11, label %bb.c, label %bb.b

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
  %.0.i12 = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = icmp eq i32 %.0.i12, 0
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = and i64 %i.h, 1
  %.not.i13 = icmp eq i64 %i.i, 0                 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %lean_obj_tag.exit
  br i1 %.not.i13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = lshr i64 %i.h, 1
  %i.k = trunc i64 %i.j to i32
  br label %lean_obj_tag.exit16

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 4
  %.val.i15 = load i32, ptr %i.l, align 4
  %i.m = lshr i32 %.val.i15, 24
  br label %lean_obj_tag.exit16

lean_obj_tag.exit16:                              ; preds = %bb.e, %bb.f
  %.0.i14 = phi i32 [ %i.k, %bb.e ], [ %i.m, %bb.f ]
  %i.n = icmp eq i32 %.0.i14, 0
  br label %lean_nat_eq.exit

bb.g:                                             ; preds = %lean_obj_tag.exit
  br i1 %.not.i13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = lshr i64 %i.h, 1
  %i.p = trunc i64 %i.o to i32
  br label %lean_obj_tag.exit20

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %1, i64 4
  %.val.i19 = load i32, ptr %i.q, align 4
  %i.r = lshr i32 %.val.i19, 24
  br label %lean_obj_tag.exit20

lean_obj_tag.exit20:                              ; preds = %bb.h, %bb.i
  %.0.i18 = phi i32 [ %i.p, %bb.h ], [ %i.r, %bb.i ]
  %i.s = icmp eq i32 %.0.i18, 0
  br i1 %i.s, label %lean_nat_eq.exit, label %bb.j

bb.j:                                             ; preds = %lean_obj_tag.exit20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 3 uses
  %i.x = ptrtoint ptr %i.u to i64
  %.not.i = trunc i64 %i.x to i1
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = trunc i64 %i.y to i1
  %or.cond = select i1 %.not.i, i1 %i.z, i1 false, !prof !16
  br i1 %or.cond, label %bb.k, label %.critedge.i, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp eq ptr %i.u, %i.w
  br label %lean_nat_eq.exit

.critedge.i:                                      ; preds = %bb.j
  %i.ab = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.u, ptr noundef %i.w) #6
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %.critedge.i, %bb.k, %lean_obj_tag.exit20, %lean_obj_tag.exit16
  %.0.shrunk = phi i1 [ %i.n, %lean_obj_tag.exit16 ], [ false, %lean_obj_tag.exit20 ], [ %i.aa, %bb.k ], [ %i.ab, %.critedge.i ]
  %.0 = zext i1 %.0.shrunk to i8
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_instBEqOption_beq___at___00Lean_Meta_Simp_instBEqConfig_beq_spec__0___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i11.i = icmp eq i64 %i.b, 0               ; 2 uses
  br i1 %.not.i11.i, label %bb.c, label %bb.b

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
  %.0.i12.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = icmp eq i32 %.0.i12.i, 0
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = and i64 %i.h, 1
  %.not.i13.i = icmp eq i64 %i.i, 0               ; 3 uses
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %lean_obj_tag.exit.i
  br i1 %.not.i13.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = lshr i64 %i.h, 1
  %i.k = trunc i64 %i.j to i32
  br label %lean_obj_tag.exit16.i

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 4
  %.val.i15.i = load i32, ptr %i.l, align 4
  %i.m = lshr i32 %.val.i15.i, 24
  br label %lean_obj_tag.exit16.i

lean_obj_tag.exit16.i:                            ; preds = %bb.f, %bb.e
  %.0.i14.i = phi i32 [ %i.k, %bb.e ], [ %i.m, %bb.f ]
  %i.n = icmp eq i32 %.0.i14.i, 0
  br label %l_instBEqOption_beq___at___00Lean_Meta_Simp_instBEqConfig_beq_spec__0.exit

bb.g:                                             ; preds = %lean_obj_tag.exit.i
  br i1 %.not.i13.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = lshr i64 %i.h, 1
  %i.p = trunc i64 %i.o to i32
  br label %lean_obj_tag.exit20.i

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %1, i64 4
  %.val.i19.i = load i32, ptr %i.q, align 4
  %i.r = lshr i32 %.val.i19.i, 24
  br label %lean_obj_tag.exit20.i

lean_obj_tag.exit20.i:                            ; preds = %bb.i, %bb.h
  %.0.i18.i = phi i32 [ %i.p, %bb.h ], [ %i.r, %bb.i ]
  %i.s = icmp eq i32 %.0.i18.i, 0
  br i1 %i.s, label %l_instBEqOption_beq___at___00Lean_Meta_Simp_instBEqConfig_beq_spec__0.exit, label %bb.j

bb.j:                                             ; preds = %lean_obj_tag.exit20.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 3 uses
  %i.x = ptrtoint ptr %i.u to i64
  %.not.i.i = trunc i64 %i.x to i1
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = trunc i64 %i.y to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.z, i1 false, !prof !16
  br i1 %or.cond.i, label %bb.k, label %.critedge.i.i, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp eq ptr %i.u, %i.w
  br label %l_instBEqOption_beq___at___00Lean_Meta_Simp_instBEqConfig_beq_spec__0.exit

.critedge.i.i:                                    ; preds = %bb.j
  %i.ab = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.u, ptr noundef %i.w) #6
  br label %l_instBEqOption_beq___at___00Lean_Meta_Simp_instBEqConfig_beq_spec__0.exit

l_instBEqOption_beq___at___00Lean_Meta_Simp_instBEqConfig_beq_spec__0.exit: ; preds = %lean_obj_tag.exit16.i, %lean_obj_tag.exit20.i, %bb.k, %.critedge.i.i
  %.0.shrunk.i = phi i1 [ %i.n, %lean_obj_tag.exit16.i ], [ false, %lean_obj_tag.exit20.i ], [ %i.aa, %bb.k ], [ %i.ab, %.critedge.i.i ]
  br i1 %.not.i13.i, label %bb.l, label %lean_dec.exit6

bb.l:                                             ; preds = %l_instBEqOption_beq___at___00Lean_Meta_Simp_instBEqConfig_beq_spec__0.exit
  %i.ac = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit6

bb.n:                                             ; preds = %bb.l
  %.not.i7 = icmp eq i32 %i.ac, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.o, %bb.n, %bb.m, %l_instBEqOption_beq___at___00Lean_Meta_Simp_instBEqConfig_beq_spec__0.exit
  br i1 %.not.i11.i, label %bb.p, label %lean_dec.exit

bb.p:                                             ; preds = %lean_dec.exit6
  %i.af = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.r:                                             ; preds = %bb.p
  %.not.i8 = icmp eq i32 %i.af, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.s, %bb.r, %bb.q, %lean_dec.exit6
  %i.ai = select i1 %.0.shrunk.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %i.ai
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l_Lean_Meta_Simp_instBEqConfig_beq(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.j = load i8, ptr %i.i, align 2, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i8, ptr %i.m, align 4, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.r = load i8, ptr %i.q, align 2, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i8, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.z = load i8, ptr %i.y, align 2, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.at = load i8, ptr %i.as, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !15 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !15 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.cl = load i8, ptr %i.ck, align 2, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 43
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 46
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.db = load i8, ptr %i.da, align 2, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 51
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.df = load i8, ptr %i.de, align 4, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 55
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.dr = load i8, ptr %i.dq, align 2, !tbaa !13
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !13  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !13  ; 2 uses
  %i.dy = ptrtoint ptr %i.b to i64
  %.not.i = trunc i64 %i.dy to i1
  %i.dz = ptrtoint ptr %i.bn to i64
  %i.ea = trunc i64 %i.dz to i1
  %or.cond = select i1 %.not.i, i1 %i.ea, i1 false, !prof !16
  br i1 %or.cond, label %.split, label %lean_nat_eq.exit, !prof !16

.split:                                           ; preds = %bb.a
  %i.eb = icmp eq ptr %i.b, %i.bn
  br i1 %i.eb, label %bb.b, label %.thread252

lean_nat_eq.exit:                                 ; preds = %bb.a
  %i.ec = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.b, ptr noundef %i.bn) #6
  br i1 %i.ec, label %bb.b, label %.thread252

bb.b:                                             ; preds = %.split, %lean_nat_eq.exit
  %i.ed = ptrtoint ptr %i.d to i64
  %.not.i243 = trunc i64 %i.ed to i1
  %i.ee = ptrtoint ptr %i.bp to i64
  %i.ef = trunc i64 %i.ee to i1
  %or.cond292 = select i1 %.not.i243, i1 %i.ef, i1 false, !prof !16
  br i1 %or.cond292, label %.split293, label %lean_nat_eq.exit246, !prof !16

.split293:                                        ; preds = %bb.b
  %i.eg = icmp eq ptr %i.d, %i.bp
  br i1 %i.eg, label %bb.c, label %.thread252

lean_nat_eq.exit246:                              ; preds = %bb.b
  %i.eh = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.d, ptr noundef %i.bp) #6
  br i1 %i.eh, label %bb.c, label %.thread252

bb.c:                                             ; preds = %.split293, %lean_nat_eq.exit246
  %i.ei = icmp eq i8 %i.f, 0
  %i.ej = icmp eq i8 %i.br, 0                     ; 2 uses
  br i1 %i.ei, label %bb.d, label %bb.cc

bb.d:                                             ; preds = %bb.c
  br i1 %i.ej, label %.thread275, label %.thread252

bb.e:                                             ; preds = %bb.h
  br i1 %i.ep, label %.thread252, label %.thread279

.thread279:                                       ; preds = %bb.i, %bb.e
  %.0233260281 = phi i8 [ %i.dv, %bb.e ], [ 1, %bb.i ]
  %i.ek = icmp eq i8 %i.bl, 0
  br i1 %i.ek, label %bb.f, label %.thread252

bb.f:                                             ; preds = %.thread279
  %i.el = icmp eq i8 %i.dx, 0
  %.0233. = select i1 %i.el, i8 %.0233260281, i8 0
  br label %.thread252

bb.g:                                             ; preds = %bb.l, %bb.k
  %i.em = tail call zeroext i8 @l_instBEqOption_beq___at___00Lean_Meta_Simp_instBEqConfig_beq_spec__0(ptr noundef %i.bh, ptr noundef %i.dt)
  %i.en = icmp eq i8 %i.em, 0
  br i1 %i.en, label %.thread252, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eo = icmp eq i8 %i.bj, 0
  %i.ep = icmp eq i8 %i.dv, 0                     ; 2 uses
  br i1 %i.eo, label %bb.i, label %bb.e

bb.i:                                             ; preds = %bb.h
  br i1 %i.ep, label %.thread279, label %.thread252

bb.j:                                             ; preds = %bb.o, %bb.n
  %i.eq = icmp eq i8 %i.bf, 0
  %i.er = icmp eq i8 %i.dr, 0                     ; 2 uses
  br i1 %i.eq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.er, label %bb.g, label %.thread252

bb.l:                                             ; preds = %bb.j
  br i1 %i.er, label %.thread252, label %bb.g

bb.m:                                             ; preds = %bb.r, %bb.q
  %i.es = icmp eq i8 %i.bd, 0
  %i.et = icmp eq i8 %i.dp, 0                     ; 2 uses
  br i1 %i.es, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.et, label %bb.j, label %.thread252

bb.o:                                             ; preds = %bb.m
  br i1 %i.et, label %.thread252, label %bb.j

bb.p:                                             ; preds = %bb.u, %bb.t
  %i.eu = icmp eq i8 %i.bb, 0
  %i.ev = icmp eq i8 %i.dn, 0                     ; 2 uses
  br i1 %i.eu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.ev, label %bb.m, label %.thread252

bb.r:                                             ; preds = %bb.p
  br i1 %i.ev, label %.thread252, label %bb.m

bb.s:                                             ; preds = %bb.x, %bb.w
  %i.ew = icmp eq i8 %i.az, 0
  %i.ex = icmp eq i8 %i.dl, 0                     ; 2 uses
  br i1 %i.ew, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br i1 %i.ex, label %bb.p, label %.thread252

bb.u:                                             ; preds = %bb.s
  br i1 %i.ex, label %.thread252, label %bb.p

bb.v:                                             ; preds = %bb.aa, %bb.z
  %i.ey = icmp eq i8 %i.ax, 0
  %i.ez = icmp eq i8 %i.dj, 0                     ; 2 uses
  br i1 %i.ey, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %i.ez, label %bb.s, label %.thread252

bb.x:                                             ; preds = %bb.v
  br i1 %i.ez, label %.thread252, label %bb.s

bb.y:                                             ; preds = %bb.ad, %bb.ac
  %i.fa = icmp eq i8 %i.av, 0
  %i.fb = icmp eq i8 %i.dh, 0                     ; 2 uses
  br i1 %i.fa, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  br i1 %i.fb, label %bb.v, label %.thread252

bb.aa:                                            ; preds = %bb.y
  br i1 %i.fb, label %.thread252, label %bb.v

bb.ab:                                            ; preds = %bb.ag, %bb.af
  %i.fc = icmp eq i8 %i.at, 0
  %i.fd = icmp eq i8 %i.df, 0                     ; 2 uses
  br i1 %i.fc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.fd, label %bb.y, label %.thread252

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.fd, label %.thread252, label %bb.y

bb.ae:                                            ; preds = %bb.aj, %bb.ai
  %i.fe = icmp eq i8 %i.ar, 0
  %i.ff = icmp eq i8 %i.dd, 0                     ; 2 uses
  br i1 %i.fe, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ff, label %bb.ab, label %.thread252

bb.ag:                                            ; preds = %bb.ae
  br i1 %i.ff, label %.thread252, label %bb.ab

bb.ah:                                            ; preds = %bb.am, %bb.al
  %i.fg = icmp eq i8 %i.ap, 0
  %i.fh = icmp eq i8 %i.db, 0                     ; 2 uses
  br i1 %i.fg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fh, label %bb.ae, label %.thread252

bb.aj:                                            ; preds = %bb.ah
  br i1 %i.fh, label %.thread252, label %bb.ae

bb.ak:                                            ; preds = %bb.ap, %bb.ao
  %i.fi = icmp eq i8 %i.an, 0
  %i.fj = icmp eq i8 %i.cz, 0                     ; 2 uses
  br i1 %i.fi, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  br i1 %i.fj, label %bb.ah, label %.thread252

bb.am:                                            ; preds = %bb.ak
  br i1 %i.fj, label %.thread252, label %bb.ah

bb.an:                                            ; preds = %bb.as, %bb.ar
  %i.fk = icmp eq i8 %i.al, 0
  %i.fl = icmp eq i8 %i.cx, 0                     ; 2 uses
  br i1 %i.fk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  br i1 %i.fl, label %bb.ak, label %.thread252

bb.ap:                                            ; preds = %bb.an
  br i1 %i.fl, label %.thread252, label %bb.ak

bb.aq:                                            ; preds = %bb.av, %bb.au
  %i.fm = icmp eq i8 %i.aj, 0
  %i.fn = icmp eq i8 %i.cv, 0                     ; 2 uses
  br i1 %i.fm, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.fn, label %bb.an, label %.thread252

bb.as:                                            ; preds = %bb.aq
  br i1 %i.fn, label %.thread252, label %bb.an

bb.at:                                            ; preds = %bb.ay, %bb.ax
  %i.fo = icmp eq i8 %i.ah, 0
  %i.fp = icmp eq i8 %i.ct, 0                     ; 2 uses
  br i1 %i.fo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  br i1 %i.fp, label %bb.aq, label %.thread252

bb.av:                                            ; preds = %bb.at
  br i1 %i.fp, label %.thread252, label %bb.aq

bb.aw:                                            ; preds = %bb.bb, %bb.ba
  %i.fq = icmp eq i8 %i.af, 0
  %i.fr = icmp eq i8 %i.cr, 0                     ; 2 uses
  br i1 %i.fq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.fr, label %bb.at, label %.thread252

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.fr, label %.thread252, label %bb.at

bb.az:                                            ; preds = %bb.be, %bb.bd
  %i.fs = icmp eq i8 %i.ad, 0
  %i.ft = icmp eq i8 %i.cp, 0                     ; 2 uses
  br i1 %i.fs, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ft, label %bb.aw, label %.thread252

bb.bb:                                            ; preds = %bb.az
  br i1 %i.ft, label %.thread252, label %bb.aw

bb.bc:                                            ; preds = %bb.bh, %bb.bg
  %i.fu = icmp eq i8 %i.ab, 0
  %i.fv = icmp eq i8 %i.cn, 0                     ; 2 uses
  br i1 %i.fu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.fv, label %bb.az, label %.thread252

bb.be:                                            ; preds = %bb.bc
  br i1 %i.fv, label %.thread252, label %bb.az

bb.bf:                                            ; preds = %bb.bk, %bb.bj
  %i.fw = icmp eq i8 %i.z, 0
  %i.fx = icmp eq i8 %i.cl, 0                     ; 2 uses
  br i1 %i.fw, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.fx, label %bb.bc, label %.thread252

bb.bh:                                            ; preds = %bb.bf
  br i1 %i.fx, label %.thread252, label %bb.bc

bb.bi:                                            ; preds = %bb.bn, %bb.bm
  %i.fy = icmp eq i8 %i.x, 0
  %i.fz = icmp eq i8 %i.cj, 0                     ; 2 uses
  br i1 %i.fy, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.fz, label %bb.bf, label %.thread252

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.fz, label %.thread252, label %bb.bf

bb.bl:                                            ; preds = %bb.bo
  br i1 %i.gd, label %.thread252, label %.thread282

.thread282:                                       ; preds = %bb.bp, %bb.bl
  %i.ga = icmp eq i8 %i.v, 0
  %i.gb = icmp eq i8 %i.ch, 0                     ; 2 uses
  br i1 %i.ga, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.thread282
  br i1 %i.gb, label %bb.bi, label %.thread252

bb.bn:                                            ; preds = %.thread282
  br i1 %i.gb, label %.thread252, label %bb.bi

2:                                                ; preds = %bb.bs, %bb.br
  switch i8 %i.r, label %4 [
    i8 0, label %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i
    i8 1, label %3
  ]

3:                                                ; preds = %2
  br label %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i

4:                                                ; preds = %2
  br label %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i

l_Lean_Meta_EtaStructMode_ctorIdx.exit.i:         ; preds = %4, %3, %2
  %.0.i12.i = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %2 ]
  switch i8 %i.cd, label %6 [
    i8 0, label %l_Lean_Meta_instBEqEtaStructMode_beq.exit
    i8 1, label %5
  ]

5:                                                ; preds = %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i
  br label %l_Lean_Meta_instBEqEtaStructMode_beq.exit

6:                                                ; preds = %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i
  br label %l_Lean_Meta_instBEqEtaStructMode_beq.exit

l_Lean_Meta_instBEqEtaStructMode_beq.exit:        ; preds = %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i, %5, %6
  %.0.i13.i = phi ptr [ inttoptr (i64 5 to ptr), %6 ], [ inttoptr (i64 3 to ptr), %5 ], [ inttoptr (i64 1 to ptr), %l_Lean_Meta_EtaStructMode_ctorIdx.exit.i ]
  %.not = icmp eq ptr %.0.i12.i, %.0.i13.i
  br i1 %.not, label %bb.bo, label %.thread252

bb.bo:                                            ; preds = %l_Lean_Meta_instBEqEtaStructMode_beq.exit
  %i.gc = icmp eq i8 %i.t, 0
  %i.gd = icmp eq i8 %i.cf, 0                     ; 2 uses
  br i1 %i.gc, label %bb.bp, label %bb.bl

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.gd, label %.thread282, label %.thread252

bb.bq:                                            ; preds = %bb.bv, %bb.bu
  %i.ge = icmp eq i8 %i.p, 0
  %i.gf = icmp eq i8 %i.cb, 0                     ; 2 uses
  br i1 %i.ge, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  br i1 %i.gf, label %2, label %.thread252

bb.bs:                                            ; preds = %bb.bq
  br i1 %i.gf, label %.thread252, label %2

bb.bt:                                            ; preds = %bb.by, %bb.bx
  %i.gg = icmp eq i8 %i.n, 0
  %i.gh = icmp eq i8 %i.bz, 0                     ; 2 uses
  br i1 %i.gg, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.gh, label %bb.bq, label %.thread252

bb.bv:                                            ; preds = %bb.bt
  br i1 %i.gh, label %.thread252, label %bb.bq

bb.bw:                                            ; preds = %bb.cb, %bb.ca
  %i.gi = icmp eq i8 %i.l, 0
  %i.gj = icmp eq i8 %i.bx, 0                     ; 2 uses
  br i1 %i.gi, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.gj, label %bb.bt, label %.thread252

bb.by:                                            ; preds = %bb.bw
  br i1 %i.gj, label %.thread252, label %bb.bt

bb.bz:                                            ; preds = %bb.ce, %bb.cd
  %i.gk = icmp eq i8 %i.j, 0
  %i.gl = icmp eq i8 %i.bv, 0                     ; 2 uses
  br i1 %i.gk, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.gl, label %bb.bw, label %.thread252

bb.cb:                                            ; preds = %bb.bz
  br i1 %i.gl, label %.thread252, label %bb.bw

bb.cc:                                            ; preds = %bb.c
  br i1 %i.ej, label %.thread252, label %.thread275

.thread275:                                       ; preds = %bb.d, %bb.cc
  %i.gm = icmp eq i8 %i.h, 0
  %i.gn = icmp eq i8 %i.bt, 0                     ; 2 uses
  br i1 %i.gm, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.thread275
  br i1 %i.gn, label %bb.bz, label %.thread252

bb.ce:                                            ; preds = %.thread275
  br i1 %i.gn, label %.thread252, label %bb.bz

.thread252:                                       ; preds = %.split293, %.split, %l_Lean_Meta_instBEqEtaStructMode_beq.exit, %bb.g, %lean_nat_eq.exit246, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.by, %bb.bx, %bb.bv, %bb.bu, %bb.bs, %bb.br, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.k, %.thread279, %bb.f, %bb.e, %lean_nat_eq.exit, %bb.i, %bb.bp, %bb.d
  %.3 = phi i8 [ 0, %bb.d ], [ 0, %bb.cb ], [ 0, %bb.bk ], [ 0, %lean_nat_eq.exit ], [ %.0233., %bb.f ], [ 0, %bb.e ], [ 0, %bb.cd ], [ 0, %bb.i ], [ %i.dx, %.thread279 ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.al ], [ 0, %bb.am ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.au ], [ 0, %bb.av ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.ba ], [ 0, %bb.bb ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.bg ], [ 0, %bb.bh ], [ 0, %bb.bj ], [ 0, %bb.bl ], [ 0, %bb.bm ], [ 0, %bb.bp ], [ 0, %bb.bn ], [ 0, %bb.br ], [ 0, %bb.bs ], [ 0, %bb.bu ], [ 0, %bb.bv ], [ 0, %bb.bx ], [ 0, %bb.by ], [ 0, %bb.ca ], [ 0, %bb.cc ], [ 0, %bb.ce ], [ 0, %bb.g ], [ 0, %lean_nat_eq.exit246 ], [ 0, %l_Lean_Meta_instBEqEtaStructMode_beq.exit ], [ 0, %.split ], [ 0, %.split293 ]
  ret i8 %.3
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Meta_Simp_instBEqConfig_beq___boxed(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = tail call zeroext i8 @l_Lean_Meta_Simp_instBEqConfig_beq(ptr noundef %0, ptr noundef %1)
  %i.b = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit6

bb.c:                                             ; preds = %bb.a
  %.not.i5 = icmp eq i32 %i.b, 0
  br i1 %.not.i5, label %lean_dec_ref.exit6, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit6

lean_dec_ref.exit6:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.e = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_dec_ref.exit6
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_dec_ref.exit6
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.h = zext i8 %i.a to i64
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = or disjoint i64 %i.i, 1
  %i.k = inttoptr i64 %i.j to ptr
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @l_Lean_Meta_Occurrences_ctorIdx(ptr noundef %0) local_unnamed_addr #3 {
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
define noundef nonnull ptr @l_Lean_Meta_Occurrences_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #2 {
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
    i32 0, label %l_Lean_Meta_Occurrences_ctorIdx.exit
    i32 1, label %1
  ]

1:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Meta_Occurrences_ctorIdx.exit

2:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Meta_Occurrences_ctorIdx.exit

l_Lean_Meta_Occurrences_ctorIdx.exit:             ; preds = %lean_obj_tag.exit.i, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i ]
  br i1 %.not.i.i, label %3, label %lean_dec.exit

3:                                                ; preds = %l_Lean_Meta_Occurrences_ctorIdx.exit
  %4 = load i32, ptr %0, align 4, !tbaa !10       ; 3 uses
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %3
  %i.g = add nsw i32 %4, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.e:                                             ; preds = %3
  %.not.i3 = icmp eq i32 %4, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %l_Lean_Meta_Occurrences_ctorIdx.exit
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Occurrences_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i11 = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i11, label %bb.c, label %bb.b

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
  %i.g = icmp eq i32 %.0.i, 0
  br i1 %i.g, label %bb.m, label %bb.d

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 5 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.e, label %lean_inc.exit

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i, 0
  br i1 %i.l, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i32 %.val.i.i, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !10
  br label %lean_inc.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  br i1 %.not.i11, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_inc.exit
  %i.o = load i32, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 8, !tbaa !10
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i10 = icmp eq i32 %i.o, 0
  br i1 %.not.i10, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_inc.exit
  %i.r = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef %i.i) #6
  br label %bb.m

bb.m:                                             ; preds = %lean_obj_tag.exit, %lean_dec.exit
  %.0 = phi ptr [ %i.r, %lean_dec.exit ], [ %1, %lean_obj_tag.exit ]
  ret ptr %.0
}

declare ptr @lean_apply_1(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Occurrences_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i11.i = icmp eq i64 %i.b, 0               ; 2 uses
  br i1 %.not.i11.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = icmp eq i32 %.0.i.i, 0
  br i1 %i.g, label %l_Lean_Meta_Occurrences_ctorElim___redArg.exit, label %bb.d

bb.d:                                             ; preds = %lean_obj_tag.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 5 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.e, label %lean_inc.exit.i

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.l, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i32 %.val.i.i.i, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !10
  br label %lean_inc.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  br i1 %.not.i11.i, label %bb.i, label %lean_dec.exit.i

bb.i:                                             ; preds = %lean_inc.exit.i
  %i.o = load i32, ptr %2, align 8, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %2, align 8, !tbaa !10
  br label %lean_dec.exit.i

bb.k:                                             ; preds = %bb.i
  %.not.i10.i = icmp eq i32 %i.o, 0
  br i1 %.not.i10.i, label %lean_dec.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_inc.exit.i
  %i.r = tail call ptr @lean_apply_1(ptr noundef %4, ptr noundef %i.i) #6
  br label %l_Lean_Meta_Occurrences_ctorElim___redArg.exit

l_Lean_Meta_Occurrences_ctorElim___redArg.exit:   ; preds = %lean_obj_tag.exit.i, %lean_dec.exit.i
  %.0.i = phi ptr [ %i.r, %lean_dec.exit.i ], [ %4, %lean_obj_tag.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Occurrences_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i11.i.i = icmp eq i64 %i.b, 0             ; 2 uses
  br i1 %.not.i11.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 4
  %.val.i.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i.i, 24
  br label %lean_obj_tag.exit.i.i

lean_obj_tag.exit.i.i:                            ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.g, label %l_Lean_Meta_Occurrences_ctorElim.exit, label %bb.d

bb.d:                                             ; preds = %lean_obj_tag.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 5 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %bb.e, label %lean_inc.exit.i.i

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.l, label %bb.f, label %bb.g, !prof !11
end_hunk_1
