Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/gram?download=true
inline.NumInlined: 1479
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@extractArgTypes:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.a, align 4              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph24, label %.critedge

.lr.ph24:                                         ; preds = %.lr.ph, %bb.c
  %i.e = phi i32 [ %i.n, %bb.c ], [ %i.c, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %.0111723 = phi ptr [ %.1, %bb.c ], [ null, %.lr.ph ] ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8
  switch i32 %i.j, label %bb.b [
    i32 111, label %bb.c
    i32 116, label %bb.c
  ]

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.a
  %.011.lcssa = phi ptr [ null, %bb.a ], [ null, %.lr.ph ], [ %.1, %bb.c ]
  ret ptr %.011.lcssa

bb.b:                                             ; preds = %.lr.ph24
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @lappend(ptr noundef %.0111723, ptr noundef %i.l) #9
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph24, %.lr.ph24, %bb.b
  %i.n = phi i32 [ %.pre, %bb.b ], [ %i.e, %.lr.ph24 ], [ %i.e, %.lr.ph24 ] ; 2 uses
  %.1 = phi ptr [ %i.m, %bb.b ], [ %.0111723, %.lr.ph24 ], [ %.0111723, %.lr.ph24 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph24, label %.critedge
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @check_func_name(ptr nofree noundef readonly returned captures(address_is_null, ret: address, provenance) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph13, label %.critedge

.lr.ph13:                                         ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph13, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 491
  br i1 %i.i, label %bb.b, label %.split

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  ret ptr %0

.split:                                           ; preds = %bb.c
  tail call void @scanner_yyerror(ptr noundef nonnull @.str.270, ptr noundef %1) #12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @makeOrderedSetArgs(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val = load i32, ptr %i.a, align 4             ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val15 = load ptr, ptr %i.b, align 8
  %i.c = add i32 %.val, -1
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %.val15, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 118
  br i1 %i.i, label %list_length.exit, label %list_length.exit18

list_length.exit:                                 ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 16
  %.val16 = load ptr, ptr %i.j, align 8
  %i.k = load ptr, ptr %.val16, align 8           ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.m, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %list_length.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i32, ptr %i.n, align 8
  %.not14 = icmp eq i32 %i.o, 118
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call zeroext i1 @equal(ptr noundef %i.q, ptr noundef %i.s) #9
  br i1 %i.t, label %.list_length.exit18_crit_edge, label %bb.d

.list_length.exit18_crit_edge:                    ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4
  br label %list_length.exit18

bb.d:                                             ; preds = %bb.c, %bb.b, %list_length.exit
  %i.u = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.v = tail call i32 @errcode(i32 noundef 1088) #9 ; 0 uses
  %i.w = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.279) #9 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = tail call i32 @scanner_errposition(i32 noundef %i.y, ptr noundef %2) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 20177, ptr noundef nonnull @__func__.makeOrderedSetArgs) #9
  unreachable

list_length.exit18:                               ; preds = %.list_length.exit18_crit_edge, %bb.a
  %i.aa = phi i32 [ %.val, %bb.a ], [ %.pre, %.list_length.exit18_crit_edge ]
  %.0 = phi ptr [ %1, %bb.a ], [ null, %.list_length.exit18_crit_edge ]
  %i.ab = tail call ptr @makeInteger(i32 noundef %i.aa) #9
  %i.ac = tail call ptr @list_concat(ptr noundef nonnull %0, ptr noundef %.0) #9
  %i.ad = tail call ptr @list_make2_impl(i32 noundef 1, ptr %i.ac, ptr %i.ab) #9
  ret ptr %i.ad
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @extractAggrArgTypes(ptr nofree readonly captures(address_is_null) %.16.val.0.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.16.val.0.val, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.16.val.0.val, null
  br i1 %.not.i, label %extractArgTypes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.16.val.0.val, i64 16
  %i.c = load i32, ptr %i.a, align 4              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph24.i, label %extractArgTypes.exit

.lr.ph24.i:                                       ; preds = %.lr.ph.i, %bb.c
  %i.e = phi i32 [ %i.n, %bb.c ], [ %i.c, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0111723.i = phi ptr [ %.1.i, %bb.c ], [ null, %.lr.ph.i ] ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8
  switch i32 %i.j, label %bb.b [
    i32 111, label %bb.c
    i32 116, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph24.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @lappend(ptr noundef %.0111723.i, ptr noundef %i.l) #9
  %.pre.i = load i32, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph24.i, %.lr.ph24.i
  %i.n = phi i32 [ %.pre.i, %bb.b ], [ %i.e, %.lr.ph24.i ], [ %i.e, %.lr.ph24.i ] ; 2 uses
  %.1.i = phi ptr [ %i.m, %bb.b ], [ %.0111723.i, %.lr.ph24.i ], [ %.0111723.i, %.lr.ph24.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next.i, %i.o
  br i1 %i.p, label %.lr.ph24.i, label %extractArgTypes.exit

extractArgTypes.exit:                             ; preds = %bb.c, %bb.a, %.lr.ph.i
  %.011.lcssa.i = phi ptr [ null, %bb.a ], [ null, %.lr.ph.i ], [ %.1.i, %bb.c ]
  ret ptr %.011.lcssa.i
}

declare ptr @list_make3_impl(i32 noundef, ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @preprocess_pub_all_objtype_list(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1
  store i8 0, ptr %3, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.d = load ptr, ptr %5, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4
  switch i32 %i.h, label %bb.i [
    i32 0, label %bb.c
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.a
  %i.i = load i8, ptr %2, align 1, !range !5, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.l = tail call i32 @errcode(i32 noundef 16801924) #9 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.302) #9 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.303) #9 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = tail call i32 @scanner_errposition(i32 noundef %i.p, ptr noundef %4) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 20765, ptr noundef nonnull @__func__.preprocess_pub_all_objtype_list) #9
  unreachable

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %2, align 1
  %i.r = load ptr, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call ptr @list_concat(ptr noundef %i.r, ptr noundef %i.t) #9
  store ptr %i.u, ptr %1, align 8
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph.a
  %i.v = load i8, ptr %3, align 1, !range !5, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.y = tail call i32 @errcode(i32 noundef 16801924) #9 ; 0 uses
  %i.z = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.302) #9 ; 0 uses
  %i.aa = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.304) #9 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = tail call i32 @scanner_errposition(i32 noundef %i.ac, ptr noundef %4) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 20777, ptr noundef nonnull @__func__.preprocess_pub_all_objtype_list) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  store i8 1, ptr %3, align 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.a, %bb.e, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.a, align 4
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph.a, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %bb.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @preprocess_pubobj_list(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %.val, align 8             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %.not4966 = icmp sgt i32 %i.g, 0
  br i1 %.not4966, label %.lr.ph, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.i = tail call i32 @errcode(i32 noundef 16801924) #9 ; 0 uses
  %i.j = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.302) #9 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.305) #9 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load i32, ptr %i.l, align 8
  %i.n = tail call i32 @scanner_errposition(i32 noundef %i.m, ptr noundef %1) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 20804, ptr noundef nonnull @__func__.preprocess_pubobj_list) #9
  unreachable

.lr.ph:                                           ; preds = %.preheader, %.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread ], [ 0, %.preheader ] ; 2 uses
  %.04367 = phi i32 [ %i.bo, %.thread ], [ 4, %.preheader ] ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8              ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp eq i32 %i.s, 4
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  store i32 %.04367, ptr %i.r, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.u = phi i32 [ %.04367, %bb.d ], [ %i.s, %.lr.ph ] ; 2 uses
  switch i32 %i.u, label %.thread [
    i32 0, label %bb.f
    i32 2, label %bb.j
    i32 3, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not56 = icmp eq ptr %i.w, null
  br i1 %.not56, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %.not57 = icmp eq ptr %i.y, null
  br i1 %.not57, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.z = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.aa = tail call i32 @errcode(i32 noundef 16801924) #9 ; 0 uses
  %i.ab = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.306) #9 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = tail call i32 @scanner_errposition(i32 noundef %i.ad, ptr noundef %1) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 20820, ptr noundef nonnull @__func__.preprocess_pubobj_list) #9
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.af = tail call noundef ptr @palloc0(i64 noundef 40) #9 ; 3 uses
  store i32 273, ptr %i.af, align 4
  %i.ag = load ptr, ptr %i.v, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = tail call ptr @makeRangeVar(ptr noundef null, ptr noundef %i.ag, i32 noundef %i.ai) #9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.af, ptr %i.al, align 8
  store ptr null, ptr %i.v, align 8
  %.pre = load i32, ptr %i.r, align 4
  br label %.thread

bb.j:                                             ; preds = %bb.e, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not50 = icmp eq ptr %i.an, null
  br i1 %.not50, label %.thread59, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not51 = icmp eq ptr %i.ap, null
  br i1 %.not51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ar = tail call i32 @errcode(i32 noundef 16801924) #9 ; 0 uses
  %i.as = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.307) #9 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.au = load i32, ptr %i.at, align 8
  %i.av = tail call i32 @scanner_errposition(i32 noundef %i.au, ptr noundef %1) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 20841, ptr noundef nonnull @__func__.preprocess_pubobj_list) #9
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not53 = icmp eq ptr %i.ax, null
  br i1 %.not53, label %.thread60, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.az = tail call i32 @errcode(i32 noundef 16801924) #9 ; 0 uses
  %i.ba = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.308) #9 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = tail call i32 @scanner_errposition(i32 noundef %i.bc, ptr noundef %1) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 20848, ptr noundef nonnull @__func__.preprocess_pubobj_list) #9
  unreachable

.thread59:                                        ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %.not54 = icmp eq ptr %i.bf, null
end_hunk_0
