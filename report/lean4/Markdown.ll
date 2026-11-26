Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Markdown?download=true
inline.NumInlined: 1404
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@l___private_Lean_DocString_Markdown_0__Lean_Doc_markerPrefixSpecial___boxed:bb.a
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  %i.s = zext i8 %i.h to i64
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = or disjoint i64 %i.t, 1
  %i.v = inttoptr i64 %i.u to ptr
  ret ptr %i.v
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg___lam__0(i32 noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_string_push(ptr noundef %3, i32 noundef %0) #8
  tail call void @lean_inc_heartbeat() #8
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !12
  store i32 131096, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.f, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %lean_alloc_ctor.exit8

bb.c:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit8:                            ; preds = %lean_alloc_ctor.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !12
  store i32 16842768, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.b, ptr %i.j, align 8, !tbaa !10
  ret ptr %i.g
}

declare ptr @lean_string_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg___lam__0___boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i32
  %i.d = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i6 = icmp eq i32 %i.e, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = tail call ptr @lean_string_push(ptr noundef %3, i32 noundef %i.c) #8
  tail call void @lean_inc_heartbeat() #8
  %i.i = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %lean_alloc_ctor.exit.i

bb.f:                                             ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit.i:                           ; preds = %lean_dec.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 1, ptr %i.i, align 4, !tbaa !12
  store i32 131096, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %1, ptr %i.m, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.n = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg___lam__0.exit

bb.g:                                             ; preds = %lean_alloc_ctor.exit.i
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg___lam__0.exit: ; preds = %lean_alloc_ctor.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 1, ptr %i.n, align 4, !tbaa !12
  store i32 16842768, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.i, ptr %i.q, align 8, !tbaa !10
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %lean_dec_ref_known.exit, %bb.a
  %.072 = phi ptr [ %1, %bb.a ], [ %.sink, %lean_dec_ref_known.exit ] ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.072, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.072, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10   ; 10 uses
  %.072.val = load i32, ptr %.072, align 8, !tbaa !12
  %i.g = icmp eq i32 %.072.val, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.f to i64                ; 3 uses
  %.pre202 = and i64 %.pre, 1                     ; 2 uses
  br i1 %i.g, label %lean_dec.exit94, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i88 = icmp eq i64 %.pre202, 0
  br i1 %.not.i88, label %bb.d, label %lean_inc.exit89

bb.d:                                             ; preds = %bb.c
  %.val.i.i = load i32, ptr %i.f, align 4, !tbaa !12 ; 3 uses
  %i.h = icmp sgt i32 %.val.i.i, 0
  br i1 %i.h, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i32 %.val.i.i, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !12
  br label %lean_inc.exit89

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit89, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = atomicrmw add ptr %i.f, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit89

lean_inc.exit89:                                  ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = and i64 %i.k, 1
  %.not.i86 = icmp eq i64 %i.l, 0
  br i1 %.not.i86, label %bb.h, label %lean_inc.exit87

bb.h:                                             ; preds = %lean_inc.exit89
  %.val.i.i105 = load i32, ptr %i.d, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i105, 0
  br i1 %i.m, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.n = add nuw i32 %.val.i.i105, 1
  store i32 %i.n, ptr %i.d, align 4, !tbaa !12
  br label %lean_inc.exit87

bb.j:                                             ; preds = %bb.h
  %.not.i.i106 = icmp eq i32 %.val.i.i105, 0
  br i1 %.not.i.i106, label %lean_inc.exit87, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = atomicrmw add ptr %i.d, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit87

lean_inc.exit87:                                  ; preds = %lean_inc.exit89, %bb.i, %bb.j, %bb.k
  %i.p = load i32, ptr %.072, align 8, !tbaa !12  ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %lean_inc.exit87
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %.072, align 8, !tbaa !12
  br label %lean_dec.exit94

bb.m:                                             ; preds = %lean_inc.exit87
  %.not.i95 = icmp eq i32 %i.p, 0
  br i1 %.not.i95, label %lean_dec.exit94, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.072) #8
  br label %lean_dec.exit94

