Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Common?download=true
inline.NumInlined: 6549
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumUnrolled: 71
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Build_Common_0__Lake_serializeInputs_spec__0___boxed:bb.a
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit10

lean_dec.exit10:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !16
  %i.f = load i32, ptr %2, align 8, !tbaa !13     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %lean_dec.exit10
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 8, !tbaa !13
  br label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit10
  %.not.i12 = icmp eq i32 %i.f, 0
  br i1 %.not.i12, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Build_Common_0__Lake_serializeInputs_spec__0(ptr noundef %0, i64 noundef %.val16, i64 noundef %.val, ptr noundef %3)
  %i.j = load i32, ptr %0, align 4, !tbaa !13     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %lean_dec.exit
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %0, align 4, !tbaa !13
  br label %lean_dec_ref.exit15

bb.i:                                             ; preds = %lean_dec.exit
  %.not.i14 = icmp eq i32 %i.j, 0
  br i1 %.not.i14, label %lean_dec_ref.exit15, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit15

lean_dec_ref.exit15:                              ; preds = %bb.h, %bb.i, %bb.j
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Lake_Build_Common_0__Lake_BuildMetadata_ofBuildCore(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !16
  %.mask.i = and i64 %.val.i, 9223372036854775807 ; 2 uses
  %.not.i = icmp eq i64 %.mask.i, 0
  br i1 %.not.i, label %l___private_Lake_Build_Common_0__Lake_serializeInputs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Build_Common_0__Lake_serializeInputs_spec__0(ptr noundef nonnull readonly %i.b, i64 noundef 0, i64 noundef %.mask.i, ptr noundef nonnull @l_Lake_BuildMetadata_fromJsonObject_x3f___closed__4_value) #12, !inline_history !19
  br label %l___private_Lake_Build_Common_0__Lake_serializeInputs.exit

l___private_Lake_Build_Common_0__Lake_serializeInputs.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ @l_Lake_BuildMetadata_fromJsonObject_x3f___closed__4_value, %bb.a ], [ %i.f, %bb.b ]
  tail call void @lean_inc_heartbeat() #10
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %lean_alloc_ctor.exit

bb.c:                                             ; preds = %l___private_Lake_Build_Common_0__Lake_serializeInputs.exit
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit:                             ; preds = %l___private_Lake_Build_Common_0__Lake_serializeInputs.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !13
  store i32 16842768, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #10
  %i.k = tail call noalias ptr @mi_malloc_small(i64 noundef 48) #10 ; 9 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %lean_alloc_ctor.exit15

bb.d:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit15:                           ; preds = %lean_alloc_ctor.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !16
  store i32 1, ptr %i.k, align 8, !tbaa !13
  store i32 196656, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.1.i, ptr %i.o, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.g, ptr %i.p, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %2, ptr %i.q, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %i.d, ptr %i.r, align 8, !tbaa !16
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Lake_Build_Common_0__Lake_BuildMetadata_ofBuildCore___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Build_Common_0__Lake_BuildMetadata_ofBuildCore(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = load i32, ptr %0, align 4, !tbaa !13     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %0, align 4, !tbaa !13
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lake_BuildMetadata_ofBuild___redArg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_apply_1(ptr noundef %0, ptr noundef %2) #10
  %i.b = tail call ptr @l___private_Lake_Build_Common_0__Lake_BuildMetadata_ofBuildCore(ptr noundef %1, ptr noundef %i.a, ptr noundef %3)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lake_BuildMetadata_ofBuild___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_apply_1(ptr noundef %0, ptr noundef %2) #10
  %i.b = tail call nonnull ptr @l___private_Lake_Build_Common_0__Lake_BuildMetadata_ofBuildCore(ptr noundef readonly %1, ptr noundef %i.a, ptr noundef %3)
  %i.c = load i32, ptr %1, align 4, !tbaa !13     ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %1, align 4, !tbaa !13
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lake_BuildMetadata_ofBuild(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef %3) #10
  %i.b = tail call ptr @l___private_Lake_Build_Common_0__Lake_BuildMetadata_ofBuildCore(ptr noundef %2, ptr noundef %i.a, ptr noundef %4)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lake_BuildMetadata_ofBuild___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef %3) #10
  %i.b = tail call nonnull ptr @l___private_Lake_Build_Common_0__Lake_BuildMetadata_ofBuildCore(ptr noundef readonly %2, ptr noundef %i.a, ptr noundef %4)
  %i.c = load i32, ptr %2, align 4, !tbaa !13     ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %2, align 4, !tbaa !13
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l_Lake_SavedTrace_ctorIdx(ptr noundef %0) local_unnamed_addr #4 {
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
define nonnull ptr @l_Lake_SavedTrace_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
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
  %1 = load i32, ptr %0, align 4, !tbaa !13       ; 3 uses
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %1, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i3 = icmp eq i32 %1, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
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
define ptr @l_Lake_SavedTrace_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i11 = icmp eq i64 %i.b, 0
  br i1 %.not.i11, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.d = icmp eq i32 %.mask, 33554432
  br i1 %i.d, label %bb.b, label %bb.n

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.e = and i64 %i.a, 8589934590
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 4 uses
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !13 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i, 0
  br i1 %i.i, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i32 %.val.i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !13
  br label %lean_inc_ref.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %.val.i12 = load i32, ptr %0, align 8, !tbaa !13 ; 4 uses
  %i.l = icmp eq i32 %.val.i12, 1
  br i1 %i.l, label %.preheader.i.preheader, label %bb.j

.preheader.i.preheader:                           ; preds = %lean_inc_ref.exit
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !10   ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %.not.i.i13 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i13, label %bb.f, label %lean_dec.exit.i

bb.f:                                             ; preds = %.preheader.i.preheader
  %i.p = load i32, ptr %i.m, align 4, !tbaa !13   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.m, align 4, !tbaa !13
  br label %lean_dec.exit.i

bb.h:                                             ; preds = %bb.f
  %.not.i7.i = icmp eq i32 %i.p, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #10
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.i, %bb.h, %bb.g, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %0) #10
  br label %lean_dec_ref_known.exit

bb.j:                                             ; preds = %lean_inc_ref.exit
  %i.s = icmp sgt i32 %.val.i12, 1
  br i1 %i.s, label %bb.k, label %bb.l, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %.val.i12, -1
  store i32 %i.t, ptr %0, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit

bb.l:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i32 %.val.i12, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.k, %bb.l, %bb.m
  %i.u = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef nonnull %i.h) #10
  br label %lean_dec.exit

bb.n:                                             ; preds = %lean_obj_tag.exit
  %i.v = load i32, ptr %0, align 4, !tbaa !13     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.o, label %bb.p, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit

