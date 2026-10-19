Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/PropagatorAttr?download=true
inline.NumInlined: 1379
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@l_Lean_withoutExporting___at___00__private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin_spec__1___redArg:bb.a
  br label %lean_inc.exit19

lean_inc.exit19:                                  ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.val.i.i20 = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.g = icmp sgt i32 %.val.i.i20, 0
  br i1 %i.g, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %lean_inc.exit19
  %i.h = add nuw i32 %.val.i.i20, 1
  store i32 %i.h, ptr %4, align 4, !tbaa !12
  br label %lean_inc_ref.exit22

bb.h:                                             ; preds = %lean_inc.exit19
  %.not.i.i21 = icmp eq i32 %.val.i.i20, 0
  br i1 %.not.i.i21, label %lean_inc_ref.exit22, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit22

lean_inc_ref.exit22:                              ; preds = %bb.g, %bb.h, %bb.i
  %i.j = ptrtoint ptr %3 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.j, label %lean_inc.exit

bb.j:                                             ; preds = %lean_inc_ref.exit22
  %.val.i.i23 = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i23, 0
  br i1 %i.l, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.m = add nuw i32 %.val.i.i23, 1
  store i32 %i.m, ptr %3, align 4, !tbaa !12
  br label %lean_inc.exit

bb.l:                                             ; preds = %bb.j
  %.not.i.i24 = icmp eq i32 %.val.i.i23, 0
  br i1 %.not.i.i24, label %lean_inc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_inc_ref.exit22
  %.val.i.i26 = load i32, ptr %2, align 4, !tbaa !12 ; 3 uses
  %i.o = icmp sgt i32 %.val.i.i26, 0
  br i1 %i.o, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %lean_inc.exit
  %i.p = add nuw i32 %.val.i.i26, 1
  store i32 %i.p, ptr %2, align 4, !tbaa !12
  br label %lean_inc_ref.exit28

bb.o:                                             ; preds = %lean_inc.exit
  %.not.i.i27 = icmp eq i32 %.val.i.i26, 0
  br i1 %.not.i.i27, label %lean_inc_ref.exit28, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.q = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit28

lean_inc_ref.exit28:                              ; preds = %bb.n, %bb.o, %bb.p
  %i.r = tail call ptr @lean_apply_5(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull inttoptr (i64 1 to ptr)) #6
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  %i.s = tail call ptr @l_Lean_withExporting___at___00Lean_withoutExporting___at___00__private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin_spec__1_spec__3___redArg(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %lean_inc_ref.exit28
  %.0 = phi ptr [ %i.r, %lean_inc_ref.exit28 ], [ %i.s, %bb.q ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_withoutExporting___at___00__private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin_spec__1___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l_Lean_withoutExporting___at___00__private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin_spec__1___redArg(ptr noundef %0, i8 noundef zeroext %i.c, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %i.e = ptrtoint ptr %5 to i64
  %i.f = and i64 %i.e, 1
  %.not.i11 = icmp eq i64 %i.f, 0
  br i1 %.not.i11, label %bb.b, label %lean_dec.exit12

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %5, align 4, !tbaa !12     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %5, align 4, !tbaa !12
  br label %lean_dec.exit12

bb.d:                                             ; preds = %bb.b
  %.not.i13 = icmp eq i32 %i.g, 0
  br i1 %.not.i13, label %lean_dec.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #6
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.j = load i32, ptr %4, align 4, !tbaa !12     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit12
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %4, align 4, !tbaa !12
  br label %lean_dec_ref.exit19

bb.g:                                             ; preds = %lean_dec.exit12
  %.not.i18 = icmp eq i32 %i.j, 0
  br i1 %.not.i18, label %lean_dec_ref.exit19, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec_ref.exit19

lean_dec_ref.exit19:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.m = ptrtoint ptr %3 to i64
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit19
  %i.o = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i14 = icmp eq i32 %i.o, 0
  br i1 %.not.i14, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit19
  %i.r = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec.exit
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit17

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i16 = icmp eq i32 %i.r, 0
  br i1 %.not.i16, label %lean_dec_ref.exit17, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec_ref.exit17

lean_dec_ref.exit17:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %1, ptr noundef nonnull inttoptr (i64 3 to ptr)) #6
  %i.b = tail call ptr @l_Lean_Syntax_getKind(ptr noundef %i.a) #6 ; 5 uses
  %i.c = tail call zeroext i8 @lean_name_eq(ptr noundef %i.b, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__3_value) #6
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = and i64 %i.d, 1
  %.not.i65 = icmp eq i64 %i.e, 0
  br i1 %.not.i65, label %bb.b, label %lean_dec.exit66

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 4, !tbaa !12   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %i.b, align 4, !tbaa !12
  br label %lean_dec.exit66

bb.d:                                             ; preds = %bb.b
  %.not.i67 = icmp eq i32 %i.f, 0
  br i1 %.not.i67, label %lean_dec.exit66, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #6
  br label %lean_dec.exit66

lean_dec.exit66:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.i = icmp eq i8 %i.c, 0
  %l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__19_value.l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__21_value = select i1 %i.i, ptr @l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__19_value, ptr @l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__21_value ; 3 uses
  %i.j = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__11_once seq_cst, align 4, !tbaa !17
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit66
  %i.l = load ptr, ptr @l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__11, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.g:                                             ; preds = %lean_dec.exit66
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__11, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__11_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__11) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.l, %bb.f ], [ %i.m, %bb.g ]
  %i.n = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__15_once seq_cst, align 4, !tbaa !17
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_obj_once.exit
  %i.p = load ptr, ptr @l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__15, align 8, !tbaa !10
  br label %lean_obj_once.exit77

