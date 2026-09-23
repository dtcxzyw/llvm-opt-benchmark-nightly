Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Environment?download=true
inline.NumInlined: 8548
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_init_l_Lean_Kernel_Environment___private__1___closed__19:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_Kernel_Environment___private__1___closed__16, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Kernel_Environment___private__1___closed__16, ptr noundef nonnull @l_Lean_Kernel_Environment___private__1___closed__16_once, ptr noundef nonnull @_init_l_Lean_Kernel_Environment___private__1___closed__16) #13
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.c, %bb.b
  %.0.i2 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = ptrtoint ptr %.0.i2 to i64
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.critedge.i, label %bb.d, !prof !9

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = icmp ugt ptr %.0.i2, inttoptr (i64 1 to ptr)
  br label %lean_nat_lt.exit

.critedge.i:                                      ; preds = %lean_obj_once.exit
  %i.h = tail call zeroext i1 @lean_nat_big_lt(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %.0.i2) #13
  br label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %bb.d, %.critedge.i
  %.0.i = phi i1 [ %i.g, %bb.d ], [ %i.h, %.critedge.i ]
  %i.i = zext i1 %.0.i to i8
  ret i8 %i.i
}

; Function Attrs: nounwind uwtable
define internal zeroext range(i8 0, 2) i8 @_init_l_Lean_Kernel_Environment___private__1___closed__21() #1 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_Kernel_Environment___private__1___closed__16_once seq_cst, align 4, !tbaa !21
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_Kernel_Environment___private__1___closed__16, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Kernel_Environment___private__1___closed__16, ptr noundef nonnull @l_Lean_Kernel_Environment___private__1___closed__16_once, ptr noundef nonnull @_init_l_Lean_Kernel_Environment___private__1___closed__16) #13
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i2 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = ptrtoint ptr %.0.i2 to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge.i, label %lean_nat_le.exit, !prof !9

.critedge.i:                                      ; preds = %lean_obj_once.exit
  %i.g = tail call zeroext i1 @lean_nat_big_le(ptr noundef %.0.i2, ptr noundef %.0.i2) #13
  %i.h = zext i1 %i.g to i8
  br label %lean_nat_le.exit

lean_nat_le.exit:                                 ; preds = %lean_obj_once.exit, %.critedge.i
  %.0.i = phi i8 [ %i.h, %.critedge.i ], [ 1, %lean_obj_once.exit ]
  ret i8 %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_mkEmptyEnvironment___closed__3() #1 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_Kernel_Environment___private__1___closed__22_once seq_cst, align 4, !tbaa !21
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @l_Lean_Kernel_Environment___private__1___closed__22, align 8, !tbaa !13
  br label %lean_usize_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @lean_usize_once_cold(ptr noundef nonnull @l_Lean_Kernel_Environment___private__1___closed__22, ptr noundef nonnull @l_Lean_Kernel_Environment___private__1___closed__22_once, ptr noundef nonnull @_init_l_Lean_Kernel_Environment___private__1___closed__22) #13
  br label %lean_usize_once.exit

lean_usize_once.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %.not32.i = icmp eq i64 %.0.i, 0
  br i1 %.not32.i, label %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Lean_mkEmptyEnvironment_spec__3.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %lean_usize_once.exit, %bb.h
  %.02034.i = phi i64 [ %i.p, %bb.h ], [ 0, %lean_usize_once.exit ] ; 2 uses
  %.02433.i = phi ptr [ %.026.i, %bb.h ], [ @l_Lean_Kernel_Environment___private__1___closed__12_value, %lean_usize_once.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @l_Lean_Kernel_Environment___private__1___closed__12_value, i64 24), i64 %.02034.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.val.i.i.i = load i32, ptr %i.f, align 8, !tbaa !11 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.l, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw i32 %.val.i.i.i, 1
  store i32 %i.m, ptr %i.f, align 8, !tbaa !11
  br label %lean_inc.exit.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = atomicrmw sub ptr %i.f, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.o = tail call ptr @lean_array_push(ptr noundef %.02433.i, ptr noundef nonnull %i.f) #13
  br label %bb.h

bb.h:                                             ; preds = %lean_inc.exit.i, %.lr.ph.i
  %.026.i = phi ptr [ %i.o, %lean_inc.exit.i ], [ %.02433.i, %.lr.ph.i ] ; 2 uses
  %i.p = add nuw i64 %.02034.i, 1                 ; 2 uses
  %.not.i = icmp eq i64 %i.p, %.0.i
  br i1 %.not.i, label %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Lean_mkEmptyEnvironment_spec__3.exit, label %.lr.ph.i

l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Lean_mkEmptyEnvironment_spec__3.exit: ; preds = %bb.h, %lean_usize_once.exit
  %.024.lcssa.i = phi ptr [ @l_Lean_Kernel_Environment___private__1___closed__12_value, %lean_usize_once.exit ], [ %.026.i, %bb.h ]
  ret ptr %.024.lcssa.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_mkEmptyEnvironment___closed__5() #1 {
bb.a:
  %i.a = tail call ptr @lean_mk_io_user_error(ptr noundef nonnull @l_Lean_mkEmptyEnvironment___closed__4_value) #13
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_mkEmptyEnvironment___boxed(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i3 = icmp eq i32 %i.c, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #13
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.f = lshr i64 %i.a, 1
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call ptr @lean_mk_empty_environment(i32 noundef %i.g)
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Range_Basic_0__Std_Legacy_Range_forIn_x27_loop___at___00Lean_mkEmptyEnvironment_spec__2(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Init_Data_Range_Basic_0__Std_Legacy_Range_forIn_x27_loop___at___00Lean_mkEmptyEnvironment_spec__2___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Range_Basic_0__Std_Legacy_Range_forIn_x27_loop___at___00Lean_mkEmptyEnvironment_spec__2___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Init_Data_Range_Basic_0__Std_Legacy_Range_forIn_x27_loop___at___00Lean_mkEmptyEnvironment_spec__2___redArg(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2)
  %i.b = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #13
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_OLeanLevel_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #5 {
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
define noundef nonnull ptr @l_Lean_OLeanLevel_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_OLeanLevel_ctorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_OLeanLevel_ctorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_OLeanLevel_ctorIdx.exit

l_Lean_OLeanLevel_ctorIdx.exit:                   ; preds = %bb.a, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_OLeanLevel_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #5 {
  switch i8 %0, label %3 [
    i8 0, label %l_Lean_OLeanLevel_ctorIdx.exit
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %l_Lean_OLeanLevel_ctorIdx.exit

3:                                                ; preds = %1
  br label %l_Lean_OLeanLevel_ctorIdx.exit

l_Lean_OLeanLevel_ctorIdx.exit:                   ; preds = %1, %2, %3
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_OLeanLevel_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_OLeanLevel_toCtorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_OLeanLevel_toCtorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_OLeanLevel_toCtorIdx.exit

l_Lean_OLeanLevel_toCtorIdx.exit:                 ; preds = %bb.a, %1, %2
  %.0.i.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_OLeanLevel_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !11
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
define noundef ptr @l_Lean_OLeanLevel_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !11
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #13
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_OLeanLevel_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !11 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !11
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
define noundef ptr @l_Lean_OLeanLevel_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !11 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !11
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #13
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #13
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_OLeanLevel_exported_elim___redArg(ptr noundef returned %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !11
end_hunk_0
begin_hunk_1_@l_Lean_OLeanLevel_private_elim___redArg___boxed:bb.a
  store i32 %i.d, ptr %0, align 4, !tbaa !11
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #13
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_OLeanLevel_private_elim(ptr nofree noundef readnone captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !11 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %3, align 4, !tbaa !11
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
define noundef ptr @l_Lean_OLeanLevel_private_elim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !11 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !11
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !11
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #13
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 3) i8 @l_Lean_OLeanLevel_ofNat(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %lean_nat_le.exit, label %lean_nat_le.exit.thread, !prof !9

lean_nat_le.exit:                                 ; preds = %bb.a
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #13
  br i1 %i.c, label %bb.b, label %.critedge.i10

lean_nat_le.exit.thread:                          ; preds = %bb.a
  %.not = icmp ugt ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %lean_nat_le.exit.thread
  %i.d = icmp ule ptr %0, inttoptr (i64 3 to ptr)
  br label %lean_nat_le.exit12

.critedge.i10:                                    ; preds = %lean_nat_le.exit
  %i.e = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 3 to ptr)) #13
  br label %lean_nat_le.exit12

lean_nat_le.exit12:                               ; preds = %.thread, %.critedge.i10
  %.0.i11 = phi i1 [ %i.d, %.thread ], [ %i.e, %.critedge.i10 ]
  %. = select i1 %.0.i11, i8 1, i8 2
  br label %bb.b

bb.b:                                             ; preds = %lean_nat_le.exit.thread, %lean_nat_le.exit, %lean_nat_le.exit12
  %.1 = phi i8 [ %., %lean_nat_le.exit12 ], [ 0, %lean_nat_le.exit ], [ 0, %lean_nat_le.exit.thread ]
  ret i8 %.1
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_OLeanLevel_ofNat___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %lean_nat_le.exit.i, label %lean_nat_le.exit.thread.i, !prof !9

lean_nat_le.exit.i:                               ; preds = %bb.a
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #13
  br i1 %i.c, label %l_Lean_OLeanLevel_ofNat.exit.thread, label %l_Lean_OLeanLevel_ofNat.exit.thread11

lean_nat_le.exit.thread.i:                        ; preds = %bb.a
  %.not.i4 = icmp ugt ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not.i4, label %l_Lean_OLeanLevel_ofNat.exit, label %lean_dec.exit

l_Lean_OLeanLevel_ofNat.exit.thread11:            ; preds = %lean_nat_le.exit.i
  %i.d = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 3 to ptr)) #13
  %i.e = select i1 %i.d, i64 3, i64 5
  br label %l_Lean_OLeanLevel_ofNat.exit.thread

l_Lean_OLeanLevel_ofNat.exit:                     ; preds = %lean_nat_le.exit.thread.i
  %.not = icmp ugt ptr %0, inttoptr (i64 3 to ptr)
  %i.f = select i1 %.not, i64 5, i64 3
  br label %lean_dec.exit

l_Lean_OLeanLevel_ofNat.exit.thread:              ; preds = %lean_nat_le.exit.i, %l_Lean_OLeanLevel_ofNat.exit.thread11
  %.1.i8 = phi i64 [ %i.e, %l_Lean_OLeanLevel_ofNat.exit.thread11 ], [ 1, %lean_nat_le.exit.i ] ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %l_Lean_OLeanLevel_ofNat.exit.thread
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.c:                                             ; preds = %l_Lean_OLeanLevel_ofNat.exit.thread
  %.not.i3 = icmp eq i32 %i.g, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #13
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_nat_le.exit.thread.i, %l_Lean_OLeanLevel_ofNat.exit, %bb.d, %bb.c, %bb.b
  %.1.i7 = phi i64 [ %.1.i8, %bb.d ], [ %.1.i8, %bb.c ], [ %.1.i8, %bb.b ], [ %i.f, %l_Lean_OLeanLevel_ofNat.exit ], [ 1, %lean_nat_le.exit.thread.i ]
  %i.j = inttoptr i64 %.1.i7 to ptr
  ret ptr %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_instDecidableEqOLeanLevel(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  switch i8 %0, label %4 [
    i8 0, label %l_Lean_OLeanLevel_ctorIdx.exit
    i8 1, label %3
  ]

3:                                                ; preds = %2
  br label %l_Lean_OLeanLevel_ctorIdx.exit

4:                                                ; preds = %2
  br label %l_Lean_OLeanLevel_ctorIdx.exit

l_Lean_OLeanLevel_ctorIdx.exit:                   ; preds = %2, %3, %4
  %.0.i12 = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %2 ]
  switch i8 %1, label %6 [
    i8 0, label %lean_dec.exit
    i8 1, label %5
  ]

5:                                                ; preds = %l_Lean_OLeanLevel_ctorIdx.exit
  br label %lean_dec.exit

6:                                                ; preds = %l_Lean_OLeanLevel_ctorIdx.exit
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %6, %5, %l_Lean_OLeanLevel_ctorIdx.exit
  %.0.i13 = phi ptr [ inttoptr (i64 5 to ptr), %6 ], [ inttoptr (i64 3 to ptr), %5 ], [ inttoptr (i64 1 to ptr), %l_Lean_OLeanLevel_ctorIdx.exit ]
  %i.a = icmp eq ptr %.0.i12, %.0.i13
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_instDecidableEqOLeanLevel___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  switch i8 %i.c, label %3 [
    i8 0, label %l_Lean_OLeanLevel_ctorIdx.exit.i
    i8 1, label %2
  ]

2:                                                ; preds = %bb.a
  br label %l_Lean_OLeanLevel_ctorIdx.exit.i

3:                                                ; preds = %bb.a
  br label %l_Lean_OLeanLevel_ctorIdx.exit.i

l_Lean_OLeanLevel_ctorIdx.exit.i:                 ; preds = %3, %2, %bb.a
  %.0.i12.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  switch i8 %i.f, label %5 [
    i8 0, label %l_Lean_instDecidableEqOLeanLevel.exit
    i8 1, label %4
  ]

4:                                                ; preds = %l_Lean_OLeanLevel_ctorIdx.exit.i
  br label %l_Lean_instDecidableEqOLeanLevel.exit

5:                                                ; preds = %l_Lean_OLeanLevel_ctorIdx.exit.i
  br label %l_Lean_instDecidableEqOLeanLevel.exit

l_Lean_instDecidableEqOLeanLevel.exit:            ; preds = %l_Lean_OLeanLevel_ctorIdx.exit.i, %4, %5
  %.0.i13.i = phi ptr [ inttoptr (i64 5 to ptr), %5 ], [ inttoptr (i64 3 to ptr), %4 ], [ inttoptr (i64 1 to ptr), %l_Lean_OLeanLevel_ctorIdx.exit.i ]
  %6 = icmp eq ptr %.0.i12.i, %.0.i13.i
  %7 = select i1 %6, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 3) i8 @l_Lean_instOrdOLeanLevel_ord(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  switch i8 %0, label %4 [
    i8 0, label %l_Lean_OLeanLevel_ctorIdx.exit
    i8 1, label %3
  ]

3:                                                ; preds = %2
  br label %l_Lean_OLeanLevel_ctorIdx.exit

4:                                                ; preds = %2
  br label %l_Lean_OLeanLevel_ctorIdx.exit

l_Lean_OLeanLevel_ctorIdx.exit:                   ; preds = %2, %3, %4
  %.0.i32 = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %2 ] ; 2 uses
  switch i8 %1, label %6 [
    i8 0, label %lean_nat_lt.exit
    i8 1, label %5
  ]

5:                                                ; preds = %l_Lean_OLeanLevel_ctorIdx.exit
  br label %lean_nat_lt.exit

6:                                                ; preds = %l_Lean_OLeanLevel_ctorIdx.exit
  br label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %6, %5, %l_Lean_OLeanLevel_ctorIdx.exit
  %.0.i33 = phi ptr [ inttoptr (i64 5 to ptr), %6 ], [ inttoptr (i64 3 to ptr), %5 ], [ inttoptr (i64 1 to ptr), %l_Lean_OLeanLevel_ctorIdx.exit ] ; 2 uses
  %.not = icmp samesign ult ptr %.0.i32, %.0.i33
  %.not35 = icmp eq ptr %.0.i32, %.0.i33
  %. = select i1 %.not35, i8 1, i8 2
  %.1 = select i1 %.not, i8 0, i8 %.
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_instOrdOLeanLevel_ord___boxed(ptr noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  switch i8 %i.c, label %3 [
    i8 0, label %l_Lean_OLeanLevel_ctorIdx.exit.i
    i8 1, label %2
  ]

2:                                                ; preds = %bb.a
  br label %l_Lean_OLeanLevel_ctorIdx.exit.i

3:                                                ; preds = %bb.a
  br label %l_Lean_OLeanLevel_ctorIdx.exit.i

l_Lean_OLeanLevel_ctorIdx.exit.i:                 ; preds = %3, %2, %bb.a
  %.0.i32.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %bb.a ] ; 2 uses
  switch i8 %i.f, label %5 [
    i8 0, label %l_Lean_instOrdOLeanLevel_ord.exit
    i8 1, label %4
  ]

4:                                                ; preds = %l_Lean_OLeanLevel_ctorIdx.exit.i
  br label %l_Lean_instOrdOLeanLevel_ord.exit

5:                                                ; preds = %l_Lean_OLeanLevel_ctorIdx.exit.i
  br label %l_Lean_instOrdOLeanLevel_ord.exit

l_Lean_instOrdOLeanLevel_ord.exit:                ; preds = %l_Lean_OLeanLevel_ctorIdx.exit.i, %4, %5
  %.0.i33.i = phi ptr [ inttoptr (i64 5 to ptr), %5 ], [ inttoptr (i64 3 to ptr), %4 ], [ inttoptr (i64 1 to ptr), %l_Lean_OLeanLevel_ctorIdx.exit.i ] ; 2 uses
  %.not.i = icmp samesign ult ptr %.0.i32.i, %.0.i33.i
  %.not35.i = icmp eq ptr %.0.i32.i, %.0.i33.i
  %6 = select i1 %.not35.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %7 = select i1 %.not.i, ptr inttoptr (i64 1 to ptr), ptr %6
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_instReprOLeanLevel_repr(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 1
  %.not99 = icmp eq i64 %i.b, 0                   ; 3 uses
  switch i8 %0, label %bb.p [
    i8 0, label %bb.b
    i8 1, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not99, label %lean_nat_le.exit, label %.split, !prof !9

.split:                                           ; preds = %bb.b
  %.not116 = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not116, label %bb.c, label %bb.f

lean_nat_le.exit:                                 ; preds = %bb.b
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #13
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.split, %lean_nat_le.exit
  %i.d = load atomic i32, ptr @l_Lean_instReprConstantKind_repr___closed__16_once seq_cst, align 4, !tbaa !21
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @l_Lean_instReprConstantKind_repr___closed__16, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_instReprConstantKind_repr___closed__16, ptr noundef nonnull @l_Lean_instReprConstantKind_repr___closed__16_once, ptr noundef nonnull @_init_l_Lean_instReprConstantKind_repr___closed__16) #13
  br label %lean_obj_once.exit

bb.f:                                             ; preds = %.split, %lean_nat_le.exit
  %i.h = load atomic i32, ptr @l_Lean_instReprConstantKind_repr___closed__17_once seq_cst, align 4, !tbaa !21
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr @l_Lean_instReprConstantKind_repr___closed__17, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.h:                                             ; preds = %bb.f
  %i.k = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_instReprConstantKind_repr___closed__17, ptr noundef nonnull @l_Lean_instReprConstantKind_repr___closed__17_once, ptr noundef nonnull @_init_l_Lean_instReprConstantKind_repr___closed__17) #13
  br label %lean_obj_once.exit

bb.i:                                             ; preds = %bb.a
  br i1 %.not99, label %lean_nat_le.exit69, label %.split106, !prof !9

.split106:                                        ; preds = %bb.i
  %.not = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not, label %bb.j, label %bb.m

lean_nat_le.exit69:                               ; preds = %bb.i
  %i.l = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #13
  br i1 %i.l, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.split106, %lean_nat_le.exit69
  %i.m = load atomic i32, ptr @l_Lean_instReprConstantKind_repr___closed__16_once seq_cst, align 4, !tbaa !21
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.k, label %bb.l, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.o = load ptr, ptr @l_Lean_instReprConstantKind_repr___closed__16, align 8, !tbaa !16
  br label %lean_obj_once.exit78

bb.l:                                             ; preds = %bb.j
  %i.p = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_instReprConstantKind_repr___closed__16, ptr noundef nonnull @l_Lean_instReprConstantKind_repr___closed__16_once, ptr noundef nonnull @_init_l_Lean_instReprConstantKind_repr___closed__16) #13
  br label %lean_obj_once.exit78

bb.m:                                             ; preds = %.split106, %lean_nat_le.exit69
  %i.q = load atomic i32, ptr @l_Lean_instReprConstantKind_repr___closed__17_once seq_cst, align 4, !tbaa !21
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.n, label %bb.o, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.s = load ptr, ptr @l_Lean_instReprConstantKind_repr___closed__17, align 8, !tbaa !16
  br label %lean_obj_once.exit78

bb.o:                                             ; preds = %bb.m
  %i.t = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_instReprConstantKind_repr___closed__17, ptr noundef nonnull @l_Lean_instReprConstantKind_repr___closed__17_once, ptr noundef nonnull @_init_l_Lean_instReprConstantKind_repr___closed__17) #13
  br label %lean_obj_once.exit78

bb.p:                                             ; preds = %bb.a
  br i1 %.not99, label %lean_nat_le.exit73, label %.split107, !prof !9

.split107:                                        ; preds = %bb.p
  %.not117 = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not117, label %bb.q, label %bb.t

lean_nat_le.exit73:                               ; preds = %bb.p
  %i.u = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #13
  br i1 %i.u, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.split107, %lean_nat_le.exit73
  %i.v = load atomic i32, ptr @l_Lean_instReprConstantKind_repr___closed__16_once seq_cst, align 4, !tbaa !21
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.r, label %bb.s, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.x = load ptr, ptr @l_Lean_instReprConstantKind_repr___closed__16, align 8, !tbaa !16
  br label %lean_obj_once.exit82

bb.s:                                             ; preds = %bb.q
  %i.y = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_instReprConstantKind_repr___closed__16, ptr noundef nonnull @l_Lean_instReprConstantKind_repr___closed__16_once, ptr noundef nonnull @_init_l_Lean_instReprConstantKind_repr___closed__16) #13
  br label %lean_obj_once.exit82

bb.t:                                             ; preds = %.split107, %lean_nat_le.exit73
  %i.z = load atomic i32, ptr @l_Lean_instReprConstantKind_repr___closed__17_once seq_cst, align 4, !tbaa !21
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.u, label %bb.v, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.ab = load ptr, ptr @l_Lean_instReprConstantKind_repr___closed__17, align 8, !tbaa !16
  br label %lean_obj_once.exit82

bb.v:                                             ; preds = %bb.t
  %i.ac = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_instReprConstantKind_repr___closed__17, ptr noundef nonnull @l_Lean_instReprConstantKind_repr___closed__17_once, ptr noundef nonnull @_init_l_Lean_instReprConstantKind_repr___closed__17) #13
  br label %lean_obj_once.exit82

lean_obj_once.exit:                               ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %.057 = phi ptr [ %i.g, %bb.e ], [ %i.f, %bb.d ], [ %i.j, %bb.g ], [ %i.k, %bb.h ] ; 5 uses
  %i.ad = ptrtoint ptr %.057 to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i63 = icmp eq i64 %i.ae, 0
  br i1 %.not.i63, label %bb.w, label %lean_inc.exit64

bb.w:                                             ; preds = %lean_obj_once.exit
  %.val.i.i = load i32, ptr %.057, align 4, !tbaa !11 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i, 0
  br i1 %i.af, label %bb.x, label %bb.y, !prof !14

bb.x:                                             ; preds = %bb.w
  %i.ag = add nuw i32 %.val.i.i, 1
  store i32 %i.ag, ptr %.057, align 4, !tbaa !11
  br label %lean_inc.exit64

bb.y:                                             ; preds = %bb.w
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit64, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ah = atomicrmw sub ptr %.057, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit64

lean_inc.exit64:                                  ; preds = %bb.z, %bb.y, %bb.x, %lean_obj_once.exit
  tail call void @lean_inc_heartbeat() #13
  %i.ai = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #13 ; 6 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.aa, label %lean_alloc_ctor.exit

bb.aa:                                            ; preds = %lean_inc.exit64
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !11
  store i32 67239960, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.057, ptr %i.al, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr @l_Lean_instReprOLeanLevel_repr___closed__1_value, ptr %i.am, align 8, !tbaa !16
  tail call void @lean_inc_heartbeat() #13
  %i.an = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #13 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.ab, label %lean_alloc_ctor.exit85

bb.ab:                                            ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_obj_once.exit78:                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.058 = phi ptr [ %i.p, %bb.l ], [ %i.o, %bb.k ], [ %i.s, %bb.n ], [ %i.t, %bb.o ] ; 5 uses
  %i.ap = ptrtoint ptr %.058 to i64
  %i.aq = and i64 %i.ap, 1
  %.not.i61 = icmp eq i64 %i.aq, 0
  br i1 %.not.i61, label %bb.ac, label %lean_inc.exit62

bb.ac:                                            ; preds = %lean_obj_once.exit78
  %.val.i.i86 = load i32, ptr %.058, align 4, !tbaa !11 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i86, 0
  br i1 %i.ar, label %bb.ad, label %bb.ae, !prof !14

bb.ad:                                            ; preds = %bb.ac
  %i.as = add nuw i32 %.val.i.i86, 1
  store i32 %i.as, ptr %.058, align 4, !tbaa !11
  br label %lean_inc.exit62

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i87 = icmp eq i32 %.val.i.i86, 0
  br i1 %.not.i.i87, label %lean_inc.exit62, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.at = atomicrmw sub ptr %.058, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit62
end_hunk_1
begin_hunk_2_@l___private_Lean_Environment_0__Lean_ImportedModule_publicModule_x3f:bb.a

bb.bd:                                            ; preds = %bb.bc
  %i.bz = add nsw i32 %i.bx, -1
  store i32 %i.bz, ptr %i.bh, align 8, !tbaa !11
  br label %lean_dec.exit

bb.be:                                            ; preds = %bb.bc
  %.not.i63 = icmp eq i32 %i.bx, 0
  br i1 %.not.i63, label %lean_dec.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bh) #13
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.bf, %bb.be, %bb.bd, %lean_inc.exit
  tail call void @lean_inc_heartbeat() #13
  %i.ca = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #13 ; 5 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.bg, label %lean_alloc_ctor.exit89

bb.bg:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit89:                           ; preds = %lean_dec.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 1, ptr %i.ca, align 4, !tbaa !11
  store i32 16842768, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.br, ptr %i.cd, align 8, !tbaa !16
  br label %lean_dec_ref.exit68