l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg___lam__0.exit: ; preds = %lean_alloc_ctor.exit.i135, %lean_alloc_ctor.exit.i
  %.sink262 = phi ptr [ %i.cc, %lean_alloc_ctor.exit.i ], [ %i.cl, %lean_alloc_ctor.exit.i135 ] ; 6 uses
  %.sink = phi ptr [ %i.bx, %lean_alloc_ctor.exit.i ], [ %i.cg, %lean_alloc_ctor.exit.i135 ] ; 16 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sink262, i64 4
  store i32 1, ptr %.sink262, align 4, !tbaa !12
  store i32 16842768, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.sink262, i64 8
  store ptr %.sink, ptr %i.t, align 8, !tbaa !10
  %2 = ptrtoint ptr %.sink262 to i64
  %3 = and i64 %2, 8589934591
  %or.cond = icmp eq i64 %3, 1
  %i.u = ptrtoint ptr %.sink to i64
  %i.v = and i64 %i.u, 1
  %.not.i84 = icmp eq i64 %i.v, 0                 ; 2 uses
  br i1 %or.cond, label %4, label %lean_obj_tag.exit.thread

4:                                                ; preds = %l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg___lam__0.exit
  br i1 %.not.i84, label %5, label %lean_dec.exit.i

5:                                                ; preds = %4
  %.val.i.i110 = load i32, ptr %.sink, align 4, !tbaa !12 ; 3 uses
  %6 = icmp sgt i32 %.val.i.i110, 0
  br i1 %6, label %7, label %9, !prof !13

7:                                                ; preds = %5
  %8 = add nuw i32 %.val.i.i110, 1                ; 2 uses
  store i32 %8, ptr %.sink, align 4, !tbaa !12
  br label %12

9:                                                ; preds = %5
  %.not.i.i111 = icmp eq i32 %.val.i.i110, 0
  br i1 %.not.i.i111, label %lean_dec.exit.i, label %10

10:                                               ; preds = %9
  %11 = atomicrmw add ptr %.sink, i32 -1 monotonic, align 4 ; 0 uses
  %.pr223 = load i32, ptr %.sink, align 4, !tbaa !12
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i32 [ %8, %7 ], [ %.pr223, %10 ]      ; 3 uses
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %17, !prof !26

15:                                               ; preds = %12
  %16 = add nsw i32 %13, -1
  store i32 %16, ptr %.sink, align 4, !tbaa !12
  br label %lean_dec.exit.i

17:                                               ; preds = %12
  %.not.i7.i = icmp eq i32 %13, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %18

18:                                               ; preds = %17
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.sink) #8
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %9, %4, %18, %17, %15
  tail call void @lean_free_object(ptr noundef nonnull %.sink262) #8
  br label %bb.aw

lean_obj_tag.exit.thread:                         ; preds = %l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg___lam__0.exit
  br i1 %.not.i84, label %bb.o, label %lean_dec_ref_known.exit

bb.o:                                             ; preds = %lean_obj_tag.exit.thread
  %.val.i.i115 = load i32, ptr %.sink, align 4, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %.val.i.i115, 0
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.x = add nuw i32 %.val.i.i115, 1              ; 2 uses
  store i32 %i.x, ptr %.sink, align 4, !tbaa !12
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %.not.i.i116 = icmp eq i32 %.val.i.i115, 0
  br i1 %.not.i.i116, label %lean_dec_ref_known.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = atomicrmw add ptr %.sink, i32 -1 monotonic, align 4 ; 0 uses
  %.pr226 = load i32, ptr %.sink, align 4, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %i.z = phi i32 [ %i.x, %bb.p ], [ %.pr226, %bb.r ] ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.t, label %bb.u, !prof !26

bb.t:                                             ; preds = %bb.s
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %.sink, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.u:                                             ; preds = %bb.s
  %.not.i7.i126 = icmp eq i32 %i.z, 0
  br i1 %.not.i7.i126, label %lean_dec_ref_known.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.sink) #8
  br label %lean_dec_ref_known.exit

lean_dec.exit94:                                  ; preds = %bb.b, %bb.l, %bb.m, %bb.n
  %.077 = phi ptr [ inttoptr (i64 1 to ptr), %bb.n ], [ %.072, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.l ], [ inttoptr (i64 1 to ptr), %bb.m ] ; 3 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !15
  %i.ac = shl i64 %.val, 1
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 4 uses
  %.not.i100 = icmp eq i64 %.pre202, 0            ; 2 uses
  br i1 %.not.i100, label %lean_nat_eq.exit, label %.split, !prof !16

.split:                                           ; preds = %lean_dec.exit94
  %i.af = icmp eq ptr %i.f, %i.ae
  br i1 %i.af, label %bb.at, label %bb.w

lean_nat_eq.exit:                                 ; preds = %lean_dec.exit94
  %i.ag = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.f, ptr noundef nonnull %i.ae) #8
  br i1 %i.ag, label %bb.at, label %bb.w

