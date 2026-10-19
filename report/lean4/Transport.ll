Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Transport?download=true
inline.NumInlined: 700
inline.NumDeleted: 50
begin_hunk_0_@l_Std_Http_Internal_Mock_recvJoined:bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.a = icmp sgt i32 %.val.i.i, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i32 %.val.i.i, 1
  store i32 %i.b, ptr %0, align 4, !tbaa !10
  br label %lean_inc_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %i.d = tail call ptr @l_Std_CloseableChannel_recv___redArg(ptr noundef nonnull %0) #4
  %i.e = tail call ptr @lean_alloc_object(i64 noundef 48) #4 ; 9 uses
  store i32 1, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 65535
  %i.i = or disjoint i32 %i.h, -184549376
  store i32 %i.i, ptr %i.f, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @l_Std_Http_Internal_Mock_recvJoined___lam__3___boxed, ptr %i.j, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i16 5, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  store i16 3, ptr %i.l, align 2, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %0, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @l_Std_Http_Internal_Mock_recvJoined___closed__0_value, ptr %i.o, align 8, !tbaa !12
  %i.p = tail call ptr @lean_alloc_object(i64 noundef 40) #4 ; 8 uses
  store i32 1, ptr %i.p, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 65535
  %i.t = or disjoint i32 %i.s, -184549376
  store i32 %i.t, ptr %i.q, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @l_Std_Http_Internal_Mock_recvJoined___lam__5___boxed, ptr %i.u, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i16 4, ptr %i.v, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  store i16 2, ptr %i.w, align 2, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @l_Std_Http_Internal_Mock_recvJoined___closed__1_value, ptr %i.x, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.e, ptr %i.y, align 8, !tbaa !12
  tail call void @lean_inc_heartbeat() #4
  %i.z = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %lean_alloc_ctor.exit

bb.e:                                             ; preds = %lean_inc_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 1, ptr %i.z, align 4, !tbaa !10
  store i32 16842768, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.d, ptr %i.ac, align 8, !tbaa !12
  tail call void @lean_inc_heartbeat() #4
  %i.ad = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %lean_alloc_ctor.exit20

bb.f:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit20:                           ; preds = %lean_alloc_ctor.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 1, ptr %i.ad, align 4, !tbaa !10
  store i32 65552, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.z, ptr %i.ag, align 8, !tbaa !12
  %i.ah = tail call ptr @l___private_Std_Async_Basic_0__Std_Async_BaseAsync_bind_bindAsyncTask(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), i8 noundef zeroext 0, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.p) #4
  ret ptr %i.ah
}

