Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/funcapi?download=true
inline.NumInlined: 43
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@TypeGetTupleDesc:bb.a
  %i.d = icmp eq i8 %i.c, 99
  br i1 %i.d, label %select.unfold, label %.fold.split.i

bb.c:                                             ; preds = %bb.a
  switch i32 %0, label %select.unfold [
    i32 2249, label %get_type_func_class.exit
    i32 2278, label %.fold.split.i
    i32 2275, label %.fold.split.i
  ]

bb.d:                                             ; preds = %bb.a
  %i.e = tail call ptr @lookup_rowtype_tupdesc_copy(i32 noundef %0, i32 noundef -1) #7 ; 7 uses
  %.not32 = icmp eq ptr %1, null
  br i1 %.not32, label %bb.l, label %list_length.exit

list_length.exit:                                 ; preds = %bb.d
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %.not33 = icmp eq i32 %i.h, %i.f
  br i1 %.not33, label %.preheader, label %bb.e

.preheader:                                       ; preds = %list_length.exit
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr i8, ptr %1, i64 16
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.f

bb.e:                                             ; preds = %list_length.exit
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.l = tail call i32 @errcode(i32 noundef 67141764) #7 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1934, ptr noundef nonnull @__func__.TypeGetTupleDesc) #7
  unreachable

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.val35 = load ptr, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not34 = icmp eq ptr %i.q, null
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.e, align 8
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 3
  %i.u = getelementptr i8, ptr %i.e, i64 %i.t
  %i.v = getelementptr [100 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = getelementptr i8, ptr %i.v, i64 36
  tail call void @namestrcpy(ptr noundef nonnull %i.w, ptr noundef nonnull %i.q) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 2249, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 -1, ptr %i.y, align 8
  br label %bb.l

.fold.split.i:                                    ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.c, %bb.b
  %i.z = icmp eq ptr %1, null
  br i1 %i.z, label %bb.i, label %list_length.exit37

bb.i:                                             ; preds = %.fold.split.i
  %i.aa = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ab = tail call i32 @errcode(i32 noundef 67141764) #7 ; 0 uses
  %i.ac = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1960, ptr noundef nonnull @__func__.TypeGetTupleDesc) #7
  unreachable

list_length.exit37:                               ; preds = %.fold.split.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %.not = icmp eq i32 %i.ae, 1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %list_length.exit37
  %i.af = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ag = tail call i32 @errcode(i32 noundef 67141764) #7 ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1966, ptr noundef nonnull @__func__.TypeGetTupleDesc) #7
  unreachable

bb.k:                                             ; preds = %list_length.exit37
  %i.ai = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %.val, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call ptr @CreateTemplateTupleDesc(i32 noundef 1) #7 ; 3 uses
  tail call void @TupleDescInitEntry(ptr noundef %i.am, i16 noundef signext 1, ptr noundef %i.al, i32 noundef %0, i32 noundef -1, i32 noundef 0) #7
  tail call void @TupleDescFinalize(ptr noundef %i.am) #7
  br label %bb.l

get_type_func_class.exit:                         ; preds = %bb.c
  %i.an = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ao = tail call i32 @errcode(i32 noundef 67141764) #7 ; 0 uses
  %i.ap = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1985, ptr noundef nonnull @__func__.TypeGetTupleDesc) #7
  unreachable

select.unfold:                                    ; preds = %bb.b, %bb.a, %bb.c
  %i.aq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ar = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.20) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1990, ptr noundef nonnull @__func__.TypeGetTupleDesc) #7
  unreachable

bb.l:                                             ; preds = %bb.d, %._crit_edge, %bb.k
  %.027 = phi ptr [ %i.e, %._crit_edge ], [ %i.e, %bb.d ], [ %i.am, %bb.k ]
  ret ptr %.027
}