bb.p:                                             ; preds = %bb.n
  %.not.i10 = icmp eq i32 %i.v, 0
  br i1 %.not.i10, label %lean_dec.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit.thread, %bb.o, %bb.p, %bb.q, %lean_dec_ref_known.exit
  %.0 = phi ptr [ %i.u, %lean_dec_ref_known.exit ], [ %1, %bb.q ], [ %1, %bb.p ], [ %1, %bb.o ], [ %1, %lean_obj_tag.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_SavedTrace_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lake_SavedTrace_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_SavedTrace_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lake_SavedTrace_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
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
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_SavedTrace_missing_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lake_SavedTrace_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_SavedTrace_missing_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lake_SavedTrace_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_SavedTrace_invalid_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lake_SavedTrace_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_SavedTrace_invalid_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lake_SavedTrace_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_SavedTrace_ok_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lake_SavedTrace_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_SavedTrace_ok_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lake_SavedTrace_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

end_hunk_0
begin_hunk_1_@l_Lake_BuildMetadata_writeFile:bb.a
  br label %lean_dec_ref.exit19

bb.v:                                             ; preds = %lean_obj_tag.exit
  %i.ae = load i32, ptr %1, align 4, !tbaa !13    ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.w, label %bb.x, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %1, align 4, !tbaa !13
  br label %lean_dec_ref.exit17

bb.x:                                             ; preds = %bb.v
  %.not.i16 = icmp eq i32 %i.ae, 0
  br i1 %.not.i16, label %lean_dec_ref.exit17, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec_ref.exit17

lean_dec_ref.exit17:                              ; preds = %bb.w, %bb.x, %bb.y
  %i.ah = load i32, ptr %0, align 4, !tbaa !13    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !14

bb.z:                                             ; preds = %lean_dec_ref.exit17
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !13
  br label %lean_dec_ref.exit19

bb.aa:                                            ; preds = %lean_dec_ref.exit17
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %lean_dec_ref.exit19, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit19

lean_dec_ref.exit19:                              ; preds = %bb.ab, %bb.aa, %bb.z, %bb.u, %bb.t, %bb.s
  %.0 = phi ptr [ %i.x, %bb.u ], [ %i.x, %bb.s ], [ %i.x, %bb.t ], [ %i.d, %bb.z ], [ %i.d, %bb.aa ], [ %i.d, %bb.ab ]
  ret ptr %.0
}

declare ptr @l_Lake_createParentDirs(ptr noundef) local_unnamed_addr #1

declare ptr @l_IO_FS_writeFile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Lake_BuildMetadata_writeFile___boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lake_BuildMetadata_writeFile(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_writeFetchTrace(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @lean_inc_heartbeat() #10
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_alloc_ctor.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit.i:                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !13
  store i32 16842768, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #10
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 48) #10 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %l_Lake_BuildMetadata_ofFetch.exit

bb.c:                                             ; preds = %lean_alloc_ctor.exit.i
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

l_Lake_BuildMetadata_ofFetch.exit:                ; preds = %lean_alloc_ctor.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 1, ptr %i.h, align 8, !tbaa !16
  store i32 1, ptr %i.e, align 8, !tbaa !13
  store i32 196656, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @l_Lake_BuildMetadata_ofStub___closed__0_value, ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.a, ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @l_Lake_BuildMetadata_ofStub___closed__0_value, ptr %i.k, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %1, ptr %i.l, align 8, !tbaa !16
  %i.m = tail call ptr @l_Lake_BuildMetadata_writeFile(ptr noundef %0, ptr noundef nonnull %i.e)
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_writeFetchTrace___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !16
  %i.b = load i32, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !13
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %i.e = tail call ptr @l_Lake_writeFetchTrace(ptr noundef %0, i64 noundef %.val, ptr noundef %2)
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_writeBuildTrace___redArg(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_apply_1(ptr noundef %0, ptr noundef %3) #10
  %i.b = tail call ptr @l___private_Lake_Build_Common_0__Lake_BuildMetadata_ofBuildCore(ptr noundef %2, ptr noundef %i.a, ptr noundef %4)
  %i.c = tail call ptr @l_Lake_BuildMetadata_writeFile(ptr noundef %1, ptr noundef nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_writeBuildTrace___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_apply_1(ptr noundef %0, ptr noundef %3) #10
  %i.b = tail call ptr @l___private_Lake_Build_Common_0__Lake_BuildMetadata_ofBuildCore(ptr noundef readonly %2, ptr noundef %i.a, ptr noundef %4)
  %i.c = tail call ptr @l_Lake_BuildMetadata_writeFile(ptr noundef %1, ptr noundef nonnull %i.b)
  %i.d = load i32, ptr %2, align 4, !tbaa !13     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %2, align 4, !tbaa !13
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_writeBuildTrace(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef %4) #10
  %i.b = tail call ptr @l___private_Lake_Build_Common_0__Lake_BuildMetadata_ofBuildCore(ptr noundef %3, ptr noundef %i.a, ptr noundef %5)
  %i.c = tail call ptr @l_Lake_BuildMetadata_writeFile(ptr noundef %2, ptr noundef nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_writeBuildTrace___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef %4) #10
  %i.b = tail call ptr @l___private_Lake_Build_Common_0__Lake_BuildMetadata_ofBuildCore(ptr noundef readonly %3, ptr noundef %i.a, ptr noundef %5)
  %i.c = tail call ptr @l_Lake_BuildMetadata_writeFile(ptr noundef %2, ptr noundef nonnull %i.b)
  %i.d = load i32, ptr %3, align 4, !tbaa !13     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %3, align 4, !tbaa !13
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lake_OutputStatus_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #5 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lake_OutputStatus_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #5 {
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
define noundef nonnull ptr @l_Lake_OutputStatus_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #5 {
l_Lake_OutputStatus_ctorIdx.exit:
  %switch.selectcmp.i = icmp eq i8 %0, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %0, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lake_OutputStatus_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #5 {
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
define noundef ptr @l_Lake_OutputStatus_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #6 {
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
define noundef ptr @l_Lake_OutputStatus_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
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
  br i1 %i.g, label %bb.g, label %bb.h, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lake_OutputStatus_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #6 {
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
define noundef ptr @l_Lake_OutputStatus_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #0 {
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
  br i1 %i.g, label %bb.g, label %bb.h, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !13
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #10
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lake_OutputStatus_outOfDate_elim___redArg(ptr noundef returned %0) local_unnamed_addr #6 {
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
end_hunk_1
begin_hunk_2_@l_Lake_OutputStatus_hashUpToDate_elim___redArg___boxed:bb.a
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
  br i1 %i.g, label %bb.g, label %bb.h, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lake_OutputStatus_hashUpToDate_elim(ptr nofree noundef readnone captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !13 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %3, align 4, !tbaa !13
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
define noundef ptr @l_Lake_OutputStatus_hashUpToDate_elim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !13 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !13
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !13
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 3) i8 @l_Lake_OutputStatus_ofNat(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %lean_nat_le.exit, label %lean_nat_le.exit.thread, !prof !21

lean_nat_le.exit:                                 ; preds = %bb.a
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #10
  br i1 %i.c, label %bb.b, label %.critedge.i10

lean_nat_le.exit.thread:                          ; preds = %bb.a
  %.not = icmp ugt ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %lean_nat_le.exit.thread
  %i.d = icmp ule ptr %0, inttoptr (i64 3 to ptr)
  br label %lean_nat_le.exit12

.critedge.i10:                                    ; preds = %lean_nat_le.exit
  %i.e = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 3 to ptr)) #10
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
define ptr @l_Lake_OutputStatus_ofNat___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %lean_nat_le.exit.i, label %lean_nat_le.exit.thread.i, !prof !21

lean_nat_le.exit.i:                               ; preds = %bb.a
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #10
  br i1 %i.c, label %l_Lake_OutputStatus_ofNat.exit.thread, label %l_Lake_OutputStatus_ofNat.exit.thread11

lean_nat_le.exit.thread.i:                        ; preds = %bb.a
  %.not.i4 = icmp ugt ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not.i4, label %l_Lake_OutputStatus_ofNat.exit, label %lean_dec.exit

l_Lake_OutputStatus_ofNat.exit.thread11:          ; preds = %lean_nat_le.exit.i
  %i.d = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 3 to ptr)) #10
  %i.e = select i1 %i.d, i64 3, i64 5
  br label %l_Lake_OutputStatus_ofNat.exit.thread

l_Lake_OutputStatus_ofNat.exit:                   ; preds = %lean_nat_le.exit.thread.i
  %.not = icmp ugt ptr %0, inttoptr (i64 3 to ptr)
  %i.f = select i1 %.not, i64 5, i64 3
  br label %lean_dec.exit

