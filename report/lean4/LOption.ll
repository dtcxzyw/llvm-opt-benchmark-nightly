Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/LOption?download=true
inline.NumInlined: 125
inline.NumDeleted: 28
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_instToStringLOption___redArg___lam__0___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"none\00" }>, align 8
@l_Lean_instToStringLOption___redArg___lam__0___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"(some \00" }>, align 8
@l_Lean_instToStringLOption___redArg___lam__0___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c")\00" }>, align 8
@l_Lean_instToStringLOption___redArg___lam__0___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"undef\00" }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l_Lean_LOption_ctorIdx___redArg(ptr noundef %0) local_unnamed_addr #0 {
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
define nonnull ptr @l_Lean_LOption_ctorIdx___redArg___boxed(ptr noundef %0) local_unnamed_addr #1 {
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.b, %bb.f, %bb.e, %bb.d
  %.0.i.i5 = phi i32 [ %i.f, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.d, %bb.b ] ; 2 uses
  %switch.selectcmp5.i = icmp eq i32 %.0.i.i5, 0
  %switch.selectcmp.i = icmp eq i32 %.0.i.i5, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.select6.i = select i1 %switch.selectcmp5.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select6.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l_Lean_LOption_ctorIdx(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %l_Lean_LOption_ctorIdx___redArg.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %l_Lean_LOption_ctorIdx___redArg.exit

l_Lean_LOption_ctorIdx___redArg.exit:             ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %.0.i.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp5.i = icmp eq i32 %.0.i.i, 0
  %switch.select6.i = select i1 %switch.selectcmp5.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select6.i
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_LOption_ctorIdx___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_dec.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val.i.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i.i, 24                 ; 3 uses
  %2 = load i32, ptr %1, align 4, !tbaa !10       ; 3 uses
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %2, -1
  store i32 %i.g, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i4 = icmp eq i32 %2, 0
  br i1 %.not.i4, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.b, %bb.f, %bb.e, %bb.d
  %.0.i.i.i6 = phi i32 [ %i.f, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.d, %bb.b ] ; 2 uses
  %switch.selectcmp5.i.i = icmp eq i32 %.0.i.i.i6, 0
  %switch.selectcmp.i.i = icmp eq i32 %.0.i.i.i6, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select6.i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_LOption_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i12 = icmp eq i64 %i.b, 0
  br i1 %.not.i12, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.d = icmp eq i32 %.mask, 16777216
  br i1 %i.d, label %bb.b, label %bb.o

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.e = and i64 %i.a, 8589934590
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 5 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i10 = icmp eq i64 %i.j, 0
  br i1 %.not.i10, label %bb.c, label %lean_inc.exit

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !10 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i, 0
  br i1 %i.k, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i32 %.val.i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !10
  br label %lean_inc.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.val.i13 = load i32, ptr %0, align 8, !tbaa !10 ; 4 uses
  %i.n = icmp eq i32 %.val.i13, 1
  br i1 %i.n, label %.preheader.i, label %bb.k

.preheader.i:                                     ; preds = %lean_inc.exit
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !13   ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i14 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i14, label %bb.g, label %lean_dec.exit.i

bb.g:                                             ; preds = %.preheader.i
  %i.r = load i32, ptr %i.o, align 4, !tbaa !10   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %i.o, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i7.i = icmp eq i32 %i.r, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #5
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.j, %bb.i, %bb.h, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit

bb.k:                                             ; preds = %lean_inc.exit
  %i.u = icmp sgt i32 %.val.i13, 1
  br i1 %i.u, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %.val.i13, -1
  store i32 %i.v, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %bb.k
  %.not.i8.i = icmp eq i32 %.val.i13, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.l, %bb.m, %bb.n
  %i.w = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef %i.h) #5
  br label %lean_dec.exit

bb.o:                                             ; preds = %lean_obj_tag.exit
  %i.x = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.q:                                             ; preds = %bb.o
  %.not.i11 = icmp eq i32 %i.x, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit.thread, %bb.p, %bb.q, %bb.r, %lean_dec_ref_known.exit
  %.0 = phi ptr [ %i.w, %lean_dec_ref_known.exit ], [ %1, %bb.r ], [ %1, %bb.q ], [ %1, %bb.p ], [ %1, %lean_obj_tag.exit.thread ]
  ret ptr %.0
}

declare ptr @lean_apply_1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_Lean_LOption_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_LOption_ctorElim___redArg(ptr noundef %3, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_LOption_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_LOption_ctorElim___redArg(ptr noundef %3, ptr noundef %5)
  %i.b = ptrtoint ptr %2 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i8 = icmp eq i32 %i.d, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_LOption_none_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_LOption_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_LOption_none_elim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_LOption_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_LOption_some_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_LOption_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_LOption_some_elim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_LOption_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_LOption_undef_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_LOption_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}
end_hunk_0