bb.i:                                             ; preds = %lean_obj_once.exit
  %i.q = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__15, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__15_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__15) #6
  br label %lean_obj_once.exit77

lean_obj_once.exit77:                             ; preds = %bb.h, %bb.i
  %.0.i76 = phi ptr [ %i.p, %bb.h ], [ %i.q, %bb.i ]
  %4 = tail call ptr @lean_st_mk_ref(ptr noundef %.0.i76) #6 ; 10 uses
  %5 = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %1, ptr noundef nonnull inttoptr (i64 5 to ptr)) #6
  %.val.i.i = load i32, ptr %l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__19_value.l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__21_value, align 8, !tbaa !12 ; 2 uses
  %6 = icmp sgt i32 %.val.i.i, 0
  br i1 %6, label %lean_inc.exit57, label %7, !prof !13

7:                                                ; preds = %lean_obj_once.exit77
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit57, label %8

8:                                                ; preds = %7
  %9 = atomicrmw sub ptr %l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__19_value.l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__21_value, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit57

lean_inc.exit57:                                  ; preds = %lean_obj_once.exit77, %8, %7
  %i.r = tail call ptr @lean_alloc_object(i64 noundef 56) #6 ; 10 uses
  store i32 1, ptr %i.r, align 4, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 65535
  %i.v = or disjoint i32 %i.u, -184549376
  store i32 %i.v, ptr %i.s, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___lam__0___boxed, ptr %i.w, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i16 9, ptr %i.x, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  store i16 4, ptr %i.y, align 2, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %5, ptr %i.z, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__19_value.l___private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin___closed__21_value, ptr %i.aa, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %0, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr inttoptr (i64 5 to ptr), ptr %i.ac, align 8, !tbaa !10
  %i.ad = tail call ptr @l_Lean_withExporting___at___00Lean_withoutExporting___at___00__private_Lean_Meta_Tactic_Grind_PropagatorAttr_0__Lean_Meta_Grind_addBuiltin_spec__1_spec__3___redArg(ptr noundef nonnull %i.r, i8 noundef zeroext 0, ptr noundef %.0.i, ptr noundef %4, ptr noundef %2, ptr noundef %3) ; 12 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = and i64 %i.ae, 1
  %.not.i79 = icmp eq i64 %i.af, 0                ; 2 uses
  br i1 %.not.i79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %lean_inc.exit57
  %i.ag = lshr i64 %i.ae, 1
  %i.ah = trunc i64 %i.ag to i32
  br label %lean_obj_tag.exit

bb.k:                                             ; preds = %lean_inc.exit57
  %i.ai = getelementptr i8, ptr %i.ad, i64 4
  %.val.i = load i32, ptr %i.ai, align 4
  %i.aj = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.j, %bb.k
  %.0.i80 = phi i32 [ %i.ah, %bb.j ], [ %i.aj, %bb.k ]
  %i.ak = icmp eq i32 %.0.i80, 0
  br i1 %i.ak, label %bb.l, label %bb.af

bb.l:                                             ; preds = %lean_obj_tag.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.ad, align 8, !tbaa !12
  %i.an = icmp eq i32 %.val, 1                    ; 2 uses
  br i1 %i.an, label %lean_dec.exit64, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = and i64 %i.ao, 1
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %bb.n, label %lean_inc.exit

bb.n:                                             ; preds = %bb.m
  %.val.i.i81 = load i32, ptr %i.am, align 4, !tbaa !12 ; 3 uses
  %i.aq = icmp sgt i32 %.val.i.i81, 0
  br i1 %i.aq, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.ar = add nuw i32 %.val.i.i81, 1
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !12
  br label %lean_inc.exit