l_Lake_OutputStatus_ofNat.exit.thread:            ; preds = %lean_nat_le.exit.i, %l_Lake_OutputStatus_ofNat.exit.thread11
  %.1.i8 = phi i64 [ %i.e, %l_Lake_OutputStatus_ofNat.exit.thread11 ], [ 1, %lean_nat_le.exit.i ] ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !13     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %l_Lake_OutputStatus_ofNat.exit.thread
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit

bb.c:                                             ; preds = %l_Lake_OutputStatus_ofNat.exit.thread
  %.not.i3 = icmp eq i32 %i.g, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_nat_le.exit.thread.i, %l_Lake_OutputStatus_ofNat.exit, %bb.d, %bb.c, %bb.b
  %.1.i7 = phi i64 [ %.1.i8, %bb.d ], [ %.1.i8, %bb.c ], [ %.1.i8, %bb.b ], [ %i.f, %l_Lake_OutputStatus_ofNat.exit ], [ 1, %lean_nat_le.exit.thread.i ]
  %i.j = inttoptr i64 %.1.i7 to ptr
  ret ptr %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lake_instDecidableEqOutputStatus(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
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
define nonnull ptr @l_Lake_instDecidableEqOutputStatus___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
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
define noundef zeroext range(i8 0, 3) i8 @l_Lake_OutputStatus_ofHashCheck(i8 noundef zeroext %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i8 %0, 0
  %. = select i1 %i.a, i8 0, i8 2
  ret i8 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lake_OutputStatus_ofHashCheck___boxed(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 510
  %i.c = icmp eq i64 %i.b, 0
  %i.d = select i1 %i.c, i64 1, i64 5
  %i.e = inttoptr i64 %i.d to ptr
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lake_OutputStatus_ofMTimeCheck(i8 noundef zeroext %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne i8 %0, 0
  %. = zext i1 %i.a to i8
  ret i8 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lake_OutputStatus_ofMTimeCheck___boxed(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 510
  %.not = icmp eq i64 %i.b, 0
  %i.c = select i1 %.not, i64 1, i64 3
  %i.d = inttoptr i64 %i.c to ptr
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lake_OutputStatus_isUpToDate(i8 noundef zeroext %0) local_unnamed_addr #5 {
l_Lake_instDecidableEqOutputStatus.exit:
  %switch.selectcmp6 = icmp ne i8 %0, 0
  %switch.select7 = zext i1 %switch.selectcmp6 to i8
  ret i8 %switch.select7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lake_OutputStatus_isUpToDate___boxed(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 510
  %switch.selectcmp6.i.not = icmp eq i64 %i.b, 0
  %i.c = select i1 %switch.selectcmp6.i.not, i64 1, i64 3
  %i.d = inttoptr i64 %i.c to ptr
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lake_OutputStatus_isCacheable(i8 noundef zeroext %0) local_unnamed_addr #5 {
l_Lake_instDecidableEqOutputStatus.exit:
  %switch.selectcmp = icmp ne i8 %0, 1
  %switch.select = zext i1 %switch.selectcmp to i8
  ret i8 %switch.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lake_OutputStatus_isCacheable___boxed(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 510
  %switch.selectcmp.i.not = icmp eq i64 %i.b, 2
  %i.c = select i1 %switch.selectcmp.i.not, i64 1, i64 3
  %i.d = inttoptr i64 %i.c to ptr
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l___private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = load atomic i32, ptr @l___private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___redArg___closed__0_once seq_cst, align 4, !tbaa !18
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @l___private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___redArg___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___redArg___closed__0, ptr noundef nonnull @l___private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___redArg___closed__0_once, ptr noundef nonnull @_init_l___private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___redArg___closed__0) #10
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  tail call void @lean_inc_heartbeat() #10
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %lean_box_uint64.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_box_uint64.exit:                             ; preds = %lean_obj_once.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !13
  store i32 16, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.b, ptr %i.j, align 8, !tbaa !16
  tail call void @lean_inc_heartbeat() #10
  %i.k = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %lean_alloc_ctor.exit

bb.e:                                             ; preds = %lean_box_uint64.exit
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_box_uint64.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 1, ptr %i.k, align 4, !tbaa !13
  store i32 16842768, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.g, ptr %i.n, align 8, !tbaa !10
  %i.o = tail call zeroext i8 @l_Option_instBEq_beq___redArg(ptr noundef %.0.i, ptr noundef nonnull %i.k, ptr noundef %4) #10
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.x

bb.f:                                             ; preds = %lean_alloc_ctor.exit
  %i.q = load i32, ptr %0, align 4, !tbaa !13     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %0, align 4, !tbaa !13
  br label %lean_dec_ref.exit59

bb.h:                                             ; preds = %bb.f
  %.not.i58 = icmp eq i32 %i.q, 0
  br i1 %.not.i58, label %lean_dec_ref.exit59, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit59

lean_dec_ref.exit59:                              ; preds = %bb.g, %bb.h, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.s

bb.j:                                             ; preds = %lean_dec_ref.exit59
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.k, label %lean_dec.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = load i32, ptr %2, align 4, !tbaa !13    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !13
  br label %lean_dec.exit

bb.m:                                             ; preds = %bb.k
  %.not.i53 = icmp eq i32 %i.aa, 0
  br i1 %.not.i53, label %lean_dec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %i.ad = load i32, ptr %1, align 4, !tbaa !13    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.o, label %bb.p, !prof !14

bb.o:                                             ; preds = %lean_dec.exit
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !13
  br label %lean_dec_ref.exit57

bb.p:                                             ; preds = %lean_dec.exit
  %.not.i56 = icmp eq i32 %i.ad, 0
  br i1 %.not.i56, label %lean_dec_ref.exit57, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec_ref.exit57

lean_dec_ref.exit57:                              ; preds = %bb.o, %bb.p, %bb.q
end_hunk_2
begin_hunk_3_@l_Lake_buildArtifactUnlessUpToDate:bb.a
  %.sink = phi ptr [ %i.afi, %lean_obj_tag.exit1587 ], [ %i.aet, %lean_obj_tag.exit1583 ], [ %i.cq, %lean_obj_tag.exit1579 ]
  %i.su = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !10
  %i.sw = ptrtoint ptr %i.sv to i64
  %i.sx = lshr i64 %i.sw, 1
  %i.sy = trunc i64 %i.sx to i8
  br label %bb.lo

bb.lo:                                            ; preds = %.sink.split, %lean_obj_tag.exit1587
  %.0906 = phi i8 [ 0, %lean_obj_tag.exit1587 ], [ %i.sy, %.sink.split ]
  %i.sz = icmp eq i8 %4, 0
  %.0899 = select i1 %i.sz, i8 %.0906, i8 %.2939  ; 3 uses
  %.val.i.i1464 = load i32, ptr %7, align 4, !tbaa !13 ; 3 uses
  %i.ta = icmp sgt i32 %.val.i.i1464, 0
  br i1 %i.ta, label %bb.lp, label %bb.lq, !prof !14

bb.lp:                                            ; preds = %bb.lo
  %i.tb = add nuw i32 %.val.i.i1464, 1
  store i32 %i.tb, ptr %7, align 4, !tbaa !13
  br label %lean_inc_ref.exit1466

bb.lq:                                            ; preds = %bb.lo
  %.not.i.i1465 = icmp eq i32 %.val.i.i1464, 0
  br i1 %.not.i.i1465, label %lean_inc_ref.exit1466, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.tc = atomicrmw sub ptr %7, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1466

lean_inc_ref.exit1466:                            ; preds = %bb.lp, %bb.lq, %bb.lr
  %.val.i.i1467 = load i32, ptr %i.ag, align 4, !tbaa !13 ; 3 uses
  %i.td = icmp sgt i32 %.val.i.i1467, 0
  br i1 %i.td, label %bb.ls, label %bb.lt, !prof !14

bb.ls:                                            ; preds = %lean_inc_ref.exit1466
  %i.te = add nuw i32 %.val.i.i1467, 1
  store i32 %i.te, ptr %i.ag, align 4, !tbaa !13
  br label %lean_inc_ref.exit1469

bb.lt:                                            ; preds = %lean_inc_ref.exit1466
  %.not.i.i1468 = icmp eq i32 %.val.i.i1467, 0
  br i1 %.not.i.i1468, label %lean_inc_ref.exit1469, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.tf = atomicrmw sub ptr %i.ag, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1469

lean_inc_ref.exit1469:                            ; preds = %bb.ls, %bb.lt, %bb.lu
  %.val.i.i1470 = load i32, ptr %0, align 4, !tbaa !13 ; 3 uses
  %i.tg = icmp sgt i32 %.val.i.i1470, 0
  br i1 %i.tg, label %bb.lv, label %bb.lw, !prof !14

bb.lv:                                            ; preds = %lean_inc_ref.exit1469
  %i.th = add nuw i32 %.val.i.i1470, 1
  store i32 %i.th, ptr %0, align 4, !tbaa !13
  br label %lean_inc_ref.exit1472

bb.lw:                                            ; preds = %lean_inc_ref.exit1469
  %.not.i.i1471 = icmp eq i32 %.val.i.i1470, 0
  br i1 %.not.i.i1471, label %lean_inc_ref.exit1472, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.ti = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1472

lean_inc_ref.exit1472:                            ; preds = %bb.lx, %bb.lw, %bb.lv
  %.val.i.i1473 = load i32, ptr %i.ce, align 8, !tbaa !13 ; 3 uses
  %i.tj = icmp sgt i32 %.val.i.i1473, 0
  br i1 %i.tj, label %bb.ly, label %bb.lz, !prof !14

bb.ly:                                            ; preds = %lean_inc_ref.exit1472
  %i.tk = add nuw i32 %.val.i.i1473, 1
  store i32 %i.tk, ptr %i.ce, align 8, !tbaa !13
  br label %lean_inc.exit1046

bb.lz:                                            ; preds = %lean_inc_ref.exit1472
  %.not.i.i1474 = icmp eq i32 %.val.i.i1473, 0
  br i1 %.not.i.i1474, label %lean_inc.exit1046, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.tl = atomicrmw sub ptr %i.ce, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1046

lean_inc.exit1046:                                ; preds = %bb.ma, %bb.lz, %bb.ly
  br i1 %.not.i1059, label %bb.mb, label %lean_inc.exit1044

bb.mb:                                            ; preds = %lean_inc.exit1046
  %.val.i.i1476 = load i32, ptr %i.ba, align 4, !tbaa !13 ; 3 uses
  %i.tm = icmp sgt i32 %.val.i.i1476, 0
  br i1 %i.tm, label %bb.mc, label %bb.md, !prof !14

bb.mc:                                            ; preds = %bb.mb
  %i.tn = add nuw i32 %.val.i.i1476, 1
  store i32 %i.tn, ptr %i.ba, align 4, !tbaa !13
  br label %lean_inc.exit1044

bb.md:                                            ; preds = %bb.mb
  %.not.i.i1477 = icmp eq i32 %.val.i.i1476, 0
  br i1 %.not.i.i1477, label %lean_inc.exit1044, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.to = atomicrmw sub ptr %i.ba, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1044

lean_inc.exit1044:                                ; preds = %bb.me, %bb.md, %bb.mc, %lean_inc.exit1046
  %i.tp = tail call ptr @l_Lake_buildArtifactUnlessUpToDate___lam__0(i8 noundef zeroext %5, i64 noundef %i.cg, ptr noundef %i.ba, ptr noundef nonnull %i.ce, ptr noundef nonnull %0, ptr noundef nonnull %i.ag, i8 noundef zeroext %.0899, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %i.cu) ; 14 uses
  %i.tq = ptrtoint ptr %i.tp to i64               ; 2 uses
  %i.tr = and i64 %i.tq, 1
  %.not.i1479 = icmp eq i64 %i.tr, 0              ; 2 uses
  br i1 %.not.i1479, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %lean_inc.exit1044
  %i.ts = lshr i64 %i.tq, 1
  %i.tt = trunc i64 %i.ts to i32
  br label %lean_obj_tag.exit1482

bb.mg:                                            ; preds = %lean_inc.exit1044
  %i.tu = getelementptr i8, ptr %i.tp, i64 4
  %.val.i1481 = load i32, ptr %i.tu, align 4
  %i.tv = lshr i32 %.val.i1481, 24
  br label %lean_obj_tag.exit1482

lean_obj_tag.exit1482:                            ; preds = %bb.mf, %bb.mg
  %.0.i1480 = phi i32 [ %i.tt, %bb.mf ], [ %i.tv, %bb.mg ]
  %i.tw = icmp eq i32 %.0.i1480, 0
  br i1 %i.tw, label %bb.ed, label %bb.kb

lean_dec.exit1077:                                ; preds = %lean_obj_tag.exit1566, %bb.pu
  %.val.i.i1483 = load i32, ptr %7, align 4, !tbaa !13 ; 3 uses
  %i.tx = icmp sgt i32 %.val.i.i1483, 0
  br i1 %i.tx, label %bb.mh, label %bb.mi, !prof !14

bb.mh:                                            ; preds = %lean_dec.exit1077
  %i.ty = add nuw i32 %.val.i.i1483, 1
  store i32 %i.ty, ptr %7, align 4, !tbaa !13
  br label %lean_inc_ref.exit1485

bb.mi:                                            ; preds = %lean_dec.exit1077
  %.not.i.i1484 = icmp eq i32 %.val.i.i1483, 0
  br i1 %.not.i.i1484, label %lean_inc_ref.exit1485, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.tz = atomicrmw sub ptr %7, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1485

lean_inc_ref.exit1485:                            ; preds = %bb.mh, %bb.mi, %bb.mj
  %.val.i.i1486 = load i32, ptr %i.ag, align 4, !tbaa !13 ; 3 uses
  %i.ua = icmp sgt i32 %.val.i.i1486, 0
  br i1 %i.ua, label %bb.mk, label %bb.ml, !prof !14

bb.mk:                                            ; preds = %lean_inc_ref.exit1485
  %i.ub = add nuw i32 %.val.i.i1486, 1
  store i32 %i.ub, ptr %i.ag, align 4, !tbaa !13
  br label %lean_inc_ref.exit1488

bb.ml:                                            ; preds = %lean_inc_ref.exit1485
  %.not.i.i1487 = icmp eq i32 %.val.i.i1486, 0
  br i1 %.not.i.i1487, label %lean_inc_ref.exit1488, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.uc = atomicrmw sub ptr %i.ag, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1488

lean_inc_ref.exit1488:                            ; preds = %bb.mk, %bb.ml, %bb.mm
  %.val.i.i1489 = load i32, ptr %0, align 4, !tbaa !13 ; 3 uses
  %i.ud = icmp sgt i32 %.val.i.i1489, 0
  br i1 %i.ud, label %bb.mn, label %bb.mo, !prof !14

bb.mn:                                            ; preds = %lean_inc_ref.exit1488
  %i.ue = add nuw i32 %.val.i.i1489, 1
  store i32 %i.ue, ptr %0, align 4, !tbaa !13
  br label %lean_inc_ref.exit1491

bb.mo:                                            ; preds = %lean_inc_ref.exit1488
  %.not.i.i1490 = icmp eq i32 %.val.i.i1489, 0
  br i1 %.not.i.i1490, label %lean_inc_ref.exit1491, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.uf = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1491

lean_inc_ref.exit1491:                            ; preds = %bb.mp, %bb.mo, %bb.mn
  %.val.i.i1492 = load i32, ptr %i.ce, align 8, !tbaa !13 ; 3 uses
  %i.ug = icmp sgt i32 %.val.i.i1492, 0
  br i1 %i.ug, label %bb.mq, label %bb.mr, !prof !14

bb.mq:                                            ; preds = %lean_inc_ref.exit1491
  %i.uh = add nuw i32 %.val.i.i1492, 1
  store i32 %i.uh, ptr %i.ce, align 8, !tbaa !13
  br label %lean_inc.exit1016

bb.mr:                                            ; preds = %lean_inc_ref.exit1491
  %.not.i.i1493 = icmp eq i32 %.val.i.i1492, 0
  br i1 %.not.i.i1493, label %lean_inc.exit1016, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.ui = atomicrmw sub ptr %i.ce, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1016

lean_inc.exit1016:                                ; preds = %bb.ms, %bb.mr, %bb.mq
  %i.uj = tail call ptr @l_Lake_buildArtifactUnlessUpToDate___lam__0(i8 noundef zeroext %5, i64 noundef %i.cg, ptr noundef %i.ba, ptr noundef nonnull %i.ce, ptr noundef nonnull %0, ptr noundef nonnull %i.ag, i8 noundef zeroext %13, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %i.zr) ; 14 uses
  %i.uk = ptrtoint ptr %i.uj to i64               ; 2 uses
  %i.ul = and i64 %i.uk, 1
  %.not.i1495 = icmp eq i64 %i.ul, 0              ; 2 uses
  br i1 %.not.i1495, label %bb.mu, label %bb.mt

bb.mt:                                            ; preds = %lean_inc.exit1016
  %i.um = lshr i64 %i.uk, 1
  %i.un = trunc i64 %i.um to i32
  br label %lean_obj_tag.exit1498

bb.mu:                                            ; preds = %lean_inc.exit1016
  %i.uo = getelementptr i8, ptr %i.uj, i64 4
  %.val.i1497 = load i32, ptr %i.uo, align 4
  %i.up = lshr i32 %.val.i1497, 24
  br label %lean_obj_tag.exit1498

lean_obj_tag.exit1498:                            ; preds = %bb.mt, %bb.mu
  %.0.i1496 = phi i32 [ %i.un, %bb.mt ], [ %i.up, %bb.mu ]
  %i.uq = icmp eq i32 %.0.i1496, 0
  br i1 %i.uq, label %bb.mv, label %bb.om

bb.mv:                                            ; preds = %lean_obj_tag.exit1498
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !10 ; 10 uses
  %i.ut = ptrtoint ptr %i.us to i64               ; 2 uses
  %i.uu = and i64 %i.ut, 1
  %.not.i1013 = icmp eq i64 %i.uu, 0
  br i1 %.not.i1013, label %bb.mw, label %lean_obj_tag.exit1505.thread

bb.mw:                                            ; preds = %bb.mv
  %.val.i.i1499 = load i32, ptr %i.us, align 4, !tbaa !13 ; 3 uses
  %i.uv = icmp sgt i32 %.val.i.i1499, 0
  br i1 %i.uv, label %bb.mx, label %bb.my, !prof !14

bb.mx:                                            ; preds = %bb.mw
  %i.uw = add nuw i32 %.val.i.i1499, 1
  store i32 %i.uw, ptr %i.us, align 4, !tbaa !13
  br label %lean_obj_tag.exit1505

bb.my:                                            ; preds = %bb.mw
  %.not.i.i1500 = icmp eq i32 %.val.i.i1499, 0
  br i1 %.not.i.i1500, label %lean_obj_tag.exit1505, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.ux = atomicrmw sub ptr %i.us, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_obj_tag.exit1505

lean_obj_tag.exit1505:                            ; preds = %bb.mx, %bb.my, %bb.mz
  %i.uy = getelementptr i8, ptr %i.us, i64 4
  %.val.i1504 = load i32, ptr %i.uy, align 4
  %.mask2006 = and i32 %.val.i1504, -16777216
  %i.uz = icmp eq i32 %.mask2006, 16777216
  br i1 %i.uz, label %bb.na, label %bb.ny

lean_obj_tag.exit1505.thread:                     ; preds = %bb.mv
  %i.va = and i64 %i.ut, 8589934590
  %i.vb = icmp eq i64 %i.va, 2
  br i1 %i.vb, label %bb.na, label %lean_dec.exit1089

bb.na:                                            ; preds = %lean_obj_tag.exit1505.thread, %lean_obj_tag.exit1505
  %i.vc = load i32, ptr %i.h, align 8, !tbaa !13  ; 3 uses
  %i.vd = icmp sgt i32 %i.vc, 1
  br i1 %i.vd, label %bb.nb, label %bb.nc, !prof !14

bb.nb:                                            ; preds = %bb.na
  %i.ve = add nsw i32 %i.vc, -1
  store i32 %i.ve, ptr %i.h, align 8, !tbaa !13
  br label %lean_dec_ref.exit1230

bb.nc:                                            ; preds = %bb.na
  %.not.i1229 = icmp eq i32 %i.vc, 0
  br i1 %.not.i1229, label %lean_dec_ref.exit1230, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #10
  br label %lean_dec_ref.exit1230

lean_dec_ref.exit1230:                            ; preds = %bb.nb, %bb.nc, %bb.nd
  %i.vf = load i32, ptr %7, align 4, !tbaa !13    ; 3 uses
  %i.vg = icmp sgt i32 %i.vf, 1
  br i1 %i.vg, label %bb.ne, label %bb.nf, !prof !14

bb.ne:                                            ; preds = %lean_dec_ref.exit1230
  %i.vh = add nsw i32 %i.vf, -1
  store i32 %i.vh, ptr %7, align 4, !tbaa !13
  br label %lean_dec_ref.exit1228

bb.nf:                                            ; preds = %lean_dec_ref.exit1230
  %.not.i1227 = icmp eq i32 %i.vf, 0
  br i1 %.not.i1227, label %lean_dec_ref.exit1228, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #10
  br label %lean_dec_ref.exit1228

lean_dec_ref.exit1228:                            ; preds = %bb.ne, %bb.nf, %bb.ng
  %i.vi = load i32, ptr %3, align 4, !tbaa !13    ; 3 uses
  %i.vj = icmp sgt i32 %i.vi, 1
  br i1 %i.vj, label %bb.nh, label %bb.ni, !prof !14

bb.nh:                                            ; preds = %lean_dec_ref.exit1228
  %i.vk = add nsw i32 %i.vi, -1
  store i32 %i.vk, ptr %3, align 4, !tbaa !13
  br label %lean_dec_ref.exit1226

bb.ni:                                            ; preds = %lean_dec_ref.exit1228
  %.not.i1225 = icmp eq i32 %i.vi, 0
  br i1 %.not.i1225, label %lean_dec_ref.exit1226, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec_ref.exit1226

lean_dec_ref.exit1226:                            ; preds = %bb.nh, %bb.ni, %bb.nj
  %i.vl = load i32, ptr %1, align 4, !tbaa !13    ; 3 uses
  %i.vm = icmp sgt i32 %i.vl, 1
  br i1 %i.vm, label %bb.nk, label %bb.nl, !prof !14

bb.nk:                                            ; preds = %lean_dec_ref.exit1226
  %i.vn = add nsw i32 %i.vl, -1
  store i32 %i.vn, ptr %1, align 4, !tbaa !13
  br label %lean_dec_ref.exit1224

bb.nl:                                            ; preds = %lean_dec_ref.exit1226
  %.not.i1223 = icmp eq i32 %i.vl, 0
  br i1 %.not.i1223, label %lean_dec_ref.exit1224, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec_ref.exit1224

lean_dec_ref.exit1224:                            ; preds = %bb.nk, %bb.nl, %bb.nm
  %i.vo = load i32, ptr %0, align 4, !tbaa !13    ; 3 uses
  %i.vp = icmp sgt i32 %i.vo, 1
  br i1 %i.vp, label %bb.nn, label %bb.no, !prof !14

bb.nn:                                            ; preds = %lean_dec_ref.exit1224
  %i.vq = add nsw i32 %i.vo, -1
  store i32 %i.vq, ptr %0, align 4, !tbaa !13
  br label %lean_dec_ref.exit1222

bb.no:                                            ; preds = %lean_dec_ref.exit1224
  %.not.i1221 = icmp eq i32 %i.vo, 0
  br i1 %.not.i1221, label %lean_dec_ref.exit1222, label %bb.np

bb.np:                                            ; preds = %bb.no
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit1222

lean_dec_ref.exit1222:                            ; preds = %bb.nn, %bb.no, %bb.np
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !10 ; 5 uses
  %i.vt = ptrtoint ptr %i.vs to i64
  %i.vu = and i64 %i.vt, 1
  %.not.i1011 = icmp eq i64 %i.vu, 0
  br i1 %.not.i1011, label %bb.nq, label %lean_inc.exit1012

bb.nq:                                            ; preds = %lean_dec_ref.exit1222
  %.val.i.i1506 = load i32, ptr %i.vs, align 4, !tbaa !13 ; 3 uses
  %i.vv = icmp sgt i32 %.val.i.i1506, 0
  br i1 %i.vv, label %bb.nr, label %bb.ns, !prof !14

bb.nr:                                            ; preds = %bb.nq
  %i.vw = add nuw i32 %.val.i.i1506, 1
  store i32 %i.vw, ptr %i.vs, align 4, !tbaa !13
  br label %lean_inc.exit1012

bb.ns:                                            ; preds = %bb.nq
  %.not.i.i1507 = icmp eq i32 %.val.i.i1506, 0
  br i1 %.not.i.i1507, label %lean_inc.exit1012, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.vx = atomicrmw sub ptr %i.vs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1012

lean_inc.exit1012:                                ; preds = %bb.nt, %bb.ns, %bb.nr, %lean_dec_ref.exit1222
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.uj, i32 noundef 2)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !10 ; 5 uses
  %i.wa = ptrtoint ptr %i.vz to i64
  %i.wb = and i64 %i.wa, 1
  %.not.i1009 = icmp eq i64 %i.wb, 0
  br i1 %.not.i1009, label %bb.nu, label %lean_dec_ref.exit1220

bb.nu:                                            ; preds = %lean_inc.exit1012
  %.val.i.i1509 = load i32, ptr %i.vz, align 4, !tbaa !13 ; 3 uses
  %i.wc = icmp sgt i32 %.val.i.i1509, 0
  br i1 %i.wc, label %bb.nv, label %bb.nw, !prof !14

bb.nv:                                            ; preds = %bb.nu
  %i.wd = add nuw i32 %.val.i.i1509, 1
  store i32 %i.wd, ptr %i.vz, align 4, !tbaa !13
  br label %lean_dec_ref.exit1220

bb.nw:                                            ; preds = %bb.nu
  %.not.i.i1510 = icmp eq i32 %.val.i.i1509, 0
  br i1 %.not.i.i1510, label %lean_dec_ref.exit1220, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.we = atomicrmw sub ptr %i.vz, i32 1 monotonic, align 4 ; 0 uses
end_hunk_3
begin_hunk_4_@l_Lake_buildArtifactUnlessUpToDate:bb.a
bb.qf:                                            ; preds = %bb.qe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #10
  br label %lean_dec_ref.exit1206

bb.qg:                                            ; preds = %lean_obj_tag.exit1345, %.thread
  br i1 %.not.i1059, label %bb.qh, label %lean_inc.exit1002

bb.qh:                                            ; preds = %bb.qg
  %.val.i.i1529 = load i32, ptr %i.ba, align 4, !tbaa !13 ; 3 uses
  %i.yy = icmp sgt i32 %.val.i.i1529, 0
  br i1 %i.yy, label %bb.qi, label %bb.qj, !prof !14

bb.qi:                                            ; preds = %bb.qh
  %i.yz = add nuw i32 %.val.i.i1529, 1
  store i32 %i.yz, ptr %i.ba, align 4, !tbaa !13
  br label %lean_inc.exit1002

bb.qj:                                            ; preds = %bb.qh
  %.not.i.i1530 = icmp eq i32 %.val.i.i1529, 0
  br i1 %.not.i.i1530, label %lean_inc.exit1002, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.za = atomicrmw sub ptr %i.ba, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1002

lean_inc.exit1002:                                ; preds = %bb.qk, %bb.qj, %bb.qi, %bb.qg
  %i.zb = tail call ptr @l_Lake_SavedTrace_replayIfUpToDate_x27___at___00Lake_buildFileUnlessUpToDate_x27_spec__0(ptr poison, ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef %i.ba, ptr noundef %i.ci, ptr nonnull poison, ptr poison, ptr poison, ptr noundef %11, ptr noundef nonnull %i.cu) ; 16 uses
  %i.zc = ptrtoint ptr %i.zb to i64               ; 2 uses
  %i.zd = and i64 %i.zc, 1
  %.not.i1532 = icmp eq i64 %i.zd, 0              ; 2 uses
  br i1 %.not.i1532, label %bb.qm, label %bb.ql

bb.ql:                                            ; preds = %lean_inc.exit1002
  %i.ze = lshr i64 %i.zc, 1
  %i.zf = trunc i64 %i.ze to i32
  br label %lean_obj_tag.exit1535

bb.qm:                                            ; preds = %lean_inc.exit1002
  %i.zg = getelementptr i8, ptr %i.zb, i64 4
  %.val.i1534 = load i32, ptr %i.zg, align 4
  %i.zh = lshr i32 %.val.i1534, 24
  br label %lean_obj_tag.exit1535

lean_obj_tag.exit1535:                            ; preds = %bb.ql, %bb.qm
  %.0.i1533 = phi i32 [ %i.zf, %bb.ql ], [ %i.zh, %bb.qm ]
  %i.zi = icmp eq i32 %.0.i1533, 0
  br i1 %i.zi, label %bb.qn, label %bb.sj

bb.qn:                                            ; preds = %lean_obj_tag.exit1535
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zb, i64 8 ; 2 uses
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !10 ; 7 uses
  %i.zl = ptrtoint ptr %i.zk to i64               ; 2 uses
  %i.zm = and i64 %i.zl, 1
  %.not.i999 = icmp eq i64 %i.zm, 0               ; 2 uses
  br i1 %.not.i999, label %bb.qo, label %lean_inc.exit1000

bb.qo:                                            ; preds = %bb.qn
  %.val.i.i1536 = load i32, ptr %i.zk, align 4, !tbaa !13 ; 3 uses
  %i.zn = icmp sgt i32 %.val.i.i1536, 0
  br i1 %i.zn, label %bb.qp, label %bb.qq, !prof !14

bb.qp:                                            ; preds = %bb.qo
  %i.zo = add nuw i32 %.val.i.i1536, 1
  store i32 %i.zo, ptr %i.zk, align 4, !tbaa !13
  br label %lean_inc.exit1000

bb.qq:                                            ; preds = %bb.qo
  %.not.i.i1537 = icmp eq i32 %.val.i.i1536, 0
  br i1 %.not.i.i1537, label %lean_inc.exit1000, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  %i.zp = atomicrmw sub ptr %i.zk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1000

lean_inc.exit1000:                                ; preds = %bb.qr, %bb.qq, %bb.qp, %bb.qn
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !10 ; 7 uses
  %i.zs = ptrtoint ptr %i.zr to i64
  %i.zt = and i64 %i.zs, 1
  %.not.i997 = icmp eq i64 %i.zt, 0
  br i1 %.not.i997, label %bb.qs, label %lean_inc.exit998

bb.qs:                                            ; preds = %lean_inc.exit1000
  %.val.i.i1539 = load i32, ptr %i.zr, align 4, !tbaa !13 ; 3 uses
  %i.zu = icmp sgt i32 %.val.i.i1539, 0
  br i1 %i.zu, label %bb.qt, label %bb.qu, !prof !14

bb.qt:                                            ; preds = %bb.qs
  %i.zv = add nuw i32 %.val.i.i1539, 1
  store i32 %i.zv, ptr %i.zr, align 4, !tbaa !13
  br label %lean_inc.exit998

bb.qu:                                            ; preds = %bb.qs
  %.not.i.i1540 = icmp eq i32 %.val.i.i1539, 0
  br i1 %.not.i.i1540, label %lean_inc.exit998, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.zw = atomicrmw sub ptr %i.zr, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit998

lean_inc.exit998:                                 ; preds = %bb.qv, %bb.qu, %bb.qt, %lean_inc.exit1000
  %.val.i1542 = load i32, ptr %i.zb, align 8, !tbaa !13 ; 4 uses
  %i.zx = icmp eq i32 %.val.i1542, 1
  br i1 %i.zx, label %.preheader.i1544.preheader, label %bb.re

.preheader.i1544.preheader:                       ; preds = %lean_inc.exit998
  %i.zy = load ptr, ptr %i.zj, align 8, !tbaa !10 ; 4 uses
  %i.zz = ptrtoint ptr %i.zy to i64
  %i.aaa = and i64 %i.zz, 1
  %.not.i.i1546 = icmp eq i64 %i.aaa, 0
  br i1 %.not.i.i1546, label %bb.qw, label %lean_dec.exit.i1547

bb.qw:                                            ; preds = %.preheader.i1544.preheader
  %i.aab = load i32, ptr %i.zy, align 4, !tbaa !13 ; 3 uses
  %i.aac = icmp sgt i32 %i.aab, 1
  br i1 %i.aac, label %bb.qx, label %bb.qy, !prof !14

bb.qx:                                            ; preds = %bb.qw
  %i.aad = add nsw i32 %i.aab, -1
  store i32 %i.aad, ptr %i.zy, align 4, !tbaa !13
  br label %lean_dec.exit.i1547

bb.qy:                                            ; preds = %bb.qw
  %.not.i7.i1550 = icmp eq i32 %i.aab, 0
  br i1 %.not.i7.i1550, label %lean_dec.exit.i1547, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.zy) #10
  br label %lean_dec.exit.i1547

lean_dec.exit.i1547:                              ; preds = %bb.qz, %bb.qy, %bb.qx, %.preheader.i1544.preheader
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !10 ; 4 uses
  %i.aag = ptrtoint ptr %i.aaf to i64
  %i.aah = and i64 %i.aag, 1
  %.not.i.i1546.1 = icmp eq i64 %i.aah, 0
  br i1 %.not.i.i1546.1, label %bb.ra, label %lean_dec.exit.i1547.1

bb.ra:                                            ; preds = %lean_dec.exit.i1547
  %i.aai = load i32, ptr %i.aaf, align 4, !tbaa !13 ; 3 uses
  %i.aaj = icmp sgt i32 %i.aai, 1
  br i1 %i.aaj, label %bb.rd, label %bb.rb, !prof !14

bb.rb:                                            ; preds = %bb.ra
  %.not.i7.i1550.1 = icmp eq i32 %i.aai, 0
  br i1 %.not.i7.i1550.1, label %lean_dec.exit.i1547.1, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aaf) #10
  br label %lean_dec.exit.i1547.1

bb.rd:                                            ; preds = %bb.ra
  %i.aak = add nsw i32 %i.aai, -1
  store i32 %i.aak, ptr %i.aaf, align 4, !tbaa !13
  br label %lean_dec.exit.i1547.1

lean_dec.exit.i1547.1:                            ; preds = %bb.rd, %bb.rc, %bb.rb, %lean_dec.exit.i1547
  tail call void @lean_free_object(ptr noundef nonnull %i.zb) #10
  br label %lean_dec_ref_known.exit1551

bb.re:                                            ; preds = %lean_inc.exit998
  %i.aal = icmp sgt i32 %.val.i1542, 1
  br i1 %i.aal, label %bb.rf, label %bb.rg, !prof !14

bb.rf:                                            ; preds = %bb.re
  %i.aam = add nsw i32 %.val.i1542, -1
  store i32 %i.aam, ptr %i.zb, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit1551

bb.rg:                                            ; preds = %bb.re
  %.not.i8.i1543 = icmp eq i32 %.val.i1542, 0
  br i1 %.not.i8.i1543, label %lean_dec_ref_known.exit1551, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.zb) #10
  br label %lean_dec_ref_known.exit1551

lean_dec_ref_known.exit1551:                      ; preds = %lean_dec.exit.i1547.1, %bb.rf, %bb.rg, %bb.rh
  br i1 %.not.i999, label %bb.ri, label %lean_dec.exit1083

bb.ri:                                            ; preds = %lean_dec_ref_known.exit1551
  %i.aan = load i32, ptr %i.zk, align 4, !tbaa !13 ; 3 uses
  %i.aao = icmp sgt i32 %i.aan, 1
  br i1 %i.aao, label %bb.rj, label %bb.rk, !prof !14

bb.rj:                                            ; preds = %bb.ri
  %i.aap = add nsw i32 %i.aan, -1
  store i32 %i.aap, ptr %i.zk, align 4, !tbaa !13
  br label %lean_dec.exit1083

bb.rk:                                            ; preds = %bb.ri
  %.not.i1131 = icmp eq i32 %i.aan, 0
  br i1 %.not.i1131, label %lean_dec.exit1083, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.zk) #10
  br label %lean_dec.exit1083

lean_dec.exit1083:                                ; preds = %bb.rl, %bb.rk, %bb.rj, %lean_dec_ref_known.exit1551
  %i.aaq = and i64 %i.zl, 510
  %cond1778 = icmp eq i64 %i.aaq, 0               ; 2 uses
  %13 = zext i1 %cond1778 to i8
  br i1 %cond1778, label %bb.sa, label %bb.rm

bb.rm:                                            ; preds = %lean_dec.exit1083
  br i1 %.not.i1059, label %bb.rn, label %lean_dec.exit1081

bb.rn:                                            ; preds = %bb.rm
  %i.aar = load i32, ptr %i.ba, align 4, !tbaa !13 ; 3 uses
  %i.aas = icmp sgt i32 %i.aar, 1
  br i1 %i.aas, label %bb.ro, label %bb.rp, !prof !14

bb.ro:                                            ; preds = %bb.rn
  %i.aat = add nsw i32 %i.aar, -1
  store i32 %i.aat, ptr %i.ba, align 4, !tbaa !13
  br label %lean_dec.exit1081

bb.rp:                                            ; preds = %bb.rn
  %.not.i1133 = icmp eq i32 %i.aar, 0
  br i1 %.not.i1133, label %lean_dec.exit1081, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ba) #10
  br label %lean_dec.exit1081

