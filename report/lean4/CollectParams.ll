Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/CollectParams?download=true
inline.NumInlined: 552
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collectInstantiateParams___boxed:bb.a
  br i1 %i.h, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit10
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit17

bb.g:                                             ; preds = %lean_dec.exit10
  %.not.i16 = icmp eq i32 %i.g, 0
  br i1 %.not.i16, label %lean_dec_ref.exit17, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec_ref.exit17

lean_dec_ref.exit17:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %1 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit17
  %i.l = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i12 = icmp eq i32 %i.l, 0
  br i1 %.not.i12, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit17
  %i.o = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit15

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i14 = icmp eq i32 %i.o, 0
  br i1 %.not.i14, label %lean_dec_ref.exit15, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit15

lean_dec_ref.exit15:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collectInstantiateParams_spec__0(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collectInstantiateParams_spec__0___redArg(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collectInstantiateParams_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val32 = load i64, ptr %i.a, align 8, !tbaa !14
  %i.b = load i32, ptr %1, align 8, !tbaa !11     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !11
  br label %lean_dec.exit20

bb.c:                                             ; preds = %bb.a
  %.not.i21 = icmp eq i32 %i.b, 0
  br i1 %.not.i21, label %lean_dec.exit20, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec.exit20

lean_dec.exit20:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !14
  %i.f = load i32, ptr %2, align 8, !tbaa !11     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit20
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 8, !tbaa !11
  br label %lean_dec.exit18

bb.f:                                             ; preds = %lean_dec.exit20
  %.not.i22 = icmp eq i32 %i.f, 0
  br i1 %.not.i22, label %lean_dec.exit18, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit18

lean_dec.exit18:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collectInstantiateParams_spec__0___redArg(ptr noundef readonly %0, i64 noundef %.val32, i64 noundef %.val, ptr noundef %3, ptr noundef %4, ptr noundef readonly %5)
  %i.j = ptrtoint ptr %6 to i64
  %i.k = and i64 %i.j, 1
  %.not.i15 = icmp eq i64 %i.k, 0
  br i1 %.not.i15, label %bb.h, label %lean_dec.exit16

bb.h:                                             ; preds = %lean_dec.exit18
  %i.l = load i32, ptr %6, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %6, align 4, !tbaa !11
  br label %lean_dec.exit16

bb.j:                                             ; preds = %bb.h
  %.not.i24 = icmp eq i32 %i.l, 0
  br i1 %.not.i24, label %lean_dec.exit16, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #4
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.k, %bb.j, %bb.i, %lean_dec.exit18
  %i.o = load i32, ptr %5, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %lean_dec.exit16
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %5, align 4, !tbaa !11
  br label %lean_dec_ref.exit31

bb.m:                                             ; preds = %lean_dec.exit16
  %.not.i30 = icmp eq i32 %i.o, 0
  br i1 %.not.i30, label %lean_dec_ref.exit31, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit31

lean_dec_ref.exit31:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.r = ptrtoint ptr %4 to i64
  %i.s = and i64 %i.r, 1
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.o, label %lean_dec.exit

bb.o:                                             ; preds = %lean_dec_ref.exit31
  %i.t = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit

bb.q:                                             ; preds = %bb.o
  %.not.i26 = icmp eq i32 %i.t, 0
  br i1 %.not.i26, label %lean_dec.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.r, %bb.q, %bb.p, %lean_dec_ref.exit31
  %i.w = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.s, label %bb.t, !prof !13

bb.s:                                             ; preds = %lean_dec.exit
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit29

bb.t:                                             ; preds = %lean_dec.exit
  %.not.i28 = icmp eq i32 %i.w, 0
  br i1 %.not.i28, label %lean_dec_ref.exit29, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit29

lean_dec_ref.exit29:                              ; preds = %bb.s, %bb.t, %bb.u
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__1(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %.not173 = icmp ult i64 %2, %1
  br i1 %.not173, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %.lr.ph
  %.not.i131.peel = icmp eq i32 %i.b, 0
  br i1 %.not.i131.peel, label %lean_dec_ref.exit132.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec_ref.exit132.peel

bb.d:                                             ; preds = %.lr.ph
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit132.peel

lean_dec_ref.exit132.peel:                        ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %2
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 7 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 1
  %.not.i107.peel = icmp eq i64 %i.h, 0
  br i1 %.not.i107.peel, label %bb.e, label %lean_inc.exit108.peel

bb.e:                                             ; preds = %lean_dec_ref.exit132.peel
  %.val.i.i.peel = load i32, ptr %i.f, align 4, !tbaa !11 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i.peel, 0
  br i1 %i.i, label %bb.h, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  %.not.i.i.peel = icmp eq i32 %.val.i.i.peel, 0
  br i1 %.not.i.i.peel, label %lean_inc.exit108.peel, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = atomicrmw sub ptr %i.f, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit108.peel

bb.h:                                             ; preds = %bb.e
  %i.k = add nuw i32 %.val.i.i.peel, 1
  store i32 %i.k, ptr %i.f, align 4, !tbaa !11
  br label %lean_inc.exit108.peel

lean_inc.exit108.peel:                            ; preds = %bb.h, %bb.g, %bb.f, %lean_dec_ref.exit132.peel
  %i.l = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %i.f, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__1_value) #4
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %lean_inc.exit108.peel
  %i.n = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.f, ptr noundef nonnull inttoptr (i64 1 to ptr)) #4 ; 4 uses
  %i.o = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.f, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4 ; 16 uses
  %i.p = tail call zeroext i8 @l_Lean_Syntax_isNone(ptr noundef %i.o) #4
  %i.q = icmp eq i8 %i.p, 0
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = and i64 %i.r, 1
  %.not.i105.peel = icmp eq i64 %i.s, 0           ; 2 uses
  br i1 %i.q, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i105.peel, label %bb.k, label %lean_dec.exit111.peel

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.o, align 4, !tbaa !11   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.n, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  %.not.i127.peel = icmp eq i32 %i.t, 0
  br i1 %.not.i127.peel, label %lean_dec.exit111.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #4
  br label %lean_dec.exit111.peel

bb.n:                                             ; preds = %bb.k
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.o, align 4, !tbaa !11
  br label %lean_dec.exit111.peel

bb.o:                                             ; preds = %bb.i
  br i1 %.not.i105.peel, label %bb.p, label %lean_inc.exit106.thread.peel

lean_inc.exit106.thread.peel:                     ; preds = %bb.o
  %i.w = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef %i.o, ptr noundef nonnull inttoptr (i64 5 to ptr)) #4
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %lean_dec.exit119, label %.thread146.peel

.thread146.peel:                                  ; preds = %lean_inc.exit106.thread.peel
  %i.y = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.o, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4
  br label %lean_dec.exit115.peel

bb.p:                                             ; preds = %bb.o
  %.val.i.i134.peel = load i32, ptr %i.o, align 4, !tbaa !11 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i134.peel, 0
  br i1 %i.z, label %bb.s, label %bb.q, !prof !13

bb.q:                                             ; preds = %bb.p
  %.not.i.i135.peel = icmp eq i32 %.val.i.i134.peel, 0
  br i1 %.not.i.i135.peel, label %lean_inc.exit106.peel, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit106.peel

bb.s:                                             ; preds = %bb.p
  %i.ab = add nuw i32 %.val.i.i134.peel, 1
  store i32 %i.ab, ptr %i.o, align 4, !tbaa !11
  br label %lean_inc.exit106.peel

lean_inc.exit106.peel:                            ; preds = %bb.s, %bb.r, %bb.q
  %i.ac = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef nonnull %i.o, ptr noundef nonnull inttoptr (i64 5 to ptr)) #4
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.loopexit252, label %bb.t