bb.w:                                             ; preds = %.split, %lean_nat_eq.exit
  %i.ah = ptrtoint ptr %.077 to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i128 = icmp eq i64 %i.ai, 0
  br i1 %.not.i128, label %bb.x, label %lean_del_object.exit

bb.x:                                             ; preds = %bb.w
  tail call void @lean_free_object(ptr noundef nonnull %.077) #8
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.w, %bb.x
  %i.aj = lshr i64 %.pre, 1                       ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !18  ; 3 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %lean_string_utf8_get_fast.exit.thread, label %lean_string_utf8_get_fast.exit

lean_string_utf8_get_fast.exit.thread:            ; preds = %lean_del_object.exit
  %i.an = zext nneg i8 %i.al to i32
  br label %bb.y

lean_string_utf8_get_fast.exit:                   ; preds = %lean_del_object.exit
  %.val.i129 = load i64, ptr %i.a, align 8, !tbaa !15
  %i.ao = tail call i32 @lean_string_utf8_get_fast_cold(ptr noundef nonnull %i.b, i64 noundef %i.aj, i64 noundef %.val.i129, i8 noundef zeroext %i.al) #8 ; 2 uses
  %.pr = load i8, ptr %i.ak, align 1, !tbaa !18   ; 2 uses
  %i.ap = icmp sgt i8 %.pr, -1
  br i1 %i.ap, label %bb.y, label %bb.z

bb.y:                                             ; preds = %lean_string_utf8_get_fast.exit.thread, %lean_string_utf8_get_fast.exit
  %.0.i130140 = phi i32 [ %i.an, %lean_string_utf8_get_fast.exit.thread ], [ %i.ao, %lean_string_utf8_get_fast.exit ]
  %i.aq = or i64 %.pre, 1
  %i.ar = add i64 %i.aq, 2
  %i.as = inttoptr i64 %i.ar to ptr
  br label %lean_string_utf8_next_fast.exit

bb.z:                                             ; preds = %lean_string_utf8_get_fast.exit
  %i.at = tail call ptr @lean_string_utf8_next_fast_cold(i64 noundef %i.aj, i8 noundef zeroext %.pr) #8
  br label %lean_string_utf8_next_fast.exit

lean_string_utf8_next_fast.exit:                  ; preds = %bb.y, %bb.z
  %.0.i130139 = phi i32 [ %.0.i130140, %bb.y ], [ %i.ao, %bb.z ] ; 3 uses
  %.0.i131 = phi ptr [ %i.as, %bb.y ], [ %i.at, %bb.z ] ; 5 uses
  br i1 %.not.i100, label %bb.aa, label %lean_dec.exit92

bb.aa:                                            ; preds = %lean_string_utf8_next_fast.exit
  %i.au = load i32, ptr %i.f, align 4, !tbaa !12  ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.ab, label %bb.ac, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %i.f, align 4, !tbaa !12
  br label %lean_dec.exit92

bb.ac:                                            ; preds = %bb.aa
  %.not.i96 = icmp eq i32 %i.au, 0
  br i1 %.not.i96, label %lean_dec.exit92, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.f) #8
  br label %lean_dec.exit92

lean_dec.exit92:                                  ; preds = %bb.ad, %bb.ac, %bb.ab, %lean_string_utf8_next_fast.exit
  %i.ax = ptrtoint ptr %.0.i131 to i64            ; 2 uses
  %i.ay = and i64 %i.ax, 1
  %.not.i101 = icmp eq i64 %i.ay, 0
  br i1 %.not.i101, label %lean_nat_eq.exit104, label %.split230, !prof !16

.split230:                                        ; preds = %lean_dec.exit92
  %i.az = icmp eq ptr %.0.i131, %i.ae
  br i1 %i.az, label %bb.ai, label %bb.ae

lean_nat_eq.exit104:                              ; preds = %lean_dec.exit92
  %i.ba = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.0.i131, ptr noundef nonnull %i.ae) #8
  br i1 %i.ba, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %.split230, %lean_nat_eq.exit104
  %i.bb = lshr i64 %i.ax, 1                       ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18  ; 3 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bf = zext nneg i8 %i.bd to i32
  br label %lean_string_utf8_get_fast.exit134

bb.ag:                                            ; preds = %bb.ae
  %.val.i132 = load i64, ptr %i.a, align 8, !tbaa !15
  %i.bg = tail call i32 @lean_string_utf8_get_fast_cold(ptr noundef nonnull %i.b, i64 noundef %i.bb, i64 noundef %.val.i132, i8 noundef zeroext %i.bd) #8
  br label %lean_string_utf8_get_fast.exit134