lean_dec.exit1081:                                ; preds = %bb.rq, %bb.rp, %bb.ro, %bb.rm
  %i.aau = load i32, ptr %i.h, align 8, !tbaa !13 ; 3 uses
  %i.aav = icmp sgt i32 %i.aau, 1
  br i1 %i.aav, label %bb.rr, label %bb.rs, !prof !14

bb.rr:                                            ; preds = %lean_dec.exit1081
  %i.aaw = add nsw i32 %i.aau, -1
  store i32 %i.aaw, ptr %i.h, align 8, !tbaa !13
  br label %lean_dec_ref.exit1204

bb.rs:                                            ; preds = %lean_dec.exit1081
  %.not.i1203 = icmp eq i32 %i.aau, 0
  br i1 %.not.i1203, label %lean_dec_ref.exit1204, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #10
  br label %lean_dec_ref.exit1204

lean_dec_ref.exit1204:                            ; preds = %bb.rr, %bb.rs, %bb.rt
  %i.aax = load i32, ptr %7, align 4, !tbaa !13   ; 3 uses
  %i.aay = icmp sgt i32 %i.aax, 1
  br i1 %i.aay, label %bb.ru, label %bb.rv, !prof !14

bb.ru:                                            ; preds = %lean_dec_ref.exit1204
  %i.aaz = add nsw i32 %i.aax, -1
  store i32 %i.aaz, ptr %7, align 4, !tbaa !13
  br label %lean_dec_ref.exit1202

