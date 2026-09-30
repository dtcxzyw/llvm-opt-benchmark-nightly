Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/multirangetypes?download=true
inline.NumInlined: 318
inline.NumDeleted: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@multirange_upper_inc:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 8
  %.not.i = icmp eq i32 %i.n, %i.i
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = tail call ptr @lookup_type_cache(i32 noundef %i.i, i32 noundef 65536) #10 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.i) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.o, ptr %i.v, align 8
  %.pre = load i32, ptr %i.e, align 4
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.c, %bb.f
  %i.w = phi i32 [ %.pre, %bb.f ], [ %i.f, %bb.c ]
  %.0.i = phi ptr [ %i.o, %bb.f ], [ %i.l, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = add i32 %i.w, -1
  call void @multirange_get_bounds(ptr noundef %i.y, ptr noundef nonnull %i.d, i32 noundef %i.z, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !range !9, !noundef !10
  %i.ac = zext nneg i8 %i.ab to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %multirange_get_typcache.exit
  %.0 = phi i64 [ %i.ac, %multirange_get_typcache.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @multirange_lower_inf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.RangeBound, align 8         ; 4 uses
  %2 = alloca %struct.RangeBound, align 8         ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 8
  %.not.i = icmp eq i32 %i.n, %i.i
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = tail call ptr @lookup_type_cache(i32 noundef %i.i, i32 noundef 65536) #10 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.i) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.o, ptr %i.v, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.c, %bb.f
  %.0.i = phi ptr [ %i.o, %bb.f ], [ %i.l, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.x = load ptr, ptr %i.w, align 8
  call void @multirange_get_bounds(ptr noundef %i.x, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i8, ptr %i.y, align 8, !range !9, !noundef !10
  %i.aa = zext nneg i8 %i.z to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %multirange_get_typcache.exit
  %.0 = phi i64 [ %i.aa, %multirange_get_typcache.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @multirange_upper_inf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.RangeBound, align 8         ; 3 uses
  %2 = alloca %struct.RangeBound, align 8         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 8
  %.not.i = icmp eq i32 %i.n, %i.i
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = tail call ptr @lookup_type_cache(i32 noundef %i.i, i32 noundef 65536) #10 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.i) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.o, ptr %i.v, align 8
  %.pre = load i32, ptr %i.e, align 4
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.c, %bb.f
  %i.w = phi i32 [ %.pre, %bb.f ], [ %i.f, %bb.c ]
  %.0.i = phi ptr [ %i.o, %bb.f ], [ %i.l, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = add i32 %i.w, -1
  call void @multirange_get_bounds(ptr noundef %i.y, ptr noundef nonnull %i.d, i32 noundef %i.z, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !range !9, !noundef !10
  %i.ac = zext nneg i8 %i.ab to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %multirange_get_typcache.exit
  %.0 = phi i64 [ %i.ac, %multirange_get_typcache.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @multirange_contains_elem(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.k, align 8
  %.not.i = icmp eq i32 %i.m, %i.h
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = tail call ptr @lookup_type_cache(i32 noundef %i.h, i32 noundef 65536) #10 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 448
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.s = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.h) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.n, ptr %i.u, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.n, %bb.e ], [ %i.k, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call zeroext i1 @multirange_contains_elem_internal(ptr noundef %i.w, ptr noundef nonnull %i.d, i64 noundef %i.f)
  %i.y = zext i1 %i.x to i64
  ret i64 %i.y
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @multirange_contains_elem_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RangeBound, align 8         ; 7 uses
  %4 = alloca %struct.RangeBound, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %multirange_bsearch_match.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 9
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %multirange_elem_bsearch_comparison.exit
  %.01629.i = phi i32 [ %.2.i, %multirange_elem_bsearch_comparison.exit ], [ %i.b, %.lr.ph.i.preheader ] ; 2 uses
  %.01728.i = phi i32 [ %.219.i, %multirange_elem_bsearch_comparison.exit ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.j = add i32 %.01728.i, %.01629.i
  %i.k = lshr i32 %i.j, 1                         ; 4 uses
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef %1, i32 noundef %i.k, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.l = load i8, ptr %i.d, align 8, !range !9, !noundef !10
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.n = load i32, ptr %i.f, align 4
  %i.o = load i64, ptr %3, align 8
  %i.p = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.e, i32 noundef %i.n, i64 noundef %i.o, i64 noundef %2) #10
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %multirange_elem_bsearch_comparison.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ne i32 %i.q, 0
  %i.t = load i8, ptr %i.g, align 1, !range !9
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond = select i1 %i.s, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.d, label %multirange_elem_bsearch_comparison.exit

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.v = load i8, ptr %i.h, align 8, !range !9, !noundef !10
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.f, align 4
  %i.y = load i64, ptr %4, align 8
  %i.z = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.e, i32 noundef %i.x, i64 noundef %i.y, i64 noundef %2) #10
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp ne i32 %i.aa, 0
  %i.ad = load i8, ptr %i.i, align 1, !range !9
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond19 = select i1 %i.ac, i1 true, i1 %i.ae
  br i1 %or.cond19, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = add nuw i32 %i.k, 1
  br label %multirange_elem_bsearch_comparison.exit

.thread.i:                                        ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %multirange_bsearch_match.exit

multirange_elem_bsearch_comparison.exit:          ; preds = %bb.c, %bb.b, %bb.g
  %.219.i = phi i32 [ %i.af, %bb.g ], [ %.01728.i, %bb.b ], [ %.01728.i, %bb.c ] ; 2 uses
  %.2.i = phi i32 [ %.01629.i, %bb.g ], [ %i.k, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.ag = icmp ult i32 %.219.i, %.2.i
  br i1 %i.ag, label %.lr.ph.i, label %multirange_bsearch_match.exit, !llvm.loop !2

multirange_bsearch_match.exit:                    ; preds = %multirange_elem_bsearch_comparison.exit, %.thread.i, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %.thread.i ], [ false, %multirange_elem_bsearch_comparison.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @elem_contained_by_multirange(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call ptr @pg_detoast_datum(ptr noundef %i.e) #10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.k, align 8
  %.not.i = icmp eq i32 %i.m, %i.h
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = tail call ptr @lookup_type_cache(i32 noundef %i.h, i32 noundef 65536) #10 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 448
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.s = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.h) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.n, ptr %i.u, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.n, %bb.e ], [ %i.k, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call zeroext i1 @multirange_contains_elem_internal(ptr noundef %i.w, ptr noundef nonnull %i.f, i64 noundef %i.b)
  %i.y = zext i1 %i.x to i64
  ret i64 %i.y
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @multirange_contains_range(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.m, align 8
  %.not.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call ptr @lookup_type_cache(i32 noundef %i.j, i32 noundef 65536) #10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.j) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.p, ptr %i.w, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call zeroext i1 @multirange_contains_range_internal(ptr noundef %i.y, ptr noundef nonnull %i.d, ptr noundef %i.h)
  %i.aa = zext i1 %i.z to i64
  ret i64 %i.aa
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @multirange_contains_range_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RangeBound, align 8         ; 6 uses
  %4 = alloca %struct.RangeBound, align 8         ; 6 uses
  %5 = alloca [2 x %struct.RangeBound], align 16  ; 6 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call signext i8 @range_get_flags(ptr noundef %2) #10
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %multirange_bsearch_match.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %multirange_bsearch_match.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @range_deserialize(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a) #10
  %i.h = load i32, ptr %i.d, align 4              ; 2 uses
  %.not30.i = icmp eq i32 %i.h, 0
  br i1 %.not30.i, label %multirange_bsearch_match.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %multirange_range_contains_bsearch_comparison.exit
  %.01629.i = phi i32 [ %.2.i, %multirange_range_contains_bsearch_comparison.exit ], [ %i.h, %bb.c ] ; 2 uses
  %.01728.i = phi i32 [ %.219.i, %multirange_range_contains_bsearch_comparison.exit ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.i = add i32 %.01728.i, %.01629.i
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef %1, i32 noundef %i.j, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.k = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef nonnull %3) #10
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %multirange_range_contains_bsearch_comparison.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #10
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #10
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %.thread.i

bb.h:                                             ; preds = %bb.d
  %i.s = add nuw i32 %i.j, 1
  br label %multirange_range_contains_bsearch_comparison.exit

.thread.i:                                        ; preds = %bb.f, %bb.g
  %.1.ph.ph = phi i1 [ false, %bb.g ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %multirange_bsearch_match.exit

multirange_range_contains_bsearch_comparison.exit: ; preds = %.lr.ph.i, %bb.h
  %.219.i = phi i32 [ %i.s, %bb.h ], [ %.01728.i, %.lr.ph.i ] ; 2 uses
  %.2.i = phi i32 [ %.01629.i, %bb.h ], [ %i.j, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.t = icmp ult i32 %.219.i, %.2.i
  br i1 %i.t, label %.lr.ph.i, label %multirange_bsearch_match.exit, !llvm.loop !2

multirange_bsearch_match.exit:                    ; preds = %multirange_range_contains_bsearch_comparison.exit, %.thread.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %.1.ph.ph, %.thread.i ], [ false, %bb.c ], [ false, %multirange_range_contains_bsearch_comparison.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @range_contains_multirange(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.m, align 8
  %.not.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call ptr @lookup_type_cache(i32 noundef %i.j, i32 noundef 65536) #10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.j) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.p, ptr %i.w, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call zeroext i1 @range_contains_multirange_internal(ptr noundef %i.y, ptr noundef %i.d, ptr noundef nonnull %i.h)
  %i.aa = zext i1 %i.z to i64
  ret i64 %i.aa
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @range_contains_multirange_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RangeBound, align 8         ; 4 uses
  %4 = alloca %struct.RangeBound, align 8         ; 4 uses
  %5 = alloca %struct.RangeBound, align 8         ; 4 uses
  %6 = alloca %struct.RangeBound, align 8         ; 4 uses
  %7 = alloca %struct.RangeBound, align 8         ; 4 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %range_bounds_contains.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call signext i8 @range_get_flags(ptr noundef %1) #10
  %i.f = and i8 %i.e, 1
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.c, label %range_bounds_contains.exit

bb.c:                                             ; preds = %bb.b
  call void @range_deserialize(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #10
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %7)
  %i.g = load i32, ptr %i.b, align 4
  %i.h = add i32 %i.g, -1
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %i.h, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %i.i = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #10
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6) #10
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %range_bounds_contains.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %range_bounds_contains.exit

range_bounds_contains.exit:                       ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @range_contained_by_multirange(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.m, align 8
  %.not.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call ptr @lookup_type_cache(i32 noundef %i.j, i32 noundef 65536) #10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.j) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.p, ptr %i.w, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call zeroext i1 @multirange_contains_range_internal(ptr noundef %i.y, ptr noundef nonnull %i.h, ptr noundef %i.d)
  %i.aa = zext i1 %i.z to i64
  ret i64 %i.aa
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @multirange_contained_by_range(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.m, align 8
  %.not.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call ptr @lookup_type_cache(i32 noundef %i.j, i32 noundef 65536) #10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.j) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.p, ptr %i.w, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call zeroext i1 @range_contains_multirange_internal(ptr noundef %i.y, ptr noundef %i.h, ptr noundef nonnull %i.d)
  %i.aa = zext i1 %i.z to i64
  ret i64 %i.aa
}

declare void @range_deserialize(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @multirange_eq_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RangeBound, align 8         ; 4 uses
  %4 = alloca %struct.RangeBound, align 8         ; 4 uses
  %5 = alloca %struct.RangeBound, align 8         ; 4 uses
  %6 = alloca %struct.RangeBound, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.21) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1955, ptr noundef nonnull @__func__.multirange_eq_internal) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %.not19 = icmp eq i32 %i.h, %i.j
  br i1 %.not19, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %bb.e
  %i.l = add nuw nsw i32 %.022, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %i.h
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !35

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.022 = phi i32 [ %i.l, %bb.d ], [ 0, %.preheader ] ; 3 uses
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef %1, i32 noundef %.022, ptr noundef nonnull %3, ptr noundef nonnull %4)
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef %2, i32 noundef %.022, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %i.m = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #10
  %.not20 = icmp eq i32 %i.m, 0
  br i1 %.not20, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.n = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6) #10
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph, %bb.d, %.preheader, %bb.c
  %.017 = phi i1 [ false, %bb.c ], [ true, %.preheader ], [ false, %.lr.ph ], [ false, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %.017
}

declare i32 @range_cmp_bounds(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @multirange_eq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.m, align 8
  %.not.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call ptr @lookup_type_cache(i32 noundef %i.j, i32 noundef 65536) #10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.j) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.p, ptr %i.w, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call zeroext i1 @multirange_eq_internal(ptr noundef %i.y, ptr noundef nonnull %i.d, ptr noundef %i.h)
  %i.aa = zext i1 %i.z to i64
  ret i64 %i.aa
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @multirange_ne_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @multirange_eq_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @multirange_ne(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.m, align 8
  %.not.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call ptr @lookup_type_cache(i32 noundef %i.j, i32 noundef 65536) #10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.j) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.p, ptr %i.w, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call zeroext i1 @multirange_eq_internal(ptr noundef %i.y, ptr noundef nonnull %i.d, ptr noundef %i.h)
  %i.aa = xor i1 %i.z, true
  %i.ab = zext i1 %i.aa to i64
  ret i64 %i.ab
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @range_overlaps_multirange(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.m, align 8
  %.not.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call ptr @lookup_type_cache(i32 noundef %i.j, i32 noundef 65536) #10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.j) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.p, ptr %i.w, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call zeroext i1 @range_overlaps_multirange_internal(ptr noundef %i.y, ptr noundef %i.d, ptr noundef nonnull %i.h)
  %i.aa = zext i1 %i.z to i64
  ret i64 %i.aa
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @range_overlaps_multirange_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RangeBound, align 8         ; 5 uses
  %4 = alloca %struct.RangeBound, align 8         ; 5 uses
  %5 = alloca [2 x %struct.RangeBound], align 16  ; 5 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call signext i8 @range_get_flags(ptr noundef %1) #10
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %multirange_bsearch_match.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %multirange_bsearch_match.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @range_deserialize(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a) #10
  %i.h = load i32, ptr %i.d, align 4              ; 2 uses
  %.not30.i = icmp eq i32 %i.h, 0
  br i1 %.not30.i, label %multirange_bsearch_match.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %multirange_range_overlaps_bsearch_comparison.exit
  %.01629.i = phi i32 [ %.2.i, %multirange_range_overlaps_bsearch_comparison.exit ], [ %i.h, %bb.c ] ; 2 uses
  %.01728.i = phi i32 [ %.219.i, %multirange_range_overlaps_bsearch_comparison.exit ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.i = add i32 %.01728.i, %.01629.i
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef %2, i32 noundef %i.j, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.k = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef nonnull %3) #10
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %multirange_range_overlaps_bsearch_comparison.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw i32 %i.j, 1
  br label %multirange_range_overlaps_bsearch_comparison.exit

.thread.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %multirange_bsearch_match.exit

multirange_range_overlaps_bsearch_comparison.exit: ; preds = %.lr.ph.i, %bb.e
  %.219.i = phi i32 [ %i.o, %bb.e ], [ %.01728.i, %.lr.ph.i ] ; 2 uses
  %.2.i = phi i32 [ %.01629.i, %bb.e ], [ %i.j, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.p = icmp ult i32 %.219.i, %.2.i
  br i1 %i.p, label %.lr.ph.i, label %multirange_bsearch_match.exit, !llvm.loop !2

multirange_bsearch_match.exit:                    ; preds = %multirange_range_overlaps_bsearch_comparison.exit, %.thread.i, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.thread.i ], [ false, %bb.c ], [ false, %multirange_range_overlaps_bsearch_comparison.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @multirange_overlaps_range(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.m, align 8
  %.not.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call ptr @lookup_type_cache(i32 noundef %i.j, i32 noundef 65536) #10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.j) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.p, ptr %i.w, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call zeroext i1 @range_overlaps_multirange_internal(ptr noundef %i.y, ptr noundef %i.h, ptr noundef nonnull %i.d)
  %i.aa = zext i1 %i.z to i64
  ret i64 %i.aa
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @multirange_overlaps_multirange(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.m, align 8
  %.not.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call ptr @lookup_type_cache(i32 noundef %i.j, i32 noundef 65536) #10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.j) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.p, ptr %i.w, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call zeroext i1 @multirange_overlaps_multirange_internal(ptr noundef %i.y, ptr noundef nonnull %i.d, ptr noundef %i.h)
  %i.aa = zext i1 %i.z to i64
  ret i64 %i.aa
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @multirange_overlaps_multirange_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RangeBound, align 8         ; 7 uses
  %4 = alloca %struct.RangeBound, align 8         ; 7 uses
  %5 = alloca %struct.RangeBound, align 8         ; 8 uses
  %6 = alloca %struct.RangeBound, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %range_bounds_overlaps.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %range_bounds_overlaps.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph32, label %range_bounds_overlaps.exit.thread

.lr.ph32:                                         ; preds = %bb.c, %range_bounds_overlaps.exit
  %.030 = phi i32 [ %i.w, %range_bounds_overlaps.exit ], [ 0, %bb.c ] ; 2 uses
  %.02029 = phi i32 [ %.1.lcssa, %range_bounds_overlaps.exit ], [ 0, %bb.c ] ; 2 uses
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef %2, i32 noundef %.030, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %i.h = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph32
  %i.j = add i32 %.02029, 1                       ; 2 uses
  %.not47 = icmp slt i32 %i.j, %i.b
  br i1 %.not47, label %.lr.ph48, label %range_bounds_overlaps.exit.thread

.lr.ph:                                           ; preds = %.lr.ph48
  %i.k = add i32 %i.l, 1                          ; 2 uses
  %.not = icmp slt i32 %i.k, %i.b
  br i1 %.not, label %.lr.ph48, label %range_bounds_overlaps.exit.thread, !llvm.loop !36

.lr.ph48:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.l = phi i32 [ %i.k, %.lr.ph ], [ %i.j, %.lr.ph.preheader ] ; 3 uses
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.l, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.m = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph48, %.lr.ph32
  %.1.lcssa = phi i32 [ %.02029, %.lr.ph32 ], [ %i.l, %.lr.ph48 ]
  %i.o = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #10
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.q = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %6) #10
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %range_bounds_overlaps.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.s = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3) #10
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.f, label %range_bounds_overlaps.exit

bb.f:                                             ; preds = %bb.e
  %i.u = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %range_bounds_overlaps.exit.thread, label %range_bounds_overlaps.exit

range_bounds_overlaps.exit:                       ; preds = %bb.f, %bb.e
  %i.w = add nuw nsw i32 %.030, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %i.e
  br i1 %exitcond.not, label %range_bounds_overlaps.exit.thread, label %.lr.ph32, !llvm.loop !37

range_bounds_overlaps.exit.thread:                ; preds = %range_bounds_overlaps.exit, %bb.d, %bb.f, %.lr.ph.preheader, %.lr.ph, %bb.c, %bb.a, %bb.b
  %.021 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %range_bounds_overlaps.exit ], [ true, %bb.d ], [ true, %bb.f ], [ false, %.lr.ph.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %.021
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @range_overleft_multirange_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RangeBound, align 8         ; 3 uses
  %4 = alloca %struct.RangeBound, align 8         ; 4 uses
  %5 = alloca %struct.RangeBound, align 8         ; 3 uses
  %6 = alloca %struct.RangeBound, align 8         ; 4 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call signext i8 @range_get_flags(ptr noundef %1) #10
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @range_deserialize(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #10
  %i.g = load i32, ptr %i.d, align 4
  %i.h = add i32 %i.g, -1
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %i.h, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %i.i = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6) #10
  %i.j = icmp slt i32 %i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.j, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @range_overleft_multirange(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.RangeBound, align 8         ; 3 uses
  %2 = alloca %struct.RangeBound, align 8         ; 4 uses
  %3 = alloca %struct.RangeBound, align 8         ; 3 uses
  %4 = alloca %struct.RangeBound, align 8         ; 4 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum(ptr noundef %i.d) #10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @pg_detoast_datum(ptr noundef %i.h) #10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
end_hunk_0
begin_hunk_1_@range_overright_multirange:bb.a
  br i1 %.not.i7, label %bb.f, label %range_overright_multirange_internal.exit

bb.f:                                             ; preds = %multirange_get_typcache.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %range_overright_multirange_internal.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @range_deserialize(ptr noundef %i.z, ptr noundef %i.e, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #10
  call void @multirange_get_bounds(ptr noundef %i.z, ptr noundef nonnull %i.i, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.af = call i32 @range_cmp_bounds(ptr noundef %i.z, ptr noundef nonnull %1, ptr noundef nonnull %3) #10
  %i.ag = icmp sgt i32 %i.af, -1
  %i.ah = zext i1 %i.ag to i64
  br label %range_overright_multirange_internal.exit

range_overright_multirange_internal.exit:         ; preds = %multirange_get_typcache.exit, %bb.f, %bb.g
  %.0.i8 = phi i64 [ %i.ah, %bb.g ], [ 0, %bb.f ], [ 0, %multirange_get_typcache.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %.0.i8
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @multirange_overright_range(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.RangeBound, align 8         ; 4 uses
  %2 = alloca %struct.RangeBound, align 8         ; 3 uses
  %3 = alloca %struct.RangeBound, align 8         ; 4 uses
  %4 = alloca %struct.RangeBound, align 8         ; 3 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum(ptr noundef %i.d) #10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @pg_detoast_datum(ptr noundef %i.h) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call signext i8 @range_get_flags(ptr noundef %i.i) #10
  %i.n = and i8 %i.m, 1
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.s, align 8
  %.not.i = icmp eq i32 %i.u, %i.p
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = tail call ptr @lookup_type_cache(i32 noundef %i.p, i32 noundef 65536) #10 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 448
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.aa = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.p) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.v, ptr %i.ac, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.d, %bb.g
  %.0.i = phi ptr [ %i.v, %bb.g ], [ %i.s, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 448 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  call void @multirange_get_bounds(ptr noundef %i.ae, ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.af = load ptr, ptr %i.ad, align 8
  call void @range_deserialize(ptr noundef %i.af, ptr noundef %i.i, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #10
  %i.ag = load ptr, ptr %i.ad, align 8
  %i.ah = call i32 @range_cmp_bounds(ptr noundef %i.ag, ptr noundef nonnull %1, ptr noundef nonnull %3) #10
  %i.ai = icmp sgt i32 %i.ah, -1
  %i.aj = zext i1 %i.ai to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %multirange_get_typcache.exit
  %.0 = phi i64 [ %i.aj, %multirange_get_typcache.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @multirange_overright_multirange(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.RangeBound, align 8         ; 4 uses
  %2 = alloca %struct.RangeBound, align 8         ; 3 uses
  %3 = alloca %struct.RangeBound, align 8         ; 4 uses
  %4 = alloca %struct.RangeBound, align 8         ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.s, align 8
  %.not.i = icmp eq i32 %i.u, %i.p
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = tail call ptr @lookup_type_cache(i32 noundef %i.p, i32 noundef 65536) #10 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 448
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.aa = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.p) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.v, ptr %i.ac, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.d, %bb.g
  %.0.i = phi ptr [ %i.v, %bb.g ], [ %i.s, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 448 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  call void @multirange_get_bounds(ptr noundef %i.ae, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.af = load ptr, ptr %i.ad, align 8
  call void @multirange_get_bounds(ptr noundef %i.af, ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.ag = load ptr, ptr %i.ad, align 8
  %i.ah = call i32 @range_cmp_bounds(ptr noundef %i.ag, ptr noundef nonnull %1, ptr noundef nonnull %3) #10
  %i.ai = icmp sgt i32 %i.ah, -1
  %i.aj = zext i1 %i.ai to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %multirange_get_typcache.exit
  %.0 = phi i64 [ %i.aj, %multirange_get_typcache.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @multirange_contains_multirange(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.m, align 8
  %.not.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call ptr @lookup_type_cache(i32 noundef %i.j, i32 noundef 65536) #10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.j) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.p, ptr %i.w, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call zeroext i1 @multirange_contains_multirange_internal(ptr noundef %i.y, ptr noundef nonnull %i.d, ptr noundef %i.h)
  %i.aa = zext i1 %i.z to i64
  ret i64 %i.aa
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @multirange_contains_multirange_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RangeBound, align 8         ; 5 uses
  %4 = alloca %struct.RangeBound, align 8         ; 7 uses
  %5 = alloca %struct.RangeBound, align 8         ; 6 uses
  %6 = alloca %struct.RangeBound, align 8         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %range_bounds_contains.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.b, 0
  br i1 %i.f, label %range_bounds_contains.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph32, label %range_bounds_contains.exit

bb.d:                                             ; preds = %bb.e
  %i.h = add nuw nsw i32 %.030, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.h, %i.d
  br i1 %exitcond.not, label %range_bounds_contains.exit, label %.lr.ph32, !llvm.loop !38

.lr.ph32:                                         ; preds = %bb.c, %bb.d
  %.030 = phi i32 [ %i.h, %bb.d ], [ 0, %bb.c ]   ; 2 uses
  %.02029 = phi i32 [ %.1.lcssa, %bb.d ], [ 0, %bb.c ] ; 2 uses
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef %2, i32 noundef %.030, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %i.i = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph32
  %i.k = add i32 %.02029, 1                       ; 2 uses
  %.not47 = icmp slt i32 %i.k, %i.b
  br i1 %.not47, label %.lr.ph48, label %range_bounds_contains.exit

.lr.ph:                                           ; preds = %.lr.ph48
  %i.l = add i32 %i.m, 1                          ; 2 uses
  %.not = icmp slt i32 %i.l, %i.b
  br i1 %.not, label %.lr.ph48, label %range_bounds_contains.exit, !llvm.loop !39

.lr.ph48:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.m = phi i32 [ %i.l, %.lr.ph ], [ %i.k, %.lr.ph.preheader ] ; 3 uses
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.m, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.n = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph48, %.lr.ph32
  %.1.lcssa = phi i32 [ %.02029, %.lr.ph32 ], [ %i.m, %.lr.ph48 ]
  %i.p = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #10
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %range_bounds_contains.exit

bb.e:                                             ; preds = %._crit_edge
  %i.r = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6) #10
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %range_bounds_contains.exit

range_bounds_contains.exit:                       ; preds = %bb.d, %._crit_edge, %bb.e, %.lr.ph.preheader, %.lr.ph, %bb.c, %bb.b, %bb.a
  %.021 = phi i1 [ false, %.lr.ph ], [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ false, %._crit_edge ], [ false, %bb.e ], [ false, %.lr.ph.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %.021
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @multirange_contained_by_multirange(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.m, align 8
  %.not.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call ptr @lookup_type_cache(i32 noundef %i.j, i32 noundef 65536) #10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.j) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.p, ptr %i.w, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call zeroext i1 @multirange_contains_multirange_internal(ptr noundef %i.y, ptr noundef %i.h, ptr noundef nonnull %i.d)
  %i.aa = zext i1 %i.z to i64
  ret i64 %i.aa
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @range_before_multirange(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.RangeBound, align 8         ; 3 uses
  %2 = alloca %struct.RangeBound, align 8         ; 4 uses
  %3 = alloca %struct.RangeBound, align 8         ; 4 uses
  %4 = alloca %struct.RangeBound, align 8         ; 3 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum(ptr noundef %i.d) #10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @pg_detoast_datum(ptr noundef %i.h) #10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.n, align 8
  %.not.i = icmp eq i32 %i.p, %i.k
  br i1 %.not.i, label %multirange_get_typcache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = tail call ptr @lookup_type_cache(i32 noundef %i.k, i32 noundef 65536) #10 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 448
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.v = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.k) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @__func__.multirange_get_typcache) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.q, ptr %i.x, align 8
  br label %multirange_get_typcache.exit

multirange_get_typcache.exit:                     ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.q, %bb.e ], [ %i.n, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 448
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.aa = tail call signext i8 @range_get_flags(ptr noundef %i.e) #10
  %i.ab = and i8 %i.aa, 1
  %.not.i7 = icmp eq i8 %i.ab, 0
  br i1 %.not.i7, label %bb.f, label %range_before_multirange_internal.exit

bb.f:                                             ; preds = %multirange_get_typcache.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %range_before_multirange_internal.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @range_deserialize(ptr noundef %i.z, ptr noundef %i.e, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #10
  call void @multirange_get_bounds(ptr noundef %i.z, ptr noundef nonnull %i.i, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.af = call i32 @range_cmp_bounds(ptr noundef %i.z, ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  %.lobit = lshr i32 %i.af, 31
  %i.ag = zext nneg i32 %.lobit to i64
  br label %range_before_multirange_internal.exit

range_before_multirange_internal.exit:            ; preds = %multirange_get_typcache.exit, %bb.f, %bb.g
  %.0.i8 = phi i64 [ %i.ag, %bb.g ], [ 0, %bb.f ], [ 0, %multirange_get_typcache.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %.0.i8
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @range_before_multirange_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RangeBound, align 8         ; 3 uses
  %4 = alloca %struct.RangeBound, align 8         ; 4 uses
  %5 = alloca %struct.RangeBound, align 8         ; 4 uses
  %6 = alloca %struct.RangeBound, align 8         ; 3 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call signext i8 @range_get_flags(ptr noundef %1) #10
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @range_deserialize(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #10
  call void @multirange_get_bounds(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %i.g = call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %i.h = icmp slt i32 %i.g, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.h, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @multirange_before_range(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.RangeBound, align 8         ; 4 uses
  %2 = alloca %struct.RangeBound, align 8         ; 3 uses
  %3 = alloca %struct.RangeBound, align 8         ; 3 uses
  %4 = alloca %struct.RangeBound, align 8         ; 4 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum(ptr noundef %i.d) #10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @pg_detoast_datum(ptr noundef %i.h) #10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.b
end_hunk_1