bb.t:                                             ; preds = %lean_inc.exit106.peel
  %i.ae = tail call ptr @l_Lean_Syntax_getArg(ptr noundef nonnull %i.o, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4 ; 3 uses
  %i.af = load i32, ptr %i.o, align 4, !tbaa !11  ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.w, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  %.not.i123.peel = icmp eq i32 %i.af, 0
  br i1 %.not.i123.peel, label %lean_dec.exit115.peel, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #4
  br label %lean_dec.exit115.peel

bb.w:                                             ; preds = %bb.t
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.o, align 4, !tbaa !11
  br label %lean_dec.exit115.peel

lean_dec.exit115.peel:                            ; preds = %bb.w, %bb.v, %bb.u, %.thread146.peel
  %i.ai = phi ptr [ %i.y, %.thread146.peel ], [ %i.ae, %bb.v ], [ %i.ae, %bb.w ], [ %i.ae, %bb.u ]
  %i.aj = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef %i.ai, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %.loopexit253, label %lean_dec.exit111.peel

lean_dec.exit111.peel:                            ; preds = %lean_dec.exit115.peel, %bb.n, %bb.m, %bb.l, %bb.j
  %i.al = tail call ptr @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect(ptr noundef %i.n, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 8 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = and i64 %i.am, 1
  %.not.i139.peel = icmp eq i64 %i.an, 0          ; 2 uses
  br i1 %.not.i139.peel, label %bb.y, label %bb.x

bb.x:                                             ; preds = %lean_dec.exit111.peel
  %i.ao = lshr i64 %i.am, 1
  %i.ap = trunc i64 %i.ao to i32
  br label %lean_obj_tag.exit.peel

bb.y:                                             ; preds = %lean_dec.exit111.peel
  %i.aq = getelementptr i8, ptr %i.al, i64 4
  %.val.i.peel = load i32, ptr %i.aq, align 4
  %i.ar = lshr i32 %.val.i.peel, 24
  br label %lean_obj_tag.exit.peel

lean_obj_tag.exit.peel:                           ; preds = %bb.y, %bb.x
  %.0.i.peel = phi i32 [ %i.ap, %bb.x ], [ %i.ar, %bb.y ]
  %i.as = icmp eq i32 %.0.i.peel, 0
  br i1 %i.as, label %bb.z, label %.loopexit254

bb.z:                                             ; preds = %lean_obj_tag.exit.peel
  %.val.i140.peel = load i32, ptr %i.al, align 4, !tbaa !11 ; 4 uses
  %i.at = icmp eq i32 %.val.i140.peel, 1
  br i1 %i.at, label %.preheader.i.peel, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.au = icmp sgt i32 %.val.i140.peel, 1
  br i1 %i.au, label %bb.ad, label %bb.ab, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %.not.i8.i.peel = icmp eq i32 %.val.i140.peel, 0
  br i1 %.not.i8.i.peel, label %lean_dec.exit.peel, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.al) #4
  br label %lean_dec.exit.peel

bb.ad:                                            ; preds = %bb.aa
  %i.av = add nsw i32 %.val.i140.peel, -1
  store i32 %i.av, ptr %i.al, align 4, !tbaa !11
  br label %lean_dec.exit.peel

.preheader.i.peel:                                ; preds = %bb.z
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !9  ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, 1
  %.not.i.i141.peel = icmp eq i64 %i.az, 0
  br i1 %.not.i.i141.peel, label %bb.ae, label %lean_dec.exit.i.peel

bb.ae:                                            ; preds = %.preheader.i.peel
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !11 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.ah, label %bb.af, !prof !13

bb.af:                                            ; preds = %bb.ae
  %.not.i7.i.peel = icmp eq i32 %i.ba, 0
  br i1 %.not.i7.i.peel, label %lean_dec.exit.i.peel, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec.exit.i.peel

bb.ah:                                            ; preds = %bb.ae
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !11
  br label %lean_dec.exit.i.peel

lean_dec.exit.i.peel:                             ; preds = %bb.ah, %bb.ag, %bb.af, %.preheader.i.peel
  tail call void @lean_free_object(ptr noundef nonnull %i.al) #4
  br label %lean_dec.exit.peel

lean_dec.exit.peel:                               ; preds = %lean_dec.exit.i.peel, %bb.ad, %bb.ac, %bb.ab
  %i.bd = add nuw i64 %2, 1                       ; 2 uses
  %exitcond.not.peel = icmp eq i64 %i.bd, %1
  br i1 %exitcond.not.peel, label %._crit_edge, label %.lr.ph.peel.newph

._crit_edge:                                      ; preds = %lean_dec.exit.peel, %lean_dec.exit, %bb.a
  %.084.lcssa = phi ptr [ %3, %bb.a ], [ @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__4_value, %lean_dec.exit ], [ @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__4_value, %lean_dec.exit.peel ]
  tail call void @lean_inc_heartbeat() #4
  %i.be = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.ai, label %.thread147.sink.split

bb.ai:                                            ; preds = %._crit_edge
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

.lr.ph.peel.newph:                                ; preds = %lean_dec.exit.peel, %lean_dec.exit
  %.079175 = phi i64 [ %i.em, %lean_dec.exit ], [ %i.bd, %lean_dec.exit.peel ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.079175
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !9  ; 7 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = and i64 %i.bi, 1
  %.not.i107 = icmp eq i64 %i.bj, 0
  br i1 %.not.i107, label %bb.aj, label %lean_inc.exit108

bb.aj:                                            ; preds = %.lr.ph.peel.newph
  %.val.i.i = load i32, ptr %i.bh, align 4, !tbaa !11 ; 3 uses
  %i.bk = icmp sgt i32 %.val.i.i, 0
  br i1 %i.bk, label %bb.ak, label %bb.al, !prof !13

bb.ak:                                            ; preds = %bb.aj
  %i.bl = add nuw i32 %.val.i.i, 1
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !11
  br label %lean_inc.exit108

bb.al:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit108, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bm = atomicrmw sub ptr %i.bh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit108

lean_inc.exit108:                                 ; preds = %bb.am, %bb.al, %bb.ak, %.lr.ph.peel.newph
  %i.bn = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %i.bh, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__1_value) #4
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %.loopexit, label %bb.ao

.loopexit:                                        ; preds = %lean_inc.exit108, %lean_inc.exit108.peel
  tail call void @lean_inc_heartbeat() #4
  %i.bp = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.an, label %.thread147.sink.split

bb.an:                                            ; preds = %.loopexit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.ao:                                            ; preds = %lean_inc.exit108
  %i.br = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.bh, ptr noundef nonnull inttoptr (i64 1 to ptr)) #4 ; 4 uses
  %i.bs = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.bh, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4 ; 16 uses
  %i.bt = tail call zeroext i8 @l_Lean_Syntax_isNone(ptr noundef %i.bs) #4
  %i.bu = icmp eq i8 %i.bt, 0
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = and i64 %i.bv, 1
  %.not.i105 = icmp eq i64 %i.bw, 0               ; 2 uses
  br i1 %i.bu, label %bb.ap, label %bb.bl

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not.i105, label %bb.aq, label %lean_inc.exit106.thread

bb.aq:                                            ; preds = %bb.ap
  %.val.i.i134 = load i32, ptr %i.bs, align 4, !tbaa !11 ; 3 uses
  %i.bx = icmp sgt i32 %.val.i.i134, 0
  br i1 %i.bx, label %bb.ar, label %bb.as, !prof !13

bb.ar:                                            ; preds = %bb.aq
  %i.by = add nuw i32 %.val.i.i134, 1
  store i32 %i.by, ptr %i.bs, align 4, !tbaa !11
  br label %lean_inc.exit106

bb.as:                                            ; preds = %bb.aq
  %.not.i.i135 = icmp eq i32 %.val.i.i134, 0
  br i1 %.not.i.i135, label %lean_inc.exit106, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bz = atomicrmw sub ptr %i.bs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit106

lean_inc.exit106:                                 ; preds = %bb.at, %bb.as, %bb.ar
  %i.ca = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef nonnull %i.bs, ptr noundef nonnull inttoptr (i64 5 to ptr)) #4
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %.loopexit252, label %bb.bc

lean_inc.exit106.thread:                          ; preds = %bb.ap
  %i.cc = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef %i.bs, ptr noundef nonnull inttoptr (i64 5 to ptr)) #4
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %lean_dec.exit119, label %.thread146

.thread146:                                       ; preds = %lean_inc.exit106.thread
  %i.ce = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.bs, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4
  br label %lean_dec.exit115

.loopexit252:                                     ; preds = %lean_inc.exit106, %lean_inc.exit106.peel
  %.lcssa244 = phi ptr [ %i.n, %lean_inc.exit106.peel ], [ %i.br, %lean_inc.exit106 ] ; 3 uses
  %.lcssa239 = phi ptr [ %i.o, %lean_inc.exit106.peel ], [ %i.bs, %lean_inc.exit106 ] ; 3 uses
  %i.cf = load i32, ptr %.lcssa239, align 4, !tbaa !11 ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.au, label %bb.av, !prof !13

bb.au:                                            ; preds = %.loopexit252
  %i.ch = add nsw i32 %i.cf, -1
  store i32 %i.ch, ptr %.lcssa239, align 4, !tbaa !11
  br label %lean_dec.exit119

bb.av:                                            ; preds = %.loopexit252
  %.not.i120 = icmp eq i32 %i.cf, 0
  br i1 %.not.i120, label %lean_dec.exit119, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.lcssa239) #4
  br label %lean_dec.exit119

lean_dec.exit119:                                 ; preds = %lean_inc.exit106.thread.peel, %lean_inc.exit106.thread, %bb.aw, %bb.av, %bb.au
  %i.ci = phi ptr [ %.lcssa244, %bb.au ], [ %.lcssa244, %bb.aw ], [ %.lcssa244, %bb.av ], [ %i.n, %lean_inc.exit106.thread.peel ], [ %i.br, %lean_inc.exit106.thread ] ; 4 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, 1
  %.not.i116 = icmp eq i64 %i.ck, 0
  br i1 %.not.i116, label %bb.ax, label %lean_dec.exit117

bb.ax:                                            ; preds = %lean_dec.exit119
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !11 ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %bb.ay, label %bb.az, !prof !13

bb.ay:                                            ; preds = %bb.ax
  %i.cn = add nsw i32 %i.cl, -1
  store i32 %i.cn, ptr %i.ci, align 4, !tbaa !11
  br label %lean_dec.exit117

bb.az:                                            ; preds = %bb.ax
  %.not.i121 = icmp eq i32 %i.cl, 0
  br i1 %.not.i121, label %lean_dec.exit117, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #4
  br label %lean_dec.exit117

lean_dec.exit117:                                 ; preds = %bb.ba, %bb.az, %bb.ay, %lean_dec.exit119
  tail call void @lean_inc_heartbeat() #4
  %i.co = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.bb, label %.thread147.sink.split

bb.bb:                                            ; preds = %lean_dec.exit117
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.bc:                                            ; preds = %lean_inc.exit106
  %i.cq = tail call ptr @l_Lean_Syntax_getArg(ptr noundef nonnull %i.bs, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4 ; 3 uses
  %i.cr = load i32, ptr %i.bs, align 4, !tbaa !11 ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %i.bs, align 4, !tbaa !11
  br label %lean_dec.exit115

bb.be:                                            ; preds = %bb.bc
  %.not.i123 = icmp eq i32 %i.cr, 0
  br i1 %.not.i123, label %lean_dec.exit115, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bs) #4
  br label %lean_dec.exit115