bb.rv:                                            ; preds = %lean_dec_ref.exit1204
  %.not.i1201 = icmp eq i32 %i.aax, 0
  br i1 %.not.i1201, label %lean_dec_ref.exit1202, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #10
  br label %lean_dec_ref.exit1202

lean_dec_ref.exit1202:                            ; preds = %bb.ru, %bb.rv, %bb.rw
  %i.aba = load i32, ptr %1, align 4, !tbaa !13   ; 3 uses
  %i.abb = icmp sgt i32 %i.aba, 1
  br i1 %i.abb, label %bb.rx, label %bb.ry, !prof !14

bb.rx:                                            ; preds = %lean_dec_ref.exit1202
  %i.abc = add nsw i32 %i.aba, -1
  store i32 %i.abc, ptr %1, align 4, !tbaa !13
  br label %lean_dec.exit1077.thread1744

bb.ry:                                            ; preds = %lean_dec_ref.exit1202
  %.not.i1199 = icmp eq i32 %i.aba, 0
  br i1 %.not.i1199, label %lean_dec.exit1077.thread1744, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit1077.thread1744

lean_dec.exit1077.thread1744:                     ; preds = %bb.rz, %bb.ry, %bb.rx
  %i.abd = tail call ptr @l_Lake_computeArtifact___redArg(ptr noundef nonnull %0, ptr noundef %3, i8 noundef zeroext %2, ptr noundef %11, ptr noundef %i.zr)
  br label %lean_dec_ref.exit1206

