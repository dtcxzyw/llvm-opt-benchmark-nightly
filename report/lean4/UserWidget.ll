Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/UserWidget?download=true
inline.NumInlined: 3076
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_init_l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__2___closed__5_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2_:bb.a
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 56) #11 ; 10 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !10
  store i32 393272, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.0.i, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.0.i, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.0.i, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.0.i, ptr %i.m, align 8, !tbaa !13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal noalias nonnull ptr @_init_l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__2___closed__6_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2_() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__2___closed__1_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2__once seq_cst, align 4, !tbaa !19
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__2___closed__1_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2_, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__2___closed__1_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2_, ptr noundef nonnull @l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__2___closed__1_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2__once, ptr noundef nonnull @_init_l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__2___closed__1_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2_) #11
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 5 uses
  tail call void @lean_inc_heartbeat() #11
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 48) #11 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !10
  store i32 327728, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.0.i, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.0.i, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.0.i, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__2_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2____boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nofree readnone captures(none) %11) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %2 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  %i.g = ptrtoint ptr %8 to i64
  %i.h = lshr i64 %i.g, 1
  %i.i = trunc i64 %i.h to i8
  %i.j = tail call ptr @l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__2_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2_(i8 noundef zeroext %i.c, ptr noundef %1, i8 noundef zeroext %i.f, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i8 noundef zeroext %i.i, ptr noundef %9, ptr noundef %10)
  %i.k = ptrtoint ptr %10 to i64
  %i.l = and i64 %i.k, 1
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %10, align 4, !tbaa !10    ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %10, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i16 = icmp eq i32 %i.m, 0
  br i1 %.not.i16, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #11
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.p = load i32, ptr %9, align 4, !tbaa !10     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_dec.exit
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit18

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i17 = icmp eq i32 %i.p, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #11
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.f, %bb.g, %bb.h
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__3_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2_(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = and i64 %i.a, 1
  %.not.i98 = icmp eq i64 %i.b, 0
  br i1 %.not.i98, label %bb.b, label %lean_inc_n.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %2, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 2
  store i32 %i.d, ptr %2, align 4, !tbaa !10
  br label %lean_inc_n.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_n.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %2, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.f = tail call ptr @lean_alloc_object(i64 noundef 32) #11 ; 7 uses
  store i32 1, ptr %i.f, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 65535
  %i.j = or disjoint i32 %i.i, -184549376
  store i32 %i.j, ptr %i.g, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__0_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2____boxed, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i16 5, ptr %i.l, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  store i16 1, ptr %i.m, align 2, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %2, ptr %i.n, align 8, !tbaa !13
  %i.o = zext i8 %1 to i64
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = or disjoint i64 %i.p, 1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = tail call ptr @lean_alloc_object(i64 noundef 72) #11 ; 12 uses
  store i32 1, ptr %i.s, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 65535
  %i.w = or disjoint i32 %i.v, -184549376
  store i32 %i.w, ptr %i.t, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__2_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2____boxed, ptr %i.x, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i16 12, ptr %i.y, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  store i16 6, ptr %i.z, align 2, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.aa, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %0, ptr %i.ab, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr @l___private_Lean_Widget_UserWidget_0__Lean_Widget_evalModuleUnsafe___closed__0_value, ptr %i.ad, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr @l___private_Lean_Widget_UserWidget_0__Lean_Widget_evalModuleUnsafe___closed__1_value, ptr %i.ae, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %2, ptr %i.af, align 8, !tbaa !13
  %i.ag = icmp eq i8 %1, 0
  %l_Lean_logAt___at___00Lean_log___at___00Lean_logWarning___at___00__private_Lean_Widget_UserWidget_0__Lean_Widget_initFn_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2__spec__3_spec__4_spec__5___closed__0_value.l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__3___closed__3_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2__value = select i1 %i.ag, ptr @l_Lean_logAt___at___00Lean_log___at___00Lean_logWarning___at___00__private_Lean_Widget_UserWidget_0__Lean_Widget_initFn_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2__spec__3_spec__4_spec__5___closed__0_value, ptr @l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__3___closed__3_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2__value
  %3 = tail call ptr @lean_string_append(ptr noundef nonnull %l_Lean_logAt___at___00Lean_log___at___00Lean_logWarning___at___00__private_Lean_Widget_UserWidget_0__Lean_Widget_initFn_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2__spec__3_spec__4_spec__5___closed__0_value.l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__3___closed__3_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__3___closed__2_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2__value) #11
  tail call void @lean_inc_heartbeat() #11
  %4 = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #11 ; 8 uses
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb.f, label %lean_alloc_ctor.exit

bb.f:                                             ; preds = %lean_inc_n.exit
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_n.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 1, ptr %i.ai, align 8, !tbaa !15
  store i32 1, ptr %4, align 8, !tbaa !10
  store i32 196648, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @l___private_Lean_Widget_UserWidget_0__Lean_Widget_initFn___lam__3___closed__1_00___x40_Lean_Widget_UserWidget_3570059497____hygCtx___hyg_2__value, ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %3, ptr %i.al, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #11
  %i.am = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #11 ; 15 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.g, label %lean_inc_ref.exit104

bb.g:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_inc_ref.exit104:                             ; preds = %lean_alloc_ctor.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 196640, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %4, ptr %i.ap, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.s, ptr %i.aq, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.f, ptr %i.ar, align 8, !tbaa !13
  store i32 2, ptr %i.am, align 8, !tbaa !10
  %i.as = tail call ptr @l_Lean_registerBuiltinAttribute(ptr noundef nonnull %i.am) #11 ; 13 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = and i64 %i.at, 1
  %.not.i105 = icmp eq i64 %i.au, 0               ; 3 uses
  br i1 %.not.i105, label %bb.i, label %bb.h

bb.h:                                             ; preds = %lean_inc_ref.exit104
  %i.av = lshr i64 %i.at, 1
  %i.aw = trunc i64 %i.av to i32
  br label %lean_obj_tag.exit

bb.i:                                             ; preds = %lean_inc_ref.exit104
  %i.ax = getelementptr i8, ptr %i.as, i64 4
  %.val.i = load i32, ptr %i.ax, align 4
  %i.ay = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.aw, %bb.h ], [ %i.ay, %bb.i ]
  %i.az = icmp eq i32 %.0.i, 0
  br i1 %i.az, label %bb.j, label %bb.w