lean_dec.exit115:                                 ; preds = %bb.bf, %bb.be, %bb.bd, %.thread146
  %i.cu = phi ptr [ %i.ce, %.thread146 ], [ %i.cq, %bb.bf ], [ %i.cq, %bb.bd ], [ %i.cq, %bb.be ]
  %i.cv = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef %i.cu, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %.loopexit253, label %lean_dec.exit111

.loopexit253:                                     ; preds = %lean_dec.exit115, %lean_dec.exit115.peel
  %.lcssa245 = phi ptr [ %i.n, %lean_dec.exit115.peel ], [ %i.br, %lean_dec.exit115 ] ; 4 uses
  %i.cx = ptrtoint ptr %.lcssa245 to i64
  %i.cy = and i64 %i.cx, 1
  %.not.i112 = icmp eq i64 %i.cy, 0
  br i1 %.not.i112, label %bb.bg, label %lean_dec.exit113

bb.bg:                                            ; preds = %.loopexit253
  %i.cz = load i32, ptr %.lcssa245, align 4, !tbaa !11 ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %bb.bh, label %bb.bi, !prof !13

bb.bh:                                            ; preds = %bb.bg
  %i.db = add nsw i32 %i.cz, -1
  store i32 %i.db, ptr %.lcssa245, align 4, !tbaa !11
  br label %lean_dec.exit113

bb.bi:                                            ; preds = %bb.bg
  %.not.i125 = icmp eq i32 %i.cz, 0
  br i1 %.not.i125, label %lean_dec.exit113, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.lcssa245) #4
  br label %lean_dec.exit113

lean_dec.exit113:                                 ; preds = %bb.bj, %bb.bi, %bb.bh, %.loopexit253
  tail call void @lean_inc_heartbeat() #4
  %i.dc = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.bk, label %.thread147.sink.split

bb.bk:                                            ; preds = %lean_dec.exit113
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.bl:                                            ; preds = %bb.ao
  br i1 %.not.i105, label %bb.bm, label %lean_dec.exit111

bb.bm:                                            ; preds = %bb.bl
  %i.de = load i32, ptr %i.bs, align 4, !tbaa !11 ; 3 uses
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %bb.bn, label %bb.bo, !prof !13

bb.bn:                                            ; preds = %bb.bm
  %i.dg = add nsw i32 %i.de, -1
  store i32 %i.dg, ptr %i.bs, align 4, !tbaa !11
  br label %lean_dec.exit111

bb.bo:                                            ; preds = %bb.bm
  %.not.i127 = icmp eq i32 %i.de, 0
  br i1 %.not.i127, label %lean_dec.exit111, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bs) #4
  br label %lean_dec.exit111

lean_dec.exit111:                                 ; preds = %bb.bl, %bb.bn, %bb.bo, %bb.bp, %lean_dec.exit115
  %i.dh = tail call ptr @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect(ptr noundef %i.br, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 8 uses
  %i.di = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dj = and i64 %i.di, 1
  %.not.i139 = icmp eq i64 %i.dj, 0               ; 2 uses
  br i1 %.not.i139, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %lean_dec.exit111
  %i.dk = lshr i64 %i.di, 1
  %i.dl = trunc i64 %i.dk to i32
  br label %lean_obj_tag.exit

bb.br:                                            ; preds = %lean_dec.exit111
  %i.dm = getelementptr i8, ptr %i.dh, i64 4
  %.val.i = load i32, ptr %i.dm, align 4
  %i.dn = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.bq, %bb.br
  %.0.i = phi i32 [ %i.dl, %bb.bq ], [ %i.dn, %bb.br ]
  %i.do = icmp eq i32 %.0.i, 0
  br i1 %i.do, label %bb.bs, label %.loopexit254

bb.bs:                                            ; preds = %lean_obj_tag.exit
  %.val.i140 = load i32, ptr %i.dh, align 4, !tbaa !11 ; 4 uses
  %i.dp = icmp eq i32 %.val.i140, 1
  br i1 %i.dp, label %.preheader.i, label %bb.bx

.preheader.i:                                     ; preds = %bb.bs
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !9  ; 4 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = and i64 %i.ds, 1
  %.not.i.i141 = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i141, label %bb.bt, label %lean_dec.exit.i

bb.bt:                                            ; preds = %.preheader.i
  %i.du = load i32, ptr %i.dr, align 4, !tbaa !11 ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %bb.bu, label %bb.bv, !prof !13

bb.bu:                                            ; preds = %bb.bt
  %i.dw = add nsw i32 %i.du, -1
  store i32 %i.dw, ptr %i.dr, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.bv:                                            ; preds = %bb.bt
  %.not.i7.i = icmp eq i32 %i.du, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dr) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.bw, %bb.bv, %bb.bu, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.dh) #4
  br label %lean_dec.exit

bb.bx:                                            ; preds = %bb.bs
  %i.dx = icmp sgt i32 %.val.i140, 1
  br i1 %i.dx, label %bb.by, label %bb.bz, !prof !13

bb.by:                                            ; preds = %bb.bx
  %i.dy = add nsw i32 %.val.i140, -1
  store i32 %i.dy, ptr %i.dh, align 4, !tbaa !11
  br label %lean_dec.exit

bb.bz:                                            ; preds = %bb.bx
  %.not.i8.i = icmp eq i32 %.val.i140, 0
  br i1 %.not.i8.i, label %lean_dec.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dh) #4
  br label %lean_dec.exit

.loopexit254:                                     ; preds = %lean_obj_tag.exit, %lean_obj_tag.exit.peel
  %.lcssa249 = phi ptr [ %i.al, %lean_obj_tag.exit.peel ], [ %i.dh, %lean_obj_tag.exit ] ; 6 uses
  %.not.i139.lcssa = phi i1 [ %.not.i139.peel, %lean_obj_tag.exit.peel ], [ %.not.i139, %lean_obj_tag.exit ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.lcssa249, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !9  ; 5 uses
  %.val = load i32, ptr %.lcssa249, align 8, !tbaa !11
  %i.eb = icmp eq i32 %.val, 1
  br i1 %i.eb, label %.thread147, label %bb.cb

bb.cb:                                            ; preds = %.loopexit254
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = and i64 %i.ec, 1
  %.not.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i, label %bb.cc, label %lean_inc.exit

bb.cc:                                            ; preds = %bb.cb
  %.val.i.i142 = load i32, ptr %i.ea, align 4, !tbaa !11 ; 3 uses
  %i.ee = icmp sgt i32 %.val.i.i142, 0
  br i1 %i.ee, label %bb.cd, label %bb.ce, !prof !13

bb.cd:                                            ; preds = %bb.cc
  %i.ef = add nuw i32 %.val.i.i142, 1
  store i32 %i.ef, ptr %i.ea, align 4, !tbaa !11
  br label %lean_inc.exit

bb.ce:                                            ; preds = %bb.cc
  %.not.i.i143 = icmp eq i32 %.val.i.i142, 0
  br i1 %.not.i.i143, label %lean_inc.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.eg = atomicrmw sub ptr %i.ea, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cb
  br i1 %.not.i139.lcssa, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %lean_inc.exit
  %i.eh = load i32, ptr %.lcssa249, align 8, !tbaa !11 ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 1
  br i1 %i.ei, label %bb.ch, label %bb.ci, !prof !13

bb.ch:                                            ; preds = %bb.cg
  %i.ej = add nsw i32 %i.eh, -1
  store i32 %i.ej, ptr %.lcssa249, align 8, !tbaa !11
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cg
  %.not.i129 = icmp eq i32 %i.eh, 0
  br i1 %.not.i129, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.lcssa249) #4
  br label %bb.ck

bb.ck:                                            ; preds = %lean_inc.exit, %bb.ch, %bb.ci, %bb.cj
  tail call void @lean_inc_heartbeat() #4
  %i.ek = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.cl, label %.thread147.sink.split

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_dec.exit:                                    ; preds = %bb.ca, %bb.bz, %bb.by, %lean_dec.exit.i
  %i.em = add nuw i64 %.079175, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.em, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.peel.newph, !llvm.loop !17

.thread147.sink.split:                            ; preds = %bb.ck, %lean_dec.exit113, %lean_dec.exit117, %.loopexit, %._crit_edge
  %.sink226 = phi ptr [ %i.co, %lean_dec.exit117 ], [ %i.bp, %.loopexit ], [ %i.dc, %lean_dec.exit113 ], [ %i.be, %._crit_edge ], [ %i.ek, %bb.ck ] ; 4 uses
  %.sink = phi i32 [ 65552, %lean_dec.exit117 ], [ 65552, %.loopexit ], [ 65552, %lean_dec.exit113 ], [ 65552, %._crit_edge ], [ 16842768, %bb.ck ]
  %l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__3_value.sink = phi ptr [ @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__3_value, %lean_dec.exit117 ], [ @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__3_value, %.loopexit ], [ @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__3_value, %lean_dec.exit113 ], [ %.084.lcssa, %._crit_edge ], [ %i.ea, %bb.ck ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sink226, i64 4
  store i32 1, ptr %.sink226, align 4, !tbaa !11
  store i32 %.sink, ptr %i.en, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.sink226, i64 8
  store ptr %l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__3_value.sink, ptr %i.eo, align 8, !tbaa !9
  br label %.thread147

.thread147:                                       ; preds = %.thread147.sink.split, %.loopexit254
  %.8.ph = phi ptr [ %.lcssa249, %.loopexit254 ], [ %.sink226, %.thread147.sink.split ]
  ret ptr %.8.ph
}

