Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Channel?download=true
inline.NumInlined: 3694
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@l___private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector___redArg___lam__6___boxed:bb.a
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i3 = icmp eq i32 %i.d, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector___redArg(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.val.i = load i32, ptr %0, align 4, !tbaa !10  ; 3 uses
  %i.a = icmp sgt i32 %.val.i, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i32 %.val.i, 2
  store i32 %i.b, ptr %0, align 4, !tbaa !10
  br label %lean_inc_ref_n.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %lean_inc_ref_n.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = atomicrmw sub ptr %0, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit

lean_inc_ref_n.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %i.d = tail call ptr @lean_alloc_object(i64 noundef 32) #8 ; 7 uses
  store i32 1, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 65535
  %i.h = or disjoint i32 %i.g, -184549376
  store i32 %i.h, ptr %i.e, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @l___private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector___redArg___lam__1___boxed, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i16 3, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i16 1, ptr %i.k, align 2, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %0, ptr %i.l, align 8, !tbaa !17
  %i.m = tail call ptr @lean_alloc_object(i64 noundef 56) #8 ; 10 uses
  store i32 1, ptr %i.m, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 65535
  %i.q = or disjoint i32 %i.p, -184549376
  store i32 %i.q, ptr %i.n, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @l_Std_Mutex_atomically___at___00__private_Std_Sync_Channel_0__Std_CloseableChannel_Unbounded_recvSelector_spec__2___boxed, ptr %i.r, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i16 5, ptr %i.s, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  store i16 4, ptr %i.t, align 2, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.u, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %0, ptr %i.w, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr @l___private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector___redArg___closed__1_value, ptr %i.x, align 8, !tbaa !17
  %i.y = tail call ptr @lean_alloc_object(i64 noundef 56) #8 ; 10 uses
  store i32 1, ptr %i.y, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 65535
  %i.ac = or disjoint i32 %i.ab, -184549376
  store i32 %i.ac, ptr %i.z, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @l_Std_Mutex_atomically___at___00__private_Std_Sync_Channel_0__Std_CloseableChannel_Unbounded_recvSelector_spec__2___boxed, ptr %i.ad, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i16 5, ptr %i.ae, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 18
  store i16 4, ptr %i.af, align 2, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.ag, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.ah, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %0, ptr %i.ai, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store ptr @l___private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector___redArg___closed__2_value, ptr %i.aj, align 8, !tbaa !17
  tail call void @lean_inc_heartbeat() #8
  %i.ak = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #8 ; 7 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.e, label %lean_alloc_ctor.exit

bb.e:                                             ; preds = %lean_inc_ref_n.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref_n.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 1, ptr %i.ak, align 4, !tbaa !10
  store i32 196640, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.m, ptr %i.an, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.d, ptr %i.ao, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.y, ptr %i.ap, align 8, !tbaa !17
  ret ptr %i.ak
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l___private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector___redArg(ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Queue_filterM___at___00__private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector_spec__1(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_Std_Queue_filterM___at___00__private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector_spec__1___redArg(ptr noundef %1, ptr poison)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Queue_filterM___at___00__private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector_spec__1___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_Std_Queue_filterM___at___00__private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector_spec__1___redArg(ptr noundef %1, ptr readnone poison)
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
  %.not.i5 = icmp eq i32 %i.d, 0
  br i1 %.not.i5, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_List_filterAuxM___at___00Std_Queue_filterM___at___00__private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector_spec__1_spec__1(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_List_filterAuxM___at___00Std_Queue_filterM___at___00__private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector_spec__1_spec__1___redArg(ptr noundef %1, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_List_filterAuxM___at___00Std_Queue_filterM___at___00__private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector_spec__1_spec__1___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_List_filterAuxM___at___00Std_Queue_filterM___at___00__private_Std_Sync_Channel_0__Std_CloseableChannel_Bounded_recvSelector_spec__1_spec__1___redArg(ptr noundef %1, ptr noundef %2)
  %i.b = ptrtoint ptr %3 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i6 = icmp eq i32 %i.d, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l_Std_CloseableChannel_Flavors_ctorIdx___redArg(ptr noundef %0) local_unnamed_addr #4 {
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
define nonnull ptr @l_Std_CloseableChannel_Flavors_ctorIdx___redArg___boxed(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %l_Std_CloseableChannel_Flavors_ctorIdx___redArg.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %l_Std_CloseableChannel_Flavors_ctorIdx___redArg.exit

l_Std_CloseableChannel_Flavors_ctorIdx___redArg.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %l_Std_CloseableChannel_Flavors_ctorIdx___redArg.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.e:                                             ; preds = %l_Std_CloseableChannel_Flavors_ctorIdx___redArg.exit
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.d, %bb.e, %bb.f
  %switch.selectcmp5.i = icmp eq i32 %.0.i.i, 0
  %switch.selectcmp.i = icmp eq i32 %.0.i.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.select6.i = select i1 %switch.selectcmp5.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select6.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l_Std_CloseableChannel_Flavors_ctorIdx(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %l_Std_CloseableChannel_Flavors_ctorIdx___redArg.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %l_Std_CloseableChannel_Flavors_ctorIdx___redArg.exit

l_Std_CloseableChannel_Flavors_ctorIdx___redArg.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %.0.i.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp5.i = icmp eq i32 %.0.i.i, 0
  %switch.select6.i = select i1 %switch.selectcmp5.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select6.i
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Std_CloseableChannel_Flavors_ctorIdx___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %l_Std_CloseableChannel_Flavors_ctorIdx.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val.i.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i.i, 24
  br label %l_Std_CloseableChannel_Flavors_ctorIdx.exit

l_Std_CloseableChannel_Flavors_ctorIdx.exit:      ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %l_Std_CloseableChannel_Flavors_ctorIdx.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.e:                                             ; preds = %l_Std_CloseableChannel_Flavors_ctorIdx.exit
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.d, %bb.e, %bb.f
  %switch.selectcmp5.i.i = icmp eq i32 %.0.i.i.i, 0
  %switch.selectcmp.i.i = icmp eq i32 %.0.i.i.i, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select6.i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_CloseableChannel_Flavors_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !10
  br label %lean_inc_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %i.f = load i32, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_inc_ref.exit
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_inc_ref.exit
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.i = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef nonnull %i.b) #8
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_CloseableChannel_Flavors_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %.val.i.i.i = load i32, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i32 %.val.i.i.i, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !10
  br label %lean_inc_ref.exit.i

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc_ref.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit.i

lean_inc_ref.exit.i:                              ; preds = %bb.d, %bb.c, %bb.b
  %i.f = load i32, ptr %3, align 8, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_inc_ref.exit.i
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 8, !tbaa !10
  br label %l_Std_CloseableChannel_Flavors_ctorElim___redArg.exit

bb.f:                                             ; preds = %lean_inc_ref.exit.i
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %l_Std_CloseableChannel_Flavors_ctorElim___redArg.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %l_Std_CloseableChannel_Flavors_ctorElim___redArg.exit

l_Std_CloseableChannel_Flavors_ctorElim___redArg.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.i = tail call ptr @lean_apply_1(ptr noundef %5, ptr noundef nonnull %i.b) #8
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_CloseableChannel_Flavors_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %.val.i.i.i.i = load i32, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !10
  br label %lean_inc_ref.exit.i.i

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %lean_inc_ref.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit.i.i

lean_inc_ref.exit.i.i:                            ; preds = %bb.d, %bb.c, %bb.b
  %i.f = load i32, ptr %3, align 8, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_inc_ref.exit.i.i
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 8, !tbaa !10
  br label %l_Std_CloseableChannel_Flavors_ctorElim.exit

bb.f:                                             ; preds = %lean_inc_ref.exit.i.i
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %l_Std_CloseableChannel_Flavors_ctorElim.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %l_Std_CloseableChannel_Flavors_ctorElim.exit

l_Std_CloseableChannel_Flavors_ctorElim.exit:     ; preds = %bb.e, %bb.f, %bb.g
  %i.i = tail call ptr @lean_apply_1(ptr noundef %5, ptr noundef nonnull %i.b) #8
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.h, label %lean_dec.exit

bb.h:                                             ; preds = %l_Std_CloseableChannel_Flavors_ctorElim.exit
  %i.l = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit

bb.j:                                             ; preds = %bb.h
  %.not.i8 = icmp eq i32 %i.l, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.k, %bb.j, %bb.i, %l_Std_CloseableChannel_Flavors_ctorElim.exit
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_CloseableChannel_Flavors_unbounded_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %.val.i.i.i = load i32, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i32 %.val.i.i.i, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !10
  br label %lean_inc_ref.exit.i

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc_ref.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit.i

lean_inc_ref.exit.i:                              ; preds = %bb.d, %bb.c, %bb.b
  %i.f = load i32, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_inc_ref.exit.i
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 8, !tbaa !10
  br label %l_Std_CloseableChannel_Flavors_ctorElim___redArg.exit

bb.f:                                             ; preds = %lean_inc_ref.exit.i
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %l_Std_CloseableChannel_Flavors_ctorElim___redArg.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %l_Std_CloseableChannel_Flavors_ctorElim___redArg.exit
end_hunk_0