bb.j:                                             ; preds = %lean_obj_tag.exit
  %.val97 = load i32, ptr %i.as, align 4, !tbaa !10 ; 4 uses
  %i.ba = icmp eq i32 %.val97, 1
  br i1 %i.ba, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 4 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = and i64 %i.bd, 1
  %.not.i89 = icmp eq i64 %i.be, 0
  br i1 %.not.i89, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !10 ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %i.bc, align 4, !tbaa !10
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %.not.i91 = icmp eq i32 %i.bf, 0
  br i1 %.not.i91, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bc) #11
  br label %bb.u

bb.p:                                             ; preds = %bb.j
  br i1 %.not.i105, label %bb.q, label %lean_dec.exit90

bb.q:                                             ; preds = %bb.p
  %i.bi = icmp sgt i32 %.val97, 1
  br i1 %i.bi, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.bj = add nsw i32 %.val97, -1
  store i32 %i.bj, ptr %i.as, align 4, !tbaa !10
  br label %lean_dec.exit90

bb.s:                                             ; preds = %bb.q
  %.not.i92 = icmp eq i32 %.val97, 0
  br i1 %.not.i92, label %lean_dec.exit90, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #11
  br label %lean_dec.exit90

bb.u:                                             ; preds = %bb.k, %bb.m, %bb.n, %bb.o
  store ptr %i.am, ptr %i.bb, align 8, !tbaa !13
  br label %lean_dec.exit

lean_dec.exit90:                                  ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  tail call void @lean_inc_heartbeat() #11
  %i.bk = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #11 ; 5 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.v, label %lean_alloc_ctor.exit106

bb.v:                                             ; preds = %lean_dec.exit90
  tail call void @lean_internal_panic_out_of_memory() #12
  unreachable

lean_alloc_ctor.exit106:                          ; preds = %lean_dec.exit90
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 1, ptr %i.bk, align 4, !tbaa !10
  store i32 65552, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.am, ptr %i.bn, align 8, !tbaa !13
  br label %lean_dec.exit

bb.w:                                             ; preds = %lean_obj_tag.exit
  %.val.i107 = load i32, ptr %i.am, align 8, !tbaa !10 ; 4 uses
  %i.bo = icmp eq i32 %.val.i107, 1
  br i1 %i.bo, label %.preheader.i.preheader, label %bb.aj

.preheader.i.preheader:                           ; preds = %bb.w
  %i.bp = load ptr, ptr %i.ap, align 8, !tbaa !13 ; 4 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = and i64 %i.bq, 1
  %.not.i.i108 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i108, label %bb.x, label %lean_dec.exit.i

bb.x:                                             ; preds = %.preheader.i.preheader
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !10 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.y, label %bb.z, !prof !11

bb.y:                                             ; preds = %bb.x
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.bp, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.z:                                             ; preds = %bb.x
  %.not.i7.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bp) #11
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.aa, %bb.z, %bb.y, %.preheader.i.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !13 ; 4 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = and i64 %i.bx, 1
  %.not.i.i108.1 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i108.1, label %bb.ab, label %lean_dec.exit.i.1

bb.ab:                                            ; preds = %lean_dec.exit.i
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !10 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.ae, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %.not.i7.i.1 = icmp eq i32 %i.bz, 0
  br i1 %.not.i7.i.1, label %lean_dec.exit.i.1, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bw) #11
  br label %lean_dec.exit.i.1

bb.ae:                                            ; preds = %bb.ab
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !10
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.ae, %bb.ad, %bb.ac, %lean_dec.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !13 ; 4 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = and i64 %i.ce, 1
  %.not.i.i108.2 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i108.2, label %bb.af, label %lean_dec.exit.i.2

bb.af:                                            ; preds = %lean_dec.exit.i.1
  %i.cg = load i32, ptr %i.cd, align 4, !tbaa !10 ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.ai, label %bb.ag, !prof !11

bb.ag:                                            ; preds = %bb.af
  %.not.i7.i.2 = icmp eq i32 %i.cg, 0
  br i1 %.not.i7.i.2, label %lean_dec.exit.i.2, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #11
  br label %lean_dec.exit.i.2

bb.ai:                                            ; preds = %bb.af
  %i.ci = add nsw i32 %i.cg, -1
  store i32 %i.ci, ptr %i.cd, align 4, !tbaa !10
  br label %lean_dec.exit.i.2

lean_dec.exit.i.2:                                ; preds = %bb.ai, %bb.ah, %bb.ag, %lean_dec.exit.i.1
  tail call void @lean_free_object(ptr noundef nonnull %i.am) #11
  br label %lean_dec_ref_known.exit

bb.aj:                                            ; preds = %bb.w
  %i.cj = icmp sgt i32 %.val.i107, 1
  br i1 %i.cj, label %bb.ak, label %bb.al, !prof !11

bb.ak:                                            ; preds = %bb.aj
  %i.ck = add nsw i32 %.val.i107, -1
  store i32 %i.ck, ptr %i.am, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.al:                                            ; preds = %bb.aj
  %.not.i8.i = icmp eq i32 %.val.i107, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
end_hunk_0