declare zeroext i8 @l_Lean_Syntax_isNone(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  br label %lean_dec_ref.exit696

lean_dec_ref.exit696:                             ; preds = %lean_dec_ref.exit696.backedge, %bb.a
  %.0395 = phi ptr [ %0, %bb.a ], [ %i.iq, %lean_dec_ref.exit696.backedge ] ; 84 uses
  %i.a = ptrtoint ptr %.0395 to i64
  %i.b = and i64 %i.a, 1
  %.not.i513 = icmp eq i64 %i.b, 0                ; 8 uses
  br i1 %.not.i513, label %bb.b, label %lean_inc.exit514.thread

bb.b:                                             ; preds = %lean_dec_ref.exit696
  %.val.i.i = load i32, ptr %.0395, align 4, !tbaa !11 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %.0395, align 4, !tbaa !11
  br label %lean_inc.exit514

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit514, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %.0395, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit514

lean_inc.exit514:                                 ; preds = %bb.e, %bb.d, %bb.c
  %i.f = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef nonnull %.0395, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect___closed__1_value) #4 ; 4 uses
  %i.g = icmp eq i8 %i.f, 0
  %.val.i.i703 = load i32, ptr %.0395, align 4, !tbaa !11 ; 6 uses
  br i1 %i.g, label %bb.f, label %bb.ng

lean_inc.exit514.thread:                          ; preds = %lean_dec_ref.exit696
  %i.h = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %.0395, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect___closed__1_value) #4 ; 2 uses
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %lean_inc.exit512.thread, label %lean_dec.exit517

bb.f:                                             ; preds = %lean_inc.exit514
  %i.j = icmp sgt i32 %.val.i.i703, 0
  br i1 %i.j, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw i32 %.val.i.i703, 1
  store i32 %i.k, ptr %.0395, align 4, !tbaa !11
  br label %lean_inc.exit512

bb.h:                                             ; preds = %bb.f
  %.not.i.i704 = icmp eq i32 %.val.i.i703, 0
  br i1 %.not.i.i704, label %lean_inc.exit512, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = atomicrmw sub ptr %.0395, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit512

lean_inc.exit512:                                 ; preds = %bb.i, %bb.h, %bb.g
  %i.m = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef nonnull %.0395, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect___closed__3_value) #4
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.jj

lean_inc.exit512.thread:                          ; preds = %lean_inc.exit514.thread
  %i.o = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %.0395, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect___closed__3_value) #4
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %lean_inc.exit510.thread, label %bb.jj

bb.j:                                             ; preds = %lean_inc.exit512
  %.val.i.i706 = load i32, ptr %.0395, align 4, !tbaa !11 ; 3 uses
  %i.q = icmp sgt i32 %.val.i.i706, 0
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nuw i32 %.val.i.i706, 1
  store i32 %i.r, ptr %.0395, align 4, !tbaa !11
  br label %lean_inc.exit510

bb.l:                                             ; preds = %bb.j
  %.not.i.i707 = icmp eq i32 %.val.i.i706, 0
  br i1 %.not.i.i707, label %lean_inc.exit510, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = atomicrmw sub ptr %.0395, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit510

lean_inc.exit510:                                 ; preds = %bb.m, %bb.l, %bb.k
  %i.t = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef nonnull %.0395, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect___closed__5_value) #4
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.n, label %bb.fu

lean_inc.exit510.thread:                          ; preds = %lean_inc.exit512.thread
  %i.v = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %.0395, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect___closed__5_value) #4
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %lean_inc.exit508.thread, label %.thread850

.thread850:                                       ; preds = %lean_inc.exit510.thread
  %i.x = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %.0395, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4
  br label %lean_dec.exit555

bb.n:                                             ; preds = %lean_inc.exit510
  %.val.i.i709 = load i32, ptr %.0395, align 4, !tbaa !11 ; 3 uses
  %i.y = icmp sgt i32 %.val.i.i709, 0
  br i1 %i.y, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.z = add nuw i32 %.val.i.i709, 1
  store i32 %i.z, ptr %.0395, align 4, !tbaa !11
  br label %lean_inc.exit508

bb.p:                                             ; preds = %bb.n
  %.not.i.i710 = icmp eq i32 %.val.i.i709, 0
  br i1 %.not.i.i710, label %lean_inc.exit508, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = atomicrmw sub ptr %.0395, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit508

lean_inc.exit508:                                 ; preds = %bb.q, %bb.p, %bb.o
  %i.ab = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef nonnull %.0395, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect___closed__7_value) #4
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.r, label %bb.ez

lean_inc.exit508.thread:                          ; preds = %lean_inc.exit510.thread
  %i.ad = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %.0395, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect___closed__7_value) #4
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %lean_inc.exit506.thread, label %bb.ez

bb.r:                                             ; preds = %lean_inc.exit508
  %.val.i.i712 = load i32, ptr %.0395, align 4, !tbaa !11 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i712, 0
  br i1 %i.af, label %bb.s, label %bb.t, !prof !13

bb.s:                                             ; preds = %bb.r
  %i.ag = add nuw i32 %.val.i.i712, 1
  store i32 %i.ag, ptr %.0395, align 4, !tbaa !11
  br label %lean_inc.exit506

bb.t:                                             ; preds = %bb.r
  %.not.i.i713 = icmp eq i32 %.val.i.i712, 0
  br i1 %.not.i.i713, label %lean_inc.exit506, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ah = atomicrmw sub ptr %.0395, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit506

end_hunk_0
begin_hunk_1_@l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect:bb.a
  br i1 %i.tg, label %bb.mx, label %bb.my, !prof !13

bb.mx:                                            ; preds = %bb.mw
  %i.th = add nuw i32 %.val.i.i822, 1
  store i32 %i.th, ptr %i.rf, align 4, !tbaa !11
  br label %lean_inc.exit468

bb.my:                                            ; preds = %bb.mw
  %.not.i.i823 = icmp eq i32 %.val.i.i822, 0
  br i1 %.not.i.i823, label %lean_inc.exit468, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.ti = atomicrmw sub ptr %i.rf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit468

lean_inc.exit468:                                 ; preds = %bb.mz, %bb.my, %bb.mx, %bb.mv
  br i1 %.not.i793, label %bb.na, label %bb.ne

bb.na:                                            ; preds = %lean_inc.exit468
  %i.tj = load i32, ptr %i.qt, align 8, !tbaa !11 ; 3 uses
  %i.tk = icmp sgt i32 %i.tj, 1
  br i1 %i.tk, label %bb.nb, label %bb.nc, !prof !13

bb.nb:                                            ; preds = %bb.na
  %i.tl = add nsw i32 %i.tj, -1
  store i32 %i.tl, ptr %i.qt, align 8, !tbaa !11
  br label %bb.ne

bb.nc:                                            ; preds = %bb.na
  %.not.i679 = icmp eq i32 %i.tj, 0
  br i1 %.not.i679, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qt) #4
  br label %bb.ne

bb.ne:                                            ; preds = %lean_inc.exit468, %bb.nb, %bb.nc, %bb.nd
  tail call void @lean_inc_heartbeat() #4
  %i.tm = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.tn = icmp eq ptr %i.tm, null
  br i1 %i.tn, label %bb.nf, label %lean_alloc_ctor.exit825

bb.nf:                                            ; preds = %bb.ne
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit825:                          ; preds = %bb.ne
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  store i32 1, ptr %i.tm, align 4, !tbaa !11
  store i32 16842768, ptr %i.to, align 4
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  store ptr %i.rf, ptr %i.tp, align 8, !tbaa !9
  br label %bb.nz

bb.ng:                                            ; preds = %lean_inc.exit514
  %i.tq = icmp sgt i32 %.val.i.i703, 1
  br i1 %i.tq, label %bb.nh, label %bb.ni, !prof !13

bb.nh:                                            ; preds = %bb.ng
  %i.tr = add nsw i32 %.val.i.i703, -1
  store i32 %i.tr, ptr %.0395, align 4, !tbaa !11
  br label %lean_dec.exit517

bb.ni:                                            ; preds = %bb.ng
  %.not.i681 = icmp eq i32 %.val.i.i703, 0
  br i1 %.not.i681, label %lean_dec.exit517, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0395) #4
  br label %lean_dec.exit517

lean_dec.exit517:                                 ; preds = %lean_inc.exit514.thread, %bb.nj, %bb.ni, %bb.nh
  %i.ts = phi i8 [ %i.f, %bb.nj ], [ %i.f, %bb.ni ], [ %i.f, %bb.nh ], [ %i.h, %lean_inc.exit514.thread ]
  %i.tt = tail call ptr @lean_st_ref_take(ptr noundef %1) #4 ; 7 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !9  ; 5 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !9  ; 5 uses
  %.val698 = load i32, ptr %i.tt, align 8, !tbaa !11
  %i.ty = icmp eq i32 %.val698, 1
  br i1 %i.ty, label %lean_dec.exit, label %bb.nk

bb.nk:                                            ; preds = %lean_dec.exit517
  %i.tz = ptrtoint ptr %i.tx to i64
  %i.ua = and i64 %i.tz, 1
  %.not.i465 = icmp eq i64 %i.ua, 0
  br i1 %.not.i465, label %bb.nl, label %lean_inc.exit466

bb.nl:                                            ; preds = %bb.nk
  %.val.i.i826 = load i32, ptr %i.tx, align 4, !tbaa !11 ; 3 uses
  %i.ub = icmp sgt i32 %.val.i.i826, 0
  br i1 %i.ub, label %bb.nm, label %bb.nn, !prof !13

bb.nm:                                            ; preds = %bb.nl
  %i.uc = add nuw i32 %.val.i.i826, 1
  store i32 %i.uc, ptr %i.tx, align 4, !tbaa !11
  br label %lean_inc.exit466

