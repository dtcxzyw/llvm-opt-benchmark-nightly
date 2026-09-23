Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ExampleHover?download=true
inline.NumInlined: 368
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@l___private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_lines:bb.a

bb.t:                                             ; preds = %bb.s
  %i.af = atomicrmw sub ptr %i.aa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.t, %bb.s, %bb.r, %lean_inc.exit47
  br i1 %.not.i50, label %bb.u, label %lean_dec.exit33

bb.u:                                             ; preds = %lean_inc.exit
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !11  ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.v, label %bb.w, !prof !12

bb.v:                                             ; preds = %bb.u
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !11
  br label %lean_dec.exit33

bb.w:                                             ; preds = %bb.u
  %.not.i34 = icmp eq i32 %i.ag, 0
  br i1 %.not.i34, label %lean_dec.exit33, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #5
  br label %lean_dec.exit33

lean_dec.exit33:                                  ; preds = %bb.x, %bb.w, %bb.v, %lean_inc.exit
  br i1 %.not.i45, label %lean_nat_eq.exit, label %bb.y, !prof !9

bb.y:                                             ; preds = %lean_dec.exit33
  br i1 %.not.i46, label %lean_nat_eq.exit.thread64, label %lean_nat_eq.exit.thread, !prof !9

lean_nat_eq.exit:                                 ; preds = %lean_dec.exit33
  %i.aj = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.aa, ptr noundef %i.t) #5
  br i1 %i.aj, label %bb.ah, label %bb.z

lean_nat_eq.exit.thread64:                        ; preds = %bb.y
  %i.ak = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.aa, ptr noundef %i.t) #5
  br i1 %i.ak, label %lean_dec.exit27.thread66, label %lean_dec.exit31.thread68

lean_dec.exit31.thread68:                         ; preds = %lean_nat_eq.exit.thread64
  %i.al = tail call ptr @lean_string_utf8_extract(ptr noundef %0, ptr noundef %i.t, ptr noundef %i.aa) #5
  br label %bb.ad

lean_nat_eq.exit.thread:                          ; preds = %bb.y
  %.not69 = icmp eq ptr %i.aa, %i.t
  br i1 %.not69, label %lean_dec.exit, label %lean_dec.exit31.thread

lean_dec.exit31.thread:                           ; preds = %lean_nat_eq.exit.thread
  %i.am = tail call ptr @lean_string_utf8_extract(ptr noundef %0, ptr noundef %i.t, ptr noundef %i.aa) #5
  br label %lean_dec.exit29

bb.z:                                             ; preds = %lean_nat_eq.exit
  %i.an = tail call ptr @lean_string_utf8_extract(ptr noundef %0, ptr noundef %i.t, ptr noundef %i.aa) #5 ; 2 uses
  %i.ao = load i32, ptr %i.aa, align 4, !tbaa !11 ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.aa, label %bb.ab, !prof !12

bb.aa:                                            ; preds = %bb.z
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %i.aa, align 4, !tbaa !11
  br label %lean_dec.exit31

bb.ab:                                            ; preds = %bb.z
  %.not.i35 = icmp eq i32 %i.ao, 0
  br i1 %.not.i35, label %lean_dec.exit31, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #5
  br label %lean_dec.exit31

lean_dec.exit31:                                  ; preds = %bb.ac, %bb.ab, %bb.aa
  br i1 %.not.i46, label %bb.ad, label %lean_dec.exit29

bb.ad:                                            ; preds = %lean_dec.exit31.thread68, %lean_dec.exit31
  %i.ar = phi ptr [ %i.al, %lean_dec.exit31.thread68 ], [ %i.an, %lean_dec.exit31 ] ; 3 uses
  %i.as = load i32, ptr %i.t, align 4, !tbaa !11  ; 3 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %bb.ae, label %bb.af, !prof !12

bb.ae:                                            ; preds = %bb.ad
  %i.au = add nsw i32 %i.as, -1
  store i32 %i.au, ptr %i.t, align 4, !tbaa !11
  br label %lean_dec.exit29

bb.af:                                            ; preds = %bb.ad
  %.not.i37 = icmp eq i32 %i.as, 0
  br i1 %.not.i37, label %lean_dec.exit29, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #5
  br label %lean_dec.exit29

