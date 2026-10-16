Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ConstantFold?download=true
inline.NumInlined: 9764
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@l_Lean_Compiler_LCNF_Simp_ConstantFold_getBoolLit___redArg:bb.a
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit291:                          ; preds = %bb.ey
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store i32 1, ptr %i.hk, align 4, !tbaa !12
  store i32 65552, ptr %i.hm, align 4
  br label %lean_dec.exit.sink.split

lean_dec.exit.sink.split:                         ; preds = %lean_del_object.exit, %lean_alloc_ctor.exit291, %lean_alloc_ctor.exit290, %bb.ct, %bb.cy, %lean_alloc_ctor.exit
  %.sink363 = phi ptr [ %i.gw, %lean_alloc_ctor.exit ], [ %i.hk, %lean_alloc_ctor.exit291 ], [ %i.fe, %bb.cy ], [ %i.ey, %bb.ct ], [ %i.hh, %lean_alloc_ctor.exit290 ], [ %.0139, %lean_del_object.exit ] ; 2 uses
  %.sink = phi ptr [ inttoptr (i64 1 to ptr), %lean_alloc_ctor.exit ], [ inttoptr (i64 1 to ptr), %lean_alloc_ctor.exit291 ], [ %.sink361, %bb.cy ], [ %.sink360, %bb.ct ], [ %i.j, %lean_alloc_ctor.exit290 ], [ inttoptr (i64 1 to ptr), %lean_del_object.exit ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.sink363, i64 8
  store ptr %.sink, ptr %i.hn, align 8, !tbaa !10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit.sink.split, %bb.em
  %.14 = phi ptr [ %i.a, %bb.em ], [ %.sink363, %lean_dec.exit.sink.split ]
  ret ptr %.14
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_getBoolLit___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_getBoolLit___redArg(ptr noundef %0, ptr noundef %1)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i5 = icmp eq i64 %i.c, 0
  br i1 %.not.i5, label %bb.b, label %lean_dec.exit6

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit6

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = ptrtoint ptr %0 to i64
  %i.h = and i64 %i.g, 1
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.f, label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit6
  %i.i = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i32 %i.i, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %lean_dec.exit6
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_getBoolLit(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_getBoolLit___redArg(ptr noundef %0, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_getBoolLit___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_getBoolLit___redArg(ptr noundef %0, ptr noundef %2)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i13 = icmp eq i64 %i.c, 0
  br i1 %.not.i13, label %bb.b, label %lean_dec.exit14

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit14

bb.d:                                             ; preds = %bb.b
  %.not.i15 = icmp eq i32 %i.d, 0
  br i1 %.not.i15, label %lean_dec.exit14, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #5
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit14
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit23

bb.g:                                             ; preds = %lean_dec.exit14
  %.not.i22 = icmp eq i32 %i.g, 0
  br i1 %.not.i22, label %lean_dec_ref.exit23, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec_ref.exit23

lean_dec_ref.exit23:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i11 = icmp eq i64 %i.k, 0
  br i1 %.not.i11, label %bb.i, label %lean_dec.exit12

bb.i:                                             ; preds = %lean_dec_ref.exit23
  %i.l = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit12

bb.k:                                             ; preds = %bb.i
  %.not.i16 = icmp eq i32 %i.l, 0
  br i1 %.not.i16, label %lean_dec.exit12, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit23
  %i.o = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec.exit12
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit21

bb.n:                                             ; preds = %lean_dec.exit12
  %.not.i20 = icmp eq i32 %i.o, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %0 to i64
  %i.s = and i64 %i.r, 1
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.p, label %lean_dec.exit

bb.p:                                             ; preds = %lean_dec_ref.exit21
  %i.t = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.r:                                             ; preds = %bb.p
  %.not.i18 = icmp eq i32 %i.t, 0
  br i1 %.not.i18, label %lean_dec.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit21
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = icmp eq i8 %0, 0
  %l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg___closed__1_value.l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg___closed__2_value = select i1 %2, ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg___closed__1_value, ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg___closed__2_value ; 3 uses
  %.val.i.i = load i32, ptr %l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg___closed__1_value.l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg___closed__2_value, align 8, !tbaa !12 ; 2 uses
  %3 = icmp sgt i32 %.val.i.i, 0
  br i1 %3, label %lean_inc.exit, label %4, !prof !13

4:                                                ; preds = %1
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %5

5:                                                ; preds = %4
  %6 = atomicrmw sub ptr %l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg___closed__1_value.l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg___closed__2_value, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %1, %5, %4
  tail call void @lean_inc_heartbeat() #5
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #5 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.a, label %lean_alloc_ctor.exit

bb.a:                                             ; preds = %lean_inc.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !12
  store i32 50528288, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg___closed__1_value.l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg___closed__2_value, ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg___closed__0_value, ptr %i.f, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #5
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %lean_alloc_ctor.exit17

bb.b:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit17:                           ; preds = %lean_alloc_ctor.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !12
  store i32 65552, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.a, ptr %i.j, align 8, !tbaa !10
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg___boxed(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %2 = lshr i64 %i.a, 1
  %3 = trunc i64 %2 to i8
  %i.b = tail call ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg(i8 noundef zeroext %3)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit(i8 noundef zeroext %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = tail call ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg(i8 noundef zeroext %0)
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  %7 = ptrtoint ptr %0 to i64
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %8 to i8
  %10 = tail call noalias nonnull ptr @l_Lean_Compiler_LCNF_Simp_ConstantFold_mkBoolLit___redArg(i8 noundef zeroext %9)
  %i.a = ptrtoint ptr %5 to i64
  %i.b = and i64 %i.a, 1
  %.not.i14 = icmp eq i64 %i.b, 0
  br i1 %.not.i14, label %bb.b, label %lean_dec.exit15

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %5, align 4, !tbaa !12     ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %5, align 4, !tbaa !12
  br label %lean_dec.exit15

bb.d:                                             ; preds = %bb.b
  %.not.i16 = icmp eq i32 %i.c, 0
  br i1 %.not.i16, label %lean_dec.exit15, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #5
  br label %lean_dec.exit15

lean_dec.exit15:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.f = load i32, ptr %4, align 4, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit15
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !12
  br label %lean_dec_ref.exit24

bb.g:                                             ; preds = %lean_dec.exit15
  %.not.i23 = icmp eq i32 %i.f, 0
  br i1 %.not.i23, label %lean_dec_ref.exit24, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #5
  br label %lean_dec_ref.exit24

lean_dec_ref.exit24:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.i = ptrtoint ptr %3 to i64
  %i.j = and i64 %i.i, 1
  %.not.i12 = icmp eq i64 %i.j, 0
  br i1 %.not.i12, label %bb.i, label %lean_dec.exit13

bb.i:                                             ; preds = %lean_dec_ref.exit24
  %i.k = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit13

bb.k:                                             ; preds = %bb.i
  %.not.i17 = icmp eq i32 %i.k, 0
  br i1 %.not.i17, label %lean_dec.exit13, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec.exit13

lean_dec.exit13:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit24
  %i.n = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec.exit13
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit22

bb.n:                                             ; preds = %lean_dec.exit13
  %.not.i21 = icmp eq i32 %i.n, 0
  br i1 %.not.i21, label %lean_dec_ref.exit22, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec_ref.exit22

lean_dec_ref.exit22:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.q = ptrtoint ptr %1 to i64
  %i.r = and i64 %i.q, 1
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.p, label %lean_dec.exit

bb.p:                                             ; preds = %lean_dec_ref.exit22
  %i.s = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit

bb.r:                                             ; preds = %bb.p
  %.not.i19 = icmp eq i32 %i.s, 0
  br i1 %.not.i19, label %lean_dec.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit22
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Compiler_LCNF_Simp_ConstantFold_0__Lean_Compiler_LCNF_Simp_ConstantFold_getLitAux___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Compiler_LCNF_findLetValue_x3f___redArg(i8 noundef zeroext 0, ptr noundef %0, ptr noundef %3) #5 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i311 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i311, label %bb.c, label %bb.b

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
  %.0.i312 = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i312, 0
  br i1 %i.h, label %bb.d, label %bb.ga

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 13 uses
  %.val309 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val309, 1                  ; 2 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 2 uses
  %.pre380 = and i64 %.pre, 1                     ; 2 uses
  br i1 %i.k, label %lean_dec.exit254, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i208 = icmp eq i64 %.pre380, 0
  br i1 %.not.i208, label %bb.f, label %lean_inc.exit209

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i, 0
  br i1 %i.l, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = add nuw i32 %.val.i.i, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit209

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit209, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit209

lean_inc.exit209:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i311, label %bb.j, label %lean_dec.exit254

bb.j:                                             ; preds = %lean_inc.exit209
  %i.o = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit254

bb.l:                                             ; preds = %bb.j
  %.not.i255 = icmp eq i32 %i.o, 0
  br i1 %.not.i255, label %lean_dec.exit254, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #5
  br label %lean_dec.exit254

lean_dec.exit254:                                 ; preds = %bb.d, %lean_inc.exit209, %bb.k, %bb.l, %bb.m
  %.0174 = phi ptr [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %lean_inc.exit209 ], [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 3 uses
  %.not.i313 = icmp eq i64 %.pre380, 0
  br i1 %.not.i313, label %lean_obj_tag.exit316, label %lean_obj_tag.exit316.thread

lean_obj_tag.exit316:                             ; preds = %lean_dec.exit254
  %i.r = getelementptr i8, ptr %i.j, i64 4
  %.val.i315 = load i32, ptr %i.r, align 4
  %.mask454 = and i32 %.val.i315, -16777216
  %i.s = icmp eq i32 %.mask454, 16777216
  br i1 %i.s, label %bb.n, label %bb.fq

lean_obj_tag.exit316.thread:                      ; preds = %lean_dec.exit254
  %i.t = and i64 %.pre, 8589934590
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %bb.n, label %lean_dec.exit216

bb.n:                                             ; preds = %lean_obj_tag.exit316.thread, %lean_obj_tag.exit316
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10   ; 16 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = and i64 %i.x, 1
  %.not.i206 = icmp eq i64 %i.y, 0                ; 2 uses
  br i1 %.not.i206, label %bb.o, label %lean_inc.exit207

bb.o:                                             ; preds = %bb.n
  %.val.i.i317 = load i32, ptr %i.w, align 4, !tbaa !12 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i317, 0
  br i1 %i.z, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.aa = add nuw i32 %.val.i.i317, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !12
  br label %lean_inc.exit207

bb.q:                                             ; preds = %bb.o
  %.not.i.i318 = icmp eq i32 %.val.i.i317, 0
  br i1 %.not.i.i318, label %lean_inc.exit207, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = atomicrmw sub ptr %i.w, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit207

lean_inc.exit207:                                 ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %.val.i320 = load i32, ptr %i.j, align 8, !tbaa !12 ; 4 uses
  %i.ac = icmp eq i32 %.val.i320, 1
  br i1 %i.ac, label %.preheader.i, label %bb.w

.preheader.i:                                     ; preds = %lean_inc.exit207
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !10  ; 4 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, 1
  %.not.i.i321 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i321, label %bb.s, label %lean_dec.exit.i

bb.s:                                             ; preds = %.preheader.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !12 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %i.ad, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.u:                                             ; preds = %bb.s
  %.not.i7.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ad) #5
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.v, %bb.u, %bb.t, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.j) #5
  br label %lean_dec_ref_known.exit

bb.w:                                             ; preds = %lean_inc.exit207
  %i.aj = icmp sgt i32 %.val.i320, 1
  br i1 %i.aj, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.ak = add nsw i32 %.val.i320, -1
  store i32 %i.ak, ptr %i.j, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.y:                                             ; preds = %bb.w
  %.not.i8.i = icmp eq i32 %.val.i320, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #5
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.x, %bb.y, %bb.z
  br i1 %.not.i206, label %lean_obj_tag.exit325, label %lean_obj_tag.exit325.thread

lean_obj_tag.exit325:                             ; preds = %lean_dec_ref_known.exit
  %i.al = getelementptr i8, ptr %i.w, i64 4
  %.val.i324 = load i32, ptr %i.al, align 4
  %.mask455 = and i32 %.val.i324, -16777216
  %i.am = icmp eq i32 %.mask455, 50331648
  br i1 %i.am, label %bb.aa, label %bb.fi

lean_obj_tag.exit325.thread:                      ; preds = %lean_dec_ref_known.exit
  %i.an = and i64 %i.x, 8589934590
  %i.ao = icmp eq i64 %i.an, 6
  br i1 %i.ao, label %bb.aa, label %lean_dec.exit220

bb.aa:                                            ; preds = %lean_obj_tag.exit325.thread, %lean_obj_tag.exit325
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !10 ; 14 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 1
  %.not.i204 = icmp eq i64 %i.as, 0               ; 4 uses
  br i1 %.not.i204, label %bb.ab, label %lean_inc.exit205

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i326 = load i32, ptr %i.aq, align 4, !tbaa !12 ; 3 uses
  %i.at = icmp sgt i32 %.val.i.i326, 0
  br i1 %i.at, label %bb.ac, label %bb.ad, !prof !13
end_hunk_0