bb.nn:                                            ; preds = %bb.nl
  %.not.i.i827 = icmp eq i32 %.val.i.i826, 0
  br i1 %.not.i.i827, label %lean_inc.exit466, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.ud = atomicrmw sub ptr %i.tx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit466

lean_inc.exit466:                                 ; preds = %bb.no, %bb.nn, %bb.nm, %bb.nk
  %i.ue = ptrtoint ptr %i.tv to i64
  %i.uf = and i64 %i.ue, 1
  %.not.i = icmp eq i64 %i.uf, 0
  br i1 %.not.i, label %bb.np, label %lean_inc.exit

bb.np:                                            ; preds = %lean_inc.exit466
  %.val.i.i829 = load i32, ptr %i.tv, align 4, !tbaa !11 ; 3 uses
  %i.ug = icmp sgt i32 %.val.i.i829, 0
  br i1 %i.ug, label %bb.nq, label %bb.nr, !prof !13

bb.nq:                                            ; preds = %bb.np
  %i.uh = add nuw i32 %.val.i.i829, 1
  store i32 %i.uh, ptr %i.tv, align 4, !tbaa !11
  br label %lean_inc.exit

bb.nr:                                            ; preds = %bb.np
  %.not.i.i830 = icmp eq i32 %.val.i.i829, 0
  br i1 %.not.i.i830, label %lean_inc.exit, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.ui = atomicrmw sub ptr %i.tv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %lean_inc.exit466, %bb.nq, %bb.nr, %bb.ns
  %i.uj = load i32, ptr %i.tt, align 8, !tbaa !11 ; 3 uses
  %i.uk = icmp sgt i32 %i.uj, 1
  br i1 %i.uk, label %bb.nt, label %bb.nu, !prof !13

bb.nt:                                            ; preds = %lean_inc.exit
  %i.ul = add nsw i32 %i.uj, -1
  store i32 %i.ul, ptr %i.tt, align 8, !tbaa !11
  br label %bb.nw

bb.nu:                                            ; preds = %lean_inc.exit
  %.not.i683 = icmp eq i32 %i.uj, 0
  br i1 %.not.i683, label %bb.nw, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.tt) #4
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nt, %bb.nu, %bb.nv
  tail call void @lean_inc_heartbeat() #4
  %i.um = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #4 ; 7 uses
  %i.un = icmp eq ptr %i.um, null
  br i1 %i.un, label %bb.nx, label %lean_alloc_ctor.exit832

bb.nx:                                            ; preds = %bb.nw
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit832:                          ; preds = %bb.nw
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 24
  store i64 0, ptr %i.up, align 8, !tbaa !14
  store i32 1, ptr %i.um, align 8, !tbaa !11
  store i32 131104, ptr %i.uo, align 4
  %i.uq = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store ptr %i.tv, ptr %i.uq, align 8, !tbaa !9
  %i.ur = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  store ptr %i.tx, ptr %i.ur, align 8, !tbaa !9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit517, %lean_alloc_ctor.exit832
  %.0401 = phi ptr [ %i.um, %lean_alloc_ctor.exit832 ], [ %i.tt, %lean_dec.exit517 ] ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.0401, i64 24
  store i8 %i.ts, ptr %i.us, align 1, !tbaa !16
  %i.ut = tail call ptr @lean_st_ref_set(ptr noundef %1, ptr noundef nonnull %.0401) #4 ; 0 uses
  tail call void @lean_inc_heartbeat() #4
  %i.uu = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.uv = icmp eq ptr %i.uu, null
  br i1 %i.uv, label %bb.ny, label %lean_alloc_ctor.exit833

bb.ny:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit833:                          ; preds = %lean_dec.exit
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  store i32 1, ptr %i.uu, align 4, !tbaa !11
  store i32 65552, ptr %i.uw, align 4
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ux, align 8, !tbaa !9
  br label %bb.nz

bb.nz:                                            ; preds = %lean_alloc_ctor.exit833, %lean_alloc_ctor.exit746, %lean_alloc_ctor.exit734, %lean_dec.exit585, %bb.bs, %lean_alloc_ctor.exit, %.thread837, %lean_dec.exit581, %lean_dec.exit591, %lean_alloc_ctor.exit784, %lean_alloc_ctor.exit739, %bb.ey, %lean_alloc_ctor.exit730, %lean_alloc_ctor.exit735, %bb.ek, %bb.ct, %lean_alloc_ctor.exit750, %bb.fp, %lean_alloc_ctor.exit783, %bb.ie, %lean_alloc_ctor.exit765, %bb.iu, %lean_alloc_ctor.exit779, %lean_alloc_ctor.exit788, %lean_alloc_ctor.exit821, %bb.mr, %lean_alloc_ctor.exit807, %bb.mb, %lean_alloc_ctor.exit825, %bb.ix, %lean_alloc_ctor.exit792, %bb.bq, %bb.br, %bb.cr, %bb.cs, %bb.ft, %bb.fs, %bb.fr, %bb.mu
  %.36.ph = phi ptr [ %i.qt, %bb.mu ], [ %i.hy, %bb.fr ], [ %i.hy, %bb.fs ], [ %i.hy, %bb.ft ], [ %i.em, %bb.cs ], [ %i.em, %bb.cr ], [ %i.dd, %bb.br ], [ %i.dd, %bb.bq ], [ %i.tm, %lean_alloc_ctor.exit825 ], [ %.0410, %bb.mr ], [ %.0410, %bb.mb ], [ %i.sf, %lean_alloc_ctor.exit807 ], [ %i.ta, %lean_alloc_ctor.exit821 ], [ %i.pz, %lean_alloc_ctor.exit792 ], [ %i.pd, %lean_alloc_ctor.exit788 ], [ %i.oi, %lean_alloc_ctor.exit784 ], [ %i.ny, %lean_alloc_ctor.exit783 ], [ %.0417, %bb.iu ], [ %.0417, %bb.ie ], [ %i.mr, %lean_alloc_ctor.exit765 ], [ %i.nm, %lean_alloc_ctor.exit779 ], [ %i.kl, %lean_alloc_ctor.exit750 ], [ %i.jp, %lean_alloc_ctor.exit746 ], [ %i.em, %bb.ct ], [ %i.hs, %lean_alloc_ctor.exit739 ], [ %i.gw, %lean_alloc_ctor.exit735 ], [ %i.gj, %lean_alloc_ctor.exit734 ], [ %i.fp, %lean_alloc_ctor.exit730 ], [ %i.ha, %bb.ek ], [ %i.cq, %lean_dec.exit591 ], [ %i.dk, %lean_dec.exit585 ], [ %i.dz, %lean_dec.exit581 ], [ %i.bq, %.thread837 ], [ %i.bf, %lean_alloc_ctor.exit ], [ %i.dd, %bb.bs ], [ %i.lf, %bb.ix ], [ %i.hw, %bb.ey ], [ %i.hy, %bb.fp ], [ %i.uu, %lean_alloc_ctor.exit833 ]
  ret ptr %.36.ph
}

declare ptr @l_Lean_Syntax_getArgs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %.not173 = icmp ult i64 %2, %1
  br i1 %.not173, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %.lr.ph
  %.not.i131.peel = icmp eq i32 %i.b, 0
  br i1 %.not.i131.peel, label %lean_dec_ref.exit132.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec_ref.exit132.peel

bb.d:                                             ; preds = %.lr.ph
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit132.peel

lean_dec_ref.exit132.peel:                        ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %2
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 7 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 1
  %.not.i107.peel = icmp eq i64 %i.h, 0
  br i1 %.not.i107.peel, label %bb.e, label %lean_inc.exit108.peel

bb.e:                                             ; preds = %lean_dec_ref.exit132.peel
  %.val.i.i.peel = load i32, ptr %i.f, align 4, !tbaa !11 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i.peel, 0
  br i1 %i.i, label %bb.h, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  %.not.i.i.peel = icmp eq i32 %.val.i.i.peel, 0
  br i1 %.not.i.i.peel, label %lean_inc.exit108.peel, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = atomicrmw sub ptr %i.f, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit108.peel

bb.h:                                             ; preds = %bb.e
  %i.k = add nuw i32 %.val.i.i.peel, 1
  store i32 %i.k, ptr %i.f, align 4, !tbaa !11
  br label %lean_inc.exit108.peel

lean_inc.exit108.peel:                            ; preds = %bb.h, %bb.g, %bb.f, %lean_dec_ref.exit132.peel
  %i.l = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %i.f, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__1_value) #4
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %lean_inc.exit108.peel
  %i.n = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.f, ptr noundef nonnull inttoptr (i64 1 to ptr)) #4 ; 4 uses
  %i.o = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.f, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4 ; 16 uses
  %i.p = tail call zeroext i8 @l_Lean_Syntax_isNone(ptr noundef %i.o) #4
  %i.q = icmp eq i8 %i.p, 0
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = and i64 %i.r, 1
  %.not.i105.peel = icmp eq i64 %i.s, 0           ; 2 uses
  br i1 %i.q, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i105.peel, label %bb.k, label %lean_dec.exit111.peel

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.o, align 4, !tbaa !11   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.n, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  %.not.i127.peel = icmp eq i32 %i.t, 0
  br i1 %.not.i127.peel, label %lean_dec.exit111.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #4
  br label %lean_dec.exit111.peel

bb.n:                                             ; preds = %bb.k
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.o, align 4, !tbaa !11
  br label %lean_dec.exit111.peel

bb.o:                                             ; preds = %bb.i
  br i1 %.not.i105.peel, label %bb.p, label %lean_inc.exit106.thread.peel

