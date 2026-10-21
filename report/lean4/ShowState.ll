Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ShowState?download=true
inline.NumInlined: 1497
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___lam__1___boxed:bb.a
  store i32 %i.ag, ptr %5, align 4, !tbaa !12
  br label %lean_dec.exit26

bb.y:                                             ; preds = %bb.w
  %.not.i38 = icmp eq i32 %i.ae, 0
  br i1 %.not.i38, label %lean_dec.exit26, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #5
  br label %lean_dec.exit26

lean_dec.exit26:                                  ; preds = %bb.z, %bb.y, %bb.x, %lean_dec_ref.exit47
  %i.ah = load i32, ptr %4, align 4, !tbaa !12    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.aa, label %bb.ab, !prof !13

bb.aa:                                            ; preds = %lean_dec.exit26
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %4, align 4, !tbaa !12
  br label %lean_dec_ref.exit45

bb.ab:                                            ; preds = %lean_dec.exit26
  %.not.i44 = icmp eq i32 %i.ah, 0
  br i1 %.not.i44, label %lean_dec_ref.exit45, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #5
  br label %lean_dec_ref.exit45

lean_dec_ref.exit45:                              ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.ak = ptrtoint ptr %3 to i64
  %i.al = and i64 %i.ak, 1
  %.not.i23 = icmp eq i64 %i.al, 0
  br i1 %.not.i23, label %bb.ad, label %lean_dec.exit24

bb.ad:                                            ; preds = %lean_dec_ref.exit45
  %i.am = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %bb.ae, label %bb.af, !prof !13

bb.ae:                                            ; preds = %bb.ad
  %i.ao = add nsw i32 %i.am, -1
  store i32 %i.ao, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit24

bb.af:                                            ; preds = %bb.ad
  %.not.i40 = icmp eq i32 %i.am, 0
  br i1 %.not.i40, label %lean_dec.exit24, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec.exit24

lean_dec.exit24:                                  ; preds = %bb.ag, %bb.af, %bb.ae, %lean_dec_ref.exit45
  %i.ap = ptrtoint ptr %2 to i64
  %i.aq = and i64 %i.ap, 1
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.ah, label %lean_dec.exit

bb.ah:                                            ; preds = %lean_dec.exit24
  %i.ar = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %bb.ah
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit

bb.aj:                                            ; preds = %bb.ah
  %.not.i42 = icmp eq i32 %i.ar, 0
  br i1 %.not.i42, label %lean_dec.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ak, %bb.aj, %bb.ai, %lean_dec.exit24
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_alloc_object(i64 noundef 32) #5 ; 7 uses
  store i32 1, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = or disjoint i32 %i.d, -184549376
  store i32 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___lam__0___boxed, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 13, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 1, ptr %i.h, align 2, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.i, align 8, !tbaa !10
  %i.j = zext i8 %1 to i64
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = or disjoint i64 %i.k, 1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = tail call ptr @lean_alloc_object(i64 noundef 40) #5 ; 8 uses
  store i32 1, ptr %i.n, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 65535
  %i.r = or disjoint i32 %i.q, -184549376
  store i32 %i.r, ptr %i.o, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___lam__1___boxed, ptr %i.s, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i16 13, ptr %i.t, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  store i16 2, ptr %i.u, align 2, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.m, ptr %i.v, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.a, ptr %i.w, align 8, !tbaa !10
  %i.x = tail call ptr @l_Lean_Elab_Tactic_Grind_liftGoalM___redArg(ptr noundef nonnull %i.n, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #5 ; 12 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = and i64 %i.y, 1
  %.not.i103 = icmp eq i64 %i.z, 0                ; 3 uses
  br i1 %.not.i103, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = lshr i64 %i.y, 1
  %i.ab = trunc i64 %i.aa to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr i8, ptr %i.x, i64 4
  %.val.i = load i32, ptr %i.ac, align 4
  %i.ad = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i104 = phi i32 [ %i.ab, %bb.b ], [ %i.ad, %bb.c ]
  %i.ae = icmp eq i32 %.0.i104, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !10 ; 14 uses
  %.val101 = load i32, ptr %i.x, align 8, !tbaa !12
  %i.ah = icmp eq i32 %.val101, 1                 ; 4 uses
  br i1 %i.ae, label %bb.d, label %bb.w

bb.d:                                             ; preds = %lean_obj_tag.exit
  br i1 %i.ah, label %lean_nat_eq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = and i64 %i.ai, 1
  %.not.i88 = icmp eq i64 %i.aj, 0
  br i1 %.not.i88, label %bb.f, label %lean_inc.exit89

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.ag, align 4, !tbaa !12 ; 3 uses
  %i.ak = icmp sgt i32 %.val.i.i, 0
  br i1 %i.ak, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.al = add nuw i32 %.val.i.i, 1
  store i32 %i.al, ptr %i.ag, align 4, !tbaa !12
  br label %lean_inc.exit89

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit89, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = atomicrmw add ptr %i.ag, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit89

lean_inc.exit89:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i103, label %bb.j, label %lean_nat_eq.exit

bb.j:                                             ; preds = %lean_inc.exit89
  %i.an = load i32, ptr %i.x, align 8, !tbaa !12  ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !12
  br label %lean_nat_eq.exit

bb.l:                                             ; preds = %bb.j
  %.not.i95 = icmp eq i32 %i.an, 0
  br i1 %.not.i95, label %lean_nat_eq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #5
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.d, %bb.m, %bb.l, %bb.k, %lean_inc.exit89
  %.087 = phi ptr [ %i.x, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit89 ] ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 8
  %.val102 = load i64, ptr %i.aq, align 8, !tbaa !15
  %.mask = and i64 %.val102, 9223372036854775807
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %bb.q, label %9

9:                                                ; preds = %lean_nat_eq.exit
  %10 = icmp eq i8 %1, 0
  %l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___closed__3_value.l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___closed__4_value = select i1 %10, ptr @l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___closed__3_value, ptr @l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___closed__4_value ; 3 uses
  %.val.i.i105 = load i32, ptr %l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___closed__3_value.l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___closed__4_value, align 8, !tbaa !12 ; 2 uses
  %11 = icmp sgt i32 %.val.i.i105, 0
  br i1 %11, label %lean_inc_ref.exit107, label %12, !prof !13

12:                                               ; preds = %9
  %.not.i.i106 = icmp eq i32 %.val.i.i105, 0
  br i1 %.not.i.i106, label %lean_inc_ref.exit107, label %13

13:                                               ; preds = %12
  %14 = atomicrmw add ptr %l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___closed__3_value.l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___closed__4_value, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit107

lean_inc_ref.exit107:                             ; preds = %9, %12, %13
  %i.ar = tail call ptr @lean_string_append(ptr noundef nonnull %l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___closed__3_value.l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___closed__4_value, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___closed__2_value) #5
  %i.as = tail call ptr @l_Lean_Meta_Grind_ppExprArray(ptr noundef nonnull @l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___closed__1_value, ptr noundef %i.ar, ptr noundef nonnull %i.ag, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppAsserted_x3f___redArg___closed__4_value, i8 noundef zeroext %2) #5
  tail call void @lean_inc_heartbeat() #5
  %i.at = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 6 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.n, label %lean_alloc_ctor.exit

bb.n:                                             ; preds = %lean_inc_ref.exit107
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit107
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 1, ptr %i.at, align 4, !tbaa !12
  store i32 16842768, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %i.aw, align 8, !tbaa !10
  br i1 %i.ah, label %lean_dec.exit.sink.split, label %bb.o

bb.o:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_inc_heartbeat() #5
  %i.ax = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.p, label %lean_dec.exit.sink.split.sink.split

bb.p:                                             ; preds = %bb.o
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

bb.q:                                             ; preds = %lean_nat_eq.exit
  %i.az = load i32, ptr %i.ag, align 8, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.ag, align 8, !tbaa !12
  br label %lean_dec.exit92

bb.s:                                             ; preds = %bb.q
  %.not.i96 = icmp eq i32 %i.az, 0
  br i1 %.not.i96, label %lean_dec.exit92, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ag) #5
  br label %lean_dec.exit92

lean_dec.exit92:                                  ; preds = %bb.t, %bb.s, %bb.r
  br i1 %i.ah, label %lean_dec.exit.sink.split, label %bb.u

bb.u:                                             ; preds = %lean_dec.exit92
  tail call void @lean_inc_heartbeat() #5
  %i.bc = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.v, label %lean_dec.exit.sink.split.sink.split

bb.v:                                             ; preds = %bb.u
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

bb.w:                                             ; preds = %lean_obj_tag.exit
  br i1 %i.ah, label %lean_dec.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = ptrtoint ptr %i.ag to i64
  %i.bf = and i64 %i.be, 1
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %bb.y, label %lean_inc.exit

bb.y:                                             ; preds = %bb.x
  %.val.i.i110 = load i32, ptr %i.ag, align 4, !tbaa !12 ; 3 uses
  %i.bg = icmp sgt i32 %.val.i.i110, 0
  br i1 %i.bg, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.bh = add nuw i32 %.val.i.i110, 1
  store i32 %i.bh, ptr %i.ag, align 4, !tbaa !12
  br label %lean_inc.exit

