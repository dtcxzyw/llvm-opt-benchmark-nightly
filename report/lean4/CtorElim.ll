Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/CtorElim?download=true
inline.NumInlined: 2312
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels_spec__1___redArg:bb.a
  %i.cz = load i32, ptr %i.b, align 4, !tbaa !12  ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %bb.bu, label %bb.bv, !prof !13

bb.bu:                                            ; preds = %lean_dec.exit84
  %i.db = add nsw i32 %i.cz, -1
  store i32 %i.db, ptr %i.b, align 4, !tbaa !12
  br label %lean_dec_ref.exit109

bb.bv:                                            ; preds = %lean_dec.exit84
  %.not.i108 = icmp eq i32 %i.cz, 0
  br i1 %.not.i108, label %lean_dec_ref.exit109, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #5
  br label %lean_dec_ref.exit109

lean_dec_ref.exit109:                             ; preds = %bb.bu, %bb.bv, %bb.bw
  %i.dc = ptrtoint ptr %.067 to i64
  %i.dd = and i64 %i.dc, 1
  %.not.i82 = icmp eq i64 %i.dd, 0
  br i1 %.not.i82, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %lean_dec_ref.exit109
  %i.de = load i32, ptr %.067, align 4, !tbaa !12 ; 3 uses
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %bb.by, label %bb.bz, !prof !13

bb.by:                                            ; preds = %bb.bx
  %i.dg = add nsw i32 %i.de, -1
  store i32 %i.dg, ptr %.067, align 4, !tbaa !12
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bx
  %.not.i106 = icmp eq i32 %i.de, 0
  br i1 %.not.i106, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.067) #5
  br label %bb.cb

lean_dec.exit:                                    ; preds = %bb.bh, %lean_alloc_ctor.exit133
  %.063 = phi ptr [ %.072, %bb.bh ], [ %i.ck, %lean_alloc_ctor.exit133 ]
  %i.dh = tail call ptr @l_Lean_mkLevelMax_x27(ptr noundef %.067, ptr noundef %i.bk) #5
  br label %bb.b

bb.cb:                                            ; preds = %lean_alloc_ctor.exit, %bb.ca, %bb.bz, %bb.by, %lean_dec_ref.exit109
  %.2.ph = phi ptr [ %i.bb, %lean_dec_ref.exit109 ], [ %i.bb, %bb.by ], [ %i.bb, %bb.bz ], [ %i.bb, %bb.ca ], [ %i.ao, %lean_alloc_ctor.exit ]
  ret ptr %.2.ph
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc nonnull ptr @lean_alloc_ctor(i32 noundef range(i32 0, 9) %0, i32 noundef range(i32 1, 15) %1, i32 noundef range(i32 0, 9) %2) unnamed_addr #1 {
lean_usize_add_checked.exit:
  %i.a = shl nuw nsw i32 %1, 3
  %narrow = add nuw nsw i32 %i.a, 8
  %narrow6 = add nuw nsw i32 %narrow, %2          ; 2 uses
  %i.b = zext nneg i32 %narrow6 to i64            ; 2 uses
  %i.c = and i64 %i.b, 504
  %i.d = and i64 %i.b, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not.i.i, i64 0, i64 8
  %i.f = add nuw nsw i64 %i.e, %i.c               ; 3 uses
  tail call void @lean_inc_heartbeat() #5
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef %i.f) #5 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.a, label %lean_alloc_small_object.exit.i

bb.a:                                             ; preds = %lean_usize_add_checked.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_small_object.exit.i:                   ; preds = %lean_usize_add_checked.exit
  %i.i = trunc nuw nsw i64 %i.f to i32            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, -65536
  %i.m = or disjoint i32 %i.l, %i.i               ; 2 uses
  store i32 %i.m, ptr %i.j, align 4
  %i.n = icmp samesign ult i32 %narrow6, %i.i
  br i1 %i.n, label %bb.b, label %lean_alloc_ctor_memory.exit

bb.b:                                             ; preds = %lean_alloc_small_object.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  store i64 0, ptr %i.p, align 8, !tbaa !15
  %.pre = load i32, ptr %i.j, align 4
  br label %lean_alloc_ctor_memory.exit