lean_inc.exit106.thread.peel:                     ; preds = %bb.o
  %i.w = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef %i.o, ptr noundef nonnull inttoptr (i64 5 to ptr)) #4
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %lean_dec.exit119, label %.thread146.peel

.thread146.peel:                                  ; preds = %lean_inc.exit106.thread.peel
  %i.y = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.o, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4
  br label %lean_dec.exit115.peel

bb.p:                                             ; preds = %bb.o
  %.val.i.i134.peel = load i32, ptr %i.o, align 4, !tbaa !11 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i134.peel, 0
  br i1 %i.z, label %bb.s, label %bb.q, !prof !13

bb.q:                                             ; preds = %bb.p
  %.not.i.i135.peel = icmp eq i32 %.val.i.i134.peel, 0
  br i1 %.not.i.i135.peel, label %lean_inc.exit106.peel, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit106.peel

bb.s:                                             ; preds = %bb.p
  %i.ab = add nuw i32 %.val.i.i134.peel, 1
  store i32 %i.ab, ptr %i.o, align 4, !tbaa !11
  br label %lean_inc.exit106.peel

lean_inc.exit106.peel:                            ; preds = %bb.s, %bb.r, %bb.q
  %i.ac = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef nonnull %i.o, ptr noundef nonnull inttoptr (i64 5 to ptr)) #4
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.loopexit252, label %bb.t

bb.t:                                             ; preds = %lean_inc.exit106.peel
  %i.ae = tail call ptr @l_Lean_Syntax_getArg(ptr noundef nonnull %i.o, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4 ; 3 uses
  %i.af = load i32, ptr %i.o, align 4, !tbaa !11  ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.w, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  %.not.i123.peel = icmp eq i32 %i.af, 0
  br i1 %.not.i123.peel, label %lean_dec.exit115.peel, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #4
  br label %lean_dec.exit115.peel

bb.w:                                             ; preds = %bb.t
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.o, align 4, !tbaa !11
  br label %lean_dec.exit115.peel

lean_dec.exit115.peel:                            ; preds = %bb.w, %bb.v, %bb.u, %.thread146.peel
  %i.ai = phi ptr [ %i.y, %.thread146.peel ], [ %i.ae, %bb.v ], [ %i.ae, %bb.w ], [ %i.ae, %bb.u ]
  %i.aj = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef %i.ai, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %.loopexit253, label %lean_dec.exit111.peel

lean_dec.exit111.peel:                            ; preds = %lean_dec.exit115.peel, %bb.n, %bb.m, %bb.l, %bb.j
  %i.al = tail call ptr @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect(ptr noundef %i.n, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 8 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = and i64 %i.am, 1
  %.not.i139.peel = icmp eq i64 %i.an, 0          ; 2 uses
  br i1 %.not.i139.peel, label %bb.y, label %bb.x

bb.x:                                             ; preds = %lean_dec.exit111.peel
  %i.ao = lshr i64 %i.am, 1
  %i.ap = trunc i64 %i.ao to i32
  br label %lean_obj_tag.exit.peel

bb.y:                                             ; preds = %lean_dec.exit111.peel
  %i.aq = getelementptr i8, ptr %i.al, i64 4
  %.val.i.peel = load i32, ptr %i.aq, align 4
  %i.ar = lshr i32 %.val.i.peel, 24
  br label %lean_obj_tag.exit.peel

lean_obj_tag.exit.peel:                           ; preds = %bb.y, %bb.x
  %.0.i.peel = phi i32 [ %i.ap, %bb.x ], [ %i.ar, %bb.y ]
  %i.as = icmp eq i32 %.0.i.peel, 0
  br i1 %i.as, label %bb.z, label %.loopexit254

bb.z:                                             ; preds = %lean_obj_tag.exit.peel
  %.val.i140.peel = load i32, ptr %i.al, align 4, !tbaa !11 ; 4 uses
  %i.at = icmp eq i32 %.val.i140.peel, 1
  br i1 %i.at, label %.preheader.i.peel, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.au = icmp sgt i32 %.val.i140.peel, 1
  br i1 %i.au, label %bb.ad, label %bb.ab, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %.not.i8.i.peel = icmp eq i32 %.val.i140.peel, 0
  br i1 %.not.i8.i.peel, label %lean_dec.exit.peel, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.al) #4
  br label %lean_dec.exit.peel

bb.ad:                                            ; preds = %bb.aa
  %i.av = add nsw i32 %.val.i140.peel, -1
  store i32 %i.av, ptr %i.al, align 4, !tbaa !11
  br label %lean_dec.exit.peel

.preheader.i.peel:                                ; preds = %bb.z
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !9  ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, 1
  %.not.i.i141.peel = icmp eq i64 %i.az, 0
  br i1 %.not.i.i141.peel, label %bb.ae, label %lean_dec.exit.i.peel

bb.ae:                                            ; preds = %.preheader.i.peel
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !11 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.ah, label %bb.af, !prof !13

bb.af:                                            ; preds = %bb.ae
  %.not.i7.i.peel = icmp eq i32 %i.ba, 0
  br i1 %.not.i7.i.peel, label %lean_dec.exit.i.peel, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec.exit.i.peel

bb.ah:                                            ; preds = %bb.ae
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !11
  br label %lean_dec.exit.i.peel

lean_dec.exit.i.peel:                             ; preds = %bb.ah, %bb.ag, %bb.af, %.preheader.i.peel
  tail call void @lean_free_object(ptr noundef nonnull %i.al) #4
  br label %lean_dec.exit.peel

lean_dec.exit.peel:                               ; preds = %lean_dec.exit.i.peel, %bb.ad, %bb.ac, %bb.ab
  %i.bd = add nuw i64 %2, 1                       ; 2 uses
  %exitcond.not.peel = icmp eq i64 %i.bd, %1
  br i1 %exitcond.not.peel, label %._crit_edge, label %.lr.ph.peel.newph

._crit_edge:                                      ; preds = %lean_dec.exit.peel, %lean_dec.exit, %bb.a
  %.084.lcssa = phi ptr [ %3, %bb.a ], [ @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__4_value, %lean_dec.exit ], [ @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__4_value, %lean_dec.exit.peel ]
  tail call void @lean_inc_heartbeat() #4
  %i.be = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.ai, label %.thread147.sink.split

bb.ai:                                            ; preds = %._crit_edge
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

.lr.ph.peel.newph:                                ; preds = %lean_dec.exit.peel, %lean_dec.exit
  %.079175 = phi i64 [ %i.em, %lean_dec.exit ], [ %i.bd, %lean_dec.exit.peel ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.079175
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !9  ; 7 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = and i64 %i.bi, 1
  %.not.i107 = icmp eq i64 %i.bj, 0
  br i1 %.not.i107, label %bb.aj, label %lean_inc.exit108

bb.aj:                                            ; preds = %.lr.ph.peel.newph
  %.val.i.i = load i32, ptr %i.bh, align 4, !tbaa !11 ; 3 uses
  %i.bk = icmp sgt i32 %.val.i.i, 0
  br i1 %i.bk, label %bb.ak, label %bb.al, !prof !13

bb.ak:                                            ; preds = %bb.aj
  %i.bl = add nuw i32 %.val.i.i, 1
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !11
  br label %lean_inc.exit108

bb.al:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit108, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bm = atomicrmw sub ptr %i.bh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit108

lean_inc.exit108:                                 ; preds = %bb.am, %bb.al, %bb.ak, %.lr.ph.peel.newph
  %i.bn = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %i.bh, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__1_value) #4
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %.loopexit, label %bb.ao

.loopexit:                                        ; preds = %lean_inc.exit108, %lean_inc.exit108.peel
  tail call void @lean_inc_heartbeat() #4
  %i.bp = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.an, label %.thread147.sink.split

bb.an:                                            ; preds = %.loopexit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.ao:                                            ; preds = %lean_inc.exit108
  %i.br = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.bh, ptr noundef nonnull inttoptr (i64 1 to ptr)) #4 ; 4 uses
  %i.bs = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.bh, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4 ; 16 uses
  %i.bt = tail call zeroext i8 @l_Lean_Syntax_isNone(ptr noundef %i.bs) #4
  %i.bu = icmp eq i8 %i.bt, 0
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = and i64 %i.bv, 1
  %.not.i105 = icmp eq i64 %i.bw, 0               ; 2 uses
  br i1 %i.bu, label %bb.ap, label %bb.bl

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not.i105, label %bb.aq, label %lean_inc.exit106.thread

bb.aq:                                            ; preds = %bb.ap
  %.val.i.i134 = load i32, ptr %i.bs, align 4, !tbaa !11 ; 3 uses
  %i.bx = icmp sgt i32 %.val.i.i134, 0
  br i1 %i.bx, label %bb.ar, label %bb.as, !prof !13

bb.ar:                                            ; preds = %bb.aq
  %i.by = add nuw i32 %.val.i.i134, 1
  store i32 %i.by, ptr %i.bs, align 4, !tbaa !11
  br label %lean_inc.exit106

bb.as:                                            ; preds = %bb.aq
  %.not.i.i135 = icmp eq i32 %.val.i.i134, 0
  br i1 %.not.i.i135, label %lean_inc.exit106, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bz = atomicrmw sub ptr %i.bs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit106

lean_inc.exit106:                                 ; preds = %bb.at, %bb.as, %bb.ar
  %i.ca = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef nonnull %i.bs, ptr noundef nonnull inttoptr (i64 5 to ptr)) #4
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %.loopexit252, label %bb.bc