lean_string_utf8_get_fast.exit134:                ; preds = %bb.af, %bb.ag
  %.0.i133 = phi i32 [ %i.bf, %bb.af ], [ %i.bg, %bb.ag ]
  tail call void @lean_inc_heartbeat() #8
  %i.bh = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.ah, label %lean_alloc_ctor.exit

bb.ah:                                            ; preds = %lean_string_utf8_get_fast.exit134
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_string_utf8_get_fast.exit134
  %i.bj = zext i32 %.0.i133 to i64
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = or disjoint i64 %i.bk, 1
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 1, ptr %i.bh, align 4, !tbaa !12
  store i32 16842768, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !10
  br label %bb.ai

bb.ai:                                            ; preds = %.split230, %lean_nat_eq.exit104, %lean_alloc_ctor.exit
  %.083 = phi ptr [ %i.bh, %lean_alloc_ctor.exit ], [ inttoptr (i64 1 to ptr), %lean_nat_eq.exit104 ], [ inttoptr (i64 1 to ptr), %.split230 ] ; 5 uses
  %i.bp = tail call zeroext i8 @l___private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial(i32 noundef %.0.i130139, ptr noundef nonnull %.083)
  %i.bq = ptrtoint ptr %.083 to i64
  %i.br = and i64 %i.bq, 1
  %.not.i90 = icmp eq i64 %i.br, 0
  br i1 %.not.i90, label %bb.aj, label %lean_dec.exit

bb.aj:                                            ; preds = %bb.ai
  %i.bs = load i32, ptr %.083, align 4, !tbaa !12 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ak, label %bb.al, !prof !13

bb.ak:                                            ; preds = %bb.aj
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %.083, align 4, !tbaa !12
  br label %lean_dec.exit

bb.al:                                            ; preds = %bb.aj
  %.not.i98 = icmp eq i32 %i.bs, 0
  br i1 %.not.i98, label %lean_dec.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.083) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai
  %i.bv = icmp eq i8 %i.bp, 0
  br i1 %i.bv, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %lean_dec.exit
  %i.bw = tail call ptr @lean_string_push(ptr noundef %i.d, i32 noundef %.0.i130139) #8
  tail call void @lean_inc_heartbeat() #8
  %i.bx = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ao, label %lean_alloc_ctor.exit.i

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit.i:                           ; preds = %bb.an
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 1, ptr %i.bx, align 4, !tbaa !12
  store i32 131096, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bw, ptr %i.ca, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %.0.i131, ptr %i.cb, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.cc = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ap, label %l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg___lam__0.exit

bb.ap:                                            ; preds = %lean_alloc_ctor.exit.i
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.aq:                                            ; preds = %lean_dec.exit
  %i.ce = tail call ptr @lean_string_push(ptr noundef %i.d, i32 noundef 92) #8
  %i.cf = tail call ptr @lean_string_push(ptr noundef %i.ce, i32 noundef %.0.i130139) #8
  tail call void @lean_inc_heartbeat() #8
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ar, label %lean_alloc_ctor.exit.i135

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit.i135:                        ; preds = %bb.aq
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 1, ptr %i.cg, align 4, !tbaa !12
  store i32 131096, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.cf, ptr %i.cj, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr %.0.i131, ptr %i.ck, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.cl = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.as, label %l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg___lam__0.exit

bb.as:                                            ; preds = %lean_alloc_ctor.exit.i135
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.at:                                            ; preds = %.split, %lean_nat_eq.exit
  br i1 %i.g, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_inc_heartbeat() #8
  %i.cn = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.av, label %lean_alloc_ctor.exit137

bb.av:                                            ; preds = %bb.au
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit137:                          ; preds = %bb.au
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i32 1, ptr %i.cn, align 4, !tbaa !12
  store i32 131096, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.d, ptr %i.cq, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %i.f, ptr %i.cr, align 8, !tbaa !10
  br label %bb.aw

lean_dec_ref_known.exit:                          ; preds = %bb.q, %bb.t, %bb.u, %bb.v, %lean_obj_tag.exit.thread
  tail call void @lean_free_object(ptr noundef nonnull %.sink262) #8
  br label %bb.b

