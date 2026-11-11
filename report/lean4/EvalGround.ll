Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/EvalGround?download=true
inline.NumInlined: 16234
inline.NumDeleted: 187
begin_hunk_0_@lean_int_sub:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not7 = icmp eq i64 %i.d, 0
  br i1 %.not7, label %.critedge, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %i.a, 31
  %i.f = ashr i64 %i.e, 32
  %i.g = shl i64 %i.c, 31
  %i.h = ashr i64 %i.g, 32
  %i.i = sub nsw i64 %i.f, %i.h                   ; 3 uses
  %i.j = add nsw i64 %i.i, 2147483648
  %i.k = icmp ult i64 %i.j, 4294967296
  br i1 %i.k, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.l = shl nsw i64 %i.i, 1
  %i.m = and i64 %i.l, 8589934590
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_int64_to_int.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef %i.i) #7
  br label %lean_int64_to_int.exit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.q = tail call ptr @lean_int_big_sub(ptr noundef %0, ptr noundef %1) #7
  br label %lean_int64_to_int.exit

lean_int64_to_int.exit:                           ; preds = %bb.e, %bb.d, %.critedge
  %.0 = phi ptr [ %i.q, %.critedge ], [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @lean_int_mul(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not7 = icmp eq i64 %i.d, 0
  br i1 %.not7, label %.critedge, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %i.a, 31
  %i.f = ashr i64 %i.e, 32
  %i.g = shl i64 %i.c, 31
  %i.h = ashr i64 %i.g, 32
  %i.i = mul nsw i64 %i.h, %i.f                   ; 3 uses
  %i.j = add nsw i64 %i.i, 2147483648
  %i.k = icmp ult i64 %i.j, 4294967296
  br i1 %i.k, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.l = shl nsw i64 %i.i, 1
  %i.m = and i64 %i.l, 8589934590
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_int64_to_int.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef %i.i) #7
  br label %lean_int64_to_int.exit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.q = tail call ptr @lean_int_big_mul(ptr noundef %0, ptr noundef %1) #7
  br label %lean_int64_to_int.exit

lean_int64_to_int.exit:                           ; preds = %bb.e, %bb.d, %.critedge
  %.0 = phi ptr [ %i.q, %.critedge ], [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @lean_nat_div(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not10 = icmp eq i64 %i.d, 0
  br i1 %.not10, label %.critedge, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %i.c, 1                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i64 %i.a, 1
  %i.h = udiv i64 %i.g, %i.e
  %i.i = shl nuw i64 %i.h, 1
  %i.j = or disjoint i64 %i.i, 1
  %i.k = inttoptr i64 %i.j to ptr
  br label %bb.e

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.l = tail call ptr @lean_nat_big_div(ptr noundef %0, ptr noundef %1) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.critedge
  %.1 = phi ptr [ %i.l, %.critedge ], [ %i.k, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.c ]
  ret ptr %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @lean_int_ediv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not18 = icmp eq i64 %i.d, 0
  br i1 %.not18, label %.critedge, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %i.c, 1                         ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %lean_int64_to_int.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %sext = shl i64 %i.e, 32
  %i.h = ashr exact i64 %sext, 32                 ; 2 uses
  %i.i = shl i64 %i.a, 31
  %i.j = ashr i64 %i.i, 32                        ; 2 uses
  %i.k = sdiv i64 %i.j, %i.h
  %i.l = srem i64 %i.j, %i.h
  %i.m = icmp slt i64 %i.l, 0
  %i.n = icmp sgt i32 %i.f, 0
  %.v = select i1 %i.n, i64 -1, i64 1
  %i.o = select i1 %i.m, i64 %.v, i64 0
  %.0 = add nsw i64 %i.o, %i.k                    ; 3 uses
  %i.p = add nsw i64 %.0, 2147483648
  %i.q = icmp ult i64 %i.p, 4294967296
  br i1 %i.q, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.r = shl nsw i64 %.0, 1
  %i.s = and i64 %i.r, 8589934590
  %i.t = or disjoint i64 %i.s, 1
  %i.u = inttoptr i64 %i.t to ptr
  br label %lean_int64_to_int.exit

bb.f:                                             ; preds = %bb.d
  %i.v = tail call ptr @lean_big_int64_to_int(i64 noundef %.0) #7
  br label %lean_int64_to_int.exit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.w = tail call ptr @lean_int_big_ediv(ptr noundef %0, ptr noundef %1) #7
  br label %lean_int64_to_int.exit

lean_int64_to_int.exit:                           ; preds = %bb.f, %bb.e, %bb.c, %.critedge
  %.1 = phi ptr [ %i.w, %.critedge ], [ inttoptr (i64 1 to ptr), %bb.c ], [ %i.u, %bb.e ], [ %i.v, %bb.f ]
  ret ptr %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @lean_int_emod(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not21 = icmp eq i64 %i.d, 0
  br i1 %.not21, label %.critedge, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %i.c, 31
  %i.f = ashr i64 %i.e, 32                        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %lean_int64_to_int.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.a, 31
  %i.i = ashr i64 %i.h, 32
  %i.j = srem i64 %i.i, %i.f                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %.p = tail call i64 @llvm.abs.i64(i64 %i.f, i1 true)
  %i.l = select i1 %i.k, i64 %.p, i64 0
  %.0 = add nsw i64 %i.l, %i.j                    ; 3 uses
  %2 = icmp slt i64 %.0, 2147483648
  br i1 %2, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.m = shl nsw i64 %.0, 1
  %3 = and i64 %i.m, 8589934590
  %i.n = or disjoint i64 %3, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_int64_to_int.exit

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef %.0) #7
  br label %lean_int64_to_int.exit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.q = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %1) #7
  br label %lean_int64_to_int.exit

lean_int64_to_int.exit:                           ; preds = %bb.f, %bb.e, %bb.c, %.critedge
  %.1 = phi ptr [ %i.q, %.critedge ], [ %0, %bb.c ], [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  ret ptr %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @lean_nat_shiftr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not10 = icmp eq i64 %i.d, 0
  br i1 %.not10, label %.critedge, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %i.a, 1
  %i.f = lshr i64 %i.c, 1
  %i.g = icmp ult ptr %1, inttoptr (i64 128 to ptr)
  %i.h = lshr i64 %i.e, %i.f
  %i.i = shl nuw i64 %i.h, 1
  %i.j = or disjoint i64 %i.i, 1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = select i1 %i.g, ptr %i.k, ptr inttoptr (i64 1 to ptr)
  br label %bb.d

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.m = tail call ptr @lean_nat_big_shiftr(ptr noundef %0, ptr noundef %1) #7
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.0 = phi ptr [ %i.l, %bb.c ], [ %i.m, %.critedge ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @lean_int_div(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = and i64 %i.c, 1
  %.not10 = icmp eq i64 %i.d, 0
  br i1 %.not10, label %.critedge, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %i.c, 8589934590
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %lean_int64_to_int.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = shl i64 %i.c, 31
  %i.h = ashr i64 %i.g, 32
  %i.i = shl i64 %i.a, 31
  %i.j = ashr i64 %i.i, 32
  %i.k = sdiv i64 %i.j, %i.h                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 2147483648
  br i1 %i.l, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.m = shl nsw i64 %i.k, 1
  %i.n = and i64 %i.m, 8589934590
  %i.o = or disjoint i64 %i.n, 1
  %i.p = inttoptr i64 %i.o to ptr
  br label %lean_int64_to_int.exit

bb.f:                                             ; preds = %bb.d
  %i.q = tail call ptr @lean_big_int64_to_int(i64 noundef 2147483648) #7
  br label %lean_int64_to_int.exit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.r = tail call ptr @lean_int_big_div(ptr noundef %0, ptr noundef %1) #7
  br label %lean_int64_to_int.exit

lean_int64_to_int.exit:                           ; preds = %bb.f, %bb.e, %bb.c, %.critedge
  %.1 = phi ptr [ %i.r, %.critedge ], [ inttoptr (i64 1 to ptr), %bb.c ], [ %i.p, %bb.e ], [ %i.q, %bb.f ]
  ret ptr %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @lean_int_mod(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not11 = icmp eq i64 %i.d, 0
  br i1 %.not11, label %.critedge, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %i.c, 31
  %i.f = ashr i64 %i.e, 32                        ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %lean_int64_to_int.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.a, 31
  %i.i = ashr i64 %i.h, 32
  %i.j = srem i64 %i.i, %i.f
  %i.k = shl nsw i64 %i.j, 1
  %i.l = and i64 %i.k, 8589934590
  %i.m = or disjoint i64 %i.l, 1
  %i.n = inttoptr i64 %i.m to ptr
  br label %lean_int64_to_int.exit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.o = tail call ptr @lean_int_big_mod(ptr noundef %0, ptr noundef %1) #7
  br label %lean_int64_to_int.exit

lean_int64_to_int.exit:                           ; preds = %bb.d, %bb.c, %.critedge
  %.1 = phi ptr [ %i.o, %.critedge ], [ %0, %bb.c ], [ %i.n, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Sym_Simp_EvalGround_0__Lean_Meta_Sym_Simp_skipIfUnchanged(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = icmp eq i32 %.0.i, 1
  br i1 %i.g, label %bb.d, label %bb.j

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr i8, ptr %1, i64 25
  %.val = load i8, ptr %i.j, align 1, !tbaa !13
  %i.k = tail call zeroext i8 @l___private_Lean_Meta_Sym_ExprPtr_0__Lean_Meta_Sym_isSameExpr_unsafe__1(ptr noundef %0, ptr noundef %i.i) #7
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %1, align 8, !tbaa !15 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %1, align 8, !tbaa !15
  br label %lean_inc_ref.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = atomicrmw add ptr %1, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

bb.i:                                             ; preds = %bb.d
  %i.p = tail call ptr @l_Lean_Meta_Sym_Simp_mkRflResultCD(i8 noundef zeroext %.val) #7
  br label %lean_inc_ref.exit

bb.j:                                             ; preds = %lean_obj_tag.exit
  %.val.i.i12 = load i32, ptr %1, align 4, !tbaa !15 ; 3 uses
  %i.q = icmp sgt i32 %.val.i.i12, 0
  br i1 %i.q, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.r = add nuw i32 %.val.i.i12, 1
  store i32 %i.r, ptr %1, align 4, !tbaa !15
end_hunk_0