bb.sa:                                            ; preds = %lean_dec.exit1083
  br i1 %.not.i1334, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.abe = lshr i64 %i.dc, 1
  %i.abf = trunc i64 %i.abe to i32
  br label %lean_obj_tag.exit1558

bb.sc:                                            ; preds = %bb.sa
  %i.abg = getelementptr i8, ptr %i.co, i64 4
  %.val.i1557 = load i32, ptr %i.abg, align 4
  %i.abh = lshr i32 %.val.i1557, 24
  br label %lean_obj_tag.exit1558

lean_obj_tag.exit1558:                            ; preds = %bb.sb, %bb.sc
  %.0.i1556 = phi i32 [ %i.abf, %bb.sb ], [ %i.abh, %bb.sc ]
  %i.abi = icmp eq i32 %.0.i1556, 0
  br i1 %i.abi, label %bb.sd, label %bb.pu

bb.sd:                                            ; preds = %lean_obj_tag.exit1558
  %i.abj = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !10 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !10
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 56
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !10 ; 3 uses
  %i.abp = ptrtoint ptr %i.abo to i64             ; 2 uses
  %i.abq = and i64 %i.abp, 1
  %.not.i1559 = icmp eq i64 %i.abq, 0
  br i1 %.not.i1559, label %bb.sf, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.abr = lshr i64 %i.abp, 1
  %i.abs = trunc i64 %i.abr to i32
  br label %lean_obj_tag.exit1562