lean_dec.exit29:                                  ; preds = %bb.ag, %bb.af, %bb.ae, %lean_dec.exit31.thread, %lean_dec.exit31
  %i.av = phi ptr [ %i.am, %lean_dec.exit31.thread ], [ %i.an, %lean_dec.exit31 ], [ %i.ar, %bb.ae ], [ %i.ar, %bb.af ], [ %i.ar, %bb.ag ]
  %i.aw = tail call ptr @lean_array_push(ptr noundef %i.j, ptr noundef %i.av) #5
  br label %lean_dec.exit

bb.ah:                                            ; preds = %lean_nat_eq.exit
  %i.ax = load i32, ptr %i.aa, align 4, !tbaa !11 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.ai, label %bb.aj, !prof !12

bb.ai:                                            ; preds = %bb.ah
  %i.az = add nsw i32 %i.ax, -1
  store i32 %i.az, ptr %i.aa, align 4, !tbaa !11
  br label %lean_dec.exit27

bb.aj:                                            ; preds = %bb.ah
  %.not.i39 = icmp eq i32 %i.ax, 0
  br i1 %.not.i39, label %lean_dec.exit27, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #5
  br label %lean_dec.exit27

lean_dec.exit27:                                  ; preds = %bb.ak, %bb.aj, %bb.ai
  br i1 %.not.i46, label %lean_dec.exit27.thread66, label %lean_dec.exit

lean_dec.exit27.thread66:                         ; preds = %lean_nat_eq.exit.thread64, %lean_dec.exit27
  %i.ba = load i32, ptr %i.t, align 4, !tbaa !11  ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.al, label %bb.am, !prof !12

bb.al:                                            ; preds = %lean_dec.exit27.thread66
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %i.t, align 4, !tbaa !11
  br label %lean_dec.exit