lean_dec_ref.exit68:                              ; preds = %bb.ap, %bb.ao, %bb.an, %lean_obj_tag.exit, %lean_alloc_ctor.exit89, %bb.ac, %lean_alloc_ctor.exit
  %.3 = phi ptr [ %i.aq, %lean_alloc_ctor.exit ], [ %i.ca, %lean_alloc_ctor.exit89 ], [ %.048, %bb.ac ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit ], [ inttoptr (i64 1 to ptr), %bb.an ], [ inttoptr (i64 1 to ptr), %bb.ao ], [ inttoptr (i64 1 to ptr), %bb.ap ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Environment_0__Lean_ImportedModule_getData_x3f(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.a = icmp sgt i32 %.val.i.i, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i32 %.val.i.i, 1
  store i32 %i.b, ptr %0, align 4, !tbaa !11
  br label %lean_inc_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %i.d = tail call ptr @l___private_Lean_Environment_0__Lean_ImportedModule_publicModule_x3f(ptr noundef nonnull %0) ; 10 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i62 = icmp eq i64 %i.f, 0
  br i1 %.not.i62, label %bb.f, label %bb.e

bb.e:                                             ; preds = %lean_inc_ref.exit
  %i.g = lshr i64 %i.e, 1
  %i.h = trunc i64 %i.g to i32
  br label %lean_obj_tag.exit

bb.f:                                             ; preds = %lean_inc_ref.exit
  %i.i = getelementptr i8, ptr %i.d, i64 4
  %.val.i = load i32, ptr %i.i, align 4
  %i.j = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.e, %bb.f
  %.0.i63 = phi i32 [ %i.h, %bb.e ], [ %i.j, %bb.f ]
  %i.k = icmp eq i32 %.0.i63, 0
  br i1 %i.k, label %bb.g, label %bb.k

bb.g:                                             ; preds = %lean_obj_tag.exit
  %i.l = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit60

bb.i:                                             ; preds = %bb.g
  %.not.i59 = icmp eq i32 %i.l, 0
  br i1 %.not.i59, label %lean_dec_ref.exit60, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #13
  br label %lean_dec_ref.exit60

bb.k:                                             ; preds = %lean_obj_tag.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 8 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 1
  %.not.i37 = icmp eq i64 %i.r, 0                 ; 2 uses
  br i1 %.not.i37, label %bb.l, label %lean_inc.exit38

bb.l:                                             ; preds = %bb.k
  %.val.i.i64 = load i32, ptr %i.p, align 4, !tbaa !11 ; 3 uses
  %i.s = icmp sgt i32 %.val.i.i64, 0
  br i1 %i.s, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.t = add nuw i32 %.val.i.i64, 1
  store i32 %i.t, ptr %i.p, align 4, !tbaa !11
  br label %lean_inc.exit38

bb.n:                                             ; preds = %bb.l
  %.not.i.i65 = icmp eq i32 %.val.i.i64, 0
  br i1 %.not.i.i65, label %lean_inc.exit38, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = atomicrmw sub ptr %i.p, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit38

lean_inc.exit38:                                  ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.val.i67 = load i32, ptr %i.d, align 8, !tbaa !11 ; 4 uses
  %i.v = icmp eq i32 %.val.i67, 1
  br i1 %i.v, label %.preheader.i.preheader, label %bb.t

.preheader.i.preheader:                           ; preds = %lean_inc.exit38
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !16   ; 4 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 1
  %.not.i.i68 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i68, label %bb.p, label %lean_dec.exit.i

bb.p:                                             ; preds = %.preheader.i.preheader
  %i.z = load i32, ptr %i.w, align 4, !tbaa !11   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.q, label %bb.r, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.r:                                             ; preds = %bb.p
  %.not.i7.i = icmp eq i32 %i.z, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #13
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.s, %bb.r, %bb.q, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.d) #13
  br label %lean_dec_ref_known.exit

bb.t:                                             ; preds = %lean_inc.exit38
  %i.ac = icmp sgt i32 %.val.i67, 1
  br i1 %i.ac, label %bb.u, label %bb.v, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.ad = add nsw i32 %.val.i67, -1
  store i32 %i.ad, ptr %i.d, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.v:                                             ; preds = %bb.t
  %.not.i8.i = icmp eq i32 %.val.i67, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #13
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.u, %bb.v, %bb.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  br i1 %.not.i37, label %bb.x, label %lean_dec.exit45

bb.x:                                             ; preds = %lean_dec_ref_known.exit
  %i.ag = load i32, ptr %i.p, align 4, !tbaa !11  ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.y, label %bb.z, !prof !14

bb.y:                                             ; preds = %bb.x
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %i.p, align 4, !tbaa !11
  br label %lean_dec.exit45

bb.z:                                             ; preds = %bb.x
  %.not.i46 = icmp eq i32 %i.ag, 0
  br i1 %.not.i46, label %lean_dec.exit45, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #13
  br label %lean_dec.exit45

lean_dec.exit45:                                  ; preds = %bb.aa, %bb.z, %bb.y, %lean_dec_ref_known.exit
  %i.aj = icmp eq i8 %i.af, 0
  %. = select i1 %i.aj, i8 0, i8 %1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16 ; 11 uses
  %.val.i.i69 = load i32, ptr %i.al, align 4, !tbaa !11 ; 3 uses
  %i.am = icmp sgt i32 %.val.i.i69, 0
  br i1 %i.am, label %bb.ab, label %bb.ac, !prof !14

bb.ab:                                            ; preds = %lean_dec.exit45
  %i.an = add nuw i32 %.val.i.i69, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !11
  br label %lean_inc_ref.exit71

bb.ac:                                            ; preds = %lean_dec.exit45
  %.not.i.i70 = icmp eq i32 %.val.i.i69, 0
  br i1 %.not.i.i70, label %lean_inc_ref.exit71, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ao = atomicrmw sub ptr %i.al, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit71

lean_inc_ref.exit71:                              ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.ap = load i32, ptr %0, align 8, !tbaa !11    ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.ae, label %bb.af, !prof !14

bb.ae:                                            ; preds = %lean_inc_ref.exit71
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %0, align 8, !tbaa !11
  br label %lean_dec_ref.exit58

bb.af:                                            ; preds = %lean_inc_ref.exit71
  %.not.i57 = icmp eq i32 %i.ap, 0
  br i1 %.not.i57, label %lean_dec_ref.exit58, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #13
  br label %lean_dec_ref.exit58

lean_dec_ref.exit58:                              ; preds = %bb.ae, %bb.af, %bb.ag
  switch i8 %., label %3 [
    i8 0, label %lean_nat_lt.exit
    i8 1, label %2
  ]

2:                                                ; preds = %lean_dec_ref.exit58
  br label %lean_nat_lt.exit

3:                                                ; preds = %lean_dec_ref.exit58
  br label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %3, %2, %lean_dec_ref.exit58
  %.0.i72 = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %lean_dec_ref.exit58 ] ; 2 uses
  %i.as = getelementptr i8, ptr %i.al, i64 8
  %.val = load i64, ptr %i.as, align 8, !tbaa !13
  %i.at = shl i64 %.val, 1
  %i.au = or disjoint i64 %i.at, 1
  %i.av = inttoptr i64 %i.au to ptr
  %.not = icmp ult ptr %.0.i72, %i.av
  br i1 %.not, label %bb.ak, label %lean_dec.exit43

lean_dec.exit43:                                  ; preds = %lean_nat_lt.exit
  %i.aw = load i32, ptr %i.al, align 8, !tbaa !11 ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.ah, label %bb.ai, !prof !14

bb.ah:                                            ; preds = %lean_dec.exit43
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %i.al, align 8, !tbaa !11
  br label %lean_dec_ref.exit60

bb.ai:                                            ; preds = %lean_dec.exit43
  %.not.i55 = icmp eq i32 %i.aw, 0
  br i1 %.not.i55, label %lean_dec_ref.exit60, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.al) #13
  br label %lean_dec_ref.exit60

bb.ak:                                            ; preds = %lean_nat_lt.exit
  %i.az = ptrtoint ptr %.0.i72 to i64
  %i.ba = lshr i64 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16 ; 8 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = and i64 %i.be, 1
  %.not.i.i.i = icmp eq i64 %i.bf, 0              ; 2 uses
  br i1 %.not.i.i.i, label %bb.al, label %lean_dec.exit41

bb.al:                                            ; preds = %bb.ak
  %.val.i.i.i.i = load i32, ptr %i.bd, align 4, !tbaa !11 ; 3 uses
  %i.bg = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.bg, label %bb.am, label %bb.an, !prof !14

bb.am:                                            ; preds = %bb.al
  %i.bh = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !11
  br label %lean_dec.exit41

bb.an:                                            ; preds = %bb.al
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %lean_dec.exit41, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bi = atomicrmw sub ptr %i.bd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_dec.exit41

lean_dec.exit41:                                  ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  %i.bj = load i32, ptr %i.al, align 8, !tbaa !11 ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.ap, label %bb.aq, !prof !14

bb.ap:                                            ; preds = %lean_dec.exit41
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %i.al, align 8, !tbaa !11
  br label %lean_dec_ref.exit54

bb.aq:                                            ; preds = %lean_dec.exit41
  %.not.i53 = icmp eq i32 %i.bj, 0
  br i1 %.not.i53, label %lean_dec_ref.exit54, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.al) #13
  br label %lean_dec_ref.exit54

lean_dec_ref.exit54:                              ; preds = %bb.ap, %bb.aq, %bb.ar
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !16 ; 5 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = and i64 %i.bo, 1
  %.not.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i, label %bb.as, label %lean_inc.exit

bb.as:                                            ; preds = %lean_dec_ref.exit54
  %.val.i.i73 = load i32, ptr %i.bn, align 4, !tbaa !11 ; 3 uses
  %i.bq = icmp sgt i32 %.val.i.i73, 0
  br i1 %i.bq, label %bb.at, label %bb.au, !prof !14

bb.at:                                            ; preds = %bb.as
  %i.br = add nuw i32 %.val.i.i73, 1
  store i32 %i.br, ptr %i.bn, align 4, !tbaa !11
  br label %lean_inc.exit

bb.au:                                            ; preds = %bb.as
  %.not.i.i74 = icmp eq i32 %.val.i.i73, 0
  br i1 %.not.i.i74, label %lean_inc.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bs = atomicrmw sub ptr %i.bn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.av, %bb.au, %bb.at, %lean_dec_ref.exit54
  br i1 %.not.i.i.i, label %bb.aw, label %lean_dec.exit

bb.aw:                                            ; preds = %lean_inc.exit
  %i.bt = load i32, ptr %i.bd, align 8, !tbaa !11 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.ax, label %bb.ay, !prof !14

bb.ax:                                            ; preds = %bb.aw
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.bd, align 8, !tbaa !11
  br label %lean_dec.exit

bb.ay:                                            ; preds = %bb.aw
  %.not.i51 = icmp eq i32 %i.bt, 0
  br i1 %.not.i51, label %lean_dec.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bd) #13
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.az, %bb.ay, %bb.ax, %lean_inc.exit
  tail call void @lean_inc_heartbeat() #13
  %i.bw = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #13 ; 5 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ba, label %lean_alloc_ctor.exit

bb.ba:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 1, ptr %i.bw, align 4, !tbaa !11
  store i32 16842768, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bn, ptr %i.bz, align 8, !tbaa !16
  br label %lean_dec_ref.exit60

lean_dec_ref.exit60:                              ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.j, %bb.i, %bb.h, %lean_alloc_ctor.exit
  %.1 = phi ptr [ %i.bw, %lean_alloc_ctor.exit ], [ %i.d, %bb.j ], [ %i.d, %bb.h ], [ %i.d, %bb.i ], [ inttoptr (i64 1 to ptr), %bb.ah ], [ inttoptr (i64 1 to ptr), %bb.ai ], [ inttoptr (i64 1 to ptr), %bb.aj ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Environment_0__Lean_ImportedModule_getData_x3f___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l___private_Lean_Environment_0__Lean_ImportedModule_getData_x3f(ptr noundef %0, i8 noundef zeroext %i.c)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Environment_0__Lean_ImportedModule_mainModule_x3f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 11 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 1
  %.not.i42 = icmp eq i64 %i.i, 0                 ; 3 uses
  br i1 %.not.i42, label %bb.c, label %lean_inc.exit43

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.g, align 4, !tbaa !11 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i32 %.val.i.i, 1
  store i32 %i.k, ptr %i.g, align 4, !tbaa !11
  br label %lean_inc.exit43

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = atomicrmw sub ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit43

lean_inc.exit43:                                  ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.m = load i32, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %lean_inc.exit43
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %0, align 8, !tbaa !11
  br label %lean_dec_ref.exit51

bb.h:                                             ; preds = %lean_inc.exit43
  %.not.i50 = icmp eq i32 %i.m, 0
  br i1 %.not.i50, label %lean_dec_ref.exit51, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #13
  br label %lean_dec_ref.exit51

lean_dec_ref.exit51:                              ; preds = %bb.g, %bb.h, %bb.i
  br i1 %.not.i42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %lean_dec_ref.exit51
  %i.p = lshr i64 %i.h, 1
  %i.q = trunc i64 %i.p to i32
  br label %lean_obj_tag.exit

bb.k:                                             ; preds = %lean_dec_ref.exit51
  %i.r = getelementptr i8, ptr %i.g, i64 4
  %.val.i = load i32, ptr %i.r, align 4
  %i.s = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ %i.q, %bb.j ], [ %i.s, %bb.k ]
  %i.t = icmp eq i32 %.0.i, 0
  br i1 %i.t, label %bb.ai, label %bb.l

bb.l:                                             ; preds = %lean_obj_tag.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16   ; 8 uses
  %.val = load i32, ptr %i.g, align 8, !tbaa !11
  %i.w = icmp eq i32 %.val, 1                     ; 2 uses
  br i1 %i.w, label %lean_dec.exit46, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = and i64 %i.x, 1
  %.not.i40 = icmp eq i64 %i.y, 0
  br i1 %.not.i40, label %bb.n, label %lean_inc.exit41

bb.n:                                             ; preds = %bb.m
  %.val.i.i53 = load i32, ptr %i.v, align 4, !tbaa !11 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i53, 0
  br i1 %i.z, label %bb.o, label %bb.p, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.aa = add nuw i32 %.val.i.i53, 1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !11
  br label %lean_inc.exit41

bb.p:                                             ; preds = %bb.n
  %.not.i.i54 = icmp eq i32 %.val.i.i53, 0
  br i1 %.not.i.i54, label %lean_inc.exit41, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit41

lean_inc.exit41:                                  ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  br i1 %.not.i42, label %bb.r, label %lean_dec.exit46

bb.r:                                             ; preds = %lean_inc.exit41
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !11  ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.s, label %bb.t, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %i.g, align 8, !tbaa !11
  br label %lean_dec.exit46

bb.t:                                             ; preds = %bb.r
  %.not.i47 = icmp eq i32 %i.ac, 0
  br i1 %.not.i47, label %lean_dec.exit46, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.g) #13
  br label %lean_dec.exit46

