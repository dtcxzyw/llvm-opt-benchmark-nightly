Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/NameMangling?download=true
inline.NumInlined: 470
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@l___private_Lean_Compiler_NameMangling_0__String_digitChar___boxed:bb.a
  %.0.v.i.i = select i1 %i.h, i64 87, i64 48
  %.0.i.i = add nuw i64 %.0.v.i.i, %i.f
  %i.i = shl i64 %.0.i.i, 1
  %i.j = and i64 %i.i, 8589934590
  %i.k = or disjoint i64 %i.j, 1
  %i.l = inttoptr i64 %i.k to ptr
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Compiler_NameMangling_0__String_pushHex(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %lean_dec.exit28, %bb.a
  %.023 = phi ptr [ %2, %bb.a ], [ %i.y, %lean_dec.exit28 ] ; 2 uses
  %.021 = phi ptr [ %0, %bb.a ], [ %.1.i40, %lean_dec.exit28 ] ; 11 uses
  %i.a = ptrtoint ptr %.021 to i64                ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i32 = icmp eq i64 %i.b, 0
  br i1 %.not.i32, label %lean_nat_eq.exit, label %lean_nat_eq.exit.thread, !prof !12

lean_nat_eq.exit:                                 ; preds = %bb.b
  %i.c = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.021, ptr noundef nonnull inttoptr (i64 1 to ptr)) #6
  br i1 %i.c, label %bb.c, label %bb.h

lean_nat_eq.exit.thread:                          ; preds = %bb.b
  %.not46 = icmp eq ptr %.021, inttoptr (i64 1 to ptr)
  br i1 %.not46, label %.thread, label %.thread38

bb.c:                                             ; preds = %lean_nat_eq.exit
  %i.d = load i32, ptr %.021, align 4, !tbaa !10  ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %.021, align 4, !tbaa !10
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %.not.i29 = icmp eq i32 %i.d, 0
  br i1 %.not.i29, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.021) #6
  br label %.thread

.thread38:                                        ; preds = %lean_nat_eq.exit.thread
  %i.g = icmp ult ptr %.021, inttoptr (i64 2 to ptr)
  br i1 %i.g, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %.thread38
  %i.h = add i64 %i.a, -2
  %i.i = inttoptr i64 %i.h to ptr
  br label %lean_dec.exit

bb.h:                                             ; preds = %lean_nat_eq.exit
  %i.j = tail call ptr @lean_nat_big_sub(ptr noundef %.021, ptr noundef nonnull inttoptr (i64 3 to ptr)) #6 ; 3 uses
  %i.k = load i32, ptr %.021, align 4, !tbaa !10  ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %.021, align 4, !tbaa !10
  br label %lean_dec.exit

bb.j:                                             ; preds = %bb.h
  %.not.i30 = icmp eq i32 %i.k, 0
  br i1 %.not.i30, label %lean_dec.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.021) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %.thread38, %bb.k, %bb.j, %bb.i
  %.1.i40 = phi ptr [ %i.j, %bb.k ], [ %i.j, %bb.i ], [ %i.j, %bb.j ], [ inttoptr (i64 1 to ptr), %.thread38 ], [ %i.i, %bb.g ] ; 3 uses
  %i.n = ptrtoint ptr %.1.i40 to i64              ; 2 uses
  %i.o = and i64 %i.n, 1
  %.not.i34 = icmp eq i64 %i.o, 0
  br i1 %.not.i34, label %bb.m, label %bb.l

bb.l:                                             ; preds = %lean_dec.exit
  %i.p = lshr i64 %i.n, 1
  %i.q = trunc i64 %i.p to i32
  br label %lean_dec.exit28

bb.m:                                             ; preds = %lean_dec.exit
  %i.r = tail call i32 @lean_uint32_of_big_nat(ptr noundef %.1.i40) #6
  br label %lean_dec.exit28