declare ptr @l_Std_CloseableChannel_recv___redArg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Std_Http_Internal_Mock_recvJoined___boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Std_Http_Internal_Mock_recvJoined(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Std_Http_Internal_Mock_send___lam__0(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i43 = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i43, label %bb.c, label %bb.b

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
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 12 uses
  br i1 %i.g, label %bb.d, label %bb.v

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = and i64 %i.j, 1
  %.not.i36 = icmp eq i64 %i.k, 0                 ; 2 uses
  br i1 %.not.i36, label %bb.e, label %lean_inc.exit37

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i, 0
  br i1 %i.l, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i32 %.val.i.i, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !10
  br label %lean_inc.exit37

bb.g:                                             ; preds = %bb.e
  %.not.i.i44 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i44, label %lean_inc.exit37, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit37

lean_inc.exit37:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.val.i45 = load i32, ptr %0, align 8, !tbaa !10 ; 4 uses
  %i.o = icmp eq i32 %.val.i45, 1
  br i1 %i.o, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %lean_inc.exit37
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !12   ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 1
  %.not.i7.i = icmp eq i64 %i.r, 0
  br i1 %.not.i7.i, label %bb.i, label %lean_dec.exit.i

bb.i:                                             ; preds = %.preheader.i
  %i.s = load i32, ptr %i.p, align 4, !tbaa !10   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.p, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.l, %bb.k, %bb.j, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %0) #4
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %lean_inc.exit37
  %i.v = icmp sgt i32 %.val.i45, 1
  br i1 %i.v, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.w = add nsw i32 %.val.i45, -1
  store i32 %i.w, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i46 = icmp eq i32 %.val.i45, 0
  br i1 %.not.i.i46, label %lean_dec_ref_known.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.n, %bb.o, %bb.p
  br i1 %.not.i36, label %bb.q, label %lean_dec.exit42

bb.q:                                             ; preds = %lean_dec_ref_known.exit
  %i.x = load i32, ptr %i.i, align 4, !tbaa !10   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %i.i, align 4, !tbaa !10
  br label %lean_dec.exit42

bb.s:                                             ; preds = %bb.q
  %.not.i.i40 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i40, label %lean_dec.exit42, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #4
  br label %lean_dec.exit42

lean_dec.exit42:                                  ; preds = %bb.r, %bb.s, %bb.t, %lean_dec_ref_known.exit
  %1 = and i64 %i.j, 510
  %2 = icmp eq i64 %1, 0
  %l_Std_Http_Internal_Mock_send___lam__0___closed__0_value.l_Std_Http_Internal_Mock_send___lam__0___closed__1_value = select i1 %2, ptr @l_Std_Http_Internal_Mock_send___lam__0___closed__0_value, ptr @l_Std_Http_Internal_Mock_send___lam__0___closed__1_value ; 3 uses
  %.val.i.i48 = load i32, ptr %l_Std_Http_Internal_Mock_send___lam__0___closed__0_value.l_Std_Http_Internal_Mock_send___lam__0___closed__1_value, align 8, !tbaa !10 ; 2 uses
  %3 = icmp sgt i32 %.val.i.i48, 0
  br i1 %3, label %lean_inc_ref.exit50, label %4, !prof !13

4:                                                ; preds = %lean_dec.exit42
  %.not.i.i49 = icmp eq i32 %.val.i.i48, 0
  br i1 %.not.i.i49, label %lean_inc_ref.exit50, label %5

5:                                                ; preds = %4
  %6 = atomicrmw sub ptr %l_Std_Http_Internal_Mock_send___lam__0___closed__0_value.l_Std_Http_Internal_Mock_send___lam__0___closed__1_value, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit50

lean_inc_ref.exit50:                              ; preds = %lean_dec.exit42, %4, %5
  %i.aa = tail call ptr @lean_mk_io_user_error(ptr noundef nonnull %l_Std_Http_Internal_Mock_send___lam__0___closed__0_value.l_Std_Http_Internal_Mock_send___lam__0___closed__1_value) #4
  tail call void @lean_inc_heartbeat() #4
  %i.ab = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.u, label %lean_dec.exit.sink.split

bb.u:                                             ; preds = %lean_inc_ref.exit50
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.v:                                             ; preds = %lean_obj_tag.exit
  %.val = load i32, ptr %0, align 8, !tbaa !10
  %i.ad = icmp eq i32 %.val, 1
  br i1 %i.ad, label %lean_dec.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = and i64 %i.ae, 1
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %bb.x, label %lean_inc.exit

bb.x:                                             ; preds = %bb.w
  %.val.i.i51 = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.ag = icmp sgt i32 %.val.i.i51, 0
  br i1 %i.ag, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.ah = add nuw i32 %.val.i.i51, 1
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !10
  br label %lean_inc.exit

bb.z:                                             ; preds = %bb.x
  %.not.i.i52 = icmp eq i32 %.val.i.i51, 0
  br i1 %.not.i.i52, label %lean_inc.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ai = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.aa, %bb.z, %bb.y, %bb.w
  br i1 %.not.i43, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %lean_inc.exit
  %i.aj = load i32, ptr %0, align 8, !tbaa !10    ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %0, align 8, !tbaa !10
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %bb.af

bb.af:                                            ; preds = %lean_inc.exit, %bb.ae, %bb.ad, %bb.ac
  tail call void @lean_inc_heartbeat() #4
  %i.am = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.ag, label %lean_dec.exit.sink.split

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_dec.exit.sink.split:                         ; preds = %bb.af, %lean_inc_ref.exit50
  %.sink68 = phi ptr [ %i.ab, %lean_inc_ref.exit50 ], [ %i.am, %bb.af ] ; 4 uses
  %.sink65 = phi i32 [ 65552, %lean_inc_ref.exit50 ], [ 16842768, %bb.af ]
  %.sink = phi ptr [ %i.aa, %lean_inc_ref.exit50 ], [ %i.i, %bb.af ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink68, i64 4
  store i32 1, ptr %.sink68, align 4, !tbaa !10
  store i32 %.sink65, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink68, i64 8
  store ptr %.sink, ptr %i.ap, align 8, !tbaa !12
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit.sink.split, %bb.v
  %.1 = phi ptr [ %0, %bb.v ], [ %.sink68, %lean_dec.exit.sink.split ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define noalias noundef nonnull ptr @l_Std_Http_Internal_Mock_send___lam__1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i36 = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i36, label %bb.c, label %bb.b

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
  %i.g = icmp eq i32 %.0.i, 0
  br i1 %i.g, label %bb.d, label %bb.t

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.h = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12   ; 5 uses
  %.val = load i32, ptr %1, align 8, !tbaa !10
  %i.m = icmp eq i32 %.val, 1
  br i1 %i.m, label %lean_dec.exit, label %bb.h

bb.h:                                             ; preds = %lean_dec_ref.exit
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = and i64 %i.n, 1
  %.not.i33 = icmp eq i64 %i.o, 0
  br i1 %.not.i33, label %bb.i, label %lean_inc.exit34

bb.i:                                             ; preds = %bb.h
  %.val.i.i = load i32, ptr %i.l, align 4, !tbaa !10 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i, 0
  br i1 %i.p, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.q = add nuw i32 %.val.i.i, 1
  store i32 %i.q, ptr %i.l, align 4, !tbaa !10
  br label %lean_inc.exit34

bb.k:                                             ; preds = %bb.i
  %.not.i.i37 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i37, label %lean_inc.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = atomicrmw sub ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit34

lean_inc.exit34:                                  ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  br i1 %.not.i36, label %bb.m, label %bb.q

bb.m:                                             ; preds = %lean_inc.exit34
  %i.s = load i32, ptr %1, align 8, !tbaa !10     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %1, align 8, !tbaa !10
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %bb.q

bb.q:                                             ; preds = %lean_inc.exit34, %bb.p, %bb.o, %bb.n
  tail call void @lean_inc_heartbeat() #4
  %i.v = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.r, label %lean_alloc_ctor.exit

bb.r:                                             ; preds = %bb.q
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 1, ptr %i.v, align 4, !tbaa !10
  store i32 65552, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.l, ptr %i.y, align 8, !tbaa !12
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec_ref.exit, %lean_alloc_ctor.exit
  %.031 = phi ptr [ %i.v, %lean_alloc_ctor.exit ], [ %1, %lean_dec_ref.exit ]
end_hunk_0