lean_dec.exit46:                                  ; preds = %lean_inc.exit41, %bb.s, %bb.t, %bb.u, %bb.l
  %.039 = phi ptr [ %i.g, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.u ], [ inttoptr (i64 1 to ptr), %bb.t ], [ inttoptr (i64 1 to ptr), %bb.s ], [ inttoptr (i64 1 to ptr), %lean_inc.exit41 ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 6 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %bb.v, label %lean_inc.exit

bb.v:                                             ; preds = %lean_dec.exit46
  %.val.i.i56 = load i32, ptr %i.ag, align 4, !tbaa !11 ; 3 uses
  %i.aj = icmp sgt i32 %.val.i.i56, 0
  br i1 %i.aj, label %bb.w, label %bb.x, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.ak = add nuw i32 %.val.i.i56, 1
  store i32 %i.ak, ptr %i.ag, align 4, !tbaa !11
  br label %lean_inc.exit

bb.x:                                             ; preds = %bb.v
  %.not.i.i57 = icmp eq i32 %.val.i.i56, 0
  br i1 %.not.i.i57, label %lean_inc.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.al = atomicrmw sub ptr %i.ag, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %lean_dec.exit46, %bb.w, %bb.x, %bb.y
  %i.am = load i32, ptr %i.v, align 8, !tbaa !11  ; 3 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %bb.z, label %bb.aa, !prof !14

bb.z:                                             ; preds = %lean_inc.exit
  %i.ao = add nsw i32 %i.am, -1
  store i32 %i.ao, ptr %i.v, align 8, !tbaa !11
  br label %lean_dec.exit

bb.aa:                                            ; preds = %lean_inc.exit
  %.not.i48 = icmp eq i32 %i.am, 0
  br i1 %.not.i48, label %lean_dec.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #13
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ab, %bb.aa, %bb.z
  br i1 %i.w, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lean_dec.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.039, i64 8
  store ptr %i.ag, ptr %i.ap, align 8, !tbaa !16
  br label %bb.ai

bb.ad:                                            ; preds = %lean_dec.exit
  tail call void @lean_inc_heartbeat() #13
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #13 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !11
  store i32 16842768, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ag, ptr %i.at, align 8, !tbaa !16
  br label %bb.ai

bb.af:                                            ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.az = tail call ptr @l___private_Lean_Environment_0__Lean_ImportedModule_getData_x3f(ptr noundef nonnull %0, i8 noundef zeroext 0)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ba = tail call ptr @l___private_Lean_Environment_0__Lean_ImportedModule_getData_x3f(ptr noundef nonnull %0, i8 noundef zeroext 2)
  br label %bb.ai

bb.ai:                                            ; preds = %lean_obj_tag.exit, %bb.ag, %bb.ah, %bb.ac, %lean_alloc_ctor.exit
  %.3 = phi ptr [ %i.aq, %lean_alloc_ctor.exit ], [ %i.ba, %bb.ah ], [ %.039, %bb.ac ], [ %i.az, %bb.ag ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Environment_0__Lean_ImportedModule_serverData_x3f(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Environment_0__Lean_ImportedModule_getData_x3f(ptr noundef %0, i8 noundef zeroext %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Environment_0__Lean_ImportedModule_serverData_x3f___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l___private_Lean_Environment_0__Lean_ImportedModule_getData_x3f(ptr noundef %0, i8 noundef zeroext %i.c)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Environment_0__Lean_ImportedModule_interpData_x3f(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %cond = icmp eq i8 %1, 0
  br i1 %cond, label %bb.b, label %l_Lean_instOrdOLeanLevel_ord.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17
  %i.e = tail call zeroext i8 @l_Lean_instBEqIRPhases_beq(i8 noundef zeroext %i.d, i8 noundef zeroext 0) #13
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %l_Lean_instOrdOLeanLevel_ord.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @l___private_Lean_Environment_0__Lean_ImportedModule_mainModule_x3f(ptr noundef nonnull %0)
  br label %lean_dec_ref.exit75

l_Lean_instOrdOLeanLevel_ord.exit.thread:         ; preds = %bb.a, %bb.b
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.h = icmp sgt i32 %.val.i.i, 0
  br i1 %i.h, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %l_Lean_instOrdOLeanLevel_ord.exit.thread
  %i.i = add nuw i32 %.val.i.i, 1
  store i32 %i.i, ptr %0, align 4, !tbaa !11
  br label %lean_inc_ref.exit

bb.e:                                             ; preds = %l_Lean_instOrdOLeanLevel_ord.exit.thread
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.d, %bb.e, %bb.f
  %i.k = tail call ptr @l___private_Lean_Environment_0__Lean_ImportedModule_mainModule_x3f(ptr noundef nonnull %0) ; 13 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = and i64 %i.l, 1
  %.not.i77 = icmp eq i64 %i.m, 0
  br i1 %.not.i77, label %bb.h, label %bb.g

bb.g:                                             ; preds = %lean_inc_ref.exit
  %i.n = lshr i64 %i.l, 1
  %i.o = trunc i64 %i.n to i32
  br label %lean_obj_tag.exit

bb.h:                                             ; preds = %lean_inc_ref.exit
  %i.p = getelementptr i8, ptr %i.k, i64 4
  %.val.i = load i32, ptr %i.p, align 4
  %i.q = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.o, %bb.g ], [ %i.q, %bb.h ]
  %i.r = icmp eq i32 %.0.i, 0
  br i1 %i.r, label %bb.i, label %bb.m

bb.i:                                             ; preds = %lean_obj_tag.exit
  %i.s = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.j, label %bb.k, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit75

bb.k:                                             ; preds = %bb.i
  %.not.i74 = icmp eq i32 %i.s, 0
  br i1 %.not.i74, label %lean_dec_ref.exit75, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #13
  br label %lean_dec_ref.exit75

bb.m:                                             ; preds = %lean_obj_tag.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16   ; 10 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 1
  %.not.i58 = icmp eq i64 %i.y, 0
  br i1 %.not.i58, label %bb.n, label %lean_inc.exit59

bb.n:                                             ; preds = %bb.m
  %.val.i.i78 = load i32, ptr %i.w, align 4, !tbaa !11 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i78, 0
  br i1 %i.z, label %bb.o, label %bb.p, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.aa = add nuw i32 %.val.i.i78, 1              ; 2 uses
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !11
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %.not.i.i79 = icmp eq i32 %.val.i.i78, 0
  br i1 %.not.i.i79, label %.thread103, label %bb.q

.thread103:                                       ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !17
  br label %lean_dec.exit64

bb.q:                                             ; preds = %bb.p
  %i.ad = atomicrmw sub ptr %i.w, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %i.w, align 4, !tbaa !11
  br label %bb.r

lean_inc.exit59:                                  ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  br label %lean_dec.exit64

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.ag = phi i32 [ %.pr, %bb.q ], [ %i.aa, %bb.o ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !17  ; 3 uses
  %i.aj = icmp sgt i32 %i.ag, 1
  br i1 %i.aj, label %bb.s, label %bb.t, !prof !19

bb.s:                                             ; preds = %bb.r
  %i.ak = add nsw i32 %i.ag, -1
  store i32 %i.ak, ptr %i.w, align 4, !tbaa !11
  br label %lean_dec.exit64

bb.t:                                             ; preds = %bb.r
  %.not.i65 = icmp eq i32 %i.ag, 0
  br i1 %.not.i65, label %lean_dec.exit64, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #13
  br label %lean_dec.exit64

lean_dec.exit64:                                  ; preds = %bb.u, %bb.t, %bb.s, %.thread103, %lean_inc.exit59
  %i.al = phi i8 [ %i.af, %lean_inc.exit59 ], [ %i.ai, %bb.s ], [ %i.ai, %bb.t ], [ %i.ai, %bb.u ], [ %i.ac, %.thread103 ]
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.v, label %bb.z

bb.v:                                             ; preds = %lean_dec.exit64
  %i.an = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.w, label %bb.x, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit75

bb.x:                                             ; preds = %bb.v
  %.not.i72 = icmp eq i32 %i.an, 0
  br i1 %.not.i72, label %lean_dec_ref.exit75, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #13
  br label %lean_dec_ref.exit75

bb.z:                                             ; preds = %lean_dec.exit64
  %.val.i81 = load i32, ptr %i.k, align 8, !tbaa !11 ; 4 uses
  %i.aq = icmp eq i32 %.val.i81, 1
  br i1 %i.aq, label %.preheader.i.preheader, label %bb.ae

.preheader.i.preheader:                           ; preds = %bb.z
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !16  ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, 1
  %.not.i.i82 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i82, label %bb.aa, label %lean_dec.exit.i

bb.aa:                                            ; preds = %.preheader.i.preheader
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !11 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.ab, label %bb.ac, !prof !14

bb.ab:                                            ; preds = %bb.aa
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.ac:                                            ; preds = %bb.aa
  %.not.i7.i = icmp eq i32 %i.au, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ar) #13
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.ad, %bb.ac, %bb.ab, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.k) #13
  br label %lean_dec_ref_known.exit

bb.ae:                                            ; preds = %bb.z
  %i.ax = icmp sgt i32 %.val.i81, 1
  br i1 %i.ax, label %bb.af, label %bb.ag, !prof !14

bb.af:                                            ; preds = %bb.ae
  %i.ay = add nsw i32 %.val.i81, -1
  store i32 %i.ay, ptr %i.k, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.ag:                                            ; preds = %bb.ae
  %.not.i8.i = icmp eq i32 %.val.i81, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #13
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.af, %bb.ag, %bb.ah
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !16 ; 11 uses
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bc = and i64 %i.bb, 1
  %.not.i56 = icmp eq i64 %i.bc, 0                ; 3 uses
  br i1 %.not.i56, label %bb.ai, label %lean_inc.exit57

bb.ai:                                            ; preds = %lean_dec_ref_known.exit
  %.val.i.i83 = load i32, ptr %i.ba, align 4, !tbaa !11 ; 3 uses
  %i.bd = icmp sgt i32 %.val.i.i83, 0
end_hunk_2
begin_hunk_3_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Environment_0__Lean_importModulesCore_go_spec__0___lam__0:bb.a
  br label %lean_inc.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.val.i36 = load i32, ptr %i.a, align 8, !tbaa !11 ; 4 uses
  %i.o = icmp eq i32 %.val.i36, 1
  br i1 %i.o, label %.preheader.i.preheader, label %bb.k

.preheader.i.preheader:                           ; preds = %lean_inc.exit
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 1
  %.not.i.i37 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i37, label %bb.g, label %lean_dec.exit.i

bb.g:                                             ; preds = %.preheader.i.preheader
  %i.s = load i32, ptr %i.p, align 4, !tbaa !11   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.p, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i7.i = icmp eq i32 %i.s, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #13
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.j, %bb.i, %bb.h, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.a) #13
  br label %lean_dec_ref_known.exit

bb.k:                                             ; preds = %lean_inc.exit
  %i.v = icmp sgt i32 %.val.i36, 1
  br i1 %i.v, label %bb.l, label %bb.m, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.w = add nsw i32 %.val.i36, -1
  store i32 %i.w, ptr %i.a, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %bb.k
  %.not.i8.i = icmp eq i32 %.val.i36, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #13
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.l, %bb.m, %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16   ; 7 uses
  %.val.i.i38 = load i32, ptr %i.y, align 4, !tbaa !11 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i38, 0
  br i1 %i.z, label %bb.o, label %bb.p, !prof !14

bb.o:                                             ; preds = %lean_dec_ref_known.exit
  %i.aa = add nuw i32 %.val.i.i38, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !11
  br label %lean_inc_ref.exit40

bb.p:                                             ; preds = %lean_dec_ref_known.exit
  %.not.i.i39 = icmp eq i32 %.val.i.i38, 0
  br i1 %.not.i.i39, label %lean_inc_ref.exit40, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = atomicrmw sub ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit40

lean_inc_ref.exit40:                              ; preds = %bb.o, %bb.p, %bb.q
  br i1 %.not.i, label %bb.r, label %lean_dec.exit27

bb.r:                                             ; preds = %lean_inc_ref.exit40
  %i.ac = load i32, ptr %i.i, align 8, !tbaa !11  ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.s, label %bb.t, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %i.i, align 8, !tbaa !11
  br label %lean_dec.exit27

bb.t:                                             ; preds = %bb.r
  %.not.i28 = icmp eq i32 %i.ac, 0
  br i1 %.not.i28, label %lean_dec.exit27, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #13
  br label %lean_dec.exit27

lean_dec.exit27:                                  ; preds = %bb.u, %bb.t, %bb.s, %lean_inc_ref.exit40
  %i.af = tail call ptr @l___private_Lean_Environment_0__Lean_importModulesCore_go(i8 noundef zeroext %0, ptr noundef %1, ptr noundef nonnull %i.y, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %8) ; 3 uses
  %i.ag = load i32, ptr %i.y, align 4, !tbaa !11  ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.v, label %bb.w, !prof !14

bb.v:                                             ; preds = %lean_dec.exit27
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %i.y, align 4, !tbaa !11
  br label %lean_dec_ref.exit34

bb.w:                                             ; preds = %lean_dec.exit27
  %.not.i33 = icmp eq i32 %i.ag, 0
  br i1 %.not.i33, label %lean_dec_ref.exit34, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.y) #13
  br label %lean_dec_ref.exit34

bb.y:                                             ; preds = %lean_obj_tag.exit
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !11  ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.z, label %bb.aa, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %i.a, align 4, !tbaa !11
  br label %lean_dec.exit25

bb.aa:                                            ; preds = %bb.y
  %.not.i29 = icmp eq i32 %i.aj, 0
  br i1 %.not.i29, label %lean_dec.exit25, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #13
  br label %lean_dec.exit25

lean_dec.exit25:                                  ; preds = %lean_obj_tag.exit.thread, %bb.ab, %bb.aa, %bb.z
  %i.am = ptrtoint ptr %1 to i64
  %i.an = and i64 %i.am, 1
  %.not.i23 = icmp eq i64 %i.an, 0
  br i1 %.not.i23, label %bb.ac, label %lean_dec.exit

bb.ac:                                            ; preds = %lean_dec.exit25
  %i.ao = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.ad, label %bb.ae, !prof !14

bb.ad:                                            ; preds = %bb.ac
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit

bb.ae:                                            ; preds = %bb.ac
  %.not.i31 = icmp eq i32 %i.ao, 0
  br i1 %.not.i31, label %lean_dec.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #13
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.af, %bb.ae, %bb.ad, %lean_dec.exit25
  tail call void @lean_inc_heartbeat() #13
  %i.ar = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #13 ; 5 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.ag, label %lean_alloc_ctor.exit

bb.ag:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 1, ptr %i.ar, align 4, !tbaa !11
  store i32 65552, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %6, ptr %i.au, align 8, !tbaa !16
  br label %lean_dec_ref.exit34

lean_dec_ref.exit34:                              ; preds = %bb.x, %bb.w, %bb.v, %lean_alloc_ctor.exit
  %.0 = phi ptr [ %i.ar, %lean_alloc_ctor.exit ], [ %i.af, %bb.v ], [ %i.af, %bb.w ], [ %i.af, %bb.x ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Environment_0__Lean_importModulesCore_go_spec__0(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #1 {
bb.a:
  %.not2397 = icmp ult i64 %8, %7
  br i1 %.not2397, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = ptrtoint ptr %1 to i64
  %.pre2492 = and i64 %.pre, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.b = icmp eq i8 %5, 0
  %switch = icmp ugt i8 %0, 1                     ; 2 uses
  %i.c = icmp eq i8 %4, 0
  %i.d = icmp eq i8 %3, 0
  %i.e = icmp eq i8 %2, 0
  %i.f = zext i8 %0 to i64
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = or disjoint i64 %i.g, 1
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = and i64 %i.j, 1                          ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0                   ; 8 uses
  %cond = icmp eq i8 %0, 0
  %i.l = ptrtoint ptr %10 to i64
  %i.m = and i64 %i.l, 1
  %.not.i1733 = icmp eq i64 %i.m, 0               ; 2 uses
  %brmerge = or i1 %switch, %i.c
  %.mux = zext i1 %switch to i8
  br label %bb.g

._crit_edge:                                      ; preds = %lean_dec_ref_known.exit, %.._crit_edge_crit_edge
  %.pre-phi2493 = phi i64 [ %.pre2492, %.._crit_edge_crit_edge ], [ %i.k, %lean_dec_ref_known.exit ]
  %.01174.lcssa = phi ptr [ %9, %.._crit_edge_crit_edge ], [ inttoptr (i64 1 to ptr), %lean_dec_ref_known.exit ]
  %.not.i1802 = icmp eq i64 %.pre-phi2493, 0
  br i1 %.not.i1802, label %bb.b, label %lean_dec.exit1803

bb.b:                                             ; preds = %._crit_edge
  %i.n = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit1803

bb.d:                                             ; preds = %bb.b
  %.not.i1804 = icmp eq i32 %i.n, 0
  br i1 %.not.i1804, label %lean_dec.exit1803, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #13
  br label %lean_dec.exit1803

lean_dec.exit1803:                                ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge
  tail call void @lean_inc_heartbeat() #13
  %i.q = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #13 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %.thread2277

bb.f:                                             ; preds = %lean_dec.exit1803
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

.thread2277:                                      ; preds = %lean_dec.exit1803
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 1, ptr %i.q, align 4, !tbaa !11
  store i32 65552, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.01174.lcssa, ptr %i.t, align 8, !tbaa !16
  br label %lean_dec_ref_known.exit.thread.thread

bb.g:                                             ; preds = %.lr.ph, %lean_dec_ref_known.exit
  %.011722396 = phi i64 [ %8, %.lr.ph ], [ %i.abl, %lean_dec_ref_known.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.011722396
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16   ; 46 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, 1
  %.not.i.i = icmp eq i64 %i.x, 0                 ; 11 uses
  br i1 %.not.i.i, label %bb.h, label %lean_array_uget.exit

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i = load i32, ptr %i.v, align 4, !tbaa !11 ; 3 uses
  %i.y = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.y, label %bb.i, label %bb.j, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw i32 %.val.i.i.i, 1
  store i32 %i.z, ptr %i.v, align 4, !tbaa !11
  br label %lean_array_uget.exit

bb.j:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_array_uget.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_array_uget.exit

lean_array_uget.exit:                             ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  br i1 %i.b, label %bb.rv, label %bb.l

bb.l:                                             ; preds = %lean_array_uget.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 17
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17  ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  %. = select i1 %i.ad, i8 %4, i8 %i.ac
  br label %bb.rv

.critedge1679:                                    ; preds = %bb.ck, %bb.ci, %.critedge, %bb.cj, %bb.ch, %bb.cf, %bb.cg, %bb.cd, %bb.ce
  %.015872174 = phi i8 [ %.01352, %bb.ci ], [ %.01352, %.critedge ], [ 0, %bb.cj ], [ %.01352, %bb.ce ], [ %.01352, %bb.ch ], [ %.01352, %bb.cf ], [ %.01352, %bb.cg ], [ %.01352, %bb.cd ], [ %.01352, %bb.ck ]
  %i.ae = tail call ptr @lean_st_ref_take(ptr noundef %10) #13 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !16 ; 5 uses
  %.val1904 = load i32, ptr %i.ae, align 8, !tbaa !11
  %i.aj = icmp eq i32 %.val1904, 1                ; 2 uses
  br i1 %i.aj, label %lean_dec.exit1801, label %bb.m

bb.m:                                             ; preds = %.critedge1679
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = and i64 %i.ak, 1
  %.not.i1745 = icmp eq i64 %i.al, 0
  br i1 %.not.i1745, label %bb.n, label %lean_inc.exit1746

bb.n:                                             ; preds = %bb.m
  %.val.i.i = load i32, ptr %i.ai, align 4, !tbaa !11 ; 3 uses
  %i.am = icmp sgt i32 %.val.i.i, 0
  br i1 %i.am, label %bb.o, label %bb.p, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.an = add nuw i32 %.val.i.i, 1
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !11
  br label %lean_inc.exit1746

bb.p:                                             ; preds = %bb.n
  %.not.i.i1905 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i1905, label %lean_inc.exit1746, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = atomicrmw sub ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1746

lean_inc.exit1746:                                ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %i.ap = ptrtoint ptr %i.ag to i64
  %i.aq = and i64 %i.ap, 1
  %.not.i1743 = icmp eq i64 %i.aq, 0
  br i1 %.not.i1743, label %bb.r, label %lean_inc.exit1744

bb.r:                                             ; preds = %lean_inc.exit1746
  %.val.i.i1906 = load i32, ptr %i.ag, align 4, !tbaa !11 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i1906, 0
  br i1 %i.ar, label %bb.s, label %bb.t, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.as = add nuw i32 %.val.i.i1906, 1
  store i32 %i.as, ptr %i.ag, align 4, !tbaa !11
  br label %lean_inc.exit1744

bb.t:                                             ; preds = %bb.r
  %.not.i.i1907 = icmp eq i32 %.val.i.i1906, 0
  br i1 %.not.i.i1907, label %lean_inc.exit1744, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = atomicrmw sub ptr %i.ag, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1744

lean_inc.exit1744:                                ; preds = %lean_inc.exit1746, %bb.s, %bb.t, %bb.u
  %i.au = load i32, ptr %i.ae, align 8, !tbaa !11 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.v, label %bb.w, !prof !14

bb.v:                                             ; preds = %lean_inc.exit1744
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %i.ae, align 8, !tbaa !11
  br label %lean_dec.exit1801

bb.w:                                             ; preds = %lean_inc.exit1744
  %.not.i1805 = icmp eq i32 %i.au, 0
  br i1 %.not.i1805, label %lean_dec.exit1801, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #13
  br label %lean_dec.exit1801

lean_dec.exit1801:                                ; preds = %bb.v, %bb.w, %bb.x, %.critedge1679
  %.01286 = phi ptr [ %i.ae, %.critedge1679 ], [ inttoptr (i64 1 to ptr), %bb.x ], [ inttoptr (i64 1 to ptr), %bb.w ], [ inttoptr (i64 1 to ptr), %bb.v ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.qx, i64 18
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !17
  %.val1903 = load i32, ptr %i.qx, align 8, !tbaa !11
  %i.bb = icmp eq i32 %.val1903, 1
  br i1 %i.bb, label %lean_dec.exit1799, label %bb.y

bb.y:                                             ; preds = %lean_dec.exit1801
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = and i64 %i.bc, 1
  %.not.i1741 = icmp eq i64 %i.bd, 0
  br i1 %.not.i1741, label %bb.z, label %lean_inc.exit1742

bb.z:                                             ; preds = %bb.y
  %.val.i.i1909 = load i32, ptr %i.ay, align 4, !tbaa !11 ; 3 uses
  %i.be = icmp sgt i32 %.val.i.i1909, 0
  br i1 %i.be, label %bb.aa, label %bb.ab, !prof !14

bb.aa:                                            ; preds = %bb.z
  %i.bf = add nuw i32 %.val.i.i1909, 1
  store i32 %i.bf, ptr %i.ay, align 4, !tbaa !11
  br label %lean_inc.exit1742

bb.ab:                                            ; preds = %bb.z
  %.not.i.i1910 = icmp eq i32 %.val.i.i1909, 0
  br i1 %.not.i.i1910, label %lean_inc.exit1742, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = atomicrmw sub ptr %i.ay, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1742

lean_inc.exit1742:                                ; preds = %bb.y, %bb.aa, %bb.ab, %bb.ac
  %i.bh = load i32, ptr %i.qx, align 8, !tbaa !11 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.ad, label %bb.ae, !prof !14

bb.ad:                                            ; preds = %lean_inc.exit1742
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.qx, align 8, !tbaa !11
  br label %bb.ag

bb.ae:                                            ; preds = %lean_inc.exit1742
  %.not.i1807 = icmp eq i32 %i.bh, 0
  br i1 %.not.i1807, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qx) #13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ae, %bb.af
  tail call void @lean_inc_heartbeat() #13
  %i.bk = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #13 ; 7 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.ah, label %lean_alloc_ctor.exit1912

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit1912:                         ; preds = %bb.ag
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 0, ptr %i.bn, align 8, !tbaa !13
  store i32 1, ptr %i.bk, align 8, !tbaa !11
  store i32 65560, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.ay, ptr %i.bo, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 18
  store i8 %i.ba, ptr %i.bp, align 2, !tbaa !17
  br label %lean_dec.exit1799

lean_dec.exit1799:                                ; preds = %lean_dec.exit1801, %lean_alloc_ctor.exit1912
  %.01282 = phi ptr [ %i.bk, %lean_alloc_ctor.exit1912 ], [ %i.qx, %lean_dec.exit1801 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01282, i64 16
  store i8 %.01343.ph, ptr %i.bq, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.01282, i64 17
  store i8 %.015872174, ptr %i.br, align 1, !tbaa !17
  tail call void @lean_inc_heartbeat() #13
  %i.bs = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #13 ; 7 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ai, label %lean_alloc_ctor.exit1914

bb.ai:                                            ; preds = %lean_dec.exit1799
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit1914:                         ; preds = %lean_dec.exit1799
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  store i64 0, ptr %i.bv, align 8, !tbaa !13
  store i32 1, ptr %i.bs, align 8, !tbaa !11
  store i32 65560, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %.01282, ptr %i.bw, align 8, !tbaa !16
  store i8 %..01335, ptr %i.bv, align 8, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 17
  store i8 %.01361, ptr %i.bx, align 1, !tbaa !17
  tail call void @lean_inc_heartbeat() #13
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #13 ; 8 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.aj, label %lean_alloc_ctor.exit1916

bb.aj:                                            ; preds = %lean_alloc_ctor.exit1914
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit1916:                         ; preds = %lean_alloc_ctor.exit1914
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 2 uses
  store i64 0, ptr %i.cb, align 8, !tbaa !13
  store i32 1, ptr %i.by, align 8, !tbaa !11
  store i32 196648, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.bs, ptr %i.cc, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %.01417, ptr %i.cd, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %.01503, ptr %i.ce, align 8, !tbaa !16
  store i8 %.01376, ptr %i.cb, align 8, !tbaa !17
  %i.cf = tail call ptr @l_Std_DHashMap_Internal_Raw_u2080_insert___at___00Lean_SMap_insert___at___00__private_Lean_Environment_0__Lean_Kernel_Environment_add_spec__0_spec__1___redArg(ptr noundef %i.ag, ptr noundef %i.yd, ptr noundef nonnull %i.by) ; 2 uses
  br i1 %i.aj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %lean_alloc_ctor.exit1916
  %i.cg = getelementptr inbounds nuw i8, ptr %.01286, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !16
  br label %bb.an

bb.al:                                            ; preds = %lean_alloc_ctor.exit1916
  tail call void @lean_inc_heartbeat() #13
  %i.ch = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #13 ; 6 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.am, label %lean_alloc_ctor.exit1917

bb.am:                                            ; preds = %bb.al
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit1917:                         ; preds = %bb.al
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 1, ptr %i.ch, align 4, !tbaa !11
  store i32 131096, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cf, ptr %i.ck, align 8, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.ai, ptr %i.cl, align 8, !tbaa !16
  br label %bb.an

bb.an:                                            ; preds = %lean_alloc_ctor.exit1917, %bb.ak
  %.01280 = phi ptr [ %.01286, %bb.ak ], [ %i.ch, %lean_alloc_ctor.exit1917 ]
  %i.cm = tail call ptr @lean_st_ref_set(ptr noundef %10, ptr noundef nonnull %.01280) #13 ; 0 uses
  br i1 %.not.i1733, label %bb.ao, label %lean_inc.exit1740

bb.ao:                                            ; preds = %bb.an
  %.val.i.i1918 = load i32, ptr %10, align 4, !tbaa !11 ; 3 uses
  %i.cn = icmp sgt i32 %.val.i.i1918, 0
  br i1 %i.cn, label %bb.ap, label %bb.aq, !prof !14

bb.ap:                                            ; preds = %bb.ao
  %i.co = add nuw i32 %.val.i.i1918, 1
  store i32 %i.co, ptr %10, align 4, !tbaa !11
  br label %lean_inc.exit1740

bb.aq:                                            ; preds = %bb.ao
  %.not.i.i1919 = icmp eq i32 %.val.i.i1918, 0
  br i1 %.not.i.i1919, label %lean_inc.exit1740, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cp = atomicrmw sub ptr %10, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1740

lean_inc.exit1740:                                ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an
  %i.cq = tail call ptr @lean_apply_3(ptr noundef nonnull %.013252268, ptr noundef nonnull %i.ty, ptr noundef %10, ptr noundef nonnull inttoptr (i64 1 to ptr)) #13 ; 11 uses
  %i.cr = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.cs = and i64 %i.cr, 1
  %.not.i1921 = icmp eq i64 %i.cs, 0
  br i1 %.not.i1921, label %bb.at, label %bb.as

bb.as:                                            ; preds = %lean_inc.exit1740
  %i.ct = lshr i64 %i.cr, 1
  %i.cu = trunc i64 %i.ct to i32
  br label %lean_obj_tag.exit

bb.at:                                            ; preds = %lean_inc.exit1740
  %i.cv = getelementptr i8, ptr %i.cq, i64 4
  %.val.i = load i32, ptr %i.cv, align 4
  %i.cw = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.as, %bb.at
  %.0.i1922 = phi i32 [ %i.cu, %bb.as ], [ %i.cw, %bb.at ]
  %i.cx = icmp eq i32 %.0.i1922, 0
  br i1 %i.cx, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %lean_obj_tag.exit
  %.val.i1923 = load i32, ptr %i.cq, align 4, !tbaa !11 ; 4 uses
  %i.cy = icmp eq i32 %.val.i1923, 1
  br i1 %i.cy, label %.preheader.i, label %bb.az

.preheader.i:                                     ; preds = %bb.au
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !16 ; 4 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = and i64 %i.db, 1
  %.not.i.i1924 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i1924, label %bb.av, label %lean_dec.exit.i

bb.av:                                            ; preds = %.preheader.i
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !11 ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.aw, label %bb.ax, !prof !14

bb.aw:                                            ; preds = %bb.av
  %i.df = add nsw i32 %i.dd, -1
  store i32 %i.df, ptr %i.da, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.ax:                                            ; preds = %bb.av
  %.not.i7.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.da) #13
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.ay, %bb.ax, %bb.aw, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.cq) #13
  br label %lean_dec_ref_known.exit

bb.az:                                            ; preds = %bb.au
  %i.dg = icmp sgt i32 %.val.i1923, 1
  br i1 %i.dg, label %bb.ba, label %bb.bb, !prof !14

bb.ba:                                            ; preds = %bb.az
  %i.dh = add nsw i32 %.val.i1923, -1
  store i32 %i.dh, ptr %i.cq, align 4, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.bb:                                            ; preds = %bb.az
  %.not.i8.i = icmp eq i32 %.val.i1923, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cq) #13
  br label %lean_dec_ref_known.exit

bb.bd:                                            ; preds = %lean_obj_tag.exit
  br i1 %.not.i, label %bb.be, label %lean_dec_ref_known.exit.thread.thread

bb.be:                                            ; preds = %bb.bd
  %i.di = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 1
  br i1 %i.dj, label %bb.bf, label %bb.bg, !prof !14

bb.bf:                                            ; preds = %bb.be
  %i.dk = add nsw i32 %i.di, -1
  store i32 %i.dk, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref_known.exit.thread.thread

bb.bg:                                            ; preds = %bb.be
  %.not.i1809 = icmp eq i32 %i.di, 0
  br i1 %.not.i1809, label %lean_dec_ref_known.exit.thread.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #13
  br label %lean_dec_ref_known.exit.thread.thread

.critedge:                                        ; preds = %bb.cd, %bb.ce
  %i.dl = tail call zeroext i8 @l_Lean_instBEqIRPhases_beq(i8 noundef zeroext %..01335, i8 noundef zeroext %i.rc) #13
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %.critedge1679, label %bb.bi

bb.bi:                                            ; preds = %.critedge
  %i.dn = ptrtoint ptr %.01503 to i64
  %i.do = and i64 %i.dn, 1
  %.not.i1794 = icmp eq i64 %i.do, 0
  br i1 %.not.i1794, label %bb.bj, label %lean_dec.exit1795

bb.bj:                                            ; preds = %bb.bi
  %i.dp = load i32, ptr %.01503, align 4, !tbaa !11 ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, 1
  br i1 %i.dq, label %bb.bk, label %bb.bl, !prof !14

bb.bk:                                            ; preds = %bb.bj
  %i.dr = add nsw i32 %i.dp, -1
  store i32 %i.dr, ptr %.01503, align 4, !tbaa !11
  br label %lean_dec.exit1795

bb.bl:                                            ; preds = %bb.bj
  %.not.i1811 = icmp eq i32 %i.dp, 0
  br i1 %.not.i1811, label %lean_dec.exit1795, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01503) #13
  br label %lean_dec.exit1795

lean_dec.exit1795:                                ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bi
  %i.ds = ptrtoint ptr %i.yd to i64
  %i.dt = and i64 %i.ds, 1
  %.not.i1792 = icmp eq i64 %i.dt, 0
  br i1 %.not.i1792, label %bb.bn, label %lean_dec.exit1793

bb.bn:                                            ; preds = %lean_dec.exit1795
  %i.du = load i32, ptr %i.yd, align 4, !tbaa !11 ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %bb.bo, label %bb.bp, !prof !14

bb.bo:                                            ; preds = %bb.bn
  %i.dw = add nsw i32 %i.du, -1
  store i32 %i.dw, ptr %i.yd, align 4, !tbaa !11
  br label %lean_dec.exit1793

bb.bp:                                            ; preds = %bb.bn
  %.not.i1813 = icmp eq i32 %i.du, 0
  br i1 %.not.i1813, label %lean_dec.exit1793, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.yd) #13
  br label %lean_dec.exit1793

lean_dec.exit1793:                                ; preds = %bb.bq, %bb.bp, %bb.bo, %lean_dec.exit1795
  %i.dx = load i32, ptr %i.qx, align 4, !tbaa !11 ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 1
  br i1 %i.dy, label %bb.br, label %bb.bs, !prof !14

bb.br:                                            ; preds = %lean_dec.exit1793
  %i.dz = add nsw i32 %i.dx, -1
  store i32 %i.dz, ptr %i.qx, align 4, !tbaa !11
  br label %lean_dec_ref.exit1896

bb.bs:                                            ; preds = %lean_dec.exit1793
  %.not.i1895 = icmp eq i32 %i.dx, 0
  br i1 %.not.i1895, label %lean_dec_ref.exit1896, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qx) #13
  br label %lean_dec_ref.exit1896

lean_dec_ref.exit1896:                            ; preds = %bb.br, %bb.bs, %bb.bt
  %i.ea = load i32, ptr %i.ty, align 4, !tbaa !11 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.bu, label %bb.bv, !prof !14

bb.bu:                                            ; preds = %lean_dec_ref.exit1896
  %i.ec = add nsw i32 %i.ea, -1
  store i32 %i.ec, ptr %i.ty, align 4, !tbaa !11
  br label %lean_dec_ref.exit1894

bb.bv:                                            ; preds = %lean_dec_ref.exit1896
  %.not.i1893 = icmp eq i32 %i.ea, 0
  br i1 %.not.i1893, label %lean_dec_ref.exit1894, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ty) #13
  br label %lean_dec_ref.exit1894

lean_dec_ref.exit1894:                            ; preds = %bb.bu, %bb.bv, %bb.bw
  %i.ed = load i32, ptr %.013252268, align 4, !tbaa !11 ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, 1
  br i1 %i.ee, label %bb.bx, label %bb.by, !prof !14

bb.bx:                                            ; preds = %lean_dec_ref.exit1894
  %i.ef = add nsw i32 %i.ed, -1
  store i32 %i.ef, ptr %.013252268, align 4, !tbaa !11
  br label %lean_dec_ref.exit1892

bb.by:                                            ; preds = %lean_dec_ref.exit1894
  %.not.i1891 = icmp eq i32 %i.ed, 0
  br i1 %.not.i1891, label %lean_dec_ref.exit1892, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.013252268) #13
  br label %lean_dec_ref.exit1892

lean_dec_ref.exit1892:                            ; preds = %bb.bx, %bb.by, %bb.bz
  %i.eg = load i32, ptr %.01417, align 4, !tbaa !11 ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 1
  br i1 %i.eh, label %bb.ca, label %bb.cb, !prof !14

bb.ca:                                            ; preds = %lean_dec_ref.exit1892
  %i.ei = add nsw i32 %i.eg, -1
  store i32 %i.ei, ptr %.01417, align 4, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.cb:                                            ; preds = %lean_dec_ref.exit1892
  %.not.i1889 = icmp eq i32 %i.eg, 0
  br i1 %.not.i1889, label %lean_dec_ref_known.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01417) #13
  br label %lean_dec_ref_known.exit

bb.cd:                                            ; preds = %.critedge1681
  br i1 %i.ej, label %.critedge, label %.critedge1679

bb.ce:                                            ; preds = %.critedge1681
  br i1 %i.ej, label %.critedge1679, label %.critedge

.critedge1681:                                    ; preds = %bb.cf, %bb.cg
  %i.ej = icmp eq i8 %i.re, 0                     ; 2 uses
  br i1 %i.rk, label %bb.cd, label %bb.ce

bb.cf:                                            ; preds = %.thread
  br i1 %.01378, label %.critedge1681, label %.critedge1679

bb.cg:                                            ; preds = %.thread
  br i1 %.01378, label %.critedge1679, label %.critedge1681

bb.ch:                                            ; preds = %.thread2175
  br i1 %i.eo, label %.critedge1679, label %.thread

.thread:                                          ; preds = %bb.cj, %bb.ch
  %i.ek = icmp eq i8 %.01376, 0
  br i1 %i.ek, label %bb.cf, label %bb.cg

bb.ci:                                            ; preds = %lean_dec.exit1777
  br i1 %i.es, label %.critedge1679, label %.thread2175