declare void @namestrcpy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @extract_variadic_args(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call zeroext i1 @get_fn_expr_variadic(ptr noundef %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr null, ptr %3, align 8
  store ptr null, ptr %4, align 8
  store ptr null, ptr %5, align 8
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !5, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.k, align 8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call ptr @pg_detoast_datum(ptr noundef %i.p) #7 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4              ; 3 uses
  call void @get_typlenbyvalalign(i32 noundef %i.s, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #7
  %i.t = load i16, ptr %i.f, align 2
  %i.u = sext i16 %i.t to i32
  %i.v = load i8, ptr %i.d, align 1, !range !5, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = load i8, ptr %i.e, align 1
  call void @deconstruct_array(ptr noundef %i.q, i32 noundef %i.s, i32 noundef %i.u, i1 noundef zeroext %i.w, i8 noundef signext %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %i.y = load i32, ptr %i.c, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = call ptr @palloc0(i64 noundef %i.aa) #7 ; 2 uses
  %i.ac = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %bb.c, %.lr.ph73
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %.lr.ph73 ], [ 0, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv82
  store i32 %i.s, ptr %i.ae, align 4
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.af = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next83, %i.ag
  br i1 %i.ah, label %.lr.ph73, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph73, %bb.c
  %i.ai = phi i32 [ %i.ac, %bb.c ], [ %i.af, %.lr.ph73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %.pre = load ptr, ptr %i.a, align 8
  %.pre85 = load ptr, ptr %i.b, align 8
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = sext i16 %i.ak to i32
  %i.am = sub i32 %i.al, %1                       ; 5 uses
  %i.an = sext i32 %i.am to i64                   ; 5 uses
  %i.ao = tail call ptr @palloc0(i64 noundef %i.an) #7 ; 5 uses
  %i.ap = shl nsw i64 %i.an, 3
  %i.aq = tail call ptr @palloc0(i64 noundef %i.ap) #7 ; 5 uses
  %i.ar = shl nsw i64 %i.an, 2
  %i.as = tail call ptr @palloc0(i64 noundef %i.ar) #7 ; 5 uses
  %i.at = icmp sgt i32 %i.am, 0
  br i1 %i.at, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %2, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.av = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.aw = add i32 %1, %i.av                       ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.au, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i8, ptr %i.az, align 8, !range !5, !noundef !6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = tail call i32 @get_fn_expr_argtype(ptr noundef %i.bc, i32 noundef %i.aw) #7
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv ; 2 uses
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = load i64, ptr %i.ay, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = load i32, ptr %i.be, align 4
  %.not.us = icmp eq i32 %i.bh, 0
  br i1 %.not.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %6 = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %6, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %bb.k ], [ 0, %.lr.ph ] ; 5 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv79 to i32  ; 3 uses
  %i.bj = add i32 %1, %i.bi                       ; 3 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.au, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8, !range !5, !noundef !6
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv79
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = load ptr, ptr %0, align 8
  %i.bq = tail call i32 @get_fn_expr_argtype(ptr noundef %i.bp, i32 noundef %i.bj) #7 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv79 ; 3 uses
  store i32 %i.bq, ptr %i.br, align 4
  %i.bs = icmp eq i32 %i.bq, 705
  br i1 %i.bs, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.split
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = tail call zeroext i1 @get_fn_expr_arg_stable(ptr noundef %i.bt, i32 noundef %i.bj) #7
  br i1 %i.bu, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i32 25, ptr %i.br, align 4
  %i.bv = load i8, ptr %i.bm, align 8, !range !5, !noundef !6
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = load i64, ptr %i.bl, align 8
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = tail call ptr @cstring_to_text(ptr noundef %i.by) #7
  %i.ca = ptrtoint ptr %i.bz to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %.lr.ph.split
  %i.cb = load i64, ptr %i.bl, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sink = phi i64 [ %i.cb, %bb.i ], [ %i.ca, %bb.h ], [ 0, %bb.g ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv79
  store i64 %.sink, ptr %i.cc, align 8
  %i.cd = load i32, ptr %i.br, align 4
  switch i32 %i.cd, label %bb.k [
    i32 705, label %.split.us
    i32 0, label %.split.us
  ]

.split.us:                                        ; preds = %.lr.ph.split.us, %bb.j, %bb.j
  %.us-phi = phi i32 [ %i.bi, %bb.j ], [ %i.bi, %bb.j ], [ %i.av, %.lr.ph.split.us ]
  %i.ce = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.cf = tail call i32 @errcode(i32 noundef 50856066) #7 ; 0 uses
  %i.cg = add nuw nsw i32 %.us-phi, 1
  %i.ch = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.21, i32 noundef %i.cg) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2097, ptr noundef nonnull @__func__.extract_variadic_args) #7
  unreachable

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next80, %i.an
  br i1 %7, label %.lr.ph.split, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %bb.e, %bb.k, %bb.d, %._crit_edge
  %i.ci = phi i32 [ %i.ai, %._crit_edge ], [ %i.am, %bb.k ], [ %i.am, %bb.d ], [ %i.am, %bb.e ]
  %i.cj = phi ptr [ %.pre85, %._crit_edge ], [ %i.ao, %bb.k ], [ %i.ao, %bb.d ], [ %i.ao, %bb.e ]
  %i.ck = phi ptr [ %.pre, %._crit_edge ], [ %i.aq, %bb.k ], [ %i.aq, %bb.d ], [ %i.aq, %bb.e ]
  %.164 = phi ptr [ %i.ab, %._crit_edge ], [ %i.as, %bb.k ], [ %i.as, %bb.d ], [ %i.as, %bb.e ]
  store ptr %i.ck, ptr %3, align 8
  store ptr %i.cj, ptr %5, align 8
  store ptr %.164, ptr %4, align 8
  br label %bb.l

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %.loopexit
  %.166 = phi i32 [ %i.ci, %.loopexit ], [ -1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.166
}

declare zeroext i1 @get_fn_expr_variadic(ptr noundef) local_unnamed_addr #3

declare void @get_typlenbyvalalign(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @deconstruct_array(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @palloc0(i64 noundef) local_unnamed_addr #3

declare i32 @get_fn_expr_argtype(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @get_fn_expr_arg_stable(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cstring_to_text(ptr noundef) local_unnamed_addr #3

declare void @MemoryContextDelete(ptr noundef) local_unnamed_addr #3

declare void @assign_record_type_typmod(ptr noundef) local_unnamed_addr #3

declare i32 @get_typcollation(i32 noundef) local_unnamed_addr #3

declare i32 @exprInputCollation(ptr noundef) local_unnamed_addr #3

declare i32 @getBaseType(i32 noundef) local_unnamed_addr #3

declare i32 @get_element_type(i32 noundef) local_unnamed_addr #3

declare i32 @get_range_subtype(i32 noundef) local_unnamed_addr #3

declare i32 @get_multirange_range(i32 noundef) local_unnamed_addr #3

declare i32 @get_array_type(i32 noundef) local_unnamed_addr #3

declare i32 @get_range_multirange(i32 noundef) local_unnamed_addr #3

declare signext i8 @get_typtype(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
end_hunk_0
