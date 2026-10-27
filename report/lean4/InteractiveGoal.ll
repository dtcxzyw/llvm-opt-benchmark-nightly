Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/InteractiveGoal?download=true
inline.NumInlined: 3399
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@l_Lean_Widget_instRpcEncodableInteractiveGoals_dec_00___x40_Lean_Widget_InteractiveGoal_1490754142____hygCtx___hyg_1_:bb.a
  %.sink186 = phi ptr [ %i.ai, %bb.w ], [ %i.bs, %bb.ax ], [ %i.cc, %bb.bj ] ; 4 uses
  %.sink183 = phi i32 [ 65552, %bb.w ], [ 65552, %bb.ax ], [ 16842768, %bb.bj ]
  %.sink = phi ptr [ %i.y, %bb.w ], [ %i.bi, %bb.ax ], [ %i.bi, %bb.bj ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sink186, i64 4
  store i32 1, ptr %.sink186, align 4, !tbaa !10
  store i32 %.sink183, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink186, i64 8
  store ptr %.sink, ptr %i.cf, align 8, !tbaa !12
  br label %lean_dec.exit109

lean_dec.exit109:                                 ; preds = %lean_dec.exit109.sink.split, %l_Lean_Widget_instFromJsonRpcEncodablePacket_fromJson_00___x40_Lean_Widget_InteractiveGoal_2032952811____hygCtx___hyg_10_.exit, %bb.az, %bb.an, %bb.m
  %.6 = phi ptr [ %i.az, %bb.an ], [ %i.b, %l_Lean_Widget_instFromJsonRpcEncodablePacket_fromJson_00___x40_Lean_Widget_InteractiveGoal_2032952811____hygCtx___hyg_10_.exit ], [ %i.p, %bb.m ], [ %i.az, %bb.az ], [ %.sink186, %lean_dec.exit109.sink.split ]
  ret ptr %.6
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Widget_instRpcEncodableInteractiveGoals_dec_00___x40_Lean_Widget_InteractiveGoal_1490754142____hygCtx___hyg_1____boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Widget_instRpcEncodableInteractiveGoals_dec_00___x40_Lean_Widget_InteractiveGoal_1490754142____hygCtx___hyg_1_(ptr noundef %0, ptr noundef %1)
  %i.b = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Widget_InteractiveGoals_append(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Array_append___redArg(ptr noundef %0, ptr noundef %1) #6
  ret ptr %i.a
}

declare ptr @l_Array_append___redArg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Widget_InteractiveGoals_append___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @l_Array_append___redArg(ptr noundef %0, ptr noundef %1) #6
  %i.b = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Widget_InteractiveGoal_0__Lean_Widget_addInteractiveHypothesisBundle_ppLetValueExprTagged(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_ppGoal_shouldShowLetValue___redArg(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %4) #6 ; 13 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i64 = icmp eq i64 %i.c, 0                 ; 2 uses
  br i1 %.not.i64, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.w

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 7 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not.i57 = icmp eq i64 %i.l, 0                 ; 2 uses
  br i1 %.not.i57, label %bb.e, label %lean_inc.exit58

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !10 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !10
  br label %lean_inc.exit58

bb.g:                                             ; preds = %bb.e
  %.not.i.i65 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i65, label %lean_inc.exit58, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = atomicrmw add ptr %i.j, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit58

lean_inc.exit58:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.val.i66 = load i32, ptr %i.a, align 8, !tbaa !10 ; 4 uses
  %i.p = icmp eq i32 %.val.i66, 1
  br i1 %i.p, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %lean_inc.exit58
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !12   ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 1
  %.not.i7.i = icmp eq i64 %i.s, 0
  br i1 %.not.i7.i, label %bb.i, label %lean_dec.exit.i

bb.i:                                             ; preds = %.preheader.i
  %i.t = load i32, ptr %i.q, align 4, !tbaa !10   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.l, %bb.k, %bb.j, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.a) #6
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %lean_inc.exit58
  %i.w = icmp sgt i32 %.val.i66, 1
  br i1 %i.w, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.x = add nsw i32 %.val.i66, -1
  store i32 %i.x, ptr %i.a, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i67 = icmp eq i32 %.val.i66, 0
  br i1 %.not.i.i67, label %lean_dec_ref_known.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.n, %bb.o, %bb.p
  br i1 %.not.i57, label %bb.q, label %lean_dec.exit63

bb.q:                                             ; preds = %lean_dec_ref_known.exit
  %i.y = load i32, ptr %i.j, align 4, !tbaa !10   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.r, label %bb.s, !prof !15

bb.r:                                             ; preds = %bb.q
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %i.j, align 4, !tbaa !10
  br label %lean_dec.exit63

bb.s:                                             ; preds = %bb.q
  %.not.i.i61 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i61, label %lean_dec.exit63, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #6
  br label %lean_dec.exit63

lean_dec.exit63:                                  ; preds = %bb.r, %bb.s, %bb.t, %lean_dec_ref_known.exit
  %i.ab = and i64 %i.k, 510
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %lean_inc_ref.exit71, label %bb.v

lean_inc_ref.exit71:                              ; preds = %lean_dec.exit63
  tail call void @lean_inc_heartbeat() #6
  %i.ad = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.u, label %lean_alloc_ctor.exit

bb.u:                                             ; preds = %lean_inc_ref.exit71
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit71
  %6 = icmp eq i8 %0, 0
  %l___private_Lean_Widget_InteractiveGoal_0__Lean_Widget_addInteractiveHypothesisBundle_ppLetValueExprTagged___closed__0_value.l___private_Lean_Widget_InteractiveGoal_0__Lean_Widget_addInteractiveHypothesisBundle_ppLetValueExprTagged___closed__1_value = select i1 %6, ptr @l___private_Lean_Widget_InteractiveGoal_0__Lean_Widget_addInteractiveHypothesisBundle_ppLetValueExprTagged___closed__0_value, ptr @l___private_Lean_Widget_InteractiveGoal_0__Lean_Widget_addInteractiveHypothesisBundle_ppLetValueExprTagged___closed__1_value
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 1, ptr %i.ad, align 4, !tbaa !10
  store i32 50397200, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %l___private_Lean_Widget_InteractiveGoal_0__Lean_Widget_addInteractiveHypothesisBundle_ppLetValueExprTagged___closed__0_value.l___private_Lean_Widget_InteractiveGoal_0__Lean_Widget_addInteractiveHypothesisBundle_ppLetValueExprTagged___closed__1_value, ptr %i.ag, align 8, !tbaa !12
  %i.ah = tail call ptr @lean_alloc_object(i64 noundef 32) #6 ; 7 uses
  store i32 1, ptr %i.ah, align 4, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 65535
  %i.al = or disjoint i32 %i.ak, -184549376
  store i32 %i.al, ptr %i.ai, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_omission___boxed, ptr %i.am, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i16 8, ptr %i.an, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 18
  store i16 1, ptr %i.ao, align 2, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ad, ptr %i.ap, align 8, !tbaa !12
  %i.aq = tail call ptr @l_Lean_Widget_ppExprTagged(ptr noundef %1, ptr noundef nonnull %i.ah, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #6
  br label %lean_dec.exit

bb.v:                                             ; preds = %lean_dec.exit63
  %i.ar = tail call ptr @l_Lean_Widget_ppExprTagged(ptr noundef %1, ptr noundef nonnull @l___private_Lean_Widget_InteractiveGoal_0__Lean_Widget_addInteractiveHypothesisBundle_ppLetValueExprTagged___closed__2_value, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #6
  br label %lean_dec.exit

bb.w:                                             ; preds = %lean_obj_tag.exit
  %i.as = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %bb.x, label %bb.y, !prof !15

bb.x:                                             ; preds = %bb.w
  %i.au = add nsw i32 %i.as, -1
  store i32 %i.au, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.y:                                             ; preds = %bb.w
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.x, %bb.y, %bb.z
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !12 ; 5 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !10
  %i.ax = icmp eq i32 %.val, 1
  br i1 %i.ax, label %lean_dec.exit, label %bb.aa

bb.aa:                                            ; preds = %lean_dec_ref.exit
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = and i64 %i.ay, 1
  %.not.i56 = icmp eq i64 %i.az, 0
  br i1 %.not.i56, label %bb.ab, label %lean_inc.exit

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i72 = load i32, ptr %i.aw, align 4, !tbaa !10 ; 3 uses
  %i.ba = icmp sgt i32 %.val.i.i72, 0
  br i1 %i.ba, label %bb.ac, label %bb.ad, !prof !15

bb.ac:                                            ; preds = %bb.ab
  %i.bb = add nuw i32 %.val.i.i72, 1
  store i32 %i.bb, ptr %i.aw, align 4, !tbaa !10
  br label %lean_inc.exit

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i73 = icmp eq i32 %.val.i.i72, 0
  br i1 %.not.i.i73, label %lean_inc.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bc = atomicrmw add ptr %i.aw, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  br i1 %.not.i64, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %lean_inc.exit
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !10  ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 1
  br i1 %i.be, label %bb.ag, label %bb.ah, !prof !15

bb.ag:                                            ; preds = %bb.af
  %i.bf = add nsw i32 %i.bd, -1
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !10
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %.not.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #6
  br label %bb.aj

bb.aj:                                            ; preds = %lean_inc.exit, %bb.ai, %bb.ah, %bb.ag
  tail call void @lean_inc_heartbeat() #6
  %i.bg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.ak, label %lean_alloc_ctor.exit75

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit75:                           ; preds = %bb.aj
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 1, ptr %i.bg, align 4, !tbaa !10
  store i32 16842768, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.aw, ptr %i.bj, align 8, !tbaa !12
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec_ref.exit, %lean_alloc_ctor.exit75, %bb.v, %lean_alloc_ctor.exit
  %.2 = phi ptr [ %i.ar, %bb.v ], [ %i.aq, %lean_alloc_ctor.exit ], [ %i.bg, %lean_alloc_ctor.exit75 ], [ %i.a, %lean_dec_ref.exit ]
  ret ptr %.2
}

declare ptr @l_Lean_Meta_ppGoal_shouldShowLetValue___redArg(i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_Widget_ppExprTagged(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_PrettyPrinter_Delaborator_omission___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Widget_InteractiveGoal_0__Lean_Widget_addInteractiveHypothesisBundle_ppLetValueExprTagged___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l___private_Lean_Widget_InteractiveGoal_0__Lean_Widget_addInteractiveHypothesisBundle_ppLetValueExprTagged(i8 noundef zeroext %i.c, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %i.e = ptrtoint ptr %5 to i64
  %i.f = and i64 %i.e, 1
  %.not.i14 = icmp eq i64 %i.f, 0
  br i1 %.not.i14, label %bb.b, label %lean_dec.exit17

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit17

bb.d:                                             ; preds = %bb.b
  %.not.i.i15 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i15, label %lean_dec.exit17, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #6
  br label %lean_dec.exit17

lean_dec.exit17:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %i.j = load i32, ptr %4, align 4, !tbaa !10     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_dec.exit17
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %4, align 4, !tbaa !10
  br label %lean_dec_ref.exit12

bb.g:                                             ; preds = %lean_dec.exit17
  %.not.i11 = icmp eq i32 %i.j, 0
  br i1 %.not.i11, label %lean_dec_ref.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec_ref.exit12

lean_dec_ref.exit12:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.m = ptrtoint ptr %3 to i64
  %i.n = and i64 %i.m, 1
  %.not.i13 = icmp eq i64 %i.n, 0
  br i1 %.not.i13, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit12
  %i.o = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.j, %bb.k, %bb.l, %lean_dec_ref.exit12
  %i.r = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
end_hunk_0