.thread2175:                                      ; preds = %bb.ck, %bb.ci
  %i.el = icmp eq i8 %.01352, 0
  %i.em = getelementptr inbounds nuw i8, ptr %i.qx, i64 17
  %i.en = load i8, ptr %i.em, align 1, !tbaa !17
  %i.eo = icmp eq i8 %i.en, 0                     ; 2 uses
  br i1 %i.el, label %bb.cj, label %bb.ch

bb.cj:                                            ; preds = %.thread2175
  br i1 %i.eo, label %.thread, label %.critedge1679

lean_dec.exit1777:                                ; preds = %lean_dec.exit.i2020, %bb.ib, %bb.ic, %bb.id, %bb.jk, %bb.jm, %bb.jn, %bb.jo, %bb.hg, %bb.hi, %bb.hj, %bb.hk
  %.01503 = phi ptr [ %.01380, %bb.jk ], [ %i.mc, %lean_dec.exit.i2020 ], [ %.01380, %bb.hk ], [ %.01380, %bb.hj ], [ %.01380, %bb.hi ], [ %.01380, %bb.hg ], [ %.01380, %bb.jo ], [ %.01380, %bb.jn ], [ %.01380, %bb.jm ], [ %i.mc, %bb.id ], [ %i.mc, %bb.ic ], [ %i.mc, %bb.ib ] ; 5 uses
  %i.ep = icmp eq i8 %.01343.ph, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.er = load i8, ptr %i.eq, align 4, !tbaa !17
  %.fr = freeze i8 %i.er
  %i.es = icmp eq i8 %.fr, 0                      ; 2 uses
  br i1 %i.ep, label %bb.ck, label %bb.ci

bb.ck:                                            ; preds = %lean_dec.exit1777
  br i1 %i.es, label %.thread2175, label %.critedge1679

lean_dec_ref_known.exit1999.thread:               ; preds = %lean_dec.exit.i1994, %bb.gd, %bb.ge, %bb.gf, %bb.fl
  %.01485 = phi ptr [ %i.js, %lean_dec.exit.i1994 ], [ inttoptr (i64 1 to ptr), %bb.fl ], [ %i.js, %bb.gf ], [ %i.js, %bb.ge ], [ %i.js, %bb.gd ]
  %i.et = load ptr, ptr %i.yc, align 8, !tbaa !16 ; 16 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  %i.ev = load i8, ptr %i.eu, align 2, !tbaa !17
  %.val1902 = load i32, ptr %i.v, align 8, !tbaa !11
  %i.ew = icmp eq i32 %.val1902, 1                ; 2 uses
  %.pre2494 = ptrtoint ptr %i.et to i64
  %.pre2496 = and i64 %.pre2494, 1                ; 2 uses
  br i1 %i.ew, label %lean_dec.exit1791, label %bb.cl

bb.cl:                                            ; preds = %lean_dec_ref_known.exit1999.thread
  %.not.i1737 = icmp eq i64 %.pre2496, 0
  br i1 %.not.i1737, label %bb.cm, label %lean_inc.exit1738

bb.cm:                                            ; preds = %bb.cl
  %.val.i.i1925 = load i32, ptr %i.et, align 4, !tbaa !11 ; 3 uses
  %i.ex = icmp sgt i32 %.val.i.i1925, 0
  br i1 %i.ex, label %bb.cn, label %bb.co, !prof !14

bb.cn:                                            ; preds = %bb.cm
  %i.ey = add nuw i32 %.val.i.i1925, 1
  store i32 %i.ey, ptr %i.et, align 4, !tbaa !11
  br label %lean_inc.exit1738

bb.co:                                            ; preds = %bb.cm
  %.not.i.i1926 = icmp eq i32 %.val.i.i1925, 0
  br i1 %.not.i.i1926, label %lean_inc.exit1738, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ez = atomicrmw sub ptr %i.et, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1738

lean_inc.exit1738:                                ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cl
  br i1 %.not.i.i, label %bb.cq, label %lean_dec.exit1791

bb.cq:                                            ; preds = %lean_inc.exit1738
  %i.fa = load i32, ptr %i.v, align 8, !tbaa !11  ; 3 uses
  %i.fb = icmp sgt i32 %i.fa, 1
  br i1 %i.fb, label %bb.cr, label %bb.cs, !prof !14

bb.cr:                                            ; preds = %bb.cq
  %i.fc = add nsw i32 %i.fa, -1
  store i32 %i.fc, ptr %i.v, align 8, !tbaa !11
  br label %lean_dec.exit1791

bb.cs:                                            ; preds = %bb.cq
  %.not.i1815 = icmp eq i32 %i.fa, 0
  br i1 %.not.i1815, label %lean_dec.exit1791, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #13
  br label %lean_dec.exit1791

lean_dec.exit1791:                                ; preds = %lean_dec_ref_known.exit1999.thread, %lean_inc.exit1738, %bb.cr, %bb.cs, %bb.ct
  %.01276 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ct ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1738 ], [ inttoptr (i64 1 to ptr), %bb.cr ], [ inttoptr (i64 1 to ptr), %bb.cs ], [ %i.v, %lean_dec_ref_known.exit1999.thread ]
  %.not.i1735 = icmp eq i64 %.pre2496, 0          ; 3 uses
  br i1 %.not.i1735, label %bb.cu, label %lean_inc.exit1736

bb.cu:                                            ; preds = %lean_dec.exit1791
  %.val.i.i1928 = load i32, ptr %i.et, align 4, !tbaa !11 ; 3 uses
  %i.fd = icmp sgt i32 %.val.i.i1928, 0
  br i1 %i.fd, label %bb.cv, label %bb.cw, !prof !14

bb.cv:                                            ; preds = %bb.cu
  %i.fe = add nuw i32 %.val.i.i1928, 1
  store i32 %i.fe, ptr %i.et, align 4, !tbaa !11
  br label %lean_inc.exit1736

bb.cw:                                            ; preds = %bb.cu
  %.not.i.i1929 = icmp eq i32 %.val.i.i1928, 0
  br i1 %.not.i.i1929, label %lean_inc.exit1736, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ff = atomicrmw sub ptr %i.et, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1736

lean_inc.exit1736:                                ; preds = %bb.cx, %bb.cw, %bb.cv, %lean_dec.exit1791
  br i1 %i.ew, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %lean_inc.exit1736
  tail call void @lean_inc_heartbeat() #13
  %i.fg = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #13 ; 7 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.cz, label %lean_alloc_ctor.exit1932

bb.cz:                                            ; preds = %bb.cy
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit1932:                         ; preds = %bb.cy
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 0, ptr %i.fj, align 8, !tbaa !13
  store i32 1, ptr %i.fg, align 8, !tbaa !11
  store i32 65560, ptr %i.fi, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.et, ptr %i.fk, align 8, !tbaa !16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 18
  store i8 %i.ev, ptr %i.fl, align 2, !tbaa !17
  br label %bb.da

bb.da:                                            ; preds = %lean_inc.exit1736, %lean_alloc_ctor.exit1932
  %.01274 = phi ptr [ %i.fg, %lean_alloc_ctor.exit1932 ], [ %.01276, %lean_inc.exit1736 ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.01274, i64 16
  store i8 %.013162270, ptr %i.fm, align 1, !tbaa !17
  %i.fn = getelementptr inbounds nuw i8, ptr %.01274, i64 17
  store i8 %.01291, ptr %i.fn, align 1, !tbaa !17
  tail call void @lean_inc_heartbeat() #13
  %i.fo = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #13 ; 7 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.db, label %lean_alloc_ctor.exit1934

bb.db:                                            ; preds = %bb.da
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit1934:                         ; preds = %bb.da
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  store i64 0, ptr %i.fr, align 8, !tbaa !13
  store i32 1, ptr %i.fo, align 8, !tbaa !11
  store i32 65560, ptr %i.fq, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %.01274, ptr %i.fs, align 8, !tbaa !16
  store i8 %.01335, ptr %i.fr, align 8, !tbaa !17
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 17
  store i8 %.11288, ptr %i.ft, align 1, !tbaa !17
  tail call void @lean_inc_heartbeat() #13
  %i.fu = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #13 ; 16 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.dc, label %lean_alloc_ctor.exit1936

bb.dc:                                            ; preds = %lean_alloc_ctor.exit1934
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit1936:                         ; preds = %lean_alloc_ctor.exit1934
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 2 uses
  store i64 0, ptr %i.fx, align 8, !tbaa !13
  store i32 196648, ptr %i.fw, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.fo, ptr %i.fy, align 8, !tbaa !16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store ptr %.11468.ph, ptr %i.fz, align 8, !tbaa !16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store ptr %.01485, ptr %i.ga, align 8, !tbaa !16
  store i8 %.013132271, ptr %i.fx, align 8, !tbaa !17
  br i1 %.not.i1733, label %bb.dd, label %lean_inc_ref.exit1942

bb.dd:                                            ; preds = %lean_alloc_ctor.exit1936
  %.val.i.i1937 = load i32, ptr %10, align 4, !tbaa !11 ; 3 uses
  %i.gb = icmp sgt i32 %.val.i.i1937, 0
  br i1 %i.gb, label %bb.de, label %bb.df, !prof !14

bb.de:                                            ; preds = %bb.dd
  %i.gc = add nuw i32 %.val.i.i1937, 1
  store i32 %i.gc, ptr %10, align 4, !tbaa !11
  br label %lean_inc_ref.exit1942

bb.df:                                            ; preds = %bb.dd
  %.not.i.i1938 = icmp eq i32 %.val.i.i1937, 0
  br i1 %.not.i.i1938, label %lean_inc_ref.exit1942, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.gd = atomicrmw sub ptr %10, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1942

lean_inc_ref.exit1942:                            ; preds = %bb.dg, %bb.df, %bb.de, %lean_alloc_ctor.exit1936
  store i32 2, ptr %i.fu, align 8, !tbaa !11
  %i.ge = tail call ptr @lean_apply_3(ptr noundef nonnull %.013252268, ptr noundef nonnull %i.fu, ptr noundef %10, ptr noundef nonnull inttoptr (i64 1 to ptr)) #13 ; 11 uses
  %i.gf = ptrtoint ptr %i.ge to i64               ; 2 uses
  %i.gg = and i64 %i.gf, 1
  %.not.i1943 = icmp eq i64 %i.gg, 0
  br i1 %.not.i1943, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %lean_inc_ref.exit1942
  %i.gh = lshr i64 %i.gf, 1
  %i.gi = trunc i64 %i.gh to i32
  br label %lean_obj_tag.exit1946

bb.di:                                            ; preds = %lean_inc_ref.exit1942
  %i.gj = getelementptr i8, ptr %i.ge, i64 4
  %.val.i1945 = load i32, ptr %i.gj, align 4
  %i.gk = lshr i32 %.val.i1945, 24
  br label %lean_obj_tag.exit1946

lean_obj_tag.exit1946:                            ; preds = %bb.dh, %bb.di
  %.0.i1944 = phi i32 [ %i.gi, %bb.dh ], [ %i.gk, %bb.di ]
  %i.gl = icmp eq i32 %.0.i1944, 0
  br i1 %i.gl, label %bb.dj, label %bb.em

bb.dj:                                            ; preds = %lean_obj_tag.exit1946
  %.val.i1947 = load i32, ptr %i.ge, align 4, !tbaa !11 ; 4 uses
  %i.gm = icmp eq i32 %.val.i1947, 1
  br i1 %i.gm, label %.preheader.i1949, label %bb.do

.preheader.i1949:                                 ; preds = %bb.dj
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !16 ; 4 uses
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = and i64 %i.gp, 1
  %.not.i.i1951 = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i1951, label %bb.dk, label %lean_dec.exit.i1952

bb.dk:                                            ; preds = %.preheader.i1949
  %i.gr = load i32, ptr %i.go, align 4, !tbaa !11 ; 3 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.dl, label %bb.dm, !prof !14

bb.dl:                                            ; preds = %bb.dk
  %i.gt = add nsw i32 %i.gr, -1
  store i32 %i.gt, ptr %i.go, align 4, !tbaa !11
  br label %lean_dec.exit.i1952

bb.dm:                                            ; preds = %bb.dk
  %.not.i7.i1956 = icmp eq i32 %i.gr, 0
  br i1 %.not.i7.i1956, label %lean_dec.exit.i1952, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.go) #13
  br label %lean_dec.exit.i1952

lean_dec.exit.i1952:                              ; preds = %bb.dn, %bb.dm, %bb.dl, %.preheader.i1949
  tail call void @lean_free_object(ptr noundef nonnull %i.ge) #13
  br label %lean_dec_ref_known.exit1957

bb.do:                                            ; preds = %bb.dj
  %i.gu = icmp sgt i32 %.val.i1947, 1
  br i1 %i.gu, label %bb.dp, label %bb.dq, !prof !14

bb.dp:                                            ; preds = %bb.do
  %i.gv = add nsw i32 %.val.i1947, -1
  store i32 %i.gv, ptr %i.ge, align 4, !tbaa !11
  br label %lean_dec_ref_known.exit1957

bb.dq:                                            ; preds = %bb.do
  %.not.i8.i1948 = icmp eq i32 %.val.i1947, 0
  br i1 %.not.i8.i1948, label %lean_dec_ref_known.exit1957, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ge) #13
  br label %lean_dec_ref_known.exit1957

lean_dec_ref_known.exit1957:                      ; preds = %lean_dec.exit.i1952, %bb.dp, %bb.dq, %bb.dr
  %i.gw = tail call ptr @lean_st_ref_take(ptr noundef %10) #13 ; 7 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !16 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !16 ; 5 uses
  %.val1901 = load i32, ptr %i.gw, align 8, !tbaa !11
  %i.hb = icmp eq i32 %.val1901, 1                ; 2 uses
  br i1 %i.hb, label %lean_dec.exit1789, label %bb.ds

bb.ds:                                            ; preds = %lean_dec_ref_known.exit1957
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = and i64 %i.hc, 1
  %.not.i1731 = icmp eq i64 %i.hd, 0
  br i1 %.not.i1731, label %bb.dt, label %lean_inc.exit1732

bb.dt:                                            ; preds = %bb.ds
  %.val.i.i1958 = load i32, ptr %i.ha, align 4, !tbaa !11 ; 3 uses
  %i.he = icmp sgt i32 %.val.i.i1958, 0
  br i1 %i.he, label %bb.du, label %bb.dv, !prof !14

bb.du:                                            ; preds = %bb.dt
  %i.hf = add nuw i32 %.val.i.i1958, 1
  store i32 %i.hf, ptr %i.ha, align 4, !tbaa !11
  br label %lean_inc.exit1732

bb.dv:                                            ; preds = %bb.dt
  %.not.i.i1959 = icmp eq i32 %.val.i.i1958, 0
  br i1 %.not.i.i1959, label %lean_inc.exit1732, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.hg = atomicrmw sub ptr %i.ha, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1732

lean_inc.exit1732:                                ; preds = %bb.dw, %bb.dv, %bb.du, %bb.ds
  %i.hh = ptrtoint ptr %i.gy to i64
  %i.hi = and i64 %i.hh, 1
  %.not.i1729 = icmp eq i64 %i.hi, 0
  br i1 %.not.i1729, label %bb.dx, label %lean_inc.exit1730

bb.dx:                                            ; preds = %lean_inc.exit1732
  %.val.i.i1961 = load i32, ptr %i.gy, align 4, !tbaa !11 ; 3 uses
  %i.hj = icmp sgt i32 %.val.i.i1961, 0
  br i1 %i.hj, label %bb.dy, label %bb.dz, !prof !14

bb.dy:                                            ; preds = %bb.dx
  %i.hk = add nuw i32 %.val.i.i1961, 1
  store i32 %i.hk, ptr %i.gy, align 4, !tbaa !11
  br label %lean_inc.exit1730

bb.dz:                                            ; preds = %bb.dx
  %.not.i.i1962 = icmp eq i32 %.val.i.i1961, 0
  br i1 %.not.i.i1962, label %lean_inc.exit1730, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.hl = atomicrmw sub ptr %i.gy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1730

lean_inc.exit1730:                                ; preds = %lean_inc.exit1732, %bb.dy, %bb.dz, %bb.ea
  %i.hm = load i32, ptr %i.gw, align 8, !tbaa !11 ; 3 uses
  %i.hn = icmp sgt i32 %i.hm, 1
  br i1 %i.hn, label %bb.eb, label %bb.ec, !prof !14

bb.eb:                                            ; preds = %lean_inc.exit1730
  %i.ho = add nsw i32 %i.hm, -1
  store i32 %i.ho, ptr %i.gw, align 8, !tbaa !11
  br label %lean_dec.exit1789

bb.ec:                                            ; preds = %lean_inc.exit1730
  %.not.i1817 = icmp eq i32 %i.hm, 0
  br i1 %.not.i1817, label %lean_dec.exit1789, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gw) #13
  br label %lean_dec.exit1789

lean_dec.exit1789:                                ; preds = %bb.eb, %bb.ec, %bb.ed, %lean_dec_ref_known.exit1957
  %.01272 = phi ptr [ %i.gw, %lean_dec_ref_known.exit1957 ], [ inttoptr (i64 1 to ptr), %bb.ed ], [ inttoptr (i64 1 to ptr), %bb.ec ], [ inttoptr (i64 1 to ptr), %bb.eb ] ; 3 uses
  br i1 %.not.i1735, label %bb.ee, label %lean_inc.exit1728

bb.ee:                                            ; preds = %lean_dec.exit1789
  %.val.i.i1964 = load i32, ptr %i.et, align 4, !tbaa !11 ; 3 uses
  %i.hp = icmp sgt i32 %.val.i.i1964, 0
  br i1 %i.hp, label %bb.ef, label %bb.eg, !prof !14

bb.ef:                                            ; preds = %bb.ee
  %i.hq = add nuw i32 %.val.i.i1964, 1
  store i32 %i.hq, ptr %i.et, align 4, !tbaa !11
  br label %lean_inc.exit1728

bb.eg:                                            ; preds = %bb.ee
  %.not.i.i1965 = icmp eq i32 %.val.i.i1964, 0
  br i1 %.not.i.i1965, label %lean_inc.exit1728, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.hr = atomicrmw sub ptr %i.et, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1728

lean_inc.exit1728:                                ; preds = %bb.eh, %bb.eg, %bb.ef, %lean_dec.exit1789
  %i.hs = tail call ptr @l_Std_DHashMap_Internal_Raw_u2080_insert___at___00Lean_SMap_insert___at___00__private_Lean_Environment_0__Lean_Kernel_Environment_add_spec__0_spec__1___redArg(ptr noundef %i.gy, ptr noundef %i.et, ptr noundef nonnull %i.fu) ; 2 uses
  %i.ht = tail call ptr @lean_array_push(ptr noundef %i.ha, ptr noundef %i.et) #13 ; 2 uses
  br i1 %i.hb, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %lean_inc.exit1728
  %i.hu = getelementptr inbounds nuw i8, ptr %.01272, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %.01272, i64 16
  store ptr %i.ht, ptr %i.hv, align 8, !tbaa !16
  store ptr %i.hs, ptr %i.hu, align 8, !tbaa !16
  br label %bb.el

bb.ej:                                            ; preds = %lean_inc.exit1728
  tail call void @lean_inc_heartbeat() #13
  %i.hw = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #13 ; 6 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %bb.ek, label %lean_alloc_ctor.exit1967

bb.ek:                                            ; preds = %bb.ej
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit1967:                         ; preds = %bb.ej
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i32 1, ptr %i.hw, align 4, !tbaa !11
  store i32 131096, ptr %i.hy, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store ptr %i.hs, ptr %i.hz, align 8, !tbaa !16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store ptr %i.ht, ptr %i.ia, align 8, !tbaa !16
  br label %bb.el

bb.el:                                            ; preds = %lean_alloc_ctor.exit1967, %bb.ei
  %.01270 = phi ptr [ %.01272, %bb.ei ], [ %i.hw, %lean_alloc_ctor.exit1967 ]
  %i.ib = tail call ptr @lean_st_ref_set(ptr noundef %10, ptr noundef nonnull %.01270) #13 ; 0 uses
  br label %lean_dec_ref_known.exit

bb.em:                                            ; preds = %lean_obj_tag.exit1946
  %.val.i1968 = load i32, ptr %i.fu, align 4, !tbaa !11 ; 4 uses
  %i.ic = icmp eq i32 %.val.i1968, 1
  br i1 %i.ic, label %.preheader.i1970.preheader, label %bb.ez

.preheader.i1970.preheader:                       ; preds = %bb.em
  %i.id = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !16 ; 4 uses
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = and i64 %i.if, 1
  %.not.i.i1972 = icmp eq i64 %i.ig, 0
  br i1 %.not.i.i1972, label %bb.en, label %lean_dec.exit.i1973

bb.en:                                            ; preds = %.preheader.i1970.preheader
  %i.ih = load i32, ptr %i.ie, align 4, !tbaa !11 ; 3 uses
  %i.ii = icmp sgt i32 %i.ih, 1
  br i1 %i.ii, label %bb.eo, label %bb.ep, !prof !14

bb.eo:                                            ; preds = %bb.en
  %i.ij = add nsw i32 %i.ih, -1
  store i32 %i.ij, ptr %i.ie, align 4, !tbaa !11
  br label %lean_dec.exit.i1973

bb.ep:                                            ; preds = %bb.en
  %.not.i7.i1977 = icmp eq i32 %i.ih, 0
  br i1 %.not.i7.i1977, label %lean_dec.exit.i1973, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ie) #13
  br label %lean_dec.exit.i1973

lean_dec.exit.i1973:                              ; preds = %bb.eq, %bb.ep, %bb.eo, %.preheader.i1970.preheader
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !16 ; 4 uses
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = and i64 %i.im, 1
  %.not.i.i1972.1 = icmp eq i64 %i.in, 0
  br i1 %.not.i.i1972.1, label %bb.er, label %lean_dec.exit.i1973.1

bb.er:                                            ; preds = %lean_dec.exit.i1973
  %i.io = load i32, ptr %i.il, align 4, !tbaa !11 ; 3 uses
  %i.ip = icmp sgt i32 %i.io, 1
  br i1 %i.ip, label %bb.eu, label %bb.es, !prof !14

bb.es:                                            ; preds = %bb.er
  %.not.i7.i1977.1 = icmp eq i32 %i.io, 0
  br i1 %.not.i7.i1977.1, label %lean_dec.exit.i1973.1, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.il) #13
  br label %lean_dec.exit.i1973.1

bb.eu:                                            ; preds = %bb.er
  %i.iq = add nsw i32 %i.io, -1
  store i32 %i.iq, ptr %i.il, align 4, !tbaa !11
  br label %lean_dec.exit.i1973.1

lean_dec.exit.i1973.1:                            ; preds = %bb.eu, %bb.et, %bb.es, %lean_dec.exit.i1973
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !16 ; 4 uses
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = and i64 %i.it, 1
  %.not.i.i1972.2 = icmp eq i64 %i.iu, 0
  br i1 %.not.i.i1972.2, label %bb.ev, label %lean_dec.exit.i1973.2

bb.ev:                                            ; preds = %lean_dec.exit.i1973.1
  %i.iv = load i32, ptr %i.is, align 4, !tbaa !11 ; 3 uses
  %i.iw = icmp sgt i32 %i.iv, 1
  br i1 %i.iw, label %bb.ey, label %bb.ew, !prof !14

bb.ew:                                            ; preds = %bb.ev
  %.not.i7.i1977.2 = icmp eq i32 %i.iv, 0
  br i1 %.not.i7.i1977.2, label %lean_dec.exit.i1973.2, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.is) #13
  br label %lean_dec.exit.i1973.2

bb.ey:                                            ; preds = %bb.ev
  %i.ix = add nsw i32 %i.iv, -1
  store i32 %i.ix, ptr %i.is, align 4, !tbaa !11
  br label %lean_dec.exit.i1973.2

lean_dec.exit.i1973.2:                            ; preds = %bb.ey, %bb.ex, %bb.ew, %lean_dec.exit.i1973.1
  tail call void @lean_free_object(ptr noundef nonnull %i.fu) #13
  br label %lean_dec_ref_known.exit1978

bb.ez:                                            ; preds = %bb.em
  %i.iy = icmp sgt i32 %.val.i1968, 1
  br i1 %i.iy, label %bb.fa, label %bb.fb, !prof !14

bb.fa:                                            ; preds = %bb.ez
  %i.iz = add nsw i32 %.val.i1968, -1
  store i32 %i.iz, ptr %i.fu, align 4, !tbaa !11
  br label %lean_dec_ref_known.exit1978

bb.fb:                                            ; preds = %bb.ez
  %.not.i8.i1969 = icmp eq i32 %.val.i1968, 0
  br i1 %.not.i8.i1969, label %lean_dec_ref_known.exit1978, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fu) #13
  br label %lean_dec_ref_known.exit1978

lean_dec_ref_known.exit1978:                      ; preds = %lean_dec.exit.i1973.2, %bb.fa, %bb.fb, %bb.fc
  br i1 %.not.i1735, label %bb.fd, label %lean_dec.exit1787

bb.fd:                                            ; preds = %lean_dec_ref_known.exit1978
  %i.ja = load i32, ptr %i.et, align 4, !tbaa !11 ; 3 uses
  %i.jb = icmp sgt i32 %i.ja, 1
  br i1 %i.jb, label %bb.fe, label %bb.ff, !prof !14

bb.fe:                                            ; preds = %bb.fd
  %i.jc = add nsw i32 %i.ja, -1
  store i32 %i.jc, ptr %i.et, align 4, !tbaa !11
  br label %lean_dec.exit1787

bb.ff:                                            ; preds = %bb.fd
  %.not.i1819 = icmp eq i32 %i.ja, 0
  br i1 %.not.i1819, label %lean_dec.exit1787, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.et) #13
  br label %lean_dec.exit1787

lean_dec.exit1787:                                ; preds = %bb.fg, %bb.ff, %bb.fe, %lean_dec_ref_known.exit1978
  br i1 %.not.i, label %bb.fh, label %lean_dec_ref_known.exit.thread.thread

bb.fh:                                            ; preds = %lean_dec.exit1787
  %i.jd = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.je = icmp sgt i32 %i.jd, 1
  br i1 %i.je, label %bb.fi, label %bb.fj, !prof !14