lean_dec.exit28:                                  ; preds = %bb.m, %bb.l
  %i.s = phi i32 [ %i.q, %bb.l ], [ %i.r, %bb.m ]
  %i.t = shl i32 %i.s, 2
  %i.u = and i32 %i.t, 28
  %i.v = lshr i32 %1, %i.u
  %i.w = and i32 %i.v, 15                         ; 2 uses
  %i.x = icmp samesign ugt i32 %i.w, 9
  %.0.v.i = select i1 %i.x, i32 87, i32 48
  %.0.i35 = add nuw nsw i32 %.0.v.i, %i.w
  %i.y = tail call ptr @lean_string_push(ptr noundef %.023, i32 noundef %.0.i35) #6
  br label %bb.b

.thread:                                          ; preds = %lean_nat_eq.exit.thread, %bb.f, %bb.e, %bb.d
  ret ptr %.023
}

declare ptr @lean_string_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Compiler_NameMangling_0__String_pushHex___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i5 = icmp eq i32 %i.c, 0
  br i1 %.not.i5, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.f = lshr i64 %i.a, 1
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call ptr @l___private_Lean_Compiler_NameMangling_0__String_pushHex(ptr noundef %0, i32 noundef %i.g, ptr noundef %2)
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Compiler_NameMangling_0__String_mangleAux(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit.backedge, %bb.a
  %.078 = phi ptr [ %2, %bb.a ], [ %.078.be, %lean_dec.exit.backedge ] ; 6 uses
  %.076 = phi ptr [ %1, %bb.a ], [ %.0.i116, %lean_dec.exit.backedge ] ; 9 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !14
  %i.c = shl i64 %.val, 1
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = ptrtoint ptr %.076 to i64                ; 3 uses
  %i.g = and i64 %i.f, 1
  %.not.i107 = icmp eq i64 %i.g, 0                ; 2 uses
  br i1 %.not.i107, label %lean_nat_eq.exit, label %lean_nat_eq.exit.thread, !prof !12

lean_nat_eq.exit:                                 ; preds = %lean_dec.exit
  %i.h = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.076, ptr noundef nonnull %i.e) #6
  br i1 %i.h, label %bb.n, label %bb.b

lean_nat_eq.exit.thread:                          ; preds = %lean_dec.exit
  %.not = icmp eq ptr %.076, %i.e
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %lean_nat_eq.exit.thread, %lean_nat_eq.exit
  %i.i = lshr i64 %i.f, 1                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15    ; 3 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %lean_string_utf8_get_fast.exit.thread, label %lean_string_utf8_get_fast.exit

lean_string_utf8_get_fast.exit.thread:            ; preds = %bb.b
  %i.m = zext nneg i8 %i.k to i32
  br label %bb.c

lean_string_utf8_get_fast.exit:                   ; preds = %bb.b
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !14
  %i.n = tail call i32 @lean_string_utf8_get_fast_cold(ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef %.val.i, i8 noundef zeroext %i.k) #6 ; 2 uses
  %.pr = load i8, ptr %i.j, align 1, !tbaa !15    ; 2 uses
  %i.o = icmp sgt i8 %.pr, -1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %lean_string_utf8_get_fast.exit.thread, %lean_string_utf8_get_fast.exit
  %.0.i115119 = phi i32 [ %i.m, %lean_string_utf8_get_fast.exit.thread ], [ %i.n, %lean_string_utf8_get_fast.exit ]
  %i.p = or i64 %i.f, 1
  %i.q = add i64 %i.p, 2
  %i.r = inttoptr i64 %i.q to ptr
  br label %lean_string_utf8_next_fast.exit

bb.d:                                             ; preds = %lean_string_utf8_get_fast.exit
  %i.s = tail call ptr @lean_string_utf8_next_fast_cold(i64 noundef %i.i, i8 noundef zeroext %.pr) #6
  br label %lean_string_utf8_next_fast.exit

lean_string_utf8_next_fast.exit:                  ; preds = %bb.c, %bb.d
  %.0.i115118 = phi i32 [ %.0.i115119, %bb.c ], [ %i.n, %bb.d ] ; 10 uses
  %.0.i116 = phi ptr [ %i.r, %bb.c ], [ %i.s, %bb.d ]
  br i1 %.not.i107, label %bb.e, label %lean_dec.exit99

bb.e:                                             ; preds = %lean_string_utf8_next_fast.exit
  %i.t = load i32, ptr %.076, align 4, !tbaa !10  ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %.076, align 4, !tbaa !10
  br label %lean_dec.exit99