lean_alloc_ctor_memory.exit:                      ; preds = %lean_alloc_small_object.exit.i, %bb.b
  %i.q = phi i32 [ %i.m, %lean_alloc_small_object.exit.i ], [ %.pre, %bb.b ]
  store i32 1, ptr %i.g, align 4, !tbaa !12
  %i.r = shl nuw nsw i32 %0, 24
  %i.s = and i32 %i.q, 65535
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = shl nuw nsw i32 %1, 16
  %i.v = or disjoint i32 %i.t, %i.u
  store i32 %i.v, ptr %i.j, align 4
  ret ptr %i.g
}

declare ptr @l_Lean_Meta_getLevel(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_mkLevelMax_x27(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels_spec__1___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels_spec__1___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %i.b = ptrtoint ptr %5 to i64
  %i.c = and i64 %i.b, 1
  %.not.i11 = icmp eq i64 %i.c, 0
  br i1 %.not.i11, label %bb.b, label %lean_dec.exit12

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %5, align 4, !tbaa !12
  br label %lean_dec.exit12

bb.d:                                             ; preds = %bb.b
  %.not.i13 = icmp eq i32 %i.d, 0
  br i1 %.not.i13, label %lean_dec.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #5
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %4, align 4, !tbaa !12     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit12
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %4, align 4, !tbaa !12
  br label %lean_dec_ref.exit19

bb.g:                                             ; preds = %lean_dec.exit12
  %.not.i18 = icmp eq i32 %i.g, 0
  br i1 %.not.i18, label %lean_dec_ref.exit19, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #5
  br label %lean_dec_ref.exit19

lean_dec_ref.exit19:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit19
  %i.l = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i14 = icmp eq i32 %i.l, 0
  br i1 %.not.i14, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit19
  %i.o = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit17

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i16 = icmp eq i32 %i.o, 0
  br i1 %.not.i16, label %lean_dec_ref.exit17, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec_ref.exit17

lean_dec_ref.exit17:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
lean_nat_lt.exit:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val75 = load i64, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %i.b = shl i64 %.val75, 1                       ; 2 uses
  %i.c = or disjoint i64 %i.b, 1
  %i.d = inttoptr i64 %i.c to ptr
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.a, label %5

bb.a:                                             ; preds = %lean_nat_lt.exit
  %i.e = load i32, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %0, align 8, !tbaa !12
  br label %lean_dec_ref.exit73

bb.c:                                             ; preds = %bb.a
  %.not.i72 = icmp eq i32 %i.e, 0
  br i1 %.not.i72, label %lean_dec_ref.exit73, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit73

lean_dec_ref.exit73:                              ; preds = %bb.b, %bb.c, %bb.d
  %i.h = load atomic i32, ptr @l___private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels___closed__3_once seq_cst, align 4, !tbaa !18
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec_ref.exit73
  %i.j = load ptr, ptr @l___private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.f:                                             ; preds = %lean_dec_ref.exit73
  %i.k = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels___closed__3, ptr noundef nonnull @l___private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels___closed__3_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels___closed__3) #5
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.e, %bb.f
  %.0.i76 = phi ptr [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  %i.l = tail call ptr @lean_panic_fn_borrowed(ptr noundef nonnull @l_panic___at___00__private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels_spec__0___closed__0_value, ptr noundef %.0.i76) #5
  %i.m = ptrtoint ptr %4 to i64
  %i.n = and i64 %i.m, 1
  %.not.i12.i = icmp eq i64 %i.n, 0
  br i1 %.not.i12.i, label %bb.g, label %lean_inc.exit13.i

bb.g:                                             ; preds = %lean_obj_once.exit
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.o = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.o, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.p = add nuw i32 %.val.i.i.i, 1
  store i32 %i.p, ptr %4, align 4, !tbaa !12
  br label %lean_inc.exit13.i

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc.exit13.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit13.i

lean_inc.exit13.i:                                ; preds = %bb.j, %bb.i, %bb.h, %lean_obj_once.exit
  %.val.i.i14.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i14.i, 0
  br i1 %i.r, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %lean_inc.exit13.i
  %i.s = add nuw i32 %.val.i.i14.i, 1
  store i32 %i.s, ptr %3, align 4, !tbaa !12
  br label %lean_inc_ref.exit16.i

bb.l:                                             ; preds = %lean_inc.exit13.i
  %.not.i.i15.i = icmp eq i32 %.val.i.i14.i, 0
  br i1 %.not.i.i15.i, label %lean_inc_ref.exit16.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit16.i

lean_inc_ref.exit16.i:                            ; preds = %bb.m, %bb.l, %bb.k
  %i.u = ptrtoint ptr %2 to i64
  %i.v = and i64 %i.u, 1
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %bb.n, label %lean_inc.exit.i

bb.n:                                             ; preds = %lean_inc_ref.exit16.i
  %.val.i.i17.i = load i32, ptr %2, align 4, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %.val.i.i17.i, 0
  br i1 %i.w, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.x = add nuw i32 %.val.i.i17.i, 1
  store i32 %i.x, ptr %2, align 4, !tbaa !12
  br label %lean_inc.exit.i

bb.p:                                             ; preds = %bb.n
  %.not.i.i18.i = icmp eq i32 %.val.i.i17.i, 0
  br i1 %.not.i.i18.i, label %lean_inc.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %lean_inc_ref.exit16.i
  %.val.i.i20.i = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i20.i, 0
  br i1 %i.z, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %lean_inc.exit.i
  %i.aa = add nuw i32 %.val.i.i20.i, 1
  store i32 %i.aa, ptr %1, align 4, !tbaa !12
  br label %l_panic___at___00__private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels_spec__0.exit

bb.s:                                             ; preds = %lean_inc.exit.i
  %.not.i.i21.i = icmp eq i32 %.val.i.i20.i, 0
  br i1 %.not.i.i21.i, label %l_panic___at___00__private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels_spec__0.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ab = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %l_panic___at___00__private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels_spec__0.exit

l_panic___at___00__private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels_spec__0.exit: ; preds = %bb.r, %bb.s, %bb.t
  %i.ac = tail call ptr @lean_apply_5(ptr noundef %i.l, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull inttoptr (i64 1 to ptr)) #5
  br label %lean_dec_ref.exit71

5:                                                ; preds = %lean_nat_lt.exit
  %6 = load ptr, ptr @l_Lean_instInhabitedExpr, align 8, !tbaa !10 ; 5 uses
  %.not97 = icmp eq i64 %.val75, 0
  br i1 %.not97, label %.thread.i, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  br label %lean_array_get_borrowed.exit

.thread.i:                                        ; preds = %5
  %10 = ptrtoint ptr %6 to i64
  %11 = and i64 %10, 1
  %.not.i.i77 = icmp eq i64 %11, 0
  br i1 %.not.i.i77, label %12, label %lean_inc.exit.i78

12:                                               ; preds = %.thread.i
  %.val.i.i.i79 = load i32, ptr %6, align 4, !tbaa !12 ; 3 uses
  %13 = icmp sgt i32 %.val.i.i.i79, 0
  br i1 %13, label %14, label %16, !prof !13

14:                                               ; preds = %12
  %15 = add nuw i32 %.val.i.i.i79, 1
  store i32 %15, ptr %6, align 4, !tbaa !12
  br label %lean_inc.exit.i78

16:                                               ; preds = %12
  %.not.i.i.i80 = icmp eq i32 %.val.i.i.i79, 0
  br i1 %.not.i.i.i80, label %lean_inc.exit.i78, label %17

17:                                               ; preds = %16
  %18 = atomicrmw sub ptr %6, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i78

lean_inc.exit.i78:                                ; preds = %17, %16, %14, %.thread.i
  %19 = tail call ptr @lean_array_get_panic(ptr noundef %6) #5
  br label %lean_array_get_borrowed.exit

lean_array_get_borrowed.exit:                     ; preds = %7, %lean_inc.exit.i78
  %.1.i = phi ptr [ %19, %lean_inc.exit.i78 ], [ %9, %7 ] ; 5 uses
  %i.ad = ptrtoint ptr %.1.i to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i62 = icmp eq i64 %i.ae, 0
  br i1 %.not.i62, label %bb.u, label %lean_inc.exit63

bb.u:                                             ; preds = %lean_array_get_borrowed.exit
  %.val.i.i = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i, 0
  br i1 %i.af, label %bb.v, label %bb.w, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.ag = add nuw i32 %.val.i.i, 1
  store i32 %i.ag, ptr %.1.i, align 4, !tbaa !12
  br label %lean_inc.exit63

bb.w:                                             ; preds = %bb.u
  %.not.i.i81 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i81, label %lean_inc.exit63, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ah = atomicrmw sub ptr %.1.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit63

lean_inc.exit63:                                  ; preds = %bb.x, %bb.w, %bb.v, %lean_array_get_borrowed.exit
  %i.ai = tail call ptr @l_Lean_Meta_getLevel(ptr noundef %.1.i, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 ; 10 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = and i64 %i.aj, 1
  %.not.i82 = icmp eq i64 %i.ak, 0
  br i1 %.not.i82, label %bb.z, label %bb.y

bb.y:                                             ; preds = %lean_inc.exit63
  %i.al = lshr i64 %i.aj, 1
  %i.am = trunc i64 %i.al to i32
  br label %lean_obj_tag.exit

bb.z:                                             ; preds = %lean_inc.exit63
  %i.an = getelementptr i8, ptr %i.ai, i64 4
  %.val.i84 = load i32, ptr %i.an, align 4
  %i.ao = lshr i32 %.val.i84, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.y, %bb.z
  %.0.i83 = phi i32 [ %i.am, %bb.y ], [ %i.ao, %bb.z ]
  %i.ap = icmp eq i32 %.0.i83, 0
  br i1 %i.ap, label %bb.aa, label %bb.bg

bb.aa:                                            ; preds = %lean_obj_tag.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !10 ; 5 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, 1
  %.not.i60 = icmp eq i64 %i.at, 0
  br i1 %.not.i60, label %bb.ab, label %lean_inc.exit61

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i85 = load i32, ptr %i.ar, align 4, !tbaa !12 ; 3 uses
  %i.au = icmp sgt i32 %.val.i.i85, 0
  br i1 %i.au, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.av = add nuw i32 %.val.i.i85, 1
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !12
  br label %lean_inc.exit61

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i86 = icmp eq i32 %.val.i.i85, 0
  br i1 %.not.i.i86, label %lean_inc.exit61, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aw = atomicrmw sub ptr %i.ar, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit61

lean_inc.exit61:                                  ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %.val.i88 = load i32, ptr %i.ai, align 8, !tbaa !12 ; 4 uses
  %i.ax = icmp eq i32 %.val.i88, 1
  br i1 %i.ax, label %.preheader.i.preheader, label %bb.aj

.preheader.i.preheader:                           ; preds = %lean_inc.exit61
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !10 ; 4 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = and i64 %i.az, 1
  %.not.i.i89 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i89, label %bb.af, label %lean_dec.exit.i

bb.af:                                            ; preds = %.preheader.i.preheader
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !12 ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.ag, label %bb.ah, !prof !13

bb.ag:                                            ; preds = %bb.af
  %i.bd = add nsw i32 %i.bb, -1
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.ah:                                            ; preds = %bb.af
  %.not.i7.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #5
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.ai, %bb.ah, %bb.ag, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.ai) #5
  br label %lean_dec_ref_known.exit

bb.aj:                                            ; preds = %lean_inc.exit61
  %i.be = icmp sgt i32 %.val.i88, 1
  br i1 %i.be, label %bb.ak, label %bb.al, !prof !13

bb.ak:                                            ; preds = %bb.aj
  %i.bf = add nsw i32 %.val.i88, -1
  store i32 %i.bf, ptr %i.ai, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.al:                                            ; preds = %bb.aj
  %.not.i8.i = icmp eq i32 %.val.i88, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ai) #5
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.ak, %bb.al, %bb.am
  %i.bg = tail call ptr @l_Array_toSubarray___redArg(ptr noundef nonnull %0, ptr noundef nonnull inttoptr (i64 3 to ptr), ptr noundef nonnull %i.d) #5
  %i.bh = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Constructions_CtorElim_0__Lean_maxLevels_spec__1___redArg(ptr noundef %i.bg, ptr noundef %i.ar, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 9 uses
  %i.bi = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bj = and i64 %i.bi, 1
  %.not.i90 = icmp eq i64 %i.bj, 0                ; 2 uses
  br i1 %.not.i90, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %lean_dec_ref_known.exit
  %i.bk = lshr i64 %i.bi, 1
  %i.bl = trunc i64 %i.bk to i32
  br label %lean_obj_tag.exit93

bb.ao:                                            ; preds = %lean_dec_ref_known.exit
  %i.bm = getelementptr i8, ptr %i.bh, i64 4
  %.val.i92 = load i32, ptr %i.bm, align 4
  %i.bn = lshr i32 %.val.i92, 24
  br label %lean_obj_tag.exit93

lean_obj_tag.exit93:                              ; preds = %bb.an, %bb.ao
  %.0.i91 = phi i32 [ %i.bl, %bb.an ], [ %i.bn, %bb.ao ]
  %i.bo = icmp eq i32 %.0.i91, 0
  br i1 %i.bo, label %bb.ap, label %lean_dec_ref.exit71

bb.ap:                                            ; preds = %lean_obj_tag.exit93
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !10 ; 8 uses
  %.val = load i32, ptr %i.bh, align 8, !tbaa !12
  %i.br = icmp eq i32 %.val, 1                    ; 2 uses
  %.pre = ptrtoint ptr %i.bq to i64
  %.pre98 = and i64 %.pre, 1                      ; 2 uses
  br i1 %i.br, label %lean_dec.exit66, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not.i = icmp eq i64 %.pre98, 0
  br i1 %.not.i, label %bb.ar, label %lean_inc.exit

bb.ar:                                            ; preds = %bb.aq
  %.val.i.i94 = load i32, ptr %i.bq, align 4, !tbaa !12 ; 3 uses
  %i.bs = icmp sgt i32 %.val.i.i94, 0
  br i1 %i.bs, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.bt = add nuw i32 %.val.i.i94, 1
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !12
  br label %lean_inc.exit

bb.at:                                            ; preds = %bb.ar
  %.not.i.i95 = icmp eq i32 %.val.i.i94, 0
  br i1 %.not.i.i95, label %lean_inc.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bu = atomicrmw sub ptr %i.bq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.au, %bb.at, %bb.as, %bb.aq
  br i1 %.not.i90, label %bb.av, label %lean_dec.exit66

bb.av:                                            ; preds = %lean_inc.exit
  %i.bv = load i32, ptr %i.bh, align 8, !tbaa !12 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %i.bh, align 8, !tbaa !12
  br label %lean_dec.exit66

bb.ax:                                            ; preds = %bb.av
  %.not.i67 = icmp eq i32 %i.bv, 0
  br i1 %.not.i67, label %lean_dec.exit66, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bh) #5
  br label %lean_dec.exit66

lean_dec.exit66:                                  ; preds = %bb.ap, %lean_inc.exit, %bb.aw, %bb.ax, %bb.ay
  %.059 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ay ], [ inttoptr (i64 1 to ptr), %lean_inc.exit ], [ inttoptr (i64 1 to ptr), %bb.aw ], [ inttoptr (i64 1 to ptr), %bb.ax ], [ %i.bh, %bb.ap ] ; 2 uses
  %i.by = tail call ptr @l_Lean_Level_normalize(ptr noundef %i.bq) #5
  %.not.i64 = icmp eq i64 %.pre98, 0
  br i1 %.not.i64, label %bb.az, label %lean_dec.exit

bb.az:                                            ; preds = %lean_dec.exit66
  %i.bz = load i32, ptr %i.bq, align 4, !tbaa !12 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.ba, label %bb.bb, !prof !13

bb.ba:                                            ; preds = %bb.az
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.bq, align 4, !tbaa !12
  br label %lean_dec.exit

bb.bb:                                            ; preds = %bb.az
  %.not.i68 = icmp eq i32 %i.bz, 0
  br i1 %.not.i68, label %lean_dec.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.bc, %bb.bb, %bb.ba, %lean_dec.exit66
  %i.cc = tail call ptr @l___private_Lean_Meta_Constructions_CtorElim_0__Lean_reassocMax(ptr noundef %i.by) ; 2 uses
end_hunk_0