bb.fi:                                            ; preds = %bb.fh
  %i.jf = add nsw i32 %i.jd, -1
  store i32 %i.jf, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref_known.exit.thread.thread

bb.fj:                                            ; preds = %bb.fh
  %.not.i1821 = icmp eq i32 %i.jd, 0
  br i1 %.not.i1821, label %lean_dec_ref_known.exit.thread.thread, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #13
  br label %lean_dec_ref_known.exit.thread.thread

bb.fl:                                            ; preds = %bb.pw, %lean_dec.exit.i2134, %lean_dec.exit1755, %bb.pu, %bb.pv
  %.11468.ph = phi ptr [ %i.we, %bb.pv ], [ %i.we, %bb.pu ], [ @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Environment_0__Lean_importModulesCore_go_spec__0___closed__0_value, %lean_dec.exit1755 ], [ %i.we, %lean_dec.exit.i2134 ], [ %i.we, %bb.pw ] ; 4 uses
  br i1 %11, label %lean_dec_ref_known.exit1999.thread, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  br i1 %.not.i.i, label %bb.fn, label %lean_inc.exit1726

bb.fn:                                            ; preds = %bb.fm
  %.val.i.i1979 = load i32, ptr %i.v, align 8, !tbaa !11 ; 3 uses
  %i.jg = icmp sgt i32 %.val.i.i1979, 0
  br i1 %i.jg, label %bb.fo, label %bb.fp, !prof !14

bb.fo:                                            ; preds = %bb.fn
  %i.jh = add nuw i32 %.val.i.i1979, 1
  store i32 %i.jh, ptr %i.v, align 8, !tbaa !11
  br label %lean_inc.exit1726

bb.fp:                                            ; preds = %bb.fn
  %.not.i.i1980 = icmp eq i32 %.val.i.i1979, 0
  br i1 %.not.i.i1980, label %lean_inc.exit1726, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ji = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1726

lean_inc.exit1726:                                ; preds = %bb.fq, %bb.fp, %bb.fo, %bb.fm
  %i.jj = tail call ptr @l___private_Lean_Environment_0__Lean_importModulesCore_loadIR_x3f___redArg(ptr noundef %1, ptr noundef nonnull %i.v) ; 13 uses
  %i.jk = ptrtoint ptr %i.jj to i64               ; 2 uses
  %i.jl = and i64 %i.jk, 1
  %.not.i1982 = icmp eq i64 %i.jl, 0              ; 2 uses
  br i1 %.not.i1982, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %lean_inc.exit1726
  %i.jm = lshr i64 %i.jk, 1
  %i.jn = trunc i64 %i.jm to i32
  br label %lean_obj_tag.exit1985

bb.fs:                                            ; preds = %lean_inc.exit1726
  %i.jo = getelementptr i8, ptr %i.jj, i64 4
  %.val.i1984 = load i32, ptr %i.jo, align 4
  %i.jp = lshr i32 %.val.i1984, 24
  br label %lean_obj_tag.exit1985

lean_obj_tag.exit1985:                            ; preds = %bb.fr, %bb.fs
  %.0.i1983 = phi i32 [ %i.jn, %bb.fr ], [ %i.jp, %bb.fs ]
  %i.jq = icmp eq i32 %.0.i1983, 0
  br i1 %i.jq, label %bb.ft, label %bb.gg

bb.ft:                                            ; preds = %lean_obj_tag.exit1985
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !16 ; 8 uses
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = and i64 %i.jt, 1
  %.not.i1723 = icmp eq i64 %i.ju, 0
  br i1 %.not.i1723, label %bb.fu, label %lean_inc.exit1724

bb.fu:                                            ; preds = %bb.ft
  %.val.i.i1986 = load i32, ptr %i.js, align 4, !tbaa !11 ; 3 uses
  %i.jv = icmp sgt i32 %.val.i.i1986, 0
  br i1 %i.jv, label %bb.fv, label %bb.fw, !prof !14

bb.fv:                                            ; preds = %bb.fu
  %i.jw = add nuw i32 %.val.i.i1986, 1
  store i32 %i.jw, ptr %i.js, align 4, !tbaa !11
  br label %lean_inc.exit1724

bb.fw:                                            ; preds = %bb.fu
  %.not.i.i1987 = icmp eq i32 %.val.i.i1986, 0
  br i1 %.not.i.i1987, label %lean_inc.exit1724, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.jx = atomicrmw sub ptr %i.js, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1724

lean_inc.exit1724:                                ; preds = %bb.fx, %bb.fw, %bb.fv, %bb.ft
  %.val.i1989 = load i32, ptr %i.jj, align 8, !tbaa !11 ; 4 uses
  %i.jy = icmp eq i32 %.val.i1989, 1
  br i1 %i.jy, label %.preheader.i1991.preheader, label %bb.gc

.preheader.i1991.preheader:                       ; preds = %lean_inc.exit1724
  %i.jz = load ptr, ptr %i.jr, align 8, !tbaa !16 ; 4 uses
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = and i64 %i.ka, 1
  %.not.i.i1993 = icmp eq i64 %i.kb, 0
  br i1 %.not.i.i1993, label %bb.fy, label %lean_dec.exit.i1994

bb.fy:                                            ; preds = %.preheader.i1991.preheader
  %i.kc = load i32, ptr %i.jz, align 4, !tbaa !11 ; 3 uses
  %i.kd = icmp sgt i32 %i.kc, 1
  br i1 %i.kd, label %bb.fz, label %bb.ga, !prof !14

bb.fz:                                            ; preds = %bb.fy
  %i.ke = add nsw i32 %i.kc, -1
  store i32 %i.ke, ptr %i.jz, align 4, !tbaa !11
  br label %lean_dec.exit.i1994

bb.ga:                                            ; preds = %bb.fy
  %.not.i7.i1998 = icmp eq i32 %i.kc, 0
  br i1 %.not.i7.i1998, label %lean_dec.exit.i1994, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jz) #13
  br label %lean_dec.exit.i1994

lean_dec.exit.i1994:                              ; preds = %bb.gb, %bb.ga, %bb.fz, %.preheader.i1991.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.jj) #13
  br label %lean_dec_ref_known.exit1999.thread

bb.gc:                                            ; preds = %lean_inc.exit1724
  %i.kf = icmp sgt i32 %.val.i1989, 1
  br i1 %i.kf, label %bb.gd, label %bb.ge, !prof !14

bb.gd:                                            ; preds = %bb.gc
  %i.kg = add nsw i32 %.val.i1989, -1
  store i32 %i.kg, ptr %i.jj, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit1999.thread

bb.ge:                                            ; preds = %bb.gc
  %.not.i8.i1990 = icmp eq i32 %.val.i1989, 0
  br i1 %.not.i8.i1990, label %lean_dec_ref_known.exit1999.thread, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jj) #13
  br label %lean_dec_ref_known.exit1999.thread

bb.gg:                                            ; preds = %lean_obj_tag.exit1985
  %i.kh = load i32, ptr %.11468.ph, align 4, !tbaa !11 ; 3 uses
  %i.ki = icmp sgt i32 %i.kh, 1
  br i1 %i.ki, label %bb.gh, label %bb.gi, !prof !14

bb.gh:                                            ; preds = %bb.gg
  %i.kj = add nsw i32 %i.kh, -1
  store i32 %i.kj, ptr %.11468.ph, align 4, !tbaa !11
  br label %lean_dec_ref.exit1888

bb.gi:                                            ; preds = %bb.gg
  %.not.i1887 = icmp eq i32 %i.kh, 0
  br i1 %.not.i1887, label %lean_dec_ref.exit1888, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.11468.ph) #13
  br label %lean_dec_ref.exit1888

lean_dec_ref.exit1888:                            ; preds = %bb.gh, %bb.gi, %bb.gj
  %i.kk = load i32, ptr %.013252268, align 4, !tbaa !11 ; 3 uses
  %i.kl = icmp sgt i32 %i.kk, 1
  br i1 %i.kl, label %bb.gk, label %bb.gl, !prof !14

bb.gk:                                            ; preds = %lean_dec_ref.exit1888
  %i.km = add nsw i32 %i.kk, -1
  store i32 %i.km, ptr %.013252268, align 4, !tbaa !11
  br label %lean_dec_ref.exit1886

bb.gl:                                            ; preds = %lean_dec_ref.exit1888
  %.not.i1885 = icmp eq i32 %i.kk, 0
  br i1 %.not.i1885, label %lean_dec_ref.exit1886, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.013252268) #13
  br label %lean_dec_ref.exit1886

lean_dec_ref.exit1886:                            ; preds = %bb.gk, %bb.gl, %bb.gm
  br i1 %.not.i.i, label %bb.gn, label %lean_dec.exit1783

bb.gn:                                            ; preds = %lean_dec_ref.exit1886
  %i.kn = load i32, ptr %i.v, align 4, !tbaa !11  ; 3 uses
  %i.ko = icmp sgt i32 %i.kn, 1
  br i1 %i.ko, label %bb.go, label %bb.gp, !prof !14

bb.go:                                            ; preds = %bb.gn
  %i.kp = add nsw i32 %i.kn, -1
  store i32 %i.kp, ptr %i.v, align 4, !tbaa !11
  br label %lean_dec.exit1783

bb.gp:                                            ; preds = %bb.gn
  %.not.i1823 = icmp eq i32 %i.kn, 0
  br i1 %.not.i1823, label %lean_dec.exit1783, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #13
  br label %lean_dec.exit1783

lean_dec.exit1783:                                ; preds = %bb.gq, %bb.gp, %bb.go, %lean_dec_ref.exit1886
  br i1 %.not.i, label %bb.gr, label %lean_dec.exit1781

bb.gr:                                            ; preds = %lean_dec.exit1783
  %i.kq = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.kr = icmp sgt i32 %i.kq, 1
  br i1 %i.kr, label %bb.gs, label %bb.gt, !prof !14

bb.gs:                                            ; preds = %bb.gr
  %i.ks = add nsw i32 %i.kq, -1
  store i32 %i.ks, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit1781

bb.gt:                                            ; preds = %bb.gr
  %.not.i1825 = icmp eq i32 %i.kq, 0
  br i1 %.not.i1825, label %lean_dec.exit1781, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #13
  br label %lean_dec.exit1781

lean_dec.exit1781:                                ; preds = %bb.gu, %bb.gt, %bb.gs, %lean_dec.exit1783
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !16 ; 5 uses
  %.val1900 = load i32, ptr %i.jj, align 8, !tbaa !11
  %i.kv = icmp eq i32 %.val1900, 1
  br i1 %i.kv, label %lean_dec_ref_known.exit.thread.thread, label %bb.gv

bb.gv:                                            ; preds = %lean_dec.exit1781
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = and i64 %i.kw, 1
  %.not.i1721 = icmp eq i64 %i.kx, 0
  br i1 %.not.i1721, label %bb.gw, label %lean_inc.exit1722

bb.gw:                                            ; preds = %bb.gv
  %.val.i.i2000 = load i32, ptr %i.ku, align 4, !tbaa !11 ; 3 uses
  %i.ky = icmp sgt i32 %.val.i.i2000, 0
  br i1 %i.ky, label %bb.gx, label %bb.gy, !prof !14

bb.gx:                                            ; preds = %bb.gw
  %i.kz = add nuw i32 %.val.i.i2000, 1
  store i32 %i.kz, ptr %i.ku, align 4, !tbaa !11
  br label %lean_inc.exit1722

bb.gy:                                            ; preds = %bb.gw
  %.not.i.i2001 = icmp eq i32 %.val.i.i2000, 0
  br i1 %.not.i.i2001, label %lean_inc.exit1722, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.la = atomicrmw sub ptr %i.ku, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1722

lean_inc.exit1722:                                ; preds = %bb.gz, %bb.gy, %bb.gx, %bb.gv
  br i1 %.not.i1982, label %bb.ha, label %bb.he

bb.ha:                                            ; preds = %lean_inc.exit1722
  %i.lb = load i32, ptr %i.jj, align 8, !tbaa !11 ; 3 uses
  %i.lc = icmp sgt i32 %i.lb, 1
  br i1 %i.lc, label %bb.hb, label %bb.hc, !prof !14

bb.hb:                                            ; preds = %bb.ha
  %i.ld = add nsw i32 %i.lb, -1
  store i32 %i.ld, ptr %i.jj, align 8, !tbaa !11
  br label %bb.he

bb.hc:                                            ; preds = %bb.ha
  %.not.i1827 = icmp eq i32 %i.lb, 0
  br i1 %.not.i1827, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jj) #13
  br label %bb.he

bb.he:                                            ; preds = %lean_inc.exit1722, %bb.hb, %bb.hc, %bb.hd
  tail call void @lean_inc_heartbeat() #13
  %i.le = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #13 ; 5 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %bb.hf, label %lean_alloc_ctor.exit2003

bb.hf:                                            ; preds = %bb.he
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit2003:                         ; preds = %bb.he
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  store i32 1, ptr %i.le, align 4, !tbaa !11
  store i32 16842768, ptr %i.lg, align 4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store ptr %i.ku, ptr %i.lh, align 8, !tbaa !16
  br label %lean_dec_ref_known.exit.thread.thread

lean_dec_ref_known.exit2050.thread:               ; preds = %bb.kk, %bb.kj, %lean_dec.exit.i2045, %bb.kl, %lean_nat_eq.exit, %lean_dec_ref.exit1868
  %.01417 = phi ptr [ %.01382, %lean_dec_ref.exit1868 ], [ %i.ot, %bb.kk ], [ %i.ot, %bb.kj ], [ %i.ot, %lean_dec.exit.i2045 ], [ %i.ot, %bb.kl ], [ %.01382, %lean_nat_eq.exit ] ; 7 uses
  %i.li = icmp eq i8 %.01370, 0
  br i1 %i.li, label %bb.hg, label %bb.hl

bb.hg:                                            ; preds = %lean_dec_ref_known.exit2050.thread
  br i1 %.not.i.i, label %bb.hh, label %lean_dec.exit1777

bb.hh:                                            ; preds = %bb.hg
  %i.lj = load i32, ptr %i.v, align 8, !tbaa !11  ; 3 uses
  %i.lk = icmp sgt i32 %i.lj, 1
  br i1 %i.lk, label %bb.hi, label %bb.hj, !prof !14

bb.hi:                                            ; preds = %bb.hh
  %i.ll = add nsw i32 %i.lj, -1
  store i32 %i.ll, ptr %i.v, align 8, !tbaa !11
  br label %lean_dec.exit1777

bb.hj:                                            ; preds = %bb.hh
  %.not.i1829 = icmp eq i32 %i.lj, 0
  br i1 %.not.i1829, label %lean_dec.exit1777, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #13
  br label %lean_dec.exit1777

bb.hl:                                            ; preds = %lean_dec_ref_known.exit2050.thread
  %i.lm = ptrtoint ptr %.01380 to i64             ; 2 uses
  %i.ln = and i64 %i.lm, 1
  %.not.i2004 = icmp eq i64 %i.ln, 0
  br i1 %.not.i2004, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.lo = lshr i64 %i.lm, 1
  %i.lp = trunc i64 %i.lo to i32
  br label %lean_obj_tag.exit2007

bb.hn:                                            ; preds = %bb.hl
  %i.lq = getelementptr i8, ptr %.01380, i64 4
  %.val.i2006 = load i32, ptr %i.lq, align 4
  %i.lr = lshr i32 %.val.i2006, 24
  br label %lean_obj_tag.exit2007

lean_obj_tag.exit2007:                            ; preds = %bb.hm, %bb.hn
  %.0.i2005 = phi i32 [ %i.lp, %bb.hm ], [ %i.lr, %bb.hn ]
  %i.ls = icmp eq i32 %.0.i2005, 0
  br i1 %i.ls, label %bb.ho, label %bb.jk

bb.ho:                                            ; preds = %lean_obj_tag.exit2007
  %i.lt = tail call ptr @l___private_Lean_Environment_0__Lean_importModulesCore_loadIR_x3f___redArg(ptr noundef %1, ptr noundef nonnull %i.v) ; 13 uses
  %i.lu = ptrtoint ptr %i.lt to i64               ; 2 uses
  %i.lv = and i64 %i.lu, 1
  %.not.i2008 = icmp eq i64 %i.lv, 0              ; 2 uses
  br i1 %.not.i2008, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.lw = lshr i64 %i.lu, 1
  %i.lx = trunc i64 %i.lw to i32
  br label %lean_obj_tag.exit2011

bb.hq:                                            ; preds = %bb.ho
  %i.ly = getelementptr i8, ptr %i.lt, i64 4
  %.val.i2010 = load i32, ptr %i.ly, align 4
  %i.lz = lshr i32 %.val.i2010, 24
  br label %lean_obj_tag.exit2011

lean_obj_tag.exit2011:                            ; preds = %bb.hp, %bb.hq
  %.0.i2009 = phi i32 [ %i.lx, %bb.hp ], [ %i.lz, %bb.hq ]
  %i.ma = icmp eq i32 %.0.i2009, 0
  br i1 %i.ma, label %bb.hr, label %bb.ie

bb.hr:                                            ; preds = %lean_obj_tag.exit2011
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !16 ; 8 uses
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = and i64 %i.md, 1
  %.not.i1719 = icmp eq i64 %i.me, 0
  br i1 %.not.i1719, label %bb.hs, label %lean_inc.exit1720

bb.hs:                                            ; preds = %bb.hr
  %.val.i.i2012 = load i32, ptr %i.mc, align 4, !tbaa !11 ; 3 uses
  %i.mf = icmp sgt i32 %.val.i.i2012, 0
  br i1 %i.mf, label %bb.ht, label %bb.hu, !prof !14

bb.ht:                                            ; preds = %bb.hs
  %i.mg = add nuw i32 %.val.i.i2012, 1
  store i32 %i.mg, ptr %i.mc, align 4, !tbaa !11
  br label %lean_inc.exit1720

bb.hu:                                            ; preds = %bb.hs
  %.not.i.i2013 = icmp eq i32 %.val.i.i2012, 0
  br i1 %.not.i.i2013, label %lean_inc.exit1720, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.mh = atomicrmw sub ptr %i.mc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1720

lean_inc.exit1720:                                ; preds = %bb.hv, %bb.hu, %bb.ht, %bb.hr
  %.val.i2015 = load i32, ptr %i.lt, align 8, !tbaa !11 ; 4 uses
  %i.mi = icmp eq i32 %.val.i2015, 1
  br i1 %i.mi, label %.preheader.i2017.preheader, label %bb.ia

.preheader.i2017.preheader:                       ; preds = %lean_inc.exit1720
  %i.mj = load ptr, ptr %i.mb, align 8, !tbaa !16 ; 4 uses
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = and i64 %i.mk, 1
  %.not.i.i2019 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i2019, label %bb.hw, label %lean_dec.exit.i2020

bb.hw:                                            ; preds = %.preheader.i2017.preheader
  %i.mm = load i32, ptr %i.mj, align 4, !tbaa !11 ; 3 uses
  %i.mn = icmp sgt i32 %i.mm, 1
  br i1 %i.mn, label %bb.hx, label %bb.hy, !prof !14

bb.hx:                                            ; preds = %bb.hw
  %i.mo = add nsw i32 %i.mm, -1
  store i32 %i.mo, ptr %i.mj, align 4, !tbaa !11
  br label %lean_dec.exit.i2020

bb.hy:                                            ; preds = %bb.hw
  %.not.i7.i2024 = icmp eq i32 %i.mm, 0
  br i1 %.not.i7.i2024, label %lean_dec.exit.i2020, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mj) #13
  br label %lean_dec.exit.i2020

lean_dec.exit.i2020:                              ; preds = %bb.hz, %bb.hy, %bb.hx, %.preheader.i2017.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.lt) #13
  br label %lean_dec.exit1777

bb.ia:                                            ; preds = %lean_inc.exit1720
  %i.mp = icmp sgt i32 %.val.i2015, 1
  br i1 %i.mp, label %bb.ib, label %bb.ic, !prof !14

bb.ib:                                            ; preds = %bb.ia
  %i.mq = add nsw i32 %.val.i2015, -1
  store i32 %i.mq, ptr %i.lt, align 8, !tbaa !11
  br label %lean_dec.exit1777

bb.ic:                                            ; preds = %bb.ia
  %.not.i8.i2016 = icmp eq i32 %.val.i2015, 0
  br i1 %.not.i8.i2016, label %lean_dec.exit1777, label %bb.id

bb.id:                                            ; preds = %bb.ic
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lt) #13
  br label %lean_dec.exit1777

bb.ie:                                            ; preds = %lean_obj_tag.exit2011
  %i.mr = load i32, ptr %.01417, align 4, !tbaa !11 ; 3 uses
  %i.ms = icmp sgt i32 %i.mr, 1
  br i1 %i.ms, label %bb.if, label %bb.ig, !prof !14

bb.if:                                            ; preds = %bb.ie
  %i.mt = add nsw i32 %i.mr, -1
  store i32 %i.mt, ptr %.01417, align 4, !tbaa !11
  br label %lean_dec_ref.exit1884

bb.ig:                                            ; preds = %bb.ie
  %.not.i1883 = icmp eq i32 %i.mr, 0
  br i1 %.not.i1883, label %lean_dec_ref.exit1884, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01417) #13
  br label %lean_dec_ref.exit1884

lean_dec_ref.exit1884:                            ; preds = %bb.if, %bb.ig, %bb.ih
  %i.mu = ptrtoint ptr %i.yd to i64
  %i.mv = and i64 %i.mu, 1
  %.not.i1774 = icmp eq i64 %i.mv, 0
  br i1 %.not.i1774, label %bb.ii, label %lean_dec.exit1775

bb.ii:                                            ; preds = %lean_dec_ref.exit1884
  %i.mw = load i32, ptr %i.yd, align 4, !tbaa !11 ; 3 uses
  %i.mx = icmp sgt i32 %i.mw, 1
  br i1 %i.mx, label %bb.ij, label %bb.ik, !prof !14

bb.ij:                                            ; preds = %bb.ii
  %i.my = add nsw i32 %i.mw, -1
  store i32 %i.my, ptr %i.yd, align 4, !tbaa !11
  br label %lean_dec.exit1775

bb.ik:                                            ; preds = %bb.ii
  %.not.i1831 = icmp eq i32 %i.mw, 0
  br i1 %.not.i1831, label %lean_dec.exit1775, label %bb.il

bb.il:                                            ; preds = %bb.ik
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.yd) #13
  br label %lean_dec.exit1775

lean_dec.exit1775:                                ; preds = %bb.il, %bb.ik, %bb.ij, %lean_dec_ref.exit1884
  %i.mz = load i32, ptr %i.qx, align 4, !tbaa !11 ; 3 uses
  %i.na = icmp sgt i32 %i.mz, 1
  br i1 %i.na, label %bb.im, label %bb.in, !prof !14

bb.im:                                            ; preds = %lean_dec.exit1775
  %i.nb = add nsw i32 %i.mz, -1
  store i32 %i.nb, ptr %i.qx, align 4, !tbaa !11
  br label %lean_dec_ref.exit1882

bb.in:                                            ; preds = %lean_dec.exit1775
  %.not.i1881 = icmp eq i32 %i.mz, 0
  br i1 %.not.i1881, label %lean_dec_ref.exit1882, label %bb.io

bb.io:                                            ; preds = %bb.in
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qx) #13
  br label %lean_dec_ref.exit1882

lean_dec_ref.exit1882:                            ; preds = %bb.im, %bb.in, %bb.io
  %i.nc = load i32, ptr %i.ty, align 4, !tbaa !11 ; 3 uses
  %i.nd = icmp sgt i32 %i.nc, 1
  br i1 %i.nd, label %bb.ip, label %bb.iq, !prof !14

bb.ip:                                            ; preds = %lean_dec_ref.exit1882
  %i.ne = add nsw i32 %i.nc, -1
  store i32 %i.ne, ptr %i.ty, align 4, !tbaa !11
  br label %lean_dec_ref.exit1880

bb.iq:                                            ; preds = %lean_dec_ref.exit1882
  %.not.i1879 = icmp eq i32 %i.nc, 0
  br i1 %.not.i1879, label %lean_dec_ref.exit1880, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ty) #13
  br label %lean_dec_ref.exit1880

lean_dec_ref.exit1880:                            ; preds = %bb.ip, %bb.iq, %bb.ir
  %i.nf = load i32, ptr %.013252268, align 4, !tbaa !11 ; 3 uses
  %i.ng = icmp sgt i32 %i.nf, 1
  br i1 %i.ng, label %bb.is, label %bb.it, !prof !14

bb.is:                                            ; preds = %lean_dec_ref.exit1880
  %i.nh = add nsw i32 %i.nf, -1
  store i32 %i.nh, ptr %.013252268, align 4, !tbaa !11
  br label %lean_dec_ref.exit1878

bb.it:                                            ; preds = %lean_dec_ref.exit1880
  %.not.i1877 = icmp eq i32 %i.nf, 0
  br i1 %.not.i1877, label %lean_dec_ref.exit1878, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.013252268) #13
  br label %lean_dec_ref.exit1878

lean_dec_ref.exit1878:                            ; preds = %bb.is, %bb.it, %bb.iu
  br i1 %.not.i, label %bb.iv, label %lean_dec.exit1773

bb.iv:                                            ; preds = %lean_dec_ref.exit1878
  %i.ni = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.nj = icmp sgt i32 %i.ni, 1
  br i1 %i.nj, label %bb.iw, label %bb.ix, !prof !14

bb.iw:                                            ; preds = %bb.iv
  %i.nk = add nsw i32 %i.ni, -1
  store i32 %i.nk, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit1773

bb.ix:                                            ; preds = %bb.iv
  %.not.i1833 = icmp eq i32 %i.ni, 0
  br i1 %.not.i1833, label %lean_dec.exit1773, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #13
  br label %lean_dec.exit1773

lean_dec.exit1773:                                ; preds = %bb.iy, %bb.ix, %bb.iw, %lean_dec_ref.exit1878
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !16 ; 5 uses
  %.val1899 = load i32, ptr %i.lt, align 8, !tbaa !11
  %i.nn = icmp eq i32 %.val1899, 1
  br i1 %i.nn, label %lean_dec_ref_known.exit.thread.thread, label %bb.iz