bb.g:                                             ; preds = %bb.e
  %.not.i100 = icmp eq i32 %i.t, 0
  br i1 %.not.i100, label %lean_dec.exit99, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.076) #6
  br label %lean_dec.exit99

lean_dec.exit99:                                  ; preds = %bb.h, %bb.g, %bb.f, %lean_string_utf8_next_fast.exit
  %i.w = add i32 %.0.i115118, -91
  %or.cond = icmp ult i32 %i.w, -26
  br i1 %or.cond, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.m, %lean_dec.exit99
  %i.x = tail call ptr @lean_string_push(ptr noundef %.078, i32 noundef %.0.i115118) #6
  br label %lean_dec.exit.backedge

lean_dec.exit.backedge:                           ; preds = %bb.i, %lean_dec.exit95, %bb.k, %bb.j, %bb.l
  %.078.be = phi ptr [ %i.ad, %bb.k ], [ %i.x, %bb.i ], [ %i.ag, %bb.l ], [ %i.af, %lean_dec.exit95 ], [ %i.ab, %bb.j ]
  br label %lean_dec.exit

.critedge:                                        ; preds = %bb.m
  %.not126 = icmp eq i32 %.0.i115118, 95
  br i1 %.not126, label %bb.l, label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %.critedge
  %i.y = icmp ugt i32 %.0.i115118, 255
  br i1 %i.y, label %lean_dec.exit97, label %lean_dec.exit95

lean_dec.exit97:                                  ; preds = %lean_nat_lt.exit
  %i.z = icmp ugt i32 %.0.i115118, 65535
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %lean_dec.exit97
  %i.aa = tail call ptr @lean_string_append(ptr noundef %.078, ptr noundef nonnull @l___private_Lean_Compiler_NameMangling_0__String_mangleAux___closed__0_value) #6
  %i.ab = tail call ptr @l___private_Lean_Compiler_NameMangling_0__String_pushHex(ptr noundef nonnull inttoptr (i64 17 to ptr), i32 noundef %.0.i115118, ptr noundef %i.aa)
  br label %lean_dec.exit.backedge

bb.k:                                             ; preds = %lean_dec.exit97
  %i.ac = tail call ptr @lean_string_append(ptr noundef %.078, ptr noundef nonnull @l___private_Lean_Compiler_NameMangling_0__String_mangleAux___closed__1_value) #6
  %i.ad = tail call ptr @l___private_Lean_Compiler_NameMangling_0__String_pushHex(ptr noundef nonnull inttoptr (i64 9 to ptr), i32 noundef %.0.i115118, ptr noundef %i.ac)
  br label %lean_dec.exit.backedge

lean_dec.exit95:                                  ; preds = %lean_nat_lt.exit
  %i.ae = tail call ptr @lean_string_append(ptr noundef %.078, ptr noundef nonnull @l___private_Lean_Compiler_NameMangling_0__String_mangleAux___closed__2_value) #6
  %i.af = tail call ptr @l___private_Lean_Compiler_NameMangling_0__String_pushHex(ptr noundef nonnull inttoptr (i64 5 to ptr), i32 noundef %.0.i115118, ptr noundef %i.ae)
  br label %lean_dec.exit.backedge

bb.l:                                             ; preds = %.critedge
  %i.ag = tail call ptr @lean_string_append(ptr noundef %.078, ptr noundef nonnull @l___private_Lean_Compiler_NameMangling_0__String_mangleAux___closed__3_value) #6
  br label %lean_dec.exit.backedge

bb.m:                                             ; preds = %lean_dec.exit99
  %i.ah = add i32 %.0.i115118, -123
  %or.cond128 = icmp ult i32 %i.ah, -26
  %i.ai = add i32 %.0.i115118, -58
  %or.cond127 = icmp ult i32 %i.ai, -10
  %or.cond142 = and i1 %or.cond128, %or.cond127
  br i1 %or.cond142, label %.critedge, label %bb.i

