Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/EMatchTheorem?download=true
inline.NumInlined: 10319
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumUnrolled: 60
begin_hunk_0_@l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_getPatternFn_x3f:bb.a
  br label %lean_dec_ref.exit186

bb.dj:                                            ; preds = %bb.dh
  %.not.i185 = icmp eq i32 %i.el, 0
  br i1 %.not.i185, label %lean_dec_ref.exit186, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ar) #8
  br label %lean_dec_ref.exit186

lean_dec_ref.exit186:                             ; preds = %bb.di, %bb.dj, %bb.dk
  tail call void @lean_inc_heartbeat() #8
  %i.eo = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.dl, label %lean_alloc_ctor.exit231

bb.dl:                                            ; preds = %lean_dec_ref.exit186
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit231:                          ; preds = %lean_dec_ref.exit186
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 1, ptr %i.eo, align 4, !tbaa !12
  store i32 65552, ptr %i.eq, align 4
  br label %lean_dec_ref.exit188

lean_dec.exit153:                                 ; preds = %bb.cc, %bb.ce, %bb.cf, %bb.cg
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ar, i32 noundef 2)
  br label %lean_dec_ref.exit188.thread

lean_dec_ref.exit188:                             ; preds = %lean_dec.exit157, %lean_dec_ref_known.exit, %lean_alloc_ctor.exit197, %bb.bz, %lean_alloc_ctor.exit210, %lean_alloc_ctor.exit218, %lean_alloc_ctor.exit230, %lean_alloc_ctor.exit231, %lean_alloc_ctor.exit198, %.thread, %lean_alloc_ctor.exit200, %lean_alloc_ctor.exit195
  %.sink292 = phi ptr [ %i.da, %bb.bz ], [ %.0148, %lean_dec_ref_known.exit ], [ %.0149, %lean_alloc_ctor.exit197 ], [ %i.cn, %lean_alloc_ctor.exit210 ], [ %i.dv, %lean_alloc_ctor.exit218 ], [ %i.ei, %lean_alloc_ctor.exit230 ], [ %i.eo, %lean_alloc_ctor.exit231 ], [ %i.g, %lean_alloc_ctor.exit195 ], [ %i.ah, %lean_alloc_ctor.exit198 ], [ %i.d, %.thread ], [ %i.ao, %lean_alloc_ctor.exit200 ], [ %.0148, %lean_dec.exit157 ] ; 2 uses
  %.sink = phi ptr [ %i.cy, %bb.bz ], [ inttoptr (i64 1 to ptr), %lean_dec_ref_known.exit ], [ %i.ad, %lean_alloc_ctor.exit197 ], [ inttoptr (i64 1 to ptr), %lean_alloc_ctor.exit210 ], [ %i.dr, %lean_alloc_ctor.exit218 ], [ inttoptr (i64 1 to ptr), %lean_alloc_ctor.exit230 ], [ inttoptr (i64 1 to ptr), %lean_alloc_ctor.exit231 ], [ inttoptr (i64 1 to ptr), %lean_alloc_ctor.exit195 ], [ %i.ad, %lean_alloc_ctor.exit198 ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.ak, %lean_alloc_ctor.exit200 ], [ %i.cy, %lean_dec.exit157 ]
  %i.er = getelementptr inbounds nuw i8, ptr %.sink292, i64 8
  store ptr %.sink, ptr %i.er, align 8, !tbaa !14
  ret ptr %.sink292
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_getPatternFn_x3f___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef readnone captures(none) %10) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %2 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  %i.g = ptrtoint ptr %3 to i64
  %i.h = lshr i64 %i.g, 1
  %i.i = trunc i64 %i.h to i8
  %i.j = tail call ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_getPatternFn_x3f(ptr noundef %0, i8 noundef zeroext %i.c, i8 noundef zeroext %i.f, i8 noundef zeroext %i.i, ptr noundef %4, ptr poison, ptr poison, ptr poison, ptr poison, ptr noundef %9)
  %i.k = ptrtoint ptr %9 to i64
  %i.l = and i64 %i.k, 1
  %.not.i22 = icmp eq i64 %i.l, 0
  br i1 %.not.i22, label %bb.b, label %lean_dec.exit23

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %9, align 4, !tbaa !12     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %9, align 4, !tbaa !12
  br label %lean_dec.exit23