bb.iz:                                            ; preds = %lean_dec.exit1773
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = and i64 %i.no, 1
  %.not.i1717 = icmp eq i64 %i.np, 0
  br i1 %.not.i1717, label %bb.ja, label %lean_inc.exit1718

bb.ja:                                            ; preds = %bb.iz
  %.val.i.i2026 = load i32, ptr %i.nm, align 4, !tbaa !11 ; 3 uses
  %i.nq = icmp sgt i32 %.val.i.i2026, 0
  br i1 %i.nq, label %bb.jb, label %bb.jc, !prof !14

bb.jb:                                            ; preds = %bb.ja
  %i.nr = add nuw i32 %.val.i.i2026, 1
  store i32 %i.nr, ptr %i.nm, align 4, !tbaa !11
  br label %lean_inc.exit1718

bb.jc:                                            ; preds = %bb.ja
  %.not.i.i2027 = icmp eq i32 %.val.i.i2026, 0
  br i1 %.not.i.i2027, label %lean_inc.exit1718, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.ns = atomicrmw sub ptr %i.nm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1718

lean_inc.exit1718:                                ; preds = %bb.jd, %bb.jc, %bb.jb, %bb.iz
  br i1 %.not.i2008, label %bb.je, label %bb.ji

bb.je:                                            ; preds = %lean_inc.exit1718
  %i.nt = load i32, ptr %i.lt, align 8, !tbaa !11 ; 3 uses
  %i.nu = icmp sgt i32 %i.nt, 1
  br i1 %i.nu, label %bb.jf, label %bb.jg, !prof !14

bb.jf:                                            ; preds = %bb.je
  %i.nv = add nsw i32 %i.nt, -1
  store i32 %i.nv, ptr %i.lt, align 8, !tbaa !11
  br label %bb.ji

bb.jg:                                            ; preds = %bb.je
  %.not.i1835 = icmp eq i32 %i.nt, 0
  br i1 %.not.i1835, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lt) #13
  br label %bb.ji

bb.ji:                                            ; preds = %lean_inc.exit1718, %bb.jf, %bb.jg, %bb.jh
  tail call void @lean_inc_heartbeat() #13
  %i.nw = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #13 ; 5 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %bb.jj, label %lean_alloc_ctor.exit2029

bb.jj:                                            ; preds = %bb.ji
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit2029:                         ; preds = %bb.ji
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  store i32 1, ptr %i.nw, align 4, !tbaa !11
  store i32 16842768, ptr %i.ny, align 4
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store ptr %i.nm, ptr %i.nz, align 8, !tbaa !16
  br label %lean_dec_ref_known.exit.thread.thread

bb.jk:                                            ; preds = %lean_obj_tag.exit2007
  br i1 %.not.i.i, label %bb.jl, label %lean_dec.exit1777

bb.jl:                                            ; preds = %bb.jk
  %i.oa = load i32, ptr %i.v, align 8, !tbaa !11  ; 3 uses
  %i.ob = icmp sgt i32 %i.oa, 1
  br i1 %i.ob, label %bb.jm, label %bb.jn, !prof !14

bb.jm:                                            ; preds = %bb.jl
  %i.oc = add nsw i32 %i.oa, -1
  store i32 %i.oc, ptr %i.v, align 8, !tbaa !11
  br label %lean_dec.exit1777

bb.jn:                                            ; preds = %bb.jl
  %.not.i1837 = icmp eq i32 %i.oa, 0
  br i1 %.not.i1837, label %lean_dec.exit1777, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #13
  br label %lean_dec.exit1777

lean_nat_eq.exit:                                 ; preds = %lean_dec_ref.exit1868
  %i.od = getelementptr i8, ptr %.01382, i64 8
  %.01382.val = load i64, ptr %i.od, align 8, !tbaa !13
  %.mask = and i64 %.01382.val, 9223372036854775807
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %bb.jp, label %lean_dec_ref_known.exit2050.thread

bb.jp:                                            ; preds = %lean_nat_eq.exit
  %i.oe = load i32, ptr %.01382, align 8, !tbaa !11 ; 3 uses
  %i.of = icmp sgt i32 %i.oe, 1
  br i1 %i.of, label %bb.jq, label %bb.jr, !prof !14

bb.jq:                                            ; preds = %bb.jp
  %i.og = add nsw i32 %i.oe, -1
  store i32 %i.og, ptr %.01382, align 8, !tbaa !11
  br label %lean_dec_ref.exit1876

bb.jr:                                            ; preds = %bb.jp
  %.not.i1875 = icmp eq i32 %i.oe, 0
  br i1 %.not.i1875, label %lean_dec_ref.exit1876, label %bb.js

bb.js:                                            ; preds = %bb.jr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01382) #13
  br label %lean_dec_ref.exit1876

lean_dec_ref.exit1876:                            ; preds = %bb.jq, %bb.jr, %bb.js
  br i1 %.not.i.i, label %bb.jt, label %lean_inc.exit1716

bb.jt:                                            ; preds = %lean_dec_ref.exit1876
  %.val.i.i2030 = load i32, ptr %i.v, align 8, !tbaa !11 ; 3 uses
  %i.oh = icmp sgt i32 %.val.i.i2030, 0
  br i1 %i.oh, label %bb.ju, label %bb.jv, !prof !14

bb.ju:                                            ; preds = %bb.jt
  %i.oi = add nuw i32 %.val.i.i2030, 1
  store i32 %i.oi, ptr %i.v, align 8, !tbaa !11
  br label %lean_inc.exit1716

bb.jv:                                            ; preds = %bb.jt
  %.not.i.i2031 = icmp eq i32 %.val.i.i2030, 0
  br i1 %.not.i.i2031, label %lean_inc.exit1716, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.oj = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1716

lean_inc.exit1716:                                ; preds = %bb.jw, %bb.jv, %bb.ju, %lean_dec_ref.exit1876
  %i.ok = tail call ptr @l___private_Lean_Environment_0__Lean_importModulesCore_loadData___redArg(i8 noundef zeroext %0, ptr noundef %1, ptr noundef nonnull %i.v) ; 13 uses
  %i.ol = ptrtoint ptr %i.ok to i64               ; 2 uses
  %i.om = and i64 %i.ol, 1
  %.not.i2033 = icmp eq i64 %i.om, 0              ; 2 uses
  br i1 %.not.i2033, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %lean_inc.exit1716
  %i.on = lshr i64 %i.ol, 1
  %i.oo = trunc i64 %i.on to i32
  br label %lean_obj_tag.exit2036

bb.jy:                                            ; preds = %lean_inc.exit1716
  %i.op = getelementptr i8, ptr %i.ok, i64 4
  %.val.i2035 = load i32, ptr %i.op, align 4
  %i.oq = lshr i32 %.val.i2035, 24
  br label %lean_obj_tag.exit2036

lean_obj_tag.exit2036:                            ; preds = %bb.jx, %bb.jy
  %.0.i2034 = phi i32 [ %i.oo, %bb.jx ], [ %i.oq, %bb.jy ]
  %i.or = icmp eq i32 %.0.i2034, 0
  br i1 %i.or, label %bb.jz, label %bb.km

bb.jz:                                            ; preds = %lean_obj_tag.exit2036
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 8 ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !16 ; 8 uses
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = and i64 %i.ou, 1
  %.not.i1713 = icmp eq i64 %i.ov, 0
  br i1 %.not.i1713, label %bb.ka, label %lean_inc.exit1714

bb.ka:                                            ; preds = %bb.jz
  %.val.i.i2037 = load i32, ptr %i.ot, align 4, !tbaa !11 ; 3 uses
  %i.ow = icmp sgt i32 %.val.i.i2037, 0
  br i1 %i.ow, label %bb.kb, label %bb.kc, !prof !14

bb.kb:                                            ; preds = %bb.ka
  %i.ox = add nuw i32 %.val.i.i2037, 1
  store i32 %i.ox, ptr %i.ot, align 4, !tbaa !11
  br label %lean_inc.exit1714

bb.kc:                                            ; preds = %bb.ka
  %.not.i.i2038 = icmp eq i32 %.val.i.i2037, 0
  br i1 %.not.i.i2038, label %lean_inc.exit1714, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.oy = atomicrmw sub ptr %i.ot, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1714

lean_inc.exit1714:                                ; preds = %bb.kd, %bb.kc, %bb.kb, %bb.jz
  %.val.i2040 = load i32, ptr %i.ok, align 8, !tbaa !11 ; 4 uses
  %i.oz = icmp eq i32 %.val.i2040, 1
  br i1 %i.oz, label %.preheader.i2042.preheader, label %bb.ki

.preheader.i2042.preheader:                       ; preds = %lean_inc.exit1714
  %i.pa = load ptr, ptr %i.os, align 8, !tbaa !16 ; 4 uses
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = and i64 %i.pb, 1
  %.not.i.i2044 = icmp eq i64 %i.pc, 0
  br i1 %.not.i.i2044, label %bb.ke, label %lean_dec.exit.i2045

bb.ke:                                            ; preds = %.preheader.i2042.preheader
  %i.pd = load i32, ptr %i.pa, align 4, !tbaa !11 ; 3 uses
  %i.pe = icmp sgt i32 %i.pd, 1
  br i1 %i.pe, label %bb.kf, label %bb.kg, !prof !14

bb.kf:                                            ; preds = %bb.ke
  %i.pf = add nsw i32 %i.pd, -1
  store i32 %i.pf, ptr %i.pa, align 4, !tbaa !11
  br label %lean_dec.exit.i2045

bb.kg:                                            ; preds = %bb.ke
  %.not.i7.i2049 = icmp eq i32 %i.pd, 0
  br i1 %.not.i7.i2049, label %lean_dec.exit.i2045, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pa) #13
  br label %lean_dec.exit.i2045

lean_dec.exit.i2045:                              ; preds = %bb.kh, %bb.kg, %bb.kf, %.preheader.i2042.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.ok) #13
  br label %lean_dec_ref_known.exit2050.thread

bb.ki:                                            ; preds = %lean_inc.exit1714
  %i.pg = icmp sgt i32 %.val.i2040, 1
  br i1 %i.pg, label %bb.kj, label %bb.kk, !prof !14

bb.kj:                                            ; preds = %bb.ki
  %i.ph = add nsw i32 %.val.i2040, -1
  store i32 %i.ph, ptr %i.ok, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit2050.thread

bb.kk:                                            ; preds = %bb.ki
  %.not.i8.i2041 = icmp eq i32 %.val.i2040, 0
  br i1 %.not.i8.i2041, label %lean_dec_ref_known.exit2050.thread, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ok) #13
  br label %lean_dec_ref_known.exit2050.thread

bb.km:                                            ; preds = %lean_obj_tag.exit2036
  %i.pi = ptrtoint ptr %i.yd to i64
  %i.pj = and i64 %i.pi, 1
  %.not.i1766 = icmp eq i64 %i.pj, 0
  br i1 %.not.i1766, label %bb.kn, label %lean_dec.exit1767

bb.kn:                                            ; preds = %bb.km
  %i.pk = load i32, ptr %i.yd, align 4, !tbaa !11 ; 3 uses
  %i.pl = icmp sgt i32 %i.pk, 1
  br i1 %i.pl, label %bb.ko, label %bb.kp, !prof !14

bb.ko:                                            ; preds = %bb.kn
  %i.pm = add nsw i32 %i.pk, -1
  store i32 %i.pm, ptr %i.yd, align 4, !tbaa !11
  br label %lean_dec.exit1767

bb.kp:                                            ; preds = %bb.kn
  %.not.i1839 = icmp eq i32 %i.pk, 0
  br i1 %.not.i1839, label %lean_dec.exit1767, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.yd) #13
  br label %lean_dec.exit1767

lean_dec.exit1767:                                ; preds = %bb.kq, %bb.kp, %bb.ko, %bb.km
  %i.pn = load i32, ptr %i.qx, align 4, !tbaa !11 ; 3 uses
  %i.po = icmp sgt i32 %i.pn, 1
  br i1 %i.po, label %bb.kr, label %bb.ks, !prof !14

bb.kr:                                            ; preds = %lean_dec.exit1767
  %i.pp = add nsw i32 %i.pn, -1
  store i32 %i.pp, ptr %i.qx, align 4, !tbaa !11
  br label %lean_dec_ref.exit1874

bb.ks:                                            ; preds = %lean_dec.exit1767
  %.not.i1873 = icmp eq i32 %i.pn, 0
  br i1 %.not.i1873, label %lean_dec_ref.exit1874, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qx) #13
  br label %lean_dec_ref.exit1874

lean_dec_ref.exit1874:                            ; preds = %bb.kr, %bb.ks, %bb.kt
  %i.pq = load i32, ptr %i.ty, align 4, !tbaa !11 ; 3 uses
  %i.pr = icmp sgt i32 %i.pq, 1
  br i1 %i.pr, label %bb.ku, label %bb.kv, !prof !14

bb.ku:                                            ; preds = %lean_dec_ref.exit1874
  %i.ps = add nsw i32 %i.pq, -1
  store i32 %i.ps, ptr %i.ty, align 4, !tbaa !11
  br label %lean_dec_ref.exit1872

bb.kv:                                            ; preds = %lean_dec_ref.exit1874
  %.not.i1871 = icmp eq i32 %i.pq, 0
  br i1 %.not.i1871, label %lean_dec_ref.exit1872, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ty) #13
  br label %lean_dec_ref.exit1872

lean_dec_ref.exit1872:                            ; preds = %bb.ku, %bb.kv, %bb.kw
  %i.pt = ptrtoint ptr %.01380 to i64
  %i.pu = and i64 %i.pt, 1
  %.not.i1764 = icmp eq i64 %i.pu, 0
  br i1 %.not.i1764, label %bb.kx, label %lean_dec.exit1765

bb.kx:                                            ; preds = %lean_dec_ref.exit1872
  %i.pv = load i32, ptr %.01380, align 4, !tbaa !11 ; 3 uses
  %i.pw = icmp sgt i32 %i.pv, 1
  br i1 %i.pw, label %bb.ky, label %bb.kz, !prof !14

bb.ky:                                            ; preds = %bb.kx
  %i.px = add nsw i32 %i.pv, -1
  store i32 %i.px, ptr %.01380, align 4, !tbaa !11
  br label %lean_dec.exit1765

bb.kz:                                            ; preds = %bb.kx
  %.not.i1841 = icmp eq i32 %i.pv, 0
  br i1 %.not.i1841, label %lean_dec.exit1765, label %bb.la

bb.la:                                            ; preds = %bb.kz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01380) #13
  br label %lean_dec.exit1765

lean_dec.exit1765:                                ; preds = %bb.la, %bb.kz, %bb.ky, %lean_dec_ref.exit1872
  %i.py = load i32, ptr %.013252268, align 4, !tbaa !11 ; 3 uses
  %i.pz = icmp sgt i32 %i.py, 1
  br i1 %i.pz, label %bb.lb, label %bb.lc, !prof !14

bb.lb:                                            ; preds = %lean_dec.exit1765
  %i.qa = add nsw i32 %i.py, -1
  store i32 %i.qa, ptr %.013252268, align 4, !tbaa !11
  br label %lean_dec_ref.exit1870

bb.lc:                                            ; preds = %lean_dec.exit1765
  %.not.i1869 = icmp eq i32 %i.py, 0
  br i1 %.not.i1869, label %lean_dec_ref.exit1870, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.013252268) #13
  br label %lean_dec_ref.exit1870

lean_dec_ref.exit1870:                            ; preds = %bb.lb, %bb.lc, %bb.ld
  br i1 %.not.i.i, label %bb.le, label %lean_dec.exit1763

bb.le:                                            ; preds = %lean_dec_ref.exit1870
  %i.qb = load i32, ptr %i.v, align 4, !tbaa !11  ; 3 uses
  %i.qc = icmp sgt i32 %i.qb, 1
  br i1 %i.qc, label %bb.lf, label %bb.lg, !prof !14

bb.lf:                                            ; preds = %bb.le
  %i.qd = add nsw i32 %i.qb, -1
  store i32 %i.qd, ptr %i.v, align 4, !tbaa !11
  br label %lean_dec.exit1763

bb.lg:                                            ; preds = %bb.le
  %.not.i1843 = icmp eq i32 %i.qb, 0
  br i1 %.not.i1843, label %lean_dec.exit1763, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #13
  br label %lean_dec.exit1763

lean_dec.exit1763:                                ; preds = %bb.lh, %bb.lg, %bb.lf, %lean_dec_ref.exit1870
  br i1 %.not.i, label %bb.li, label %lean_dec.exit1761

bb.li:                                            ; preds = %lean_dec.exit1763
  %i.qe = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.qf = icmp sgt i32 %i.qe, 1
  br i1 %i.qf, label %bb.lj, label %bb.lk, !prof !14

bb.lj:                                            ; preds = %bb.li
  %i.qg = add nsw i32 %i.qe, -1
  store i32 %i.qg, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit1761

bb.lk:                                            ; preds = %bb.li
  %.not.i1845 = icmp eq i32 %i.qe, 0
  br i1 %.not.i1845, label %lean_dec.exit1761, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #13
  br label %lean_dec.exit1761

lean_dec.exit1761:                                ; preds = %bb.ll, %bb.lk, %bb.lj, %lean_dec.exit1763
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !16 ; 5 uses
  %.val1898 = load i32, ptr %i.ok, align 8, !tbaa !11
  %i.qj = icmp eq i32 %.val1898, 1
  br i1 %i.qj, label %lean_dec_ref_known.exit.thread.thread, label %bb.lm

bb.lm:                                            ; preds = %lean_dec.exit1761
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = and i64 %i.qk, 1
  %.not.i1711 = icmp eq i64 %i.ql, 0
  br i1 %.not.i1711, label %bb.ln, label %lean_inc.exit1712

bb.ln:                                            ; preds = %bb.lm
  %.val.i.i2051 = load i32, ptr %i.qi, align 4, !tbaa !11 ; 3 uses
  %i.qm = icmp sgt i32 %.val.i.i2051, 0
  br i1 %i.qm, label %bb.lo, label %bb.lp, !prof !14

bb.lo:                                            ; preds = %bb.ln
  %i.qn = add nuw i32 %.val.i.i2051, 1
  store i32 %i.qn, ptr %i.qi, align 4, !tbaa !11
  br label %lean_inc.exit1712

bb.lp:                                            ; preds = %bb.ln
  %.not.i.i2052 = icmp eq i32 %.val.i.i2051, 0
  br i1 %.not.i.i2052, label %lean_inc.exit1712, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.qo = atomicrmw sub ptr %i.qi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1712

lean_inc.exit1712:                                ; preds = %bb.lq, %bb.lp, %bb.lo, %bb.lm
  br i1 %.not.i2033, label %bb.lr, label %bb.lv

bb.lr:                                            ; preds = %lean_inc.exit1712
  %i.qp = load i32, ptr %i.ok, align 8, !tbaa !11 ; 3 uses
  %i.qq = icmp sgt i32 %i.qp, 1
  br i1 %i.qq, label %bb.ls, label %bb.lt, !prof !14

bb.ls:                                            ; preds = %bb.lr
  %i.qr = add nsw i32 %i.qp, -1
  store i32 %i.qr, ptr %i.ok, align 8, !tbaa !11
  br label %bb.lv

bb.lt:                                            ; preds = %bb.lr
  %.not.i1847 = icmp eq i32 %i.qp, 0
  br i1 %.not.i1847, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ok) #13
  br label %bb.lv

bb.lv:                                            ; preds = %lean_inc.exit1712, %bb.ls, %bb.lt, %bb.lu
  tail call void @lean_inc_heartbeat() #13
  %i.qs = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #13 ; 5 uses
  %i.qt = icmp eq ptr %i.qs, null
  br i1 %i.qt, label %bb.lw, label %lean_alloc_ctor.exit2054

bb.lw:                                            ; preds = %bb.lv
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit2054:                         ; preds = %bb.lv
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  store i32 1, ptr %i.qs, align 4, !tbaa !11
  store i32 16842768, ptr %i.qu, align 4
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store ptr %i.qi, ptr %i.qv, align 8, !tbaa !16
  br label %lean_dec_ref_known.exit.thread.thread

lean_inc.exit1710:                                ; preds = %lean_inc_ref.exit2072, %bb.my, %bb.mz, %bb.na, %lean_inc_ref.exit2063, %bb.mn, %bb.mo, %bb.mp, %lean_inc.exit1706
  %.01384 = phi ptr [ %i.st, %lean_inc.exit1706 ], [ %i.rp, %lean_inc_ref.exit2063 ], [ %i.rp, %bb.mp ], [ %i.rp, %bb.mo ], [ %i.rp, %bb.mn ], [ %i.rp, %bb.na ], [ %i.rp, %bb.mz ], [ %i.rp, %bb.my ], [ %i.rp, %lean_inc_ref.exit2072 ] ; 6 uses
  %.01382 = phi ptr [ %i.sy, %lean_inc.exit1706 ], [ %i.ru, %lean_inc_ref.exit2063 ], [ %i.ru, %bb.mp ], [ %i.ru, %bb.mo ], [ %i.ru, %bb.mn ], [ %i.si, %bb.na ], [ %i.si, %bb.mz ], [ %i.si, %bb.my ], [ %i.si, %lean_inc_ref.exit2072 ] ; 6 uses
  %.01380 = phi ptr [ %i.td, %lean_inc.exit1706 ], [ %i.rz, %lean_inc_ref.exit2063 ], [ %i.rz, %bb.mp ], [ %i.rz, %bb.mo ], [ %i.rz, %bb.mn ], [ %i.sn, %bb.na ], [ %i.sn, %bb.mz ], [ %i.sn, %bb.my ], [ %i.sn, %lean_inc_ref.exit2072 ] ; 14 uses
  %.01378 = phi i1 [ %i.tl, %lean_inc.exit1706 ], [ true, %lean_inc_ref.exit2063 ], [ true, %bb.mp ], [ true, %bb.mo ], [ true, %bb.mn ], [ false, %bb.na ], [ false, %bb.mz ], [ false, %bb.my ], [ false, %lean_inc_ref.exit2072 ] ; 2 uses
  %.01376 = phi i8 [ %.013132271, %lean_inc.exit1706 ], [ 0, %lean_inc_ref.exit2063 ], [ 0, %bb.mp ], [ 0, %bb.mo ], [ 0, %bb.mn ], [ %i.rn, %bb.na ], [ %i.rn, %bb.mz ], [ %i.rn, %bb.my ], [ %i.rn, %lean_inc_ref.exit2072 ] ; 2 uses
  %.01370 = phi i8 [ 1, %lean_inc.exit1706 ], [ %.01343.ph, %lean_inc_ref.exit2063 ], [ %.01343.ph, %bb.mp ], [ %.01343.ph, %bb.mo ], [ %.01343.ph, %bb.mn ], [ 1, %bb.na ], [ 1, %bb.mz ], [ 1, %bb.my ], [ 1, %lean_inc_ref.exit2072 ]
  %i.qw = getelementptr inbounds nuw i8, ptr %.01384, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !16 ; 21 uses
  %.val.i.i2055 = load i32, ptr %i.qx, align 4, !tbaa !11 ; 3 uses
  %i.qy = icmp sgt i32 %.val.i.i2055, 0
  br i1 %i.qy, label %bb.lx, label %bb.ly, !prof !14

bb.lx:                                            ; preds = %lean_inc.exit1710
  %i.qz = add nuw i32 %.val.i.i2055, 1
  store i32 %i.qz, ptr %i.qx, align 4, !tbaa !11
  br label %lean_inc_ref.exit2057

bb.ly:                                            ; preds = %lean_inc.exit1710
  %.not.i.i2056 = icmp eq i32 %.val.i.i2055, 0
  br i1 %.not.i.i2056, label %lean_inc_ref.exit2057, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.ra = atomicrmw sub ptr %i.qx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2057

lean_inc_ref.exit2057:                            ; preds = %bb.lx, %bb.ly, %bb.lz
  %i.rb = getelementptr inbounds nuw i8, ptr %.01384, i64 16
  %i.rc = load i8, ptr %i.rb, align 8, !tbaa !17  ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.01384, i64 17
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !17
  %i.rf = load i32, ptr %.01384, align 8, !tbaa !11 ; 3 uses
  %i.rg = icmp sgt i32 %i.rf, 1
  br i1 %i.rg, label %bb.ma, label %bb.mb, !prof !14

bb.ma:                                            ; preds = %lean_inc_ref.exit2057
  %i.rh = add nsw i32 %i.rf, -1
  store i32 %i.rh, ptr %.01384, align 8, !tbaa !11
  br label %lean_dec_ref.exit1868

bb.mb:                                            ; preds = %lean_inc_ref.exit2057
  %.not.i1867 = icmp eq i32 %i.rf, 0
  br i1 %.not.i1867, label %lean_dec_ref.exit1868, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01384) #13
  br label %lean_dec_ref.exit1868

lean_dec_ref.exit1868:                            ; preds = %bb.ma, %bb.mb, %bb.mc
  %i.ri = tail call zeroext i8 @l_Lean_instBEqIRPhases_beq(i8 noundef zeroext %.01335, i8 noundef zeroext %i.rc) #13
  %i.rj = icmp eq i8 %i.ri, 0
  %..01335 = select i1 %i.rj, i8 2, i8 %.01335    ; 2 uses
  %i.rk = icmp eq i8 %.01361, 0                   ; 2 uses
  br i1 %i.rk, label %lean_dec_ref_known.exit2050.thread, label %lean_nat_eq.exit

bb.md:                                            ; preds = %bb.nm, %bb.nn
  %.01361 = phi i8 [ %i.tp, %bb.nn ], [ %.11288, %bb.nm ] ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ty, i64 8 ; 2 uses
  br i1 %i.xs, label %bb.nb, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ty, i64 32
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !17  ; 5 uses
  %i.ro = icmp eq i8 %i.rn, 0
  %i.rp = load ptr, ptr %i.rl, align 8, !tbaa !16 ; 13 uses
  %.val.i.i2058 = load i32, ptr %i.rp, align 4, !tbaa !11 ; 5 uses
  %i.rq = icmp sgt i32 %.val.i.i2058, 0           ; 2 uses
  br i1 %i.ro, label %bb.mf, label %bb.mq

bb.mf:                                            ; preds = %bb.me
  br i1 %i.rq, label %bb.mg, label %bb.mh, !prof !14