bb.n:                                             ; preds = %lean_nat_eq.exit
  %i.aj = load i32, ptr %.076, align 4, !tbaa !10 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.o, label %bb.p, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %.076, align 4, !tbaa !10
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %.not.i105 = icmp eq i32 %i.aj, 0
  br i1 %.not.i105, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.076) #6
  br label %.thread

.thread:                                          ; preds = %lean_nat_eq.exit.thread, %bb.q, %bb.p, %bb.o
  ret ptr %.078
}

declare ptr @lean_string_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Compiler_NameMangling_0__String_mangleAux___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Compiler_NameMangling_0__String_mangleAux(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_String_mangle(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Compiler_NameMangling_0__String_mangleAux(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @l_String_mangle___closed__0_value)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_String_mangle___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Compiler_NameMangling_0__String_mangleAux(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @l_String_mangle___closed__0_value)
  %i.b = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 2) i8 @l___private_Lean_Compiler_NameMangling_0__Lean_checkLowerHex(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %lean_dec.exit69

lean_dec.exit69:                                  ; preds = %lean_dec.exit69.backedge, %bb.a
  %.048 = phi ptr [ %2, %bb.a ], [ %.0.i94, %lean_dec.exit69.backedge ] ; 16 uses
  %.044 = phi ptr [ %0, %bb.a ], [ %.1.i96, %lean_dec.exit69.backedge ] ; 14 uses
  %i.c = ptrtoint ptr %.044 to i64                ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i87 = icmp eq i64 %i.d, 0                 ; 4 uses
  br i1 %.not.i87, label %lean_nat_eq.exit, label %.split, !prof !12

.split:                                           ; preds = %lean_dec.exit69
  %i.e = icmp eq ptr %.044, inttoptr (i64 1 to ptr)
  br i1 %i.e, label %bb.b, label %bb.k

lean_nat_eq.exit:                                 ; preds = %lean_dec.exit69
  %i.f = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.044, ptr noundef nonnull inttoptr (i64 1 to ptr)) #6
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.split, %lean_nat_eq.exit
  %i.g = ptrtoint ptr %.048 to i64
  %i.h = and i64 %i.g, 1
  %.not.i70 = icmp eq i64 %i.h, 0
  br i1 %.not.i70, label %bb.c, label %lean_dec.exit71

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %.048, align 4, !tbaa !10  ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %.048, align 4, !tbaa !10
  br label %lean_dec.exit71

bb.e:                                             ; preds = %bb.c
  %.not.i72 = icmp eq i32 %i.i, 0
  br i1 %.not.i72, label %lean_dec.exit71, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.048) #6
  br label %lean_dec.exit71

lean_dec.exit71:                                  ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  br i1 %.not.i87, label %bb.g, label %bb.ar

bb.g:                                             ; preds = %lean_dec.exit71
  %i.l = load i32, ptr %.044, align 4, !tbaa !10  ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %.044, align 4, !tbaa !10
  br label %bb.ar

bb.i:                                             ; preds = %bb.g
  %.not.i73 = icmp eq i32 %i.l, 0
  br i1 %.not.i73, label %bb.ar, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.044) #6
  br label %bb.ar

bb.k:                                             ; preds = %.split, %lean_nat_eq.exit
  %.val = load i64, ptr %i.a, align 8, !tbaa !14
  %i.o = shl i64 %.val, 1
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = ptrtoint ptr %.048 to i64                ; 3 uses
  %i.s = and i64 %i.r, 1
  %.not.i89 = icmp eq i64 %i.s, 0                 ; 3 uses
  br i1 %.not.i89, label %lean_nat_eq.exit92, label %lean_nat_eq.exit92.thread, !prof !12

lean_nat_eq.exit92:                               ; preds = %bb.k
  %i.t = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.048, ptr noundef nonnull %i.q) #6
  br i1 %i.t, label %bb.aj, label %bb.l

lean_nat_eq.exit92.thread:                        ; preds = %bb.k
  %.not = icmp eq ptr %.048, %i.q
  br i1 %.not, label %lean_dec.exit59, label %bb.l

bb.l:                                             ; preds = %lean_nat_eq.exit92.thread, %lean_nat_eq.exit92
  br i1 %.not.i87, label %bb.o, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
end_hunk_0