bb.am:                                            ; preds = %lean_dec.exit27.thread66
  %.not.i41 = icmp eq i32 %i.ba, 0
  br i1 %.not.i41, label %lean_dec.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_nat_eq.exit.thread, %lean_dec.exit27, %bb.al, %bb.am, %bb.an, %lean_dec.exit29
  %.0 = phi ptr [ %i.aw, %lean_dec.exit29 ], [ %i.j, %bb.an ], [ %i.j, %bb.am ], [ %i.j, %bb.al ], [ %i.j, %lean_dec.exit27 ], [ %i.j, %lean_nat_eq.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_lines___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_lines(ptr noundef %0)
  %i.b = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_lines_spec__0(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_lines_spec__0___redArg(ptr noundef %0, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_lines_spec__0___boxed(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_lines_spec__0___redArg(ptr noundef %0, ptr noundef %2)
  %i.b = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @l___private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_RWState_ctorIdx(ptr noundef %0) local_unnamed_addr #2 {
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
define noundef nonnull ptr @l___private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_RWState_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
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
    i32 0, label %l___private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_RWState_ctorIdx.exit
    i32 1, label %1
  ]

1:                                                ; preds = %lean_obj_tag.exit.i
  br label %l___private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_RWState_ctorIdx.exit

2:                                                ; preds = %lean_obj_tag.exit.i
  br label %l___private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_RWState_ctorIdx.exit

l___private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_RWState_ctorIdx.exit: ; preds = %lean_obj_tag.exit.i, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i ]
  br i1 %.not.i.i, label %3, label %lean_dec.exit

3:                                                ; preds = %l___private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_RWState_ctorIdx.exit
  %4 = load i32, ptr %0, align 4, !tbaa !11       ; 3 uses
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %3
  %i.g = add nsw i32 %4, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.e:                                             ; preds = %3
  %.not.i3 = icmp eq i32 %4, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %l___private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_RWState_ctorIdx.exit
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Server_FileWorker_ExampleHover_0__Lean_Server_FileWorker_Hover_RWState_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i22 = icmp eq i64 %i.b, 0
  br i1 %.not.i22, label %bb.c, label %bb.b

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
  switch i32 %.0.i, label %bb.q [
    i32 0, label %bb.al
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 5 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i20 = icmp eq i64 %i.j, 0
  br i1 %.not.i20, label %bb.e, label %lean_inc.exit21

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !11 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i, 0
  br i1 %i.k, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i32 %.val.i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !11
  br label %lean_inc.exit21

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit21

lean_inc.exit21:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.val.i23 = load i32, ptr %0, align 8, !tbaa !11 ; 4 uses
  %i.n = icmp eq i32 %.val.i23, 1
  br i1 %i.n, label %.preheader.i.preheader, label %bb.m

.preheader.i.preheader:                           ; preds = %lean_inc.exit21
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !14   ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i24 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i24, label %bb.i, label %lean_dec.exit.i

bb.i:                                             ; preds = %.preheader.i.preheader
  %i.r = load i32, ptr %i.o, align 4, !tbaa !11   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %i.o, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.k:                                             ; preds = %bb.i
  %.not.i7.i = icmp eq i32 %i.r, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #5
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.l, %bb.k, %bb.j, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %lean_inc.exit21
  %i.u = icmp sgt i32 %.val.i23, 1
  br i1 %i.u, label %bb.n, label %bb.o, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.v = add nsw i32 %.val.i23, -1
  store i32 %i.v, ptr %0, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.o:                                             ; preds = %bb.m
  %.not.i8.i = icmp eq i32 %.val.i23, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.n, %bb.o, %bb.p
  %i.w = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef %i.h) #5
  br label %bb.al

bb.q:                                             ; preds = %lean_obj_tag.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14   ; 5 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, 1
  %.not.i18 = icmp eq i64 %i.aa, 0
  br i1 %.not.i18, label %bb.r, label %lean_inc.exit19

bb.r:                                             ; preds = %bb.q
  %.val.i.i25 = load i32, ptr %i.y, align 4, !tbaa !11 ; 3 uses
  %i.ab = icmp sgt i32 %.val.i.i25, 0
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !12

bb.s:                                             ; preds = %bb.r
  %i.ac = add nuw i32 %.val.i.i25, 1
  store i32 %i.ac, ptr %i.y, align 4, !tbaa !11
  br label %lean_inc.exit19

bb.t:                                             ; preds = %bb.r
  %.not.i.i26 = icmp eq i32 %.val.i.i25, 0
  br i1 %.not.i.i26, label %lean_inc.exit19, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ad = atomicrmw sub ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit19

lean_inc.exit19:                                  ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !14 ; 5 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = and i64 %i.ag, 1
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.v, label %lean_inc.exit

bb.v:                                             ; preds = %lean_inc.exit19
  %.val.i.i28 = load i32, ptr %i.af, align 4, !tbaa !11 ; 3 uses
  %i.ai = icmp sgt i32 %.val.i.i28, 0
  br i1 %i.ai, label %bb.w, label %bb.x, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.aj = add nuw i32 %.val.i.i28, 1
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !11
  br label %lean_inc.exit

bb.x:                                             ; preds = %bb.v
  %.not.i.i29 = icmp eq i32 %.val.i.i28, 0
  br i1 %.not.i.i29, label %lean_inc.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ak = atomicrmw sub ptr %i.af, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.y, %bb.x, %bb.w, %lean_inc.exit19
  %.val.i31 = load i32, ptr %0, align 8, !tbaa !11 ; 4 uses
  %i.al = icmp eq i32 %.val.i31, 1
  br i1 %i.al, label %.preheader.i33.preheader, label %bb.ah

.preheader.i33.preheader:                         ; preds = %lean_inc.exit
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !14  ; 4 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 1
  %.not.i.i35 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i35, label %bb.z, label %lean_dec.exit.i36

bb.z:                                             ; preds = %.preheader.i33.preheader
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !11 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.aa, label %bb.ab, !prof !12

bb.aa:                                            ; preds = %bb.z
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !11
  br label %lean_dec.exit.i36

bb.ab:                                            ; preds = %bb.z
  %.not.i7.i39 = icmp eq i32 %i.ap, 0
  br i1 %.not.i7.i39, label %lean_dec.exit.i36, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #5
  br label %lean_dec.exit.i36

lean_dec.exit.i36:                                ; preds = %bb.ac, %bb.ab, %bb.aa, %.preheader.i33.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !14 ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = and i64 %i.au, 1
  %.not.i.i35.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i35.1, label %bb.ad, label %lean_dec.exit.i36.1

bb.ad:                                            ; preds = %lean_dec.exit.i36
end_hunk_0