bb.aw:                                            ; preds = %lean_dec.exit.i, %lean_alloc_ctor.exit137, %bb.at
  %.3.ph = phi ptr [ %.077, %bb.at ], [ %i.cn, %lean_alloc_ctor.exit137 ], [ %.sink, %lean_dec.exit.i ]
  ret ptr %.3.ph
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__1___redArg(ptr noundef %0, ptr noundef %1)
  %i.b = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias noundef nonnull ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__0___redArg___lam__0(i32 noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_string_push(ptr noundef %3, i32 noundef %0) #8 ; 2 uses
  tail call void @lean_inc_heartbeat() #8
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.d = zext i32 %0 to i64
  %i.e = shl nuw nsw i64 %i.d, 1
  %i.f = or disjoint i64 %i.e, 1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !12
  store i32 16842768, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8, !tbaa !10
  %i.j = add i32 %0, -58
  %or.cond = icmp ult i32 %i.j, -10
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %lean_alloc_ctor.exit, %lean_obj_once.exit
  tail call void @lean_inc_heartbeat() #8
  %i.k = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %lean_alloc_ctor.exit43

bb.d:                                             ; preds = %bb.c
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit43:                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 1, ptr %i.k, align 4, !tbaa !12
  store i32 131096, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %1, ptr %i.n, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.b, ptr %i.o, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.p = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %lean_alloc_ctor.exit44

bb.e:                                             ; preds = %lean_alloc_ctor.exit43
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit44:                           ; preds = %lean_alloc_ctor.exit43
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 1, ptr %i.p, align 4, !tbaa !12
  store i32 131096, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.a, ptr %i.s, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.k, ptr %i.t, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.u = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %lean_alloc_ctor.exit45

bb.f:                                             ; preds = %lean_alloc_ctor.exit44
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

.critedge:                                        ; preds = %lean_alloc_ctor.exit
  %i.w = load atomic i32, ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__0___redArg___lam__0___closed__2_once seq_cst, align 4, !tbaa !20
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %.critedge
  %i.y = load ptr, ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__0___redArg___lam__0___closed__2, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.h:                                             ; preds = %.critedge
  %i.z = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__0___redArg___lam__0___closed__2, ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__0___redArg___lam__0___closed__2_once, ptr noundef nonnull @_init_l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__0___redArg___lam__0___closed__2) #8
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.y, %bb.g ], [ %i.z, %bb.h ]
  %i.aa = tail call noundef zeroext i8 @l_WellFounded_opaqueFix_u2083___at___00String_Slice_contains___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_midLineSpecial_spec__0_spec__0___redArg(ptr noundef readonly %.0.i, i32 noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr), i8 noundef zeroext 0)
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.i:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_inc_heartbeat() #8
  %i.ab = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %lean_alloc_ctor.exit46

bb.j:                                             ; preds = %bb.i
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit46:                           ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ab, align 4, !tbaa !12
  store i32 131096, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %1, ptr %i.ae, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.b, ptr %i.af, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.ag = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %lean_alloc_ctor.exit47

bb.k:                                             ; preds = %lean_alloc_ctor.exit46
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit47:                           ; preds = %lean_alloc_ctor.exit46
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 1, ptr %i.ag, align 4, !tbaa !12
  store i32 131096, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.a, ptr %i.aj, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ab, ptr %i.ak, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.al = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.l, label %lean_alloc_ctor.exit45

bb.l:                                             ; preds = %lean_alloc_ctor.exit47
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit45:                           ; preds = %lean_alloc_ctor.exit47, %lean_alloc_ctor.exit44
  %.sink61 = phi ptr [ %i.u, %lean_alloc_ctor.exit44 ], [ %i.al, %lean_alloc_ctor.exit47 ] ; 4 uses
  %.sink58 = phi i32 [ 16842768, %lean_alloc_ctor.exit44 ], [ 65552, %lean_alloc_ctor.exit47 ]
  %.sink = phi ptr [ %i.p, %lean_alloc_ctor.exit44 ], [ %i.ag, %lean_alloc_ctor.exit47 ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sink61, i64 4
  store i32 1, ptr %.sink61, align 4, !tbaa !12
  store i32 %.sink58, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  store ptr %.sink, ptr %i.ao, align 8, !tbaa !10
  ret ptr %.sink61
}

; Function Attrs: nounwind uwtable
define internal noalias nonnull ptr @_init_l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__0___redArg___lam__0___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__0___redArg___lam__0___closed__1_once seq_cst, align 4, !tbaa !20
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__0___redArg___lam__0___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__0___redArg___lam__0___closed__1, ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__0___redArg___lam__0___closed__1_once, ptr noundef nonnull @_init_l___private_Init_While_0__whileM_erased___at___00__private_Lean_DocString_Markdown_0__Lean_Doc_escape_spec__0___redArg___lam__0___closed__1) #8
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @lean_inc_heartbeat() #8
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #8 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

end_hunk_0