bb.sf:                                            ; preds = %bb.sd
  %i.abt = getelementptr i8, ptr %i.abo, i64 4
  %.val.i1561 = load i32, ptr %i.abt, align 4
  %i.abu = lshr i32 %.val.i1561, 24
  br label %lean_obj_tag.exit1562

lean_obj_tag.exit1562:                            ; preds = %bb.se, %bb.sf
  %.0.i1560 = phi i32 [ %i.abs, %bb.se ], [ %i.abu, %bb.sf ]
  %i.abv = icmp eq i32 %.0.i1560, 0
  br i1 %i.abv, label %bb.sg, label %bb.pu

bb.sg:                                            ; preds = %lean_obj_tag.exit1562
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abk, i64 40
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !10
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 24
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !10
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 56
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !10
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 200
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !10 ; 3 uses
  %i.ace = ptrtoint ptr %i.acd to i64             ; 2 uses
  %i.acf = and i64 %i.ace, 1
  %.not.i1563 = icmp eq i64 %i.acf, 0
  br i1 %.not.i1563, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.acg = lshr i64 %i.ace, 1
  %i.ach = trunc i64 %i.acg to i32
  br label %lean_obj_tag.exit1566

bb.si:                                            ; preds = %bb.sg
  %i.aci = getelementptr i8, ptr %i.acd, i64 4
  %.val.i1565 = load i32, ptr %i.aci, align 4
  %i.acj = lshr i32 %.val.i1565, 24
  br label %lean_obj_tag.exit1566

