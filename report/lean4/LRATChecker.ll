Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/LRATChecker?download=true
inline.NumInlined: 143
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult = local_unnamed_addr global ptr @l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___closed__0_value, align 8
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@l_Std_Tactic_BVDecide_LRAT_Internal_instInhabitedResult_default = local_unnamed_addr global i8 0, align 1
@l_Std_Tactic_BVDecide_LRAT_Internal_instInhabitedResult = local_unnamed_addr global i8 0, align 1
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___lam__0___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___lam__0___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [8 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 8, i64 8, i64 7, [8 x i8] c"success\00" }, align 8
@l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___lam__0___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [13 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 13, i64 13, i64 12, [13 x i8] c"out of proof\00" }>, align 8
@l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___lam__0___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [12 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 12, i64 12, i64 11, [12 x i8] c"rup failure\00" }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Std_Tactic_BVDecide_LRAT_Internal_Result_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Std_Tactic_BVDecide_LRAT_Internal_Result_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Std_Tactic_BVDecide_LRAT_Internal_Result_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
l_Std_Tactic_BVDecide_LRAT_Internal_Result_ctorIdx.exit:
  %switch.selectcmp.i = icmp eq i8 %0, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %0, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Std_Tactic_BVDecide_LRAT_Internal_Result_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.c, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select5.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Std_Tactic_BVDecide_LRAT_Internal_Result_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
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
define noundef ptr @l_Std_Tactic_BVDecide_LRAT_Internal_Result_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #2 {
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Std_Tactic_BVDecide_LRAT_Internal_Result_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #1 {
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
define noundef ptr @l_Std_Tactic_BVDecide_LRAT_Internal_Result_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #2 {
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #5
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Std_Tactic_BVDecide_LRAT_Internal_Result_success_elim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
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
begin_hunk_1_@l_Std_Tactic_BVDecide_LRAT_Internal_Result_rupFailure_elim___redArg___boxed:bb.a
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Std_Tactic_BVDecide_LRAT_Internal_Result_rupFailure_elim(ptr nofree noundef readnone captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #1 {
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
define noundef ptr @l_Std_Tactic_BVDecide_LRAT_Internal_Result_rupFailure_elim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #2 {
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 3) i8 @l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %lean_nat_le.exit, label %lean_nat_le.exit.thread, !prof !13

lean_nat_le.exit:                                 ; preds = %bb.a
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #5
  br i1 %i.c, label %bb.b, label %.critedge.i10

lean_nat_le.exit.thread:                          ; preds = %bb.a
  %.not = icmp ugt ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %lean_nat_le.exit.thread
  %i.d = icmp ule ptr %0, inttoptr (i64 3 to ptr)
  br label %lean_nat_le.exit12

.critedge.i10:                                    ; preds = %lean_nat_le.exit
  %i.e = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 3 to ptr)) #5
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
define ptr @l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat___boxed(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %lean_nat_le.exit.i, label %lean_nat_le.exit.thread.i, !prof !13

lean_nat_le.exit.i:                               ; preds = %bb.a
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #5
  br i1 %i.c, label %l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat.exit.thread, label %l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat.exit.thread11

lean_nat_le.exit.thread.i:                        ; preds = %bb.a
  %.not.i4 = icmp ugt ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not.i4, label %l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat.exit, label %lean_dec.exit

l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat.exit.thread11: ; preds = %lean_nat_le.exit.i
  %i.d = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 3 to ptr)) #5
  %i.e = select i1 %i.d, i64 3, i64 5
  br label %l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat.exit.thread

l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat.exit: ; preds = %lean_nat_le.exit.thread.i
  %.not = icmp ugt ptr %0, inttoptr (i64 3 to ptr)
  %i.f = select i1 %.not, i64 5, i64 3
  br label %lean_dec.exit

