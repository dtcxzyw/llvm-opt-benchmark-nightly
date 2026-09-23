Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/PersistentHashMap?download=true
inline.NumInlined: 707
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_PersistentHashMap_instIterator___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_PersistentHashMap_instIterator___lam__0, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_PersistentHashMap_subarrayMeasure___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l_Lean_PersistentHashMap_Zipper_ctorIdx___redArg(ptr noundef %0) local_unnamed_addr #0 {
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
define nonnull ptr @l_Lean_PersistentHashMap_Zipper_ctorIdx___redArg___boxed(ptr noundef %0) local_unnamed_addr #1 {
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
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
define nonnull ptr @l_Lean_PersistentHashMap_Zipper_ctorIdx(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %l_Lean_PersistentHashMap_Zipper_ctorIdx___redArg.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %l_Lean_PersistentHashMap_Zipper_ctorIdx___redArg.exit

l_Lean_PersistentHashMap_Zipper_ctorIdx___redArg.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %.0.i.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp5.i = icmp eq i32 %.0.i.i, 0
  %switch.select6.i = select i1 %switch.selectcmp5.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select6.i
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_PersistentHashMap_Zipper_ctorIdx___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_dec.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 4
  %.val.i.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i.i, 24                 ; 3 uses
  %3 = load i32, ptr %2, align 4, !tbaa !10       ; 3 uses
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %3, -1
  store i32 %i.g, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i5 = icmp eq i32 %3, 0
  br i1 %.not.i5, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.b, %bb.f, %bb.e, %bb.d
  %.0.i.i.i7 = phi i32 [ %i.f, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.d, %bb.b ] ; 2 uses
  %switch.selectcmp5.i.i = icmp eq i32 %.0.i.i.i7, 0
  %switch.selectcmp.i.i = icmp eq i32 %.0.i.i.i7, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select6.i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_Zipper_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i26 = icmp eq i64 %i.b, 0
  br i1 %.not.i26, label %bb.c, label %bb.b

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
    i32 0, label %bb.ay
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 4 uses
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13   ; 5 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %.not.i24 = icmp eq i64 %i.o, 0
  br i1 %.not.i24, label %bb.h, label %lean_inc.exit25

bb.h:                                             ; preds = %lean_inc_ref.exit
  %.val.i.i27 = load i32, ptr %i.m, align 4, !tbaa !10 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i27, 0
  br i1 %i.p, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.q = add nuw i32 %.val.i.i27, 1
  store i32 %i.q, ptr %i.m, align 4, !tbaa !10
  br label %lean_inc.exit25

bb.j:                                             ; preds = %bb.h
  %.not.i.i28 = icmp eq i32 %.val.i.i27, 0
  br i1 %.not.i.i28, label %lean_inc.exit25, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit25

lean_inc.exit25:                                  ; preds = %bb.k, %bb.j, %bb.i, %lean_inc_ref.exit
  %.val.i30 = load i32, ptr %0, align 8, !tbaa !10 ; 4 uses
  %i.s = icmp eq i32 %.val.i30, 1
  br i1 %i.s, label %.preheader.i.preheader, label %bb.t

.preheader.i.preheader:                           ; preds = %lean_inc.exit25
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !13   ; 4 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 1
  %.not.i.i31 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i31, label %bb.l, label %lean_dec.exit.i

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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.o, %bb.n, %bb.m, %.preheader.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13  ; 4 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 1
  %.not.i.i31.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i31.1, label %bb.p, label %lean_dec.exit.i.1

bb.p:                                             ; preds = %lean_dec.exit.i
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !10 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.s, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  %.not.i7.i.1 = icmp eq i32 %i.ad, 0
  br i1 %.not.i7.i.1, label %lean_dec.exit.i.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #6
  br label %lean_dec.exit.i.1

bb.s:                                             ; preds = %bb.p
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !10
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.s, %bb.r, %bb.q, %lean_dec.exit.i
  tail call void @lean_free_object(ptr noundef nonnull %0) #6
  br label %lean_dec_ref_known.exit

bb.t:                                             ; preds = %lean_inc.exit25
  %i.ag = icmp sgt i32 %.val.i30, 1
  br i1 %i.ag, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.ah = add nsw i32 %.val.i30, -1
  store i32 %i.ah, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.v:                                             ; preds = %bb.t
  %.not.i8.i = icmp eq i32 %.val.i30, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.1, %bb.u, %bb.v, %bb.w
  %i.ai = tail call ptr @lean_apply_2(ptr noundef %1, ptr noundef nonnull %i.h, ptr noundef %i.m) #6
  br label %bb.ay

bb.x:                                             ; preds = %lean_obj_tag.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !13 ; 4 uses
  %.val.i.i32 = load i32, ptr %i.ak, align 4, !tbaa !10 ; 3 uses
  %i.al = icmp sgt i32 %.val.i.i32, 0
  br i1 %i.al, label %bb.y, label %bb.z, !prof !11

bb.y:                                             ; preds = %bb.x
  %i.am = add nuw i32 %.val.i.i32, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !10
  br label %lean_inc_ref.exit34

bb.z:                                             ; preds = %bb.x
  %.not.i.i33 = icmp eq i32 %.val.i.i32, 0
  br i1 %.not.i.i33, label %lean_inc_ref.exit34, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = atomicrmw sub ptr %i.ak, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit34

lean_inc_ref.exit34:                              ; preds = %bb.y, %bb.z, %bb.aa
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !13 ; 4 uses
  %.val.i.i35 = load i32, ptr %i.ap, align 4, !tbaa !10 ; 3 uses
  %i.aq = icmp sgt i32 %.val.i.i35, 0
  br i1 %i.aq, label %bb.ab, label %bb.ac, !prof !11

bb.ab:                                            ; preds = %lean_inc_ref.exit34
  %i.ar = add nuw i32 %.val.i.i35, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !10
  br label %lean_inc_ref.exit37

bb.ac:                                            ; preds = %lean_inc_ref.exit34
  %.not.i.i36 = icmp eq i32 %.val.i.i35, 0
  br i1 %.not.i.i36, label %lean_inc_ref.exit37, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.as = atomicrmw sub ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit37

lean_inc_ref.exit37:                              ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !13 ; 5 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, 1
end_hunk_0