lean_obj_tag.exit1566:                            ; preds = %bb.sh, %bb.si
  %.0.i1564 = phi i32 [ %i.ach, %bb.sh ], [ %i.acj, %bb.si ]
  %i.ack = icmp eq i32 %.0.i1564, 0
  br i1 %i.ack, label %lean_dec.exit1077, label %bb.pu

bb.sj:                                            ; preds = %lean_obj_tag.exit1535
  br i1 %.not.i1059, label %bb.sk, label %lean_dec.exit1079

bb.sk:                                            ; preds = %bb.sj
  %i.acl = load i32, ptr %i.ba, align 4, !tbaa !13 ; 3 uses
  %i.acm = icmp sgt i32 %i.acl, 1
  br i1 %i.acm, label %bb.sl, label %bb.sm, !prof !14

bb.sl:                                            ; preds = %bb.sk
  %i.acn = add nsw i32 %i.acl, -1
  store i32 %i.acn, ptr %i.ba, align 4, !tbaa !13
  br label %lean_dec.exit1079

bb.sm:                                            ; preds = %bb.sk
  %.not.i1135 = icmp eq i32 %i.acl, 0
  br i1 %.not.i1135, label %lean_dec.exit1079, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ba) #10
  br label %lean_dec.exit1079

lean_dec.exit1079:                                ; preds = %bb.sn, %bb.sm, %bb.sl, %bb.sj
  %i.aco = load i32, ptr %i.ag, align 4, !tbaa !13 ; 3 uses
  %i.acp = icmp sgt i32 %i.aco, 1
  br i1 %i.acp, label %bb.so, label %bb.sp, !prof !14

bb.so:                                            ; preds = %lean_dec.exit1079
  %i.acq = add nsw i32 %i.aco, -1
  store i32 %i.acq, ptr %i.ag, align 4, !tbaa !13
  br label %lean_dec_ref.exit1198

bb.sp:                                            ; preds = %lean_dec.exit1079
  %.not.i1197 = icmp eq i32 %i.aco, 0
  br i1 %.not.i1197, label %lean_dec_ref.exit1198, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ag) #10
  br label %lean_dec_ref.exit1198

lean_dec_ref.exit1198:                            ; preds = %bb.so, %bb.sp, %bb.sq
  %i.acr = ptrtoint ptr %.0810 to i64
  %i.acs = and i64 %i.acr, 1
end_hunk_4