l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat.exit.thread: ; preds = %lean_nat_le.exit.i, %l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat.exit.thread11
  %.1.i8 = phi i64 [ %i.e, %l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat.exit.thread11 ], [ 1, %lean_nat_le.exit.i ] ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat.exit.thread
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.c:                                             ; preds = %l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat.exit.thread
  %.not.i3 = icmp eq i32 %i.g, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_nat_le.exit.thread.i, %l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat.exit, %bb.d, %bb.c, %bb.b
  %.1.i7 = phi i64 [ %.1.i8, %bb.d ], [ %.1.i8, %bb.c ], [ %.1.i8, %bb.b ], [ %i.f, %l_Std_Tactic_BVDecide_LRAT_Internal_Result_ofNat.exit ], [ 1, %lean_nat_le.exit.thread.i ]
  %i.j = inttoptr i64 %.1.i7 to ptr
  ret ptr %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqResult(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
lean_dec.exit:
  %switch.selectcmp4.i = icmp eq i8 %0, 0         ; 2 uses
  %switch.selectcmp.i = icmp ne i8 %0, 1
  %switch.selectcmp4.i14 = icmp eq i8 %1, 0
  %i.a = icmp eq i8 %1, 1
  %2 = xor i1 %switch.selectcmp.i, %i.a
  %not.switch.selectcmp4.i = xor i1 %switch.selectcmp4.i, true
  %3 = and i1 %2, %not.switch.selectcmp4.i
  %4 = select i1 %switch.selectcmp4.i14, i1 %switch.selectcmp4.i, i1 %3
  %i.b = zext i1 %4 to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqResult___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8                     ; 2 uses
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0     ; 2 uses
  %switch.selectcmp.i.i = icmp ne i8 %i.c, 1
  %switch.selectcmp4.i14.i = icmp eq i8 %i.f, 0
  %switch.selectcmp.i12.i = icmp eq i8 %i.f, 1
  %2 = xor i1 %switch.selectcmp.i.i, %switch.selectcmp.i12.i
  %not.switch.selectcmp4.i.i = xor i1 %switch.selectcmp4.i.i, true
  %3 = and i1 %2, %not.switch.selectcmp4.i.i
  %4 = select i1 %switch.selectcmp4.i14.i, i1 %switch.selectcmp4.i.i, i1 %3
  %5 = select i1 %4, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___lam__0(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr @l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___lam__0___closed__1_value, ptr @l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___lam__0___closed__2_value
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr @l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___lam__0___closed__0_value, ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___lam__0___boxed(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___lam__0___closed__1_value, ptr @l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___lam__0___closed__2_value
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr @l_Std_Tactic_BVDecide_LRAT_Internal_instToStringResult___lam__0___closed__0_value, ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 3) i8 @l_Std_Tactic_BVDecide_LRAT_Internal_lratChecker___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %lean_dec_ref.exit177

lean_dec_ref.exit177:                             ; preds = %lean_dec_ref.exit177.backedge, %bb.a
  %.0112 = phi ptr [ %3, %bb.a ], [ %.0112.be, %lean_dec_ref.exit177.backedge ] ; 26 uses
  %.0108 = phi ptr [ %2, %bb.a ], [ %.0108.be, %lean_dec_ref.exit177.backedge ] ; 8 uses
  %i.d = ptrtoint ptr %.0112 to i64               ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not.i192 = icmp eq i64 %i.e, 0
  br i1 %.not.i192, label %bb.c, label %bb.b

bb.b:                                             ; preds = %lean_dec_ref.exit177
  %i.f = lshr i64 %i.d, 1
  %i.g = trunc i64 %i.f to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %lean_dec_ref.exit177
  %i.h = getelementptr i8, ptr %.0112, i64 4
  %.val.i = load i32, ptr %i.h, align 4
  %i.i = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  %i.j = icmp eq i32 %.0.i, 0
  br i1 %i.j, label %bb.d, label %bb.o

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.k = ptrtoint ptr %.0108 to i64
  %i.l = and i64 %i.k, 1
  %.not.i153 = icmp eq i64 %i.l, 0
  br i1 %.not.i153, label %bb.e, label %lean_dec.exit154

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %.0108, align 4, !tbaa !10 ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %.0108, align 4, !tbaa !10
  br label %lean_dec.exit154

bb.g:                                             ; preds = %bb.e
  %.not.i155 = icmp eq i32 %i.m, 0
  br i1 %.not.i155, label %lean_dec.exit154, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0108) #5
  br label %lean_dec.exit154

lean_dec.exit154:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.p = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %lean_dec.exit154
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit191

bb.j:                                             ; preds = %lean_dec.exit154
  %.not.i190 = icmp eq i32 %i.p, 0
  br i1 %.not.i190, label %lean_dec_ref.exit191, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit191

lean_dec_ref.exit191:                             ; preds = %bb.i, %bb.j, %bb.k
  %i.s = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %lean_dec_ref.exit191
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit189

bb.m:                                             ; preds = %lean_dec_ref.exit191
  %.not.i188 = icmp eq i32 %i.s, 0
  br i1 %.not.i188, label %lean_dec_ref.exit189, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit189

bb.o:                                             ; preds = %lean_obj_tag.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.0112, i64 8 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 39 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = and i64 %i.x, 1
  %.not.i142 = icmp eq i64 %i.y, 0
  br i1 %.not.i142, label %bb.p, label %lean_inc.exit143

bb.p:                                             ; preds = %bb.o
  %.val.i.i = load i32, ptr %i.w, align 4, !tbaa !10 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i, 0
  br i1 %i.z, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.aa = add nuw i32 %.val.i.i, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !10
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = atomicrmw sub ptr %i.w, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.t

lean_inc.exit143:                                 ; preds = %bb.o
  %i.ac = lshr i64 %i.x, 1
  %i.ad = trunc i64 %i.ac to i32
  br label %lean_obj_tag.exit196

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.ae = getelementptr i8, ptr %i.w, i64 4
  %.val.i195 = load i32, ptr %i.ae, align 4
  %i.af = lshr i32 %.val.i195, 24
  br label %lean_obj_tag.exit196

lean_obj_tag.exit196:                             ; preds = %lean_inc.exit143, %bb.t
  %.0.i194 = phi i32 [ %i.ad, %lean_inc.exit143 ], [ %i.af, %bb.t ]
  switch i32 %.0.i194, label %bb.hy [
    i32 0, label %bb.u
    i32 1, label %bb.bu
    i32 2, label %bb.ep
  ]

bb.u:                                             ; preds = %lean_obj_tag.exit196
  %.val.i197 = load i32, ptr %.0112, align 4, !tbaa !10 ; 4 uses
  %i.ag = icmp eq i32 %.val.i197, 1
  br i1 %i.ag, label %.preheader.i.preheader, label %bb.ad

.preheader.i.preheader:                           ; preds = %bb.u
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !15  ; 4 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = and i64 %i.ai, 1
  %.not.i.i198 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i198, label %bb.v, label %lean_dec.exit.i

bb.v:                                             ; preds = %.preheader.i.preheader
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !10 ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.am = add nsw i32 %i.ak, -1
  store i32 %i.am, ptr %i.ah, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.x:                                             ; preds = %bb.v
  %.not.i7.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ah) #5
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.y, %bb.x, %bb.w, %.preheader.i.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.0112, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15 ; 4 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, 1
  %.not.i.i198.1 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i198.1, label %bb.z, label %lean_dec.exit.i.1

end_hunk_1