bb.d:                                             ; preds = %bb.b
  %.not.i24 = icmp eq i32 %i.m, 0
  br i1 %.not.i24, label %lean_dec.exit23, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #8
  br label %lean_dec.exit23

lean_dec.exit23:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.p = load i32, ptr %8, align 4, !tbaa !12     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_dec.exit23
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %8, align 4, !tbaa !12
  br label %lean_dec_ref.exit36

bb.g:                                             ; preds = %lean_dec.exit23
  %.not.i35 = icmp eq i32 %i.p, 0
  br i1 %.not.i35, label %lean_dec_ref.exit36, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #8
  br label %lean_dec_ref.exit36

lean_dec_ref.exit36:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.s = ptrtoint ptr %7 to i64
  %i.t = and i64 %i.s, 1
  %.not.i20 = icmp eq i64 %i.t, 0
  br i1 %.not.i20, label %bb.i, label %lean_dec.exit21

bb.i:                                             ; preds = %lean_dec_ref.exit36
  %i.u = load i32, ptr %7, align 4, !tbaa !12     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %7, align 4, !tbaa !12
  br label %lean_dec.exit21

bb.k:                                             ; preds = %bb.i
  %.not.i25 = icmp eq i32 %i.u, 0
  br i1 %.not.i25, label %lean_dec.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #8
  br label %lean_dec.exit21

lean_dec.exit21:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit36
  %i.x = load i32, ptr %6, align 4, !tbaa !12     ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %lean_dec.exit21
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %6, align 4, !tbaa !12
  br label %lean_dec_ref.exit34

bb.n:                                             ; preds = %lean_dec.exit21
  %.not.i33 = icmp eq i32 %i.x, 0
  br i1 %.not.i33, label %lean_dec_ref.exit34, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #8
  br label %lean_dec_ref.exit34

lean_dec_ref.exit34:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.aa = ptrtoint ptr %5 to i64
  %i.ab = and i64 %i.aa, 1
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.p, label %lean_dec.exit

bb.p:                                             ; preds = %lean_dec_ref.exit34
  %i.ac = load i32, ptr %5, align 4, !tbaa !12    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %5, align 4, !tbaa !12
  br label %lean_dec.exit

bb.r:                                             ; preds = %bb.p
  %.not.i27 = icmp eq i32 %i.ac, 0
  br i1 %.not.i27, label %lean_dec.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit34
  %i.af = load i32, ptr %4, align 4, !tbaa !12    ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %lean_dec.exit
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %4, align 4, !tbaa !12
  br label %lean_dec_ref.exit32

bb.u:                                             ; preds = %lean_dec.exit
  %.not.i31 = icmp eq i32 %i.af, 0
  br i1 %.not.i31, label %lean_dec_ref.exit32, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #8
  br label %lean_dec_ref.exit32

lean_dec_ref.exit32:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.ai = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.w, label %bb.x, !prof !15

bb.w:                                             ; preds = %lean_dec_ref.exit32
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit30

bb.x:                                             ; preds = %lean_dec_ref.exit32
  %.not.i29 = icmp eq i32 %i.ai, 0
  br i1 %.not.i29, label %lean_dec_ref.exit30, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit30