lean_inc.exit106.thread:                          ; preds = %bb.ap
  %i.cc = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef %i.bs, ptr noundef nonnull inttoptr (i64 5 to ptr)) #4
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %lean_dec.exit119, label %.thread146

.thread146:                                       ; preds = %lean_inc.exit106.thread
  %i.ce = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.bs, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4
  br label %lean_dec.exit115

.loopexit252:                                     ; preds = %lean_inc.exit106, %lean_inc.exit106.peel
  %.lcssa244 = phi ptr [ %i.n, %lean_inc.exit106.peel ], [ %i.br, %lean_inc.exit106 ] ; 3 uses
  %.lcssa239 = phi ptr [ %i.o, %lean_inc.exit106.peel ], [ %i.bs, %lean_inc.exit106 ] ; 3 uses
  %i.cf = load i32, ptr %.lcssa239, align 4, !tbaa !11 ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.au, label %bb.av, !prof !13

bb.au:                                            ; preds = %.loopexit252
  %i.ch = add nsw i32 %i.cf, -1
  store i32 %i.ch, ptr %.lcssa239, align 4, !tbaa !11
  br label %lean_dec.exit119

bb.av:                                            ; preds = %.loopexit252
  %.not.i120 = icmp eq i32 %i.cf, 0
  br i1 %.not.i120, label %lean_dec.exit119, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.lcssa239) #4
  br label %lean_dec.exit119

lean_dec.exit119:                                 ; preds = %lean_inc.exit106.thread.peel, %lean_inc.exit106.thread, %bb.aw, %bb.av, %bb.au
  %i.ci = phi ptr [ %.lcssa244, %bb.au ], [ %.lcssa244, %bb.aw ], [ %.lcssa244, %bb.av ], [ %i.n, %lean_inc.exit106.thread.peel ], [ %i.br, %lean_inc.exit106.thread ] ; 4 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, 1
  %.not.i116 = icmp eq i64 %i.ck, 0
  br i1 %.not.i116, label %bb.ax, label %lean_dec.exit117

bb.ax:                                            ; preds = %lean_dec.exit119
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !11 ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %bb.ay, label %bb.az, !prof !13

bb.ay:                                            ; preds = %bb.ax
  %i.cn = add nsw i32 %i.cl, -1
  store i32 %i.cn, ptr %i.ci, align 4, !tbaa !11
  br label %lean_dec.exit117

bb.az:                                            ; preds = %bb.ax
  %.not.i121 = icmp eq i32 %i.cl, 0
  br i1 %.not.i121, label %lean_dec.exit117, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #4
  br label %lean_dec.exit117

lean_dec.exit117:                                 ; preds = %bb.ba, %bb.az, %bb.ay, %lean_dec.exit119
  tail call void @lean_inc_heartbeat() #4
  %i.co = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.bb, label %.thread147.sink.split

bb.bb:                                            ; preds = %lean_dec.exit117
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.bc:                                            ; preds = %lean_inc.exit106
  %i.cq = tail call ptr @l_Lean_Syntax_getArg(ptr noundef nonnull %i.bs, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4 ; 3 uses
  %i.cr = load i32, ptr %i.bs, align 4, !tbaa !11 ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %i.bs, align 4, !tbaa !11
  br label %lean_dec.exit115

bb.be:                                            ; preds = %bb.bc
  %.not.i123 = icmp eq i32 %i.cr, 0
  br i1 %.not.i123, label %lean_dec.exit115, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bs) #4
  br label %lean_dec.exit115

lean_dec.exit115:                                 ; preds = %bb.bf, %bb.be, %bb.bd, %.thread146
  %i.cu = phi ptr [ %i.ce, %.thread146 ], [ %i.cq, %bb.bf ], [ %i.cq, %bb.bd ], [ %i.cq, %bb.be ]
  %i.cv = tail call zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef %i.cu, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %.loopexit253, label %lean_dec.exit111

.loopexit253:                                     ; preds = %lean_dec.exit115, %lean_dec.exit115.peel
  %.lcssa245 = phi ptr [ %i.n, %lean_dec.exit115.peel ], [ %i.br, %lean_dec.exit115 ] ; 4 uses
  %i.cx = ptrtoint ptr %.lcssa245 to i64
  %i.cy = and i64 %i.cx, 1
  %.not.i112 = icmp eq i64 %i.cy, 0
  br i1 %.not.i112, label %bb.bg, label %lean_dec.exit113

bb.bg:                                            ; preds = %.loopexit253
  %i.cz = load i32, ptr %.lcssa245, align 4, !tbaa !11 ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %bb.bh, label %bb.bi, !prof !13

bb.bh:                                            ; preds = %bb.bg
  %i.db = add nsw i32 %i.cz, -1
  store i32 %i.db, ptr %.lcssa245, align 4, !tbaa !11
  br label %lean_dec.exit113

bb.bi:                                            ; preds = %bb.bg
  %.not.i125 = icmp eq i32 %i.cz, 0
  br i1 %.not.i125, label %lean_dec.exit113, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.lcssa245) #4
  br label %lean_dec.exit113

lean_dec.exit113:                                 ; preds = %bb.bj, %bb.bi, %bb.bh, %.loopexit253
  tail call void @lean_inc_heartbeat() #4
  %i.dc = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.bk, label %.thread147.sink.split

bb.bk:                                            ; preds = %lean_dec.exit113
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.bl:                                            ; preds = %bb.ao
  br i1 %.not.i105, label %bb.bm, label %lean_dec.exit111

bb.bm:                                            ; preds = %bb.bl
  %i.de = load i32, ptr %i.bs, align 4, !tbaa !11 ; 3 uses
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %bb.bn, label %bb.bo, !prof !13

bb.bn:                                            ; preds = %bb.bm
  %i.dg = add nsw i32 %i.de, -1
  store i32 %i.dg, ptr %i.bs, align 4, !tbaa !11
  br label %lean_dec.exit111

bb.bo:                                            ; preds = %bb.bm
  %.not.i127 = icmp eq i32 %i.de, 0
  br i1 %.not.i127, label %lean_dec.exit111, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bs) #4
  br label %lean_dec.exit111

lean_dec.exit111:                                 ; preds = %bb.bl, %bb.bn, %bb.bo, %bb.bp, %lean_dec.exit115
  %i.dh = tail call ptr @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect(ptr noundef %i.br, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 8 uses
  %i.di = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dj = and i64 %i.di, 1
  %.not.i139 = icmp eq i64 %i.dj, 0               ; 2 uses
  br i1 %.not.i139, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %lean_dec.exit111
  %i.dk = lshr i64 %i.di, 1
  %i.dl = trunc i64 %i.dk to i32
  br label %lean_obj_tag.exit

bb.br:                                            ; preds = %lean_dec.exit111
  %i.dm = getelementptr i8, ptr %i.dh, i64 4
  %.val.i = load i32, ptr %i.dm, align 4
  %i.dn = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.bq, %bb.br
  %.0.i = phi i32 [ %i.dl, %bb.bq ], [ %i.dn, %bb.br ]
  %i.do = icmp eq i32 %.0.i, 0
  br i1 %i.do, label %bb.bs, label %.loopexit254

bb.bs:                                            ; preds = %lean_obj_tag.exit
  %.val.i140 = load i32, ptr %i.dh, align 4, !tbaa !11 ; 4 uses
  %i.dp = icmp eq i32 %.val.i140, 1
  br i1 %i.dp, label %.preheader.i, label %bb.bx

.preheader.i:                                     ; preds = %bb.bs
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !9  ; 4 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = and i64 %i.ds, 1
  %.not.i.i141 = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i141, label %bb.bt, label %lean_dec.exit.i

bb.bt:                                            ; preds = %.preheader.i
  %i.du = load i32, ptr %i.dr, align 4, !tbaa !11 ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %bb.bu, label %bb.bv, !prof !13

bb.bu:                                            ; preds = %bb.bt
  %i.dw = add nsw i32 %i.du, -1
  store i32 %i.dw, ptr %i.dr, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.bv:                                            ; preds = %bb.bt
  %.not.i7.i = icmp eq i32 %i.du, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dr) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.bw, %bb.bv, %bb.bu, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.dh) #4
  br label %lean_dec.exit

bb.bx:                                            ; preds = %bb.bs
  %i.dx = icmp sgt i32 %.val.i140, 1
  br i1 %i.dx, label %bb.by, label %bb.bz, !prof !13

bb.by:                                            ; preds = %bb.bx
  %i.dy = add nsw i32 %.val.i140, -1
  store i32 %i.dy, ptr %i.dh, align 4, !tbaa !11
  br label %lean_dec.exit

bb.bz:                                            ; preds = %bb.bx
  %.not.i8.i = icmp eq i32 %.val.i140, 0
  br i1 %.not.i8.i, label %lean_dec.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dh) #4
  br label %lean_dec.exit