bb.aa:                                            ; preds = %bb.y
  %.not.i.i111 = icmp eq i32 %.val.i.i110, 0
  br i1 %.not.i.i111, label %lean_inc.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bi = atomicrmw add ptr %i.ag, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  br i1 %.not.i103, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %lean_inc.exit
  %i.bj = load i32, ptr %i.x, align 8, !tbaa !12  ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.ad, label %bb.ae, !prof !13

bb.ad:                                            ; preds = %bb.ac
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %i.x, align 8, !tbaa !12
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %.not.i98 = icmp eq i32 %i.bj, 0
  br i1 %.not.i98, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #5
  br label %bb.ag

bb.ag:                                            ; preds = %lean_inc.exit, %bb.ad, %bb.ae, %bb.af
  tail call void @lean_inc_heartbeat() #5
  %i.bm = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.ah, label %lean_dec.exit.sink.split.sink.split

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_dec.exit.sink.split.sink.split:              ; preds = %bb.ag, %bb.u, %bb.o
  %.sink128 = phi ptr [ %i.ax, %bb.o ], [ %i.bc, %bb.u ], [ %i.bm, %bb.ag ] ; 3 uses
  %.sink125 = phi i32 [ 65552, %bb.o ], [ 65552, %bb.u ], [ 16842768, %bb.ag ]
  %.sink.ph = phi ptr [ %i.at, %bb.o ], [ inttoptr (i64 1 to ptr), %bb.u ], [ %i.ag, %bb.ag ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sink128, i64 4
  store i32 1, ptr %.sink128, align 4, !tbaa !12
  store i32 %.sink125, ptr %i.bo, align 4
  br label %lean_dec.exit.sink.split

lean_dec.exit.sink.split:                         ; preds = %lean_dec.exit.sink.split.sink.split, %lean_dec.exit92, %lean_alloc_ctor.exit
  %.sink = phi ptr [ inttoptr (i64 1 to ptr), %lean_dec.exit92 ], [ %i.at, %lean_alloc_ctor.exit ], [ %.sink.ph, %lean_dec.exit.sink.split.sink.split ]
  %.5.ph = phi ptr [ %.087, %lean_dec.exit92 ], [ %.087, %lean_alloc_ctor.exit ], [ %.sink128, %lean_dec.exit.sink.split.sink.split ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.5.ph, i64 8
  store ptr %.sink, ptr %i.bp, align 8, !tbaa !10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit.sink.split, %bb.w
  %.5 = phi ptr [ %i.x, %bb.w ], [ %.5.ph, %lean_dec.exit.sink.split ]
  ret ptr %.5
}

declare ptr @lean_string_append(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %2 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  %i.g = tail call ptr @l___private_Lean_Elab_Tactic_Grind_ShowState_0__Lean_Elab_Tactic_Grind_ppProps_x3f___redArg(ptr noundef %0, i8 noundef zeroext %i.c, i8 noundef zeroext %i.f, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %i.h = ptrtoint ptr %8 to i64
  %i.i = and i64 %i.h, 1
  %.not.i19 = icmp eq i64 %i.i, 0
  br i1 %.not.i19, label %bb.b, label %lean_dec.exit20

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %8, align 4, !tbaa !12     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %8, align 4, !tbaa !12
  br label %lean_dec.exit20

bb.d:                                             ; preds = %bb.b
  %.not.i21 = icmp eq i32 %i.j, 0
  br i1 %.not.i21, label %lean_dec.exit20, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #5
  br label %lean_dec.exit20

lean_dec.exit20:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = load i32, ptr %7, align 4, !tbaa !12     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit20
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %7, align 4, !tbaa !12
  br label %lean_dec_ref.exit31

bb.g:                                             ; preds = %lean_dec.exit20
  %.not.i30 = icmp eq i32 %i.m, 0
  br i1 %.not.i30, label %lean_dec_ref.exit31, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #5
  br label %lean_dec_ref.exit31

lean_dec_ref.exit31:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.p = ptrtoint ptr %6 to i64
  %i.q = and i64 %i.p, 1
  %.not.i17 = icmp eq i64 %i.q, 0
  br i1 %.not.i17, label %bb.i, label %lean_dec.exit18

bb.i:                                             ; preds = %lean_dec_ref.exit31
  %i.r = load i32, ptr %6, align 4, !tbaa !12     ; 3 uses
end_hunk_0