lean_dec_ref.exit30:                              ; preds = %bb.w, %bb.x, %bb.y
  ret ptr %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
  switch i8 %0, label %3 [
    i8 0, label %bb.a
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %bb.a

3:                                                ; preds = %1
  br label %bb.a

bb.a:                                             ; preds = %1, %3, %2
  %.0 = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorIdx.exit

2:                                                ; preds = %bb.a
  br label %l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorIdx.exit

l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorIdx.exit: ; preds = %bb.a, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
  switch i8 %0, label %3 [
    i8 0, label %l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorIdx.exit
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorIdx.exit

3:                                                ; preds = %1
  br label %l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorIdx.exit

l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorIdx.exit: ; preds = %1, %2, %3
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_toCtorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_toCtorIdx.exit

2:                                                ; preds = %bb.a
  br label %l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_toCtorIdx.exit

l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_toCtorIdx.exit: ; preds = %bb.a, %1, %2
  %.0.i.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
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
define noundef ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !12
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
define noundef ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #8
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_NormalizePattern_ParentKind_regular_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
end_hunk_0
begin_hunk_1_@l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_save:lean_nat_lt.exit
  %i.rc = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !14 ; 5 uses
  %.val556 = load i32, ptr %i.oh, align 8, !tbaa !12
  %i.re = icmp eq i32 %.val556, 1
  br i1 %i.re, label %lean_dec.exit446.thread716, label %bb.kn

bb.kn:                                            ; preds = %lean_dec.exit424
  %i.rf = ptrtoint ptr %i.rd to i64
  %i.rg = and i64 %i.rf, 1
  %.not.i518 = icmp eq i64 %i.rg, 0
  br i1 %.not.i518, label %bb.ko, label %lean_inc.exit

bb.ko:                                            ; preds = %bb.kn
  %.val.i.i705 = load i32, ptr %i.rd, align 4, !tbaa !12 ; 3 uses
  %i.rh = icmp sgt i32 %.val.i.i705, 0
  br i1 %i.rh, label %bb.kp, label %bb.kq, !prof !15

bb.kp:                                            ; preds = %bb.ko
  %i.ri = add nuw i32 %.val.i.i705, 1
  store i32 %i.ri, ptr %i.rd, align 4, !tbaa !12
  br label %lean_inc.exit

bb.kq:                                            ; preds = %bb.ko
  %.not.i.i706 = icmp eq i32 %.val.i.i705, 0
  br i1 %.not.i.i706, label %lean_inc.exit, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.rj = atomicrmw sub ptr %i.rd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.kr, %bb.kq, %bb.kp, %bb.kn
  br i1 %.not.i668, label %bb.ks, label %bb.kw

bb.ks:                                            ; preds = %lean_inc.exit
  %i.rk = load i32, ptr %i.oh, align 8, !tbaa !12 ; 3 uses
  %i.rl = icmp sgt i32 %i.rk, 1
  br i1 %i.rl, label %bb.kt, label %bb.ku, !prof !15

bb.kt:                                            ; preds = %bb.ks
  %i.rm = add nsw i32 %i.rk, -1
  store i32 %i.rm, ptr %i.oh, align 8, !tbaa !12
  br label %bb.kw

bb.ku:                                            ; preds = %bb.ks
  %.not.i486 = icmp eq i32 %i.rk, 0
  br i1 %.not.i486, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oh) #8
  br label %bb.kw

bb.kw:                                            ; preds = %lean_inc.exit, %bb.kt, %bb.ku, %bb.kv
  tail call void @lean_inc_heartbeat() #8
  %i.rn = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %bb.kx, label %lean_alloc_ctor.exit708

bb.kx:                                            ; preds = %bb.kw
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit708:                          ; preds = %bb.kw
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  store i32 1, ptr %i.rn, align 4, !tbaa !12
  store i32 16842768, ptr %i.rp, align 4
  br label %lean_dec.exit446.thread716.sink.split

lean_inc.exit526:                                 ; preds = %lean_dec.exit426, %bb.kc, %bb.kd, %bb.ke, %lean_dec.exit428, %bb.jl, %bb.jm, %bb.jn
  %.0386 = phi ptr [ @l_Lean_Meta_Grind_EMatchTheoremKind_toAttribute___closed__2_value, %lean_dec.exit428 ], [ @l_Lean_addTrace___at___00__private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_detectGeneralizedPatterns_x3f_spec__2_spec__3_spec__5___closed__1_value, %lean_dec.exit426 ], [ @l_Lean_addTrace___at___00__private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_detectGeneralizedPatterns_x3f_spec__2_spec__3_spec__5___closed__1_value, %bb.kc ], [ @l_Lean_Meta_Grind_EMatchTheoremKind_toAttribute___closed__2_value, %bb.jn ], [ @l_Lean_Meta_Grind_EMatchTheoremKind_toAttribute___closed__2_value, %bb.jm ], [ @l_Lean_Meta_Grind_EMatchTheoremKind_toAttribute___closed__2_value, %bb.jl ], [ @l_Lean_addTrace___at___00__private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_detectGeneralizedPatterns_x3f_spec__2_spec__3_spec__5___closed__1_value, %bb.ke ], [ @l_Lean_addTrace___at___00__private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_detectGeneralizedPatterns_x3f_spec__2_spec__3_spec__5___closed__1_value, %bb.kd ] ; 3 uses
  %.1397 = phi ptr [ @l_List_toString___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_save_spec__2___closed__1_value, %lean_dec.exit428 ], [ @l_Lean_addTrace___at___00__private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_detectGeneralizedPatterns_x3f_spec__2_spec__3_spec__5___closed__1_value, %lean_dec.exit426 ], [ @l_Lean_addTrace___at___00__private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_detectGeneralizedPatterns_x3f_spec__2_spec__3_spec__5___closed__1_value, %bb.kc ], [ @l_List_toString___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_save_spec__2___closed__1_value, %bb.jn ], [ @l_List_toString___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_save_spec__2___closed__1_value, %bb.jm ], [ @l_List_toString___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_save_spec__2___closed__1_value, %bb.jl ], [ @l_Lean_addTrace___at___00__private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_detectGeneralizedPatterns_x3f_spec__2_spec__3_spec__5___closed__1_value, %bb.ke ], [ @l_Lean_addTrace___at___00__private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_detectGeneralizedPatterns_x3f_spec__2_spec__3_spec__5___closed__1_value, %bb.kd ] ; 4 uses
  %.1395 = phi ptr [ %i.po, %lean_dec.exit428 ], [ %i.qg, %lean_dec.exit426 ], [ %i.qg, %bb.kc ], [ %i.po, %bb.jn ], [ %i.po, %bb.jm ], [ %i.po, %bb.jl ], [ %i.qg, %bb.ke ], [ %i.qg, %bb.kd ] ; 19 uses
  %.val.i.i662 = load i32, ptr %.0386, align 8, !tbaa !12 ; 2 uses
  %i.rq = icmp sgt i32 %.val.i.i662, 0
  br i1 %i.rq, label %lean_inc_ref.exit664, label %bb.hz, !prof !15

lean_dec.exit446.thread716.sink.split:            ; preds = %lean_alloc_ctor.exit575, %bb.u, %bb.ch, %bb.eb, %bb.fz, %lean_alloc_ctor.exit661, %lean_alloc_ctor.exit708
  %.sink823 = phi ptr [ %i.rn, %lean_alloc_ctor.exit708 ], [ %i.no, %lean_alloc_ctor.exit661 ], [ %i.kv, %bb.fz ], [ %i.id, %bb.eb ], [ %i.fq, %bb.ch ], [ %i.ba, %bb.u ], [ %i.df, %lean_alloc_ctor.exit575 ] ; 2 uses
  %.sink821 = phi ptr [ %i.rd, %lean_alloc_ctor.exit708 ], [ %i.ne, %lean_alloc_ctor.exit661 ], [ %i.kl, %bb.fz ], [ %i.ht, %bb.eb ], [ %i.fg, %bb.ch ], [ %i.av, %bb.u ], [ %i.da, %lean_alloc_ctor.exit575 ]
  %i.rr = getelementptr inbounds nuw i8, ptr %.sink823, i64 8
  store ptr %.sink821, ptr %i.rr, align 8, !tbaa !14
  br label %lean_dec.exit446.thread716

lean_dec.exit446.thread716:                       ; preds = %lean_dec.exit446.thread716.sink.split, %lean_dec.exit424, %lean_dec.exit432, %lean_dec_ref.exit509, %lean_dec.exit438, %lean_dec_ref.exit503
  %.14 = phi ptr [ %i.oh, %lean_dec.exit424 ], [ %i.do, %lean_dec_ref.exit503 ], [ %i.do, %lean_dec_ref.exit509 ], [ %i.if, %lean_dec.exit438 ], [ %i.if, %lean_dec.exit432 ], [ %.sink823, %lean_dec.exit446.thread716.sink.split ]
  ret ptr %.14
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_save___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %3 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  %i.g = tail call ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_save(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %i.c, i8 noundef zeroext %i.f, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %i.h = ptrtoint ptr %8 to i64
  %i.i = and i64 %i.h, 1
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.b, label %lean_dec.exit16

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %8, align 4, !tbaa !12     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %8, align 4, !tbaa !12
  br label %lean_dec.exit16

bb.d:                                             ; preds = %bb.b
  %.not.i17 = icmp eq i32 %i.j, 0
  br i1 %.not.i17, label %lean_dec.exit16, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #8
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = load i32, ptr %7, align 4, !tbaa !12     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_dec.exit16
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %7, align 4, !tbaa !12
  br label %lean_dec_ref.exit23

bb.g:                                             ; preds = %lean_dec.exit16
  %.not.i22 = icmp eq i32 %i.m, 0
  br i1 %.not.i22, label %lean_dec_ref.exit23, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #8
  br label %lean_dec_ref.exit23

lean_dec_ref.exit23:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.p = ptrtoint ptr %6 to i64
  %i.q = and i64 %i.p, 1
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit23
  %i.r = load i32, ptr %6, align 4, !tbaa !12     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %6, align 4, !tbaa !12
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i18 = icmp eq i32 %i.r, 0
  br i1 %.not.i18, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit23
  %i.u = load i32, ptr %5, align 4, !tbaa !12     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %lean_dec.exit
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %5, align 4, !tbaa !12
  br label %lean_dec_ref.exit21

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i20 = icmp eq i32 %i.u, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #8
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_initFn_00___x40_Lean_Meta_Tactic_Grind_EMatchTheorem_1561772625____hygCtx___hyg_4_() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Option_register___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_initFn_00___x40_Lean_Meta_Tactic_Grind_EMatchTheorem_3641107727____hygCtx___hyg_4__spec__0(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_initFn___closed__2_00___x40_Lean_Meta_Tactic_Grind_EMatchTheorem_1561772625____hygCtx___hyg_4__value, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_initFn___closed__4_00___x40_Lean_Meta_Tactic_Grind_EMatchTheorem_1561772625____hygCtx___hyg_4__value, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_initFn___closed__5_00___x40_Lean_Meta_Tactic_Grind_EMatchTheorem_1561772625____hygCtx___hyg_4__value)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_initFn_00___x40_Lean_Meta_Tactic_Grind_EMatchTheorem_1561772625____hygCtx___hyg_4____boxed(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Option_register___at___00__private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_initFn_00___x40_Lean_Meta_Tactic_Grind_EMatchTheorem_3641107727____hygCtx___hyg_4__spec__0(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_initFn___closed__2_00___x40_Lean_Meta_Tactic_Grind_EMatchTheorem_1561772625____hygCtx___hyg_4__value, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_initFn___closed__4_00___x40_Lean_Meta_Tactic_Grind_EMatchTheorem_1561772625____hygCtx___hyg_4__value, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_EMatchTheorem_0__Lean_Meta_Grind_initFn___closed__5_00___x40_Lean_Meta_Tactic_Grind_EMatchTheorem_1561772625____hygCtx___hyg_4__value)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Meta_Grind_MinIndexableMode_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
  switch i8 %0, label %3 [
    i8 0, label %bb.a
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %bb.a

3:                                                ; preds = %1
  br label %bb.a

bb.a:                                             ; preds = %1, %3, %2
  %.0 = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Meta_Grind_MinIndexableMode_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_Meta_Grind_MinIndexableMode_ctorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_Meta_Grind_MinIndexableMode_ctorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_Meta_Grind_MinIndexableMode_ctorIdx.exit

l_Lean_Meta_Grind_MinIndexableMode_ctorIdx.exit:  ; preds = %bb.a, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Meta_Grind_MinIndexableMode_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
  switch i8 %0, label %3 [
    i8 0, label %l_Lean_Meta_Grind_MinIndexableMode_ctorIdx.exit
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %l_Lean_Meta_Grind_MinIndexableMode_ctorIdx.exit

3:                                                ; preds = %1
  br label %l_Lean_Meta_Grind_MinIndexableMode_ctorIdx.exit

l_Lean_Meta_Grind_MinIndexableMode_ctorIdx.exit:  ; preds = %1, %2, %3
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Meta_Grind_MinIndexableMode_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_Meta_Grind_MinIndexableMode_toCtorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_Meta_Grind_MinIndexableMode_toCtorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_Meta_Grind_MinIndexableMode_toCtorIdx.exit

l_Lean_Meta_Grind_MinIndexableMode_toCtorIdx.exit: ; preds = %bb.a, %1, %2
  %.0.i.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Meta_Grind_MinIndexableMode_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
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
define noundef ptr @l_Lean_Meta_Grind_MinIndexableMode_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Meta_Grind_MinIndexableMode_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !12
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
define noundef ptr @l_Lean_Meta_Grind_MinIndexableMode_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #8
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Meta_Grind_MinIndexableMode_yes_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
end_hunk_1