bb.mg:                                            ; preds = %bb.mf
  %i.rr = add nuw i32 %.val.i.i2058, 1
  store i32 %i.rr, ptr %i.rp, align 4, !tbaa !11
  br label %lean_inc_ref.exit2060

bb.mh:                                            ; preds = %bb.mf
  %.not.i.i2059 = icmp eq i32 %.val.i.i2058, 0
  br i1 %.not.i.i2059, label %lean_inc_ref.exit2060, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.rs = atomicrmw sub ptr %i.rp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2060

lean_inc_ref.exit2060:                            ; preds = %bb.mg, %bb.mh, %bb.mi
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !16 ; 7 uses
  %.val.i.i2061 = load i32, ptr %i.ru, align 4, !tbaa !11 ; 3 uses
  %i.rv = icmp sgt i32 %.val.i.i2061, 0
  br i1 %i.rv, label %bb.mj, label %bb.mk, !prof !14

bb.mj:                                            ; preds = %lean_inc_ref.exit2060
  %i.rw = add nuw i32 %.val.i.i2061, 1
  store i32 %i.rw, ptr %i.ru, align 4, !tbaa !11
  br label %lean_inc_ref.exit2063

bb.mk:                                            ; preds = %lean_inc_ref.exit2060
  %.not.i.i2062 = icmp eq i32 %.val.i.i2061, 0
  br i1 %.not.i.i2062, label %lean_inc_ref.exit2063, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.rx = atomicrmw sub ptr %i.ru, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2063

lean_inc_ref.exit2063:                            ; preds = %bb.mj, %bb.mk, %bb.ml
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !16 ; 8 uses
  %i.sa = ptrtoint ptr %i.rz to i64
  %i.sb = and i64 %i.sa, 1
  %.not.i1709 = icmp eq i64 %i.sb, 0
  br i1 %.not.i1709, label %bb.mm, label %lean_inc.exit1710

bb.mm:                                            ; preds = %lean_inc_ref.exit2063
  %.val.i.i2064 = load i32, ptr %i.rz, align 4, !tbaa !11 ; 3 uses
  %i.sc = icmp sgt i32 %.val.i.i2064, 0
  br i1 %i.sc, label %bb.mn, label %bb.mo, !prof !14

bb.mn:                                            ; preds = %bb.mm
  %i.sd = add nuw i32 %.val.i.i2064, 1
  store i32 %i.sd, ptr %i.rz, align 4, !tbaa !11
  br label %lean_inc.exit1710

bb.mo:                                            ; preds = %bb.mm
  %.not.i.i2065 = icmp eq i32 %.val.i.i2064, 0
  br i1 %.not.i.i2065, label %lean_inc.exit1710, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.se = atomicrmw sub ptr %i.rz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1710

bb.mq:                                            ; preds = %bb.me
  br i1 %i.rq, label %bb.mr, label %bb.ms, !prof !14

bb.mr:                                            ; preds = %bb.mq
  %i.sf = add nuw i32 %.val.i.i2058, 1
  store i32 %i.sf, ptr %i.rp, align 4, !tbaa !11
  br label %lean_inc_ref.exit2069

bb.ms:                                            ; preds = %bb.mq
  %.not.i.i2068 = icmp eq i32 %.val.i.i2058, 0
  br i1 %.not.i.i2068, label %lean_inc_ref.exit2069, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.sg = atomicrmw sub ptr %i.rp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2069

lean_inc_ref.exit2069:                            ; preds = %bb.mr, %bb.ms, %bb.mt
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !16 ; 7 uses
  %.val.i.i2070 = load i32, ptr %i.si, align 4, !tbaa !11 ; 3 uses
  %i.sj = icmp sgt i32 %.val.i.i2070, 0
  br i1 %i.sj, label %bb.mu, label %bb.mv, !prof !14

bb.mu:                                            ; preds = %lean_inc_ref.exit2069
  %i.sk = add nuw i32 %.val.i.i2070, 1
  store i32 %i.sk, ptr %i.si, align 4, !tbaa !11
  br label %lean_inc_ref.exit2072

bb.mv:                                            ; preds = %lean_inc_ref.exit2069
  %.not.i.i2071 = icmp eq i32 %.val.i.i2070, 0
  br i1 %.not.i.i2071, label %lean_inc_ref.exit2072, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.sl = atomicrmw sub ptr %i.si, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2072

lean_inc_ref.exit2072:                            ; preds = %bb.mu, %bb.mv, %bb.mw
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !16 ; 8 uses
  %i.so = ptrtoint ptr %i.sn to i64
  %i.sp = and i64 %i.so, 1
  %.not.i1707 = icmp eq i64 %i.sp, 0
  br i1 %.not.i1707, label %bb.mx, label %lean_inc.exit1710

bb.mx:                                            ; preds = %lean_inc_ref.exit2072
  %.val.i.i2073 = load i32, ptr %i.sn, align 4, !tbaa !11 ; 3 uses
  %i.sq = icmp sgt i32 %.val.i.i2073, 0
  br i1 %i.sq, label %bb.my, label %bb.mz, !prof !14

bb.my:                                            ; preds = %bb.mx
  %i.sr = add nuw i32 %.val.i.i2073, 1
  store i32 %i.sr, ptr %i.sn, align 4, !tbaa !11
  br label %lean_inc.exit1710

bb.mz:                                            ; preds = %bb.mx
  %.not.i.i2074 = icmp eq i32 %.val.i.i2073, 0
  br i1 %.not.i.i2074, label %lean_inc.exit1710, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.ss = atomicrmw sub ptr %i.sn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1710

bb.nb:                                            ; preds = %bb.md
  %i.st = load ptr, ptr %i.rl, align 8, !tbaa !16 ; 4 uses
  %.val.i.i2076 = load i32, ptr %i.st, align 4, !tbaa !11 ; 3 uses
  %i.su = icmp sgt i32 %.val.i.i2076, 0
  br i1 %i.su, label %bb.nc, label %bb.nd, !prof !14

bb.nc:                                            ; preds = %bb.nb
  %i.sv = add nuw i32 %.val.i.i2076, 1
  store i32 %i.sv, ptr %i.st, align 4, !tbaa !11
  br label %lean_inc_ref.exit2078

bb.nd:                                            ; preds = %bb.nb
  %.not.i.i2077 = icmp eq i32 %.val.i.i2076, 0
  br i1 %.not.i.i2077, label %lean_inc_ref.exit2078, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.sw = atomicrmw sub ptr %i.st, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2078

lean_inc_ref.exit2078:                            ; preds = %bb.nc, %bb.nd, %bb.ne
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !16 ; 4 uses
  %.val.i.i2079 = load i32, ptr %i.sy, align 4, !tbaa !11 ; 3 uses
  %i.sz = icmp sgt i32 %.val.i.i2079, 0
  br i1 %i.sz, label %bb.nf, label %bb.ng, !prof !14

bb.nf:                                            ; preds = %lean_inc_ref.exit2078
  %i.ta = add nuw i32 %.val.i.i2079, 1
  store i32 %i.ta, ptr %i.sy, align 4, !tbaa !11
  br label %lean_inc_ref.exit2081

bb.ng:                                            ; preds = %lean_inc_ref.exit2078
  %.not.i.i2080 = icmp eq i32 %.val.i.i2079, 0
  br i1 %.not.i.i2080, label %lean_inc_ref.exit2081, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.tb = atomicrmw sub ptr %i.sy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2081

lean_inc_ref.exit2081:                            ; preds = %bb.nf, %bb.ng, %bb.nh
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !16 ; 5 uses
  %i.te = ptrtoint ptr %i.td to i64
  %i.tf = and i64 %i.te, 1
  %.not.i1705 = icmp eq i64 %i.tf, 0
  br i1 %.not.i1705, label %bb.ni, label %lean_inc.exit1706

bb.ni:                                            ; preds = %lean_inc_ref.exit2081
  %.val.i.i2082 = load i32, ptr %i.td, align 4, !tbaa !11 ; 3 uses
  %i.tg = icmp sgt i32 %.val.i.i2082, 0
  br i1 %i.tg, label %bb.nj, label %bb.nk, !prof !14

bb.nj:                                            ; preds = %bb.ni
  %i.th = add nuw i32 %.val.i.i2082, 1
  store i32 %i.th, ptr %i.td, align 4, !tbaa !11
  br label %lean_inc.exit1706

bb.nk:                                            ; preds = %bb.ni
  %.not.i.i2083 = icmp eq i32 %.val.i.i2082, 0
  br i1 %.not.i.i2083, label %lean_inc.exit1706, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.ti = atomicrmw sub ptr %i.td, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1706

lean_inc.exit1706:                                ; preds = %bb.nl, %bb.nk, %bb.nj, %lean_inc_ref.exit2081
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ty, i64 32
  %i.tk = load i8, ptr %i.tj, align 8, !tbaa !17
  %i.tl = icmp eq i8 %i.tk, 0
  br label %lean_inc.exit1710

bb.nm:                                            ; preds = %bb.no, %bb.np
  %.01352 = phi i8 [ %i.tw, %bb.np ], [ %.01291, %bb.no ] ; 9 uses
  br i1 %12, label %bb.nn, label %bb.md

bb.nn:                                            ; preds = %bb.nm
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !16
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 17
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !17
  br label %bb.md

bb.no:                                            ; preds = %lean_dec_ref_known.exit2098, %lean_dec_ref_known.exit2115, %bb.oh, %bb.og, %bb.of, %bb.oy, %bb.ox, %bb.ow
  %.01343.ph = phi i8 [ %.013162270, %bb.ow ], [ %.013162270, %bb.ox ], [ %.013162270, %bb.oy ], [ %i.us, %bb.of ], [ %i.us, %bb.og ], [ %i.us, %bb.oh ], [ %i.us, %lean_dec_ref_known.exit2098 ], [ %.013162270, %lean_dec_ref_known.exit2115 ] ; 6 uses
  %i.tq = icmp eq i8 %.01291, 0
  br i1 %i.tq, label %bb.np, label %bb.nm

bb.np:                                            ; preds = %bb.no
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !16
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !16
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 17
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !17
  br label %bb.nm

bb.nq:                                            ; preds = %lean_obj_tag.exit2150.thread, %lean_obj_tag.exit2150
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ye, i64 8 ; 3 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !16 ; 29 uses
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = and i64 %i.tz, 1
  %.not.i1703 = icmp eq i64 %i.ua, 0              ; 2 uses
  br i1 %i.xr, label %bb.nr, label %bb.oi

bb.nr:                                            ; preds = %bb.nq
  br i1 %.not.i1703, label %bb.ns, label %lean_inc.exit1704

bb.ns:                                            ; preds = %bb.nr
  %.val.i.i2085 = load i32, ptr %i.ty, align 4, !tbaa !11 ; 3 uses
  %i.ub = icmp sgt i32 %.val.i.i2085, 0
  br i1 %i.ub, label %bb.nt, label %bb.nu, !prof !14

bb.nt:                                            ; preds = %bb.ns
  %i.uc = add nuw i32 %.val.i.i2085, 1
  store i32 %i.uc, ptr %i.ty, align 4, !tbaa !11
  br label %lean_inc.exit1704

bb.nu:                                            ; preds = %bb.ns
  %.not.i.i2086 = icmp eq i32 %.val.i.i2085, 0
  br i1 %.not.i.i2086, label %lean_inc.exit1704, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.ud = atomicrmw sub ptr %i.ty, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1704

lean_inc.exit1704:                                ; preds = %bb.nv, %bb.nu, %bb.nt, %bb.nr
  %.val.i2088 = load i32, ptr %i.ye, align 8, !tbaa !11 ; 4 uses
  %i.ue = icmp eq i32 %.val.i2088, 1
  br i1 %i.ue, label %.preheader.i2090.preheader, label %bb.oa

.preheader.i2090.preheader:                       ; preds = %lean_inc.exit1704
  %i.uf = load ptr, ptr %i.tx, align 8, !tbaa !16 ; 4 uses
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = and i64 %i.ug, 1
  %.not.i.i2092 = icmp eq i64 %i.uh, 0
  br i1 %.not.i.i2092, label %bb.nw, label %lean_dec.exit.i2093

bb.nw:                                            ; preds = %.preheader.i2090.preheader
  %i.ui = load i32, ptr %i.uf, align 4, !tbaa !11 ; 3 uses
  %i.uj = icmp sgt i32 %i.ui, 1
  br i1 %i.uj, label %bb.nx, label %bb.ny, !prof !14

bb.nx:                                            ; preds = %bb.nw
  %i.uk = add nsw i32 %i.ui, -1
  store i32 %i.uk, ptr %i.uf, align 4, !tbaa !11
  br label %lean_dec.exit.i2093

bb.ny:                                            ; preds = %bb.nw
  %.not.i7.i2097 = icmp eq i32 %i.ui, 0
  br i1 %.not.i7.i2097, label %lean_dec.exit.i2093, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.uf) #13
  br label %lean_dec.exit.i2093

lean_dec.exit.i2093:                              ; preds = %bb.nz, %bb.ny, %bb.nx, %.preheader.i2090.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.ye) #13
  br label %lean_dec_ref_known.exit2098

bb.oa:                                            ; preds = %lean_inc.exit1704
  %i.ul = icmp sgt i32 %.val.i2088, 1
  br i1 %i.ul, label %bb.ob, label %bb.oc, !prof !14

bb.ob:                                            ; preds = %bb.oa
  %i.um = add nsw i32 %.val.i2088, -1
  store i32 %i.um, ptr %i.ye, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit2098

bb.oc:                                            ; preds = %bb.oa
  %.not.i8.i2089 = icmp eq i32 %.val.i2088, 0
  br i1 %.not.i8.i2089, label %lean_dec_ref_known.exit2098, label %bb.od

bb.od:                                            ; preds = %bb.oc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ye) #13
  br label %lean_dec_ref_known.exit2098

lean_dec_ref_known.exit2098:                      ; preds = %lean_dec.exit.i2093, %bb.ob, %bb.oc, %bb.od
  %i.un = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !16
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !16
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !17  ; 4 uses
  %i.ut = ptrtoint ptr %i.yd to i64
  %i.uu = and i64 %i.ut, 1
  %.not.i1701 = icmp eq i64 %i.uu, 0
  br i1 %.not.i1701, label %bb.oe, label %bb.no

bb.oe:                                            ; preds = %lean_dec_ref_known.exit2098
  %.val.i.i2099 = load i32, ptr %i.yd, align 4, !tbaa !11 ; 3 uses
  %i.uv = icmp sgt i32 %.val.i.i2099, 0
  br i1 %i.uv, label %bb.of, label %bb.og, !prof !14

bb.of:                                            ; preds = %bb.oe
  %i.uw = add nuw i32 %.val.i.i2099, 1
  store i32 %i.uw, ptr %i.yd, align 4, !tbaa !11
  br label %bb.no

bb.og:                                            ; preds = %bb.oe
  %.not.i.i2100 = icmp eq i32 %.val.i.i2099, 0
  br i1 %.not.i.i2100, label %bb.no, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.ux = atomicrmw sub ptr %i.yd, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.no

bb.oi:                                            ; preds = %bb.nq
  br i1 %.not.i1703, label %bb.oj, label %lean_inc.exit1700

bb.oj:                                            ; preds = %bb.oi
  %.val.i.i2102 = load i32, ptr %i.ty, align 4, !tbaa !11 ; 3 uses
  %i.uy = icmp sgt i32 %.val.i.i2102, 0
  br i1 %i.uy, label %bb.ok, label %bb.ol, !prof !14

bb.ok:                                            ; preds = %bb.oj
  %i.uz = add nuw i32 %.val.i.i2102, 1
  store i32 %i.uz, ptr %i.ty, align 4, !tbaa !11
  br label %lean_inc.exit1700

bb.ol:                                            ; preds = %bb.oj
  %.not.i.i2103 = icmp eq i32 %.val.i.i2102, 0
  br i1 %.not.i.i2103, label %lean_inc.exit1700, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.va = atomicrmw sub ptr %i.ty, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1700

lean_inc.exit1700:                                ; preds = %bb.om, %bb.ol, %bb.ok, %bb.oi
  %.val.i2105 = load i32, ptr %i.ye, align 8, !tbaa !11 ; 4 uses
  %i.vb = icmp eq i32 %.val.i2105, 1
  br i1 %i.vb, label %.preheader.i2107.preheader, label %bb.or

.preheader.i2107.preheader:                       ; preds = %lean_inc.exit1700
  %i.vc = load ptr, ptr %i.tx, align 8, !tbaa !16 ; 4 uses
  %i.vd = ptrtoint ptr %i.vc to i64
  %i.ve = and i64 %i.vd, 1
  %.not.i.i2109 = icmp eq i64 %i.ve, 0
  br i1 %.not.i.i2109, label %bb.on, label %lean_dec.exit.i2110

bb.on:                                            ; preds = %.preheader.i2107.preheader
  %i.vf = load i32, ptr %i.vc, align 4, !tbaa !11 ; 3 uses
  %i.vg = icmp sgt i32 %i.vf, 1
  br i1 %i.vg, label %bb.oo, label %bb.op, !prof !14

bb.oo:                                            ; preds = %bb.on
  %i.vh = add nsw i32 %i.vf, -1
  store i32 %i.vh, ptr %i.vc, align 4, !tbaa !11
  br label %lean_dec.exit.i2110

bb.op:                                            ; preds = %bb.on
  %.not.i7.i2114 = icmp eq i32 %i.vf, 0
  br i1 %.not.i7.i2114, label %lean_dec.exit.i2110, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.vc) #13
  br label %lean_dec.exit.i2110

lean_dec.exit.i2110:                              ; preds = %bb.oq, %bb.op, %bb.oo, %.preheader.i2107.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.ye) #13
  br label %lean_dec_ref_known.exit2115

bb.or:                                            ; preds = %lean_inc.exit1700
  %i.vi = icmp sgt i32 %.val.i2105, 1
  br i1 %i.vi, label %bb.os, label %bb.ot, !prof !14

bb.os:                                            ; preds = %bb.or
  %i.vj = add nsw i32 %.val.i2105, -1
  store i32 %i.vj, ptr %i.ye, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit2115

bb.ot:                                            ; preds = %bb.or
  %.not.i8.i2106 = icmp eq i32 %.val.i2105, 0
  br i1 %.not.i8.i2106, label %lean_dec_ref_known.exit2115, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ye) #13
  br label %lean_dec_ref_known.exit2115

lean_dec_ref_known.exit2115:                      ; preds = %lean_dec.exit.i2110, %bb.os, %bb.ot, %bb.ou
  %i.vk = ptrtoint ptr %i.yd to i64
  %i.vl = and i64 %i.vk, 1
  %.not.i1697 = icmp eq i64 %i.vl, 0
  br i1 %.not.i1697, label %bb.ov, label %bb.no

bb.ov:                                            ; preds = %lean_dec_ref_known.exit2115
  %.val.i.i2116 = load i32, ptr %i.yd, align 4, !tbaa !11 ; 3 uses
  %i.vm = icmp sgt i32 %.val.i.i2116, 0
  br i1 %i.vm, label %bb.ow, label %bb.ox, !prof !14

bb.ow:                                            ; preds = %bb.ov
  %i.vn = add nuw i32 %.val.i.i2116, 1
  store i32 %i.vn, ptr %i.yd, align 4, !tbaa !11
  br label %bb.no

bb.ox:                                            ; preds = %bb.ov
  %.not.i.i2117 = icmp eq i32 %.val.i.i2116, 0
  br i1 %.not.i.i2117, label %bb.no, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.vo = atomicrmw sub ptr %i.yd, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.no

bb.oz:                                            ; preds = %lean_obj_tag.exit2150
  %i.vp = load i32, ptr %i.ye, align 4, !tbaa !11 ; 3 uses
  %i.vq = icmp sgt i32 %i.vp, 1
  br i1 %i.vq, label %bb.pa, label %bb.pb, !prof !14

bb.pa:                                            ; preds = %bb.oz
  %i.vr = add nsw i32 %i.vp, -1
  store i32 %i.vr, ptr %i.ye, align 4, !tbaa !11
  br label %lean_dec.exit1755

bb.pb:                                            ; preds = %bb.oz
  %.not.i1851 = icmp eq i32 %i.vp, 0
  br i1 %.not.i1851, label %lean_dec.exit1755, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ye) #13
  br label %lean_dec.exit1755

lean_dec.exit1755:                                ; preds = %lean_obj_tag.exit2150.thread, %bb.pc, %bb.pb, %bb.pa
  br i1 %12, label %bb.fl, label %bb.pd

bb.pd:                                            ; preds = %lean_dec.exit1755
  br i1 %.not.i.i, label %bb.pe, label %lean_inc.exit1696

bb.pe:                                            ; preds = %bb.pd
  %.val.i.i2119 = load i32, ptr %i.v, align 8, !tbaa !11 ; 3 uses
  %i.vs = icmp sgt i32 %.val.i.i2119, 0
  br i1 %i.vs, label %bb.pf, label %bb.pg, !prof !14

bb.pf:                                            ; preds = %bb.pe
  %i.vt = add nuw i32 %.val.i.i2119, 1
  store i32 %i.vt, ptr %i.v, align 8, !tbaa !11
  br label %lean_inc.exit1696

bb.pg:                                            ; preds = %bb.pe
  %.not.i.i2120 = icmp eq i32 %.val.i.i2119, 0
  br i1 %.not.i.i2120, label %lean_inc.exit1696, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.vu = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1696

lean_inc.exit1696:                                ; preds = %bb.ph, %bb.pg, %bb.pf, %bb.pd
  %i.vv = tail call ptr @l___private_Lean_Environment_0__Lean_importModulesCore_loadData___redArg(i8 noundef zeroext %0, ptr noundef %1, ptr noundef nonnull %i.v) ; 13 uses
  %i.vw = ptrtoint ptr %i.vv to i64               ; 2 uses
  %i.vx = and i64 %i.vw, 1
  %.not.i2122 = icmp eq i64 %i.vx, 0              ; 2 uses
  br i1 %.not.i2122, label %bb.pj, label %bb.pi

bb.pi:                                            ; preds = %lean_inc.exit1696
  %i.vy = lshr i64 %i.vw, 1
  %i.vz = trunc i64 %i.vy to i32
  br label %lean_obj_tag.exit2125

bb.pj:                                            ; preds = %lean_inc.exit1696
  %i.wa = getelementptr i8, ptr %i.vv, i64 4
  %.val.i2124 = load i32, ptr %i.wa, align 4
  %i.wb = lshr i32 %.val.i2124, 24
  br label %lean_obj_tag.exit2125

lean_obj_tag.exit2125:                            ; preds = %bb.pi, %bb.pj
  %.0.i2123 = phi i32 [ %i.vz, %bb.pi ], [ %i.wb, %bb.pj ]
  %i.wc = icmp eq i32 %.0.i2123, 0
  br i1 %i.wc, label %bb.pk, label %bb.px

bb.pk:                                            ; preds = %lean_obj_tag.exit2125
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vv, i64 8 ; 2 uses
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !16 ; 8 uses
  %i.wf = ptrtoint ptr %i.we to i64
  %i.wg = and i64 %i.wf, 1
  %.not.i1693 = icmp eq i64 %i.wg, 0
  br i1 %.not.i1693, label %bb.pl, label %lean_inc.exit1694

bb.pl:                                            ; preds = %bb.pk
  %.val.i.i2126 = load i32, ptr %i.we, align 4, !tbaa !11 ; 3 uses
  %i.wh = icmp sgt i32 %.val.i.i2126, 0
  br i1 %i.wh, label %bb.pm, label %bb.pn, !prof !14

bb.pm:                                            ; preds = %bb.pl
  %i.wi = add nuw i32 %.val.i.i2126, 1
  store i32 %i.wi, ptr %i.we, align 4, !tbaa !11
  br label %lean_inc.exit1694

bb.pn:                                            ; preds = %bb.pl
  %.not.i.i2127 = icmp eq i32 %.val.i.i2126, 0
  br i1 %.not.i.i2127, label %lean_inc.exit1694, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.wj = atomicrmw sub ptr %i.we, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1694

lean_inc.exit1694:                                ; preds = %bb.po, %bb.pn, %bb.pm, %bb.pk
  %.val.i2129 = load i32, ptr %i.vv, align 8, !tbaa !11 ; 4 uses
  %i.wk = icmp eq i32 %.val.i2129, 1
  br i1 %i.wk, label %.preheader.i2131.preheader, label %bb.pt

.preheader.i2131.preheader:                       ; preds = %lean_inc.exit1694
  %i.wl = load ptr, ptr %i.wd, align 8, !tbaa !16 ; 4 uses
  %i.wm = ptrtoint ptr %i.wl to i64
  %i.wn = and i64 %i.wm, 1
  %.not.i.i2133 = icmp eq i64 %i.wn, 0
  br i1 %.not.i.i2133, label %bb.pp, label %lean_dec.exit.i2134

bb.pp:                                            ; preds = %.preheader.i2131.preheader
  %i.wo = load i32, ptr %i.wl, align 4, !tbaa !11 ; 3 uses
  %i.wp = icmp sgt i32 %i.wo, 1
  br i1 %i.wp, label %bb.pq, label %bb.pr, !prof !14

bb.pq:                                            ; preds = %bb.pp
  %i.wq = add nsw i32 %i.wo, -1
  store i32 %i.wq, ptr %i.wl, align 4, !tbaa !11
  br label %lean_dec.exit.i2134

bb.pr:                                            ; preds = %bb.pp
  %.not.i7.i2138 = icmp eq i32 %i.wo, 0
  br i1 %.not.i7.i2138, label %lean_dec.exit.i2134, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.wl) #13
  br label %lean_dec.exit.i2134

lean_dec.exit.i2134:                              ; preds = %bb.ps, %bb.pr, %bb.pq, %.preheader.i2131.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.vv) #13
  br label %bb.fl

bb.pt:                                            ; preds = %lean_inc.exit1694
  %i.wr = icmp sgt i32 %.val.i2129, 1
  br i1 %i.wr, label %bb.pu, label %bb.pv, !prof !14

bb.pu:                                            ; preds = %bb.pt
  %i.ws = add nsw i32 %.val.i2129, -1
  store i32 %i.ws, ptr %i.vv, align 8, !tbaa !11
  br label %bb.fl

bb.pv:                                            ; preds = %bb.pt
  %.not.i8.i2130 = icmp eq i32 %.val.i2129, 0
  br i1 %.not.i8.i2130, label %bb.fl, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.vv) #13
  br label %bb.fl