.loopexit254:                                     ; preds = %lean_obj_tag.exit, %lean_obj_tag.exit.peel
  %.lcssa249 = phi ptr [ %i.al, %lean_obj_tag.exit.peel ], [ %i.dh, %lean_obj_tag.exit ] ; 6 uses
  %.not.i139.lcssa = phi i1 [ %.not.i139.peel, %lean_obj_tag.exit.peel ], [ %.not.i139, %lean_obj_tag.exit ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.lcssa249, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !9  ; 5 uses
  %.val = load i32, ptr %.lcssa249, align 8, !tbaa !11
  %i.eb = icmp eq i32 %.val, 1
  br i1 %i.eb, label %.thread147, label %bb.cb

bb.cb:                                            ; preds = %.loopexit254
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = and i64 %i.ec, 1
  %.not.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i, label %bb.cc, label %lean_inc.exit

bb.cc:                                            ; preds = %bb.cb
  %.val.i.i142 = load i32, ptr %i.ea, align 4, !tbaa !11 ; 3 uses
  %i.ee = icmp sgt i32 %.val.i.i142, 0
  br i1 %i.ee, label %bb.cd, label %bb.ce, !prof !13

bb.cd:                                            ; preds = %bb.cc
  %i.ef = add nuw i32 %.val.i.i142, 1
  store i32 %i.ef, ptr %i.ea, align 4, !tbaa !11
  br label %lean_inc.exit

bb.ce:                                            ; preds = %bb.cc
  %.not.i.i143 = icmp eq i32 %.val.i.i142, 0
  br i1 %.not.i.i143, label %lean_inc.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.eg = atomicrmw sub ptr %i.ea, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cb
  br i1 %.not.i139.lcssa, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %lean_inc.exit
  %i.eh = load i32, ptr %.lcssa249, align 8, !tbaa !11 ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 1
  br i1 %i.ei, label %bb.ch, label %bb.ci, !prof !13

bb.ch:                                            ; preds = %bb.cg
  %i.ej = add nsw i32 %i.eh, -1
  store i32 %i.ej, ptr %.lcssa249, align 8, !tbaa !11
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cg
  %.not.i129 = icmp eq i32 %i.eh, 0
  br i1 %.not.i129, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.lcssa249) #4
  br label %bb.ck

bb.ck:                                            ; preds = %lean_inc.exit, %bb.ch, %bb.ci, %bb.cj
  tail call void @lean_inc_heartbeat() #4
  %i.ek = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.cl, label %.thread147.sink.split

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_dec.exit:                                    ; preds = %bb.ca, %bb.bz, %bb.by, %lean_dec.exit.i
  %i.em = add nuw i64 %.079175, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.em, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.peel.newph, !llvm.loop !19

.thread147.sink.split:                            ; preds = %bb.ck, %lean_dec.exit113, %lean_dec.exit117, %.loopexit, %._crit_edge
  %.sink226 = phi ptr [ %i.co, %lean_dec.exit117 ], [ %i.bp, %.loopexit ], [ %i.dc, %lean_dec.exit113 ], [ %i.be, %._crit_edge ], [ %i.ek, %bb.ck ] ; 4 uses
  %.sink = phi i32 [ 65552, %lean_dec.exit117 ], [ 65552, %.loopexit ], [ 65552, %lean_dec.exit113 ], [ 65552, %._crit_edge ], [ 16842768, %bb.ck ]
  %l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__3_value.sink = phi ptr [ @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__3_value, %lean_dec.exit117 ], [ @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__3_value, %.loopexit ], [ @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__3_value, %lean_dec.exit113 ], [ %.084.lcssa, %._crit_edge ], [ %i.ea, %bb.ck ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sink226, i64 4
  store i32 1, ptr %.sink226, align 4, !tbaa !11
  store i32 %.sink, ptr %i.en, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.sink226, i64 8
  store ptr %l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___closed__3_value.sink, ptr %i.eo, align 8, !tbaa !9
  br label %.thread147

.thread147:                                       ; preds = %.thread147.sink.split, %.loopexit254
  %.8.ph = phi ptr [ %.lcssa249, %.loopexit254 ], [ %.sink226, %.thread147.sink.split ]
  ret ptr %.8.ph
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val32 = load i64, ptr %i.a, align 8, !tbaa !14
  %i.b = load i32, ptr %1, align 8, !tbaa !11     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !11
  br label %lean_dec.exit20

bb.c:                                             ; preds = %bb.a
  %.not.i21 = icmp eq i32 %i.b, 0
  br i1 %.not.i21, label %lean_dec.exit20, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec.exit20

lean_dec.exit20:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !14
  %i.f = load i32, ptr %2, align 8, !tbaa !11     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit20
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 8, !tbaa !11
  br label %lean_dec.exit18

bb.f:                                             ; preds = %lean_dec.exit20
  %.not.i22 = icmp eq i32 %i.f, 0
  br i1 %.not.i22, label %lean_dec.exit18, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit18

lean_dec.exit18:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__0(ptr noundef %0, i64 noundef %.val32, i64 noundef %.val, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %i.j = ptrtoint ptr %6 to i64
  %i.k = and i64 %i.j, 1
  %.not.i15 = icmp eq i64 %i.k, 0
  br i1 %.not.i15, label %bb.h, label %lean_dec.exit16

bb.h:                                             ; preds = %lean_dec.exit18
  %i.l = load i32, ptr %6, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %6, align 4, !tbaa !11
  br label %lean_dec.exit16

bb.j:                                             ; preds = %bb.h
  %.not.i24 = icmp eq i32 %i.l, 0
  br i1 %.not.i24, label %lean_dec.exit16, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #4
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.k, %bb.j, %bb.i, %lean_dec.exit18
  %i.o = load i32, ptr %5, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %lean_dec.exit16
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %5, align 4, !tbaa !11
  br label %lean_dec_ref.exit31

bb.m:                                             ; preds = %lean_dec.exit16
  %.not.i30 = icmp eq i32 %i.o, 0
  br i1 %.not.i30, label %lean_dec_ref.exit31, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit31

lean_dec_ref.exit31:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.r = ptrtoint ptr %4 to i64
  %i.s = and i64 %i.r, 1
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.o, label %lean_dec.exit

bb.o:                                             ; preds = %lean_dec_ref.exit31
  %i.t = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit

bb.q:                                             ; preds = %bb.o
  %.not.i26 = icmp eq i32 %i.t, 0
  br i1 %.not.i26, label %lean_dec.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.r, %bb.q, %bb.p, %lean_dec_ref.exit31
  %i.w = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.s, label %bb.t, !prof !13

bb.s:                                             ; preds = %lean_dec.exit
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit29

bb.t:                                             ; preds = %lean_dec.exit
  %.not.i28 = icmp eq i32 %i.w, 0
  br i1 %.not.i28, label %lean_dec_ref.exit29, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit29

lean_dec_ref.exit29:                              ; preds = %bb.s, %bb.t, %bb.u
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val32 = load i64, ptr %i.a, align 8, !tbaa !14
  %i.b = load i32, ptr %1, align 8, !tbaa !11     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !11
  br label %lean_dec.exit20

bb.c:                                             ; preds = %bb.a
  %.not.i21 = icmp eq i32 %i.b, 0
  br i1 %.not.i21, label %lean_dec.exit20, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec.exit20

lean_dec.exit20:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !14
  %i.f = load i32, ptr %2, align 8, !tbaa !11     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit20
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 8, !tbaa !11
  br label %lean_dec.exit18

bb.f:                                             ; preds = %lean_dec.exit20
  %.not.i22 = icmp eq i32 %i.f, 0
  br i1 %.not.i22, label %lean_dec.exit18, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit18

lean_dec.exit18:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect_spec__1(ptr noundef %0, i64 noundef %.val32, i64 noundef %.val, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %i.j = ptrtoint ptr %6 to i64
  %i.k = and i64 %i.j, 1
  %.not.i15 = icmp eq i64 %i.k, 0
  br i1 %.not.i15, label %bb.h, label %lean_dec.exit16

bb.h:                                             ; preds = %lean_dec.exit18
  %i.l = load i32, ptr %6, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %6, align 4, !tbaa !11
  br label %lean_dec.exit16

bb.j:                                             ; preds = %bb.h
  %.not.i24 = icmp eq i32 %i.l, 0
  br i1 %.not.i24, label %lean_dec.exit16, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #4
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.k, %bb.j, %bb.i, %lean_dec.exit18
  %i.o = load i32, ptr %5, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %lean_dec.exit16
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %5, align 4, !tbaa !11
  br label %lean_dec_ref.exit31

bb.m:                                             ; preds = %lean_dec.exit16
  %.not.i30 = icmp eq i32 %i.o, 0
  br i1 %.not.i30, label %lean_dec_ref.exit31, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit31

lean_dec_ref.exit31:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.r = ptrtoint ptr %4 to i64
  %i.s = and i64 %i.r, 1
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.o, label %lean_dec.exit

bb.o:                                             ; preds = %lean_dec_ref.exit31
  %i.t = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit

bb.q:                                             ; preds = %bb.o
  %.not.i26 = icmp eq i32 %i.t, 0
  br i1 %.not.i26, label %lean_dec.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.r, %bb.q, %bb.p, %lean_dec_ref.exit31
  %i.w = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.s, label %bb.t, !prof !13

bb.s:                                             ; preds = %lean_dec.exit
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit29

bb.t:                                             ; preds = %lean_dec.exit
  %.not.i28 = icmp eq i32 %i.w, 0
  br i1 %.not.i28, label %lean_dec_ref.exit29, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit29

lean_dec_ref.exit29:                              ; preds = %bb.s, %bb.t, %bb.u
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_CollectParams_0__Lean_Meta_Grind_Collector_collect(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = ptrtoint ptr %3 to i64
  %i.c = and i64 %i.b, 1
  %.not.i8 = icmp eq i64 %i.c, 0
  br i1 %.not.i8, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %3, align 4, !tbaa !11
  br label %lean_dec.exit9

bb.d:                                             ; preds = %bb.b
  %.not.i10 = icmp eq i32 %i.d, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit9
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit14

bb.g:                                             ; preds = %lean_dec.exit9
  %.not.i13 = icmp eq i32 %i.g, 0
  br i1 %.not.i13, label %lean_dec_ref.exit14, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec_ref.exit14

lean_dec_ref.exit14:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %1 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit14
  %i.l = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i11 = icmp eq i32 %i.l, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit14
  ret ptr %i.a
end_hunk_1