bb.p:                                             ; preds = %bb.n
  %.not.i.i82 = icmp eq i32 %.val.i.i81, 0
  br i1 %.not.i.i82, label %lean_inc.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = atomicrmw sub ptr %i.am, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  br i1 %.not.i79, label %bb.r, label %lean_dec.exit64

bb.r:                                             ; preds = %lean_inc.exit
  %i.at = load i32, ptr %i.ad, align 8, !tbaa !12 ; 3 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.s, label %bb.t, !prof !13

bb.s:                                             ; preds = %bb.r
  %i.av = add nsw i32 %i.at, -1
  store i32 %i.av, ptr %i.ad, align 8, !tbaa !12
  br label %lean_dec.exit64

bb.t:                                             ; preds = %bb.r
  %.not.i68 = icmp eq i32 %i.at, 0
  br i1 %.not.i68, label %lean_dec.exit64, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ad) #6
  br label %lean_dec.exit64

lean_dec.exit64:                                  ; preds = %lean_inc.exit, %bb.s, %bb.t, %bb.u, %bb.l
  %.054 = phi ptr [ %i.ad, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.u ], [ inttoptr (i64 1 to ptr), %bb.t ], [ inttoptr (i64 1 to ptr), %bb.s ], [ inttoptr (i64 1 to ptr), %lean_inc.exit ]
  %i.aw = tail call ptr @lean_st_ref_get(ptr noundef %4) #6 ; 4 uses
  %i.ax = ptrtoint ptr %4 to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i61 = icmp eq i64 %i.ay, 0
  br i1 %.not.i61, label %bb.v, label %lean_dec.exit62

bb.v:                                             ; preds = %lean_dec.exit64
  %i.az = load i32, ptr %4, align 4, !tbaa !12    ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit62

bb.x:                                             ; preds = %bb.v
  %.not.i70 = icmp eq i32 %i.az, 0
  br i1 %.not.i70, label %lean_dec.exit62, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec.exit62

lean_dec.exit62:                                  ; preds = %bb.y, %bb.x, %bb.w, %lean_dec.exit64
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = and i64 %i.bc, 1
  %.not.i59 = icmp eq i64 %i.bd, 0
  br i1 %.not.i59, label %bb.z, label %lean_dec.exit60

bb.z:                                             ; preds = %lean_dec.exit62
  %i.be = load i32, ptr %i.aw, align 4, !tbaa !12 ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.aa, label %bb.ab, !prof !13

bb.aa:                                            ; preds = %bb.z
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %i.aw, align 4, !tbaa !12
  br label %lean_dec.exit60

bb.ab:                                            ; preds = %bb.z
  %.not.i72 = icmp eq i32 %i.be, 0
  br i1 %.not.i72, label %lean_dec.exit60, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aw) #6
  br label %lean_dec.exit60

lean_dec.exit60:                                  ; preds = %bb.ac, %bb.ab, %bb.aa, %lean_dec.exit62
  br i1 %i.an, label %lean_dec.exit, label %bb.ad

bb.ad:                                            ; preds = %lean_dec.exit60
  tail call void @lean_inc_heartbeat() #6
  %i.bh = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 1, ptr %i.bh, align 4, !tbaa !12
  store i32 65552, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.am, ptr %i.bk, align 8, !tbaa !10
  br label %lean_dec.exit

bb.af:                                            ; preds = %lean_obj_tag.exit
  %i.bl = ptrtoint ptr %4 to i64
  %i.bm = and i64 %i.bl, 1
  %.not.i58 = icmp eq i64 %i.bm, 0
  br i1 %.not.i58, label %bb.ag, label %lean_dec.exit

bb.ag:                                            ; preds = %bb.af
  %i.bn = load i32, ptr %4, align 4, !tbaa !12    ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit

bb.ai:                                            ; preds = %bb.ag
  %.not.i74 = icmp eq i32 %i.bn, 0
  br i1 %.not.i74, label %lean_dec.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.af, %bb.ah, %bb.ai, %bb.aj, %lean_alloc_ctor.exit, %lean_dec.exit60
  %.1 = phi ptr [ %.054, %lean_dec.exit60 ], [ %i.bh, %lean_alloc_ctor.exit ], [ %i.ad, %bb.aj ], [ %i.ad, %bb.ai ], [ %i.ad, %bb.ah ], [ %i.ad, %bb.af ]
  ret ptr %.1
}

declare ptr @l_Lean_Syntax_getArg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @l_Lean_Syntax_getKind(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
end_hunk_0