bb.px:                                            ; preds = %lean_obj_tag.exit2125
  %i.wt = load i32, ptr %.013252268, align 4, !tbaa !11 ; 3 uses
  %i.wu = icmp sgt i32 %i.wt, 1
  br i1 %i.wu, label %bb.py, label %bb.pz, !prof !14

bb.py:                                            ; preds = %bb.px
  %i.wv = add nsw i32 %i.wt, -1
  store i32 %i.wv, ptr %.013252268, align 4, !tbaa !11
  br label %lean_dec_ref.exit1864

bb.pz:                                            ; preds = %bb.px
  %.not.i1863 = icmp eq i32 %i.wt, 0
  br i1 %.not.i1863, label %lean_dec_ref.exit1864, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.013252268) #13
  br label %lean_dec_ref.exit1864

lean_dec_ref.exit1864:                            ; preds = %bb.py, %bb.pz, %bb.qa
  br i1 %.not.i.i, label %bb.qb, label %lean_dec.exit1753

bb.qb:                                            ; preds = %lean_dec_ref.exit1864
  %i.ww = load i32, ptr %i.v, align 4, !tbaa !11  ; 3 uses
  %i.wx = icmp sgt i32 %i.ww, 1
  br i1 %i.wx, label %bb.qc, label %bb.qd, !prof !14

bb.qc:                                            ; preds = %bb.qb
  %i.wy = add nsw i32 %i.ww, -1
  store i32 %i.wy, ptr %i.v, align 4, !tbaa !11
  br label %lean_dec.exit1753

bb.qd:                                            ; preds = %bb.qb
  %.not.i1853 = icmp eq i32 %i.ww, 0
  br i1 %.not.i1853, label %lean_dec.exit1753, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #13
  br label %lean_dec.exit1753

lean_dec.exit1753:                                ; preds = %bb.qe, %bb.qd, %bb.qc, %lean_dec_ref.exit1864
  br i1 %.not.i, label %bb.qf, label %lean_dec.exit1751

bb.qf:                                            ; preds = %lean_dec.exit1753
  %i.wz = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.xa = icmp sgt i32 %i.wz, 1
  br i1 %i.xa, label %bb.qg, label %bb.qh, !prof !14

bb.qg:                                            ; preds = %bb.qf
  %i.xb = add nsw i32 %i.wz, -1
  store i32 %i.xb, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit1751

bb.qh:                                            ; preds = %bb.qf
  %.not.i1855 = icmp eq i32 %i.wz, 0
  br i1 %.not.i1855, label %lean_dec.exit1751, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #13
  br label %lean_dec.exit1751

lean_dec.exit1751:                                ; preds = %bb.qi, %bb.qh, %bb.qg, %lean_dec.exit1753
  %i.xc = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !16 ; 5 uses
  %.val = load i32, ptr %i.vv, align 8, !tbaa !11
  %i.xe = icmp eq i32 %.val, 1
  br i1 %i.xe, label %lean_dec_ref_known.exit.thread.thread, label %bb.qj

bb.qj:                                            ; preds = %lean_dec.exit1751
  %i.xf = ptrtoint ptr %i.xd to i64
  %i.xg = and i64 %i.xf, 1
  %.not.i1691 = icmp eq i64 %i.xg, 0
  br i1 %.not.i1691, label %bb.qk, label %lean_inc.exit1692

bb.qk:                                            ; preds = %bb.qj
  %.val.i.i2140 = load i32, ptr %i.xd, align 4, !tbaa !11 ; 3 uses
  %i.xh = icmp sgt i32 %.val.i.i2140, 0
  br i1 %i.xh, label %bb.ql, label %bb.qm, !prof !14

bb.ql:                                            ; preds = %bb.qk
  %i.xi = add nuw i32 %.val.i.i2140, 1
  store i32 %i.xi, ptr %i.xd, align 4, !tbaa !11
  br label %lean_inc.exit1692

bb.qm:                                            ; preds = %bb.qk
  %.not.i.i2141 = icmp eq i32 %.val.i.i2140, 0
  br i1 %.not.i.i2141, label %lean_inc.exit1692, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.xj = atomicrmw sub ptr %i.xd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1692

lean_inc.exit1692:                                ; preds = %bb.qn, %bb.qm, %bb.ql, %bb.qj
  br i1 %.not.i2122, label %bb.qo, label %bb.qs

bb.qo:                                            ; preds = %lean_inc.exit1692
  %i.xk = load i32, ptr %i.vv, align 8, !tbaa !11 ; 3 uses
  %i.xl = icmp sgt i32 %i.xk, 1
  br i1 %i.xl, label %bb.qp, label %bb.qq, !prof !14

bb.qp:                                            ; preds = %bb.qo
  %i.xm = add nsw i32 %i.xk, -1
  store i32 %i.xm, ptr %i.vv, align 8, !tbaa !11
  br label %bb.qs

bb.qq:                                            ; preds = %bb.qo
  %.not.i1857 = icmp eq i32 %i.xk, 0
  br i1 %.not.i1857, label %bb.qs, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.vv) #13
  br label %bb.qs

bb.qs:                                            ; preds = %lean_inc.exit1692, %bb.qp, %bb.qq, %bb.qr
  tail call void @lean_inc_heartbeat() #13
  %i.xn = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #13 ; 5 uses
  %i.xo = icmp eq ptr %i.xn, null
  br i1 %i.xo, label %bb.qt, label %lean_alloc_ctor.exit2143

bb.qt:                                            ; preds = %bb.qs
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit2143:                         ; preds = %bb.qs
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 4
  store i32 1, ptr %i.xn, align 4, !tbaa !11
  store i32 16842768, ptr %i.xp, align 4
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  store ptr %i.xd, ptr %i.xq, align 8, !tbaa !16
  br label %lean_dec_ref_known.exit.thread.thread

.thread2261:                                      ; preds = %lean_inc.exit1690, %lean_inc.exit, %13
  %11 = phi i1 [ %cond, %13 ], [ false, %lean_inc.exit ], [ false, %lean_inc.exit1690 ]
  %.013132271 = phi i8 [ 0, %13 ], [ %.01294, %lean_inc.exit ], [ 0, %lean_inc.exit1690 ] ; 3 uses
  %.013162270 = phi i8 [ 0, %13 ], [ %.01289, %lean_inc.exit ], [ %.01289, %lean_inc.exit1690 ] ; 6 uses
  %.013252268 = phi ptr [ %i.zg, %13 ], [ %i.aao, %lean_inc.exit ], [ %i.zg, %lean_inc.exit1690 ] ; 17 uses
  %12 = icmp eq i8 %.11288, 0                     ; 2 uses
  %i.xr = icmp eq i8 %.013162270, 0               ; 2 uses
  %i.xs = icmp ne i8 %.013132271, 0               ; 2 uses
  %.1687 = zext i1 %i.xs to i8
  %.01335 = select i1 %i.xr, i8 %.1687, i8 2      ; 3 uses
  %i.xt = tail call ptr @lean_st_ref_get(ptr noundef %10) #13 ; 4 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !16 ; 7 uses
  %.val.i.i2144 = load i32, ptr %i.xv, align 4, !tbaa !11 ; 3 uses
  %i.xw = icmp sgt i32 %.val.i.i2144, 0
  br i1 %i.xw, label %bb.qu, label %bb.qv, !prof !14

bb.qu:                                            ; preds = %.thread2261
  %i.xx = add nuw i32 %.val.i.i2144, 1
  store i32 %i.xx, ptr %i.xv, align 4, !tbaa !11
  br label %lean_inc_ref.exit2146

bb.qv:                                            ; preds = %.thread2261
  %.not.i.i2145 = icmp eq i32 %.val.i.i2144, 0
  br i1 %.not.i.i2145, label %lean_inc_ref.exit2146, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.xy = atomicrmw sub ptr %i.xv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2146

lean_inc_ref.exit2146:                            ; preds = %bb.qw, %bb.qv, %bb.qu
  %i.xz = load i32, ptr %i.xt, align 8, !tbaa !11 ; 3 uses
  %i.ya = icmp sgt i32 %i.xz, 1
  br i1 %i.ya, label %bb.qx, label %bb.qy, !prof !14

bb.qx:                                            ; preds = %lean_inc_ref.exit2146
  %i.yb = add nsw i32 %i.xz, -1
  store i32 %i.yb, ptr %i.xt, align 8, !tbaa !11
  br label %lean_dec.exit1757

bb.qy:                                            ; preds = %lean_inc_ref.exit2146
  %.not.i1849 = icmp eq i32 %i.xz, 0
  br i1 %.not.i1849, label %lean_dec.exit1757, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.xt) #13
  br label %lean_dec.exit1757

lean_dec.exit1757:                                ; preds = %bb.qz, %bb.qy, %bb.qx
  %i.yc = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !16 ; 22 uses
  %i.ye = tail call ptr @l_Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00Lean_SMap_find_x3f_x27___at___00Lean_Kernel_Environment_find_x3f_spec__0_spec__0___redArg(ptr noundef nonnull %i.xv, ptr noundef %i.yd) ; 14 uses
  %i.yf = load i32, ptr %i.xv, align 4, !tbaa !11 ; 3 uses
  %i.yg = icmp sgt i32 %i.yf, 1
  br i1 %i.yg, label %bb.ra, label %bb.rb, !prof !14

bb.ra:                                            ; preds = %lean_dec.exit1757
  %i.yh = add nsw i32 %i.yf, -1
  store i32 %i.yh, ptr %i.xv, align 4, !tbaa !11
  br label %lean_dec_ref.exit1866

bb.rb:                                            ; preds = %lean_dec.exit1757
  %.not.i1865 = icmp eq i32 %i.yf, 0
  br i1 %.not.i1865, label %lean_dec_ref.exit1866, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.xv) #13
  br label %lean_dec_ref.exit1866

lean_dec_ref.exit1866:                            ; preds = %bb.ra, %bb.rb, %bb.rc
  %i.yi = ptrtoint ptr %i.ye to i64               ; 2 uses
  %i.yj = and i64 %i.yi, 1
  %.not.i2147 = icmp eq i64 %i.yj, 0
  br i1 %.not.i2147, label %lean_obj_tag.exit2150, label %lean_obj_tag.exit2150.thread

lean_obj_tag.exit2150:                            ; preds = %lean_dec_ref.exit1866
  %i.yk = getelementptr i8, ptr %i.ye, i64 4
  %.val.i2149 = load i32, ptr %i.yk, align 4
  %.mask2737 = and i32 %.val.i2149, -16777216
  %i.yl = icmp eq i32 %.mask2737, 16777216
  br i1 %i.yl, label %bb.nq, label %bb.oz

lean_obj_tag.exit2150.thread:                     ; preds = %lean_dec_ref.exit1866
  %i.ym = and i64 %i.yi, 8589934590
  %i.yn = icmp eq i64 %i.ym, 2
  br i1 %i.yn, label %bb.nq, label %lean_dec.exit1755

lean_dec_ref.exit1862:                            ; preds = %13
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.zg) #13
  br i1 %.not.i.i, label %bb.rd, label %lean_dec_ref_known.exit

bb.rd:                                            ; preds = %lean_dec_ref.exit1862
  %i.yo = load i32, ptr %i.v, align 4, !tbaa !11  ; 3 uses
  %i.yp = icmp sgt i32 %i.yo, 1
  br i1 %i.yp, label %bb.re, label %bb.rf, !prof !14

bb.re:                                            ; preds = %bb.rd
  %i.yq = add nsw i32 %i.yo, -1
  store i32 %i.yq, ptr %i.v, align 4, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.rf:                                            ; preds = %bb.rd
  %.not.i1859 = icmp eq i32 %i.yo, 0
  br i1 %.not.i1859, label %lean_dec_ref_known.exit, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #13
  br label %lean_dec_ref_known.exit

bb.rh:                                            ; preds = %bb.rt, %bb.rs
  %i.yr = zext i8 %.01289 to i64
  %i.ys = shl nuw nsw i64 %i.yr, 1
  %i.yt = or disjoint i64 %i.ys, 1
  %i.yu = inttoptr i64 %i.yt to ptr
  %i.yv = zext i8 %.01291 to i64
  %i.yw = shl nuw nsw i64 %i.yv, 1
  %i.yx = or disjoint i64 %i.yw, 1
  %i.yy = inttoptr i64 %i.yx to ptr
  %i.yz = zext i8 %.11288 to i64
  %i.za = shl nuw nsw i64 %i.yz, 1
  %i.zb = or disjoint i64 %i.za, 1
  %i.zc = inttoptr i64 %i.zb to ptr
  br i1 %.not.i, label %bb.ri, label %lean_inc.exit1690

bb.ri:                                            ; preds = %bb.rh
  %.val.i.i2151 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.zd = icmp sgt i32 %.val.i.i2151, 0
  br i1 %i.zd, label %bb.rj, label %bb.rk, !prof !14

bb.rj:                                            ; preds = %bb.ri
  %i.ze = add nuw i32 %.val.i.i2151, 1
  store i32 %i.ze, ptr %1, align 4, !tbaa !11
  br label %lean_inc.exit1690

bb.rk:                                            ; preds = %bb.ri
  %.not.i.i2152 = icmp eq i32 %.val.i.i2151, 0
  br i1 %.not.i.i2152, label %lean_inc.exit1690, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.zf = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1690

lean_inc.exit1690:                                ; preds = %bb.rl, %bb.rk, %bb.rj, %bb.rh
  %i.zg = tail call ptr @lean_alloc_object(i64 noundef 80) #13 ; 14 uses
  store i32 1, ptr %i.zg, align 4, !tbaa !11
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 4 ; 2 uses
  %i.zi = load i32, ptr %i.zh, align 4
  %i.zj = and i32 %i.zi, 65535
  %i.zk = or disjoint i32 %i.zj, -184549376
  store i32 %i.zk, ptr %i.zh, align 4
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Environment_0__Lean_importModulesCore_go_spec__0___lam__0___boxed, ptr %i.zl, align 8, !tbaa !16
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  store i16 10, ptr %i.zm, align 8, !tbaa !23
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zg, i64 18
  store i16 7, ptr %i.zn, align 2, !tbaa !23
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zg, i64 24
  store ptr %i.i, ptr %i.zo, align 8, !tbaa !16
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  store ptr %1, ptr %i.zp, align 8, !tbaa !16
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zg, i64 40
  store ptr %i.yu, ptr %i.zq, align 8, !tbaa !16
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zg, i64 48
  store ptr %i.yy, ptr %i.zr, align 8, !tbaa !16
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zg, i64 56
  store ptr %i.zc, ptr %i.zs, align 8, !tbaa !16
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zg, i64 64
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.zt, align 8, !tbaa !16
  %i.zu = icmp eq i8 %.01289, 0
  br i1 %i.zu, label %13, label %.thread2261

13:                                               ; preds = %lean_inc.exit1690
  %14 = or i8 %0, %.11288
  %or.cond = icmp eq i8 %14, 0
  br i1 %or.cond, label %lean_dec_ref.exit1862, label %.thread2261

bb.rm:                                            ; preds = %bb.rt, %bb.rr
  %.01294 = phi i8 [ %i.abf, %bb.rt ], [ %2, %bb.rr ] ; 2 uses
  %i.zv = zext i8 %.01289 to i64
  %i.zw = shl nuw nsw i64 %i.zv, 1
  %i.zx = or disjoint i64 %i.zw, 1
  %i.zy = inttoptr i64 %i.zx to ptr
  %i.zz = zext i8 %.01291 to i64
  %i.aaa = shl nuw nsw i64 %i.zz, 1
  %i.aab = or disjoint i64 %i.aaa, 1
  %i.aac = inttoptr i64 %i.aab to ptr
  %i.aad = zext i8 %.11288 to i64
  %i.aae = shl nuw nsw i64 %i.aad, 1
  %i.aaf = or disjoint i64 %i.aae, 1
  %i.aag = inttoptr i64 %i.aaf to ptr
  %i.aah = zext i8 %.01294 to i64
  %i.aai = shl nuw nsw i64 %i.aah, 1
  %i.aaj = or disjoint i64 %i.aai, 1
  %i.aak = inttoptr i64 %i.aaj to ptr
  br i1 %.not.i, label %bb.rn, label %lean_inc.exit

bb.rn:                                            ; preds = %bb.rm
  %.val.i.i2155 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.aal = icmp sgt i32 %.val.i.i2155, 0
  br i1 %i.aal, label %bb.ro, label %bb.rp, !prof !14

bb.ro:                                            ; preds = %bb.rn
  %i.aam = add nuw i32 %.val.i.i2155, 1
  store i32 %i.aam, ptr %1, align 4, !tbaa !11
  br label %lean_inc.exit

bb.rp:                                            ; preds = %bb.rn
  %.not.i.i2156 = icmp eq i32 %.val.i.i2155, 0
  br i1 %.not.i.i2156, label %lean_inc.exit, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.aan = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.rq, %bb.rp, %bb.ro, %bb.rm
  %i.aao = tail call ptr @lean_alloc_object(i64 noundef 80) #13 ; 13 uses
  store i32 1, ptr %i.aao, align 4, !tbaa !11
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 4 ; 2 uses
  %i.aaq = load i32, ptr %i.aap, align 4
  %i.aar = and i32 %i.aaq, 65535
  %i.aas = or disjoint i32 %i.aar, -184549376
  store i32 %i.aas, ptr %i.aap, align 4
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Environment_0__Lean_importModulesCore_go_spec__0___lam__0___boxed, ptr %i.aat, align 8, !tbaa !16
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  store i16 10, ptr %i.aau, align 8, !tbaa !23
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aao, i64 18
  store i16 7, ptr %i.aav, align 2, !tbaa !23
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  store ptr %i.i, ptr %i.aaw, align 8, !tbaa !16
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aao, i64 32
  store ptr %1, ptr %i.aax, align 8, !tbaa !16
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aao, i64 40
  store ptr %i.zy, ptr %i.aay, align 8, !tbaa !16
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aao, i64 48
  store ptr %i.aac, ptr %i.aaz, align 8, !tbaa !16
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aao, i64 56
  store ptr %i.aag, ptr %i.aba, align 8, !tbaa !16
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aao, i64 64
  store ptr %i.aak, ptr %i.abb, align 8, !tbaa !16
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aao, i64 72
  store ptr inttoptr (i64 1 to ptr), ptr %i.abc, align 8, !tbaa !16
  br label %.thread2261

bb.rr:                                            ; preds = %l_Lean_instDecidableEqOLeanLevel.exit, %bb.ru
  %.01291 = phi i8 [ %i.abi, %bb.ru ], [ 0, %l_Lean_instDecidableEqOLeanLevel.exit ] ; 5 uses
  br i1 %i.e, label %bb.rs, label %bb.rm

bb.rs:                                            ; preds = %bb.rr
  %i.abd = icmp eq i8 %.11288, 0
  br i1 %i.abd, label %bb.rh, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.abe = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !17 ; 2 uses
  %i.abg = icmp eq i8 %i.abf, 0
  br i1 %i.abg, label %bb.rh, label %bb.rm

bb.ru:                                            ; preds = %l_Lean_instDecidableEqOLeanLevel.exit
  %i.abh = getelementptr inbounds nuw i8, ptr %i.v, i64 17
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !17
  br label %bb.rr

bb.rv:                                            ; preds = %lean_array_uget.exit, %bb.l
  %.11288 = phi i8 [ %., %bb.l ], [ 0, %lean_array_uget.exit ] ; 7 uses
  br i1 %brmerge, label %l_Lean_instDecidableEqOLeanLevel.exit, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.abj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !17
  br label %l_Lean_instDecidableEqOLeanLevel.exit

l_Lean_instDecidableEqOLeanLevel.exit:            ; preds = %bb.rv, %bb.rw
  %.01289 = phi i8 [ %.mux, %bb.rv ], [ %i.abk, %bb.rw ] ; 5 uses
  br i1 %i.d, label %bb.rr, label %bb.ru

lean_dec_ref_known.exit:                          ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.el, %lean_dec.exit.i, %bb.ba, %bb.bb, %bb.bc, %bb.rg, %bb.rf, %bb.re, %lean_dec_ref.exit1862
  %i.abl = add nuw i64 %.011722396, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.abl, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.g

lean_dec_ref_known.exit.thread.thread:            ; preds = %lean_alloc_ctor.exit2029, %lean_dec.exit1773, %lean_dec.exit1781, %lean_dec.exit1761, %lean_alloc_ctor.exit2003, %bb.bd, %bb.bh, %bb.bg, %bb.bf, %bb.fk, %bb.fj, %bb.fi, %lean_dec.exit1787, %lean_alloc_ctor.exit2143, %lean_alloc_ctor.exit2054, %lean_dec.exit1751, %.thread2277
  %.202282 = phi ptr [ %i.q, %.thread2277 ], [ %i.lt, %lean_dec.exit1773 ], [ %i.nw, %lean_alloc_ctor.exit2029 ], [ %i.le, %lean_alloc_ctor.exit2003 ], [ %i.ok, %lean_dec.exit1761 ], [ %i.jj, %lean_dec.exit1781 ], [ %i.cq, %bb.bd ], [ %i.cq, %bb.bh ], [ %i.cq, %bb.bg ], [ %i.cq, %bb.bf ], [ %i.ge, %bb.fk ], [ %i.ge, %bb.fj ], [ %i.ge, %bb.fi ], [ %i.ge, %lean_dec.exit1787 ], [ %i.vv, %lean_dec.exit1751 ], [ %i.qs, %lean_alloc_ctor.exit2054 ], [ %i.xn, %lean_alloc_ctor.exit2143 ]
  ret ptr %.202282
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Environment_0__Lean_importModulesCore_go(i8 noundef zeroext %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef %7) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val41 = load i64, ptr %i.a, align 8, !tbaa !13
  %i.b = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Environment_0__Lean_importModulesCore_go_spec__0(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %6, i8 noundef zeroext %4, i8 noundef zeroext %3, i8 noundef zeroext %5, ptr noundef %2, i64 noundef %.val41, i64 noundef 0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %7) ; 8 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i42 = icmp eq i64 %i.d, 0                 ; 2 uses
  br i1 %.not.i42, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 1
  %i.f = trunc i64 %i.e to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 4
  %.val.i = load i32, ptr %i.g, align 4
  %i.h = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i, 0
  br i1 %i.i, label %bb.d, label %bb.q

bb.d:                                             ; preds = %lean_obj_tag.exit
  %.val = load i32, ptr %i.b, align 4, !tbaa !11  ; 4 uses
  %i.j = icmp eq i32 %.val, 1
  br i1 %i.j, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16   ; 4 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, 1
  %.not.i36 = icmp eq i64 %i.n, 0
  br i1 %.not.i36, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.l, align 4, !tbaa !11   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %i.l, align 4, !tbaa !11
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %.not.i38 = icmp eq i32 %i.o, 0
  br i1 %.not.i38, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.l) #13
  br label %bb.o

bb.j:                                             ; preds = %bb.d
  br i1 %.not.i42, label %bb.k, label %lean_dec.exit37

bb.k:                                             ; preds = %bb.j
  %i.r = icmp sgt i32 %.val, 1
  br i1 %i.r, label %bb.l, label %bb.m, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %.val, -1
  store i32 %i.s, ptr %i.b, align 4, !tbaa !11
  br label %lean_dec.exit37

bb.m:                                             ; preds = %bb.k
  %.not.i39 = icmp eq i32 %.val, 0
  br i1 %.not.i39, label %lean_dec.exit37, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #13
  br label %lean_dec.exit37

bb.o:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8, !tbaa !16
  br label %bb.q

lean_dec.exit37:                                  ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  tail call void @lean_inc_heartbeat() #13
  %i.t = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #13 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.p, label %lean_alloc_ctor.exit

bb.p:                                             ; preds = %lean_dec.exit37
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec.exit37
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 1, ptr %i.t, align 4, !tbaa !11
  store i32 65552, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.w, align 8, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %lean_obj_tag.exit, %bb.o, %lean_alloc_ctor.exit
  %.2 = phi ptr [ %i.t, %lean_alloc_ctor.exit ], [ %i.b, %bb.o ], [ %i.b, %lean_obj_tag.exit ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Environment_0__Lean_importModulesCore_go___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readnone captures(none) %8) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %3 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  %i.g = ptrtoint ptr %4 to i64
  %i.h = lshr i64 %i.g, 1
  %i.i = trunc i64 %i.h to i8
  %i.j = ptrtoint ptr %5 to i64
  %i.k = lshr i64 %i.j, 1
  %i.l = trunc i64 %i.k to i8
  %i.m = ptrtoint ptr %6 to i64
  %i.n = lshr i64 %i.m, 1
  %i.o = trunc i64 %i.n to i8
  %i.p = tail call ptr @l___private_Lean_Environment_0__Lean_importModulesCore_go(i8 noundef zeroext %i.c, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %i.f, i8 noundef zeroext %i.i, i8 noundef zeroext %i.l, i8 noundef zeroext %i.o, ptr noundef %7)
  %i.q = ptrtoint ptr %7 to i64
  %i.r = and i64 %i.q, 1
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr %7, align 4, !tbaa !11     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %7, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i15 = icmp eq i32 %i.s, 0
  br i1 %.not.i15, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #13
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.v = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %lean_dec.exit
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit17

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i16 = icmp eq i32 %i.v, 0
  br i1 %.not.i16, label %lean_dec_ref.exit17, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #13
  br label %lean_dec_ref.exit17

lean_dec_ref.exit17:                              ; preds = %bb.f, %bb.g, %bb.h
  ret ptr %i.p
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Environment_0__Lean_importModulesCore_go_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nofree noundef readnone captures(none) %11) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %2 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  %i.g = ptrtoint ptr %3 to i64
  %i.h = lshr i64 %i.g, 1
  %i.i = trunc i64 %i.h to i8
  %i.j = ptrtoint ptr %4 to i64
  %i.k = lshr i64 %i.j, 1
  %i.l = trunc i64 %i.k to i8
  %i.m = ptrtoint ptr %5 to i64
  %i.n = lshr i64 %i.m, 1
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr i8, ptr %7, i64 8
  %.val33 = load i64, ptr %i.p, align 8, !tbaa !13
  %i.q = load i32, ptr %7, align 8, !tbaa !11     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.b, label %bb.c, !prof !14
end_hunk_3
