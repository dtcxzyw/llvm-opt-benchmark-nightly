Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/regexp?download=true
inline.NumInlined: 139
inline.NumDeleted: 15
begin_hunk_0_@regexp_matches:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = icmp slt i32 %i.aq, %i.as
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = tail call fastcc ptr @build_regexp_match_result(ptr noundef nonnull %i.ao)
  %i.av = load i32, ptr %i.ap, align 8
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.ap, align 8
  %i.ax = load i64, ptr %i.am, align 8
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.am, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store i32 1, ptr %i.bb, align 8
  %i.bc = ptrtoint ptr %i.au to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @end_MultiFuncCall(ptr noundef nonnull %0, ptr noundef nonnull %i.am) #7
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store i32 2, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.bg, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi i64 [ 0, %bb.g ], [ %i.bc, %bb.f ]
  ret i64 %.0
}

declare ptr @init_MultiFuncCall(ptr noundef) local_unnamed_addr #2

declare ptr @pg_detoast_datum_copy(ptr noundef) local_unnamed_addr #2

declare ptr @per_MultiFuncCall(ptr noundef) local_unnamed_addr #2

declare void @end_MultiFuncCall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @regexp_matches_no_flags(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @regexp_matches(ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @regexp_split_to_table(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pg_re_flags, align 4        ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.h) #7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.k = load i16, ptr %i.j, align 2
  %i.l = icmp sgt i16 %i.k, 2
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.o) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.r = tail call ptr @init_MultiFuncCall(ptr noundef nonnull %0) #7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.t, ptr @CurrentMemoryContext, align 8
  call fastcc void @parse_re_flags(ptr noundef %1, ptr noundef %i.q)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i8, ptr %i.v, align 4, !range !5, !noundef !6
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.z = tail call i32 @errcode(i32 noundef 50856066) #7 ; 0 uses
  %i.aa = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1771, ptr noundef nonnull @__func__.regexp_split_to_table) #7
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.e, align 8
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = tail call ptr @pg_detoast_datum_copy(ptr noundef %i.ac) #7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i32, ptr %i.ae, align 8
  %.val = load i32, ptr %1, align 4
  %i.ag = tail call fastcc ptr @setup_regexp_matches(ptr noundef %i.ad, ptr noundef %i.i, i32 %.val, i8 1, i32 noundef 0, i32 noundef %i.af, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
  store ptr %i.u, ptr @CurrentMemoryContext, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.ag, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.ai = tail call ptr @per_MultiFuncCall(ptr noundef nonnull %0) #7 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  %.not = icmp sgt i32 %i.am, %i.ao
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call fastcc i64 @build_regexp_split_result(ptr noundef nonnull %i.ak)
  %i.aq = load i32, ptr %i.al, align 8
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.al, align 8
  %i.as = load i64, ptr %i.ai, align 8
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ai, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i32 1, ptr %i.aw, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @end_MultiFuncCall(ptr noundef nonnull %0, ptr noundef nonnull %i.ai) #7
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i32 2, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ba, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0 = phi i64 [ 0, %bb.i ], [ %i.ap, %bb.h ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @build_regexp_split_result(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = shl i32 %i.d, 1                          ; 2 uses
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %i.h, -1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.o = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.26) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1874, ptr noundef nonnull @__func__.build_regexp_split_result) #7
  unreachable

.thread:                                          ; preds = %bb.a, %bb.b
  %.02126 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.p = sext i32 %i.h to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = icmp slt i32 %i.r, %.02126
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.27) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1878, ptr noundef nonnull @__func__.build_regexp_split_result) #7
  unreachable

bb.e:                                             ; preds = %.thread
  %.not = icmp eq ptr %i.b, null
  %i.v = sub nuw nsw i32 %i.r, %.02126            ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = zext nneg i32 %.02126 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = tail call i32 @pg_wchar2mb_with_len(ptr noundef %i.z, ptr noundef nonnull %i.b, i32 noundef %i.v) #7
  %i.ab = tail call ptr @cstring_to_text_with_len(ptr noundef nonnull %i.b, i32 noundef %i.aa) #7
  %i.ac = ptrtoint ptr %i.ab to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = add nuw i32 %.02126, 1
  %i.ag = sext i32 %i.af to i64
  %1 = zext nneg i32 %i.v to i64
  %i.ah = tail call i64 @DirectFunctionCall3Coll(ptr noundef nonnull @text_substr, i32 noundef 0, i64 noundef %i.ae, i64 noundef %i.ag, i64 noundef %1) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i64 [ %i.ac, %bb.f ], [ %i.ah, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @regexp_split_to_table_no_flags(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @regexp_split_to_table(ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @regexp_split_to_array(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pg_re_flags, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.b = load i16, ptr %i.a, align 2
  %i.c = icmp sgt i16 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.f) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call fastcc void @parse_re_flags(ptr noundef %1, ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i8, ptr %i.i, align 4, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.m = tail call i32 @errcode(i32 noundef 50856066) #7 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.18) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1826, ptr noundef nonnull @__func__.regexp_split_to_array) #7
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.q) #7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i64, ptr %i.s, align 8
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.u) #7
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8
  %.val = load i32, ptr %1, align 4
  %i.y = tail call fastcc ptr @setup_regexp_matches(ptr noundef %i.r, ptr noundef %i.v, i32 %.val, i8 1, i32 noundef 0, i32 noundef %i.x, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.z, align 8
  %i.ac = load i32, ptr %i.aa, align 8
  %.not12 = icmp sgt i32 %i.ab, %i.ac
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.013 = phi ptr [ %i.af, %.lr.ph ], [ null, %bb.e ]
  %i.ad = tail call fastcc i64 @build_regexp_split_result(ptr noundef nonnull %i.y)
  %i.ae = load ptr, ptr @CurrentMemoryContext, align 8
  %i.af = tail call ptr @accumArrayResult(ptr noundef %.013, i64 noundef %i.ad, i1 noundef zeroext false, i32 noundef 25, ptr noundef %i.ae) #7 ; 2 uses
  %i.ag = load i32, ptr %i.z, align 8
  %i.ah = add i32 %i.ag, 1                        ; 2 uses
  store i32 %i.ah, ptr %i.z, align 8
  %i.ai = load i32, ptr %i.aa, align 8
  %.not = icmp sgt i32 %i.ah, %i.ai
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.0.lcssa = phi ptr [ null, %bb.e ], [ %i.af, %.lr.ph ]
  %i.aj = load ptr, ptr @CurrentMemoryContext, align 8
  %i.ak = tail call i64 @makeArrayResult(ptr noundef %.0.lcssa, ptr noundef %i.aj) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i64 %i.ak
}

declare ptr @accumArrayResult(ptr noundef, i64 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @makeArrayResult(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @regexp_split_to_array_no_flags(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @regexp_split_to_array(ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @regexp_substr(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pg_re_flags, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.g) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = icmp sgt i16 %i.j, 4
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.n) #7
  %.pr = load i16, ptr %i.i, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi i16 [ %i.j, %bb.a ], [ %.pr, %bb.b ] ; 3 uses
  %i.q = phi ptr [ null, %bb.a ], [ %i.o, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.r = icmp sgt i16 %i.p, 2
  br i1 %i.r, label %bb.d, label %.thread61

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32                    ; 5 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.x = tail call i32 @errcode(i32 noundef 50856066) #7 ; 0 uses
  %i.y = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %i.u) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1926, ptr noundef nonnull @__func__.regexp_substr) #7
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i16 %i.p, 3
  br i1 %.not, label %.thread61, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = trunc i64 %i.aa to i32                  ; 4 uses
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ae = tail call i32 @errcode(i32 noundef 50856066) #7 ; 0 uses
  %i.af = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef %i.ab) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1935, ptr noundef nonnull @__func__.regexp_substr) #7
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ag = icmp samesign ugt i16 %i.p, 5
  br i1 %i.ag, label %bb.j, label %.thread61

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = trunc i64 %i.ai to i32                  ; 3 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %.thread61

bb.k:                                             ; preds = %bb.j
  %i.al = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.am = tail call i32 @errcode(i32 noundef 50856066) #7 ; 0 uses
  %i.an = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12, i32 noundef %i.aj) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1944, ptr noundef nonnull @__func__.regexp_substr) #7
  unreachable

.thread61:                                        ; preds = %bb.c, %bb.f, %bb.j, %bb.i
  %.04765 = phi i32 [ %i.ab, %bb.j ], [ %i.ab, %bb.i ], [ 1, %bb.f ], [ 1, %bb.c ] ; 2 uses
  %.0486064 = phi i32 [ %i.u, %bb.j ], [ %i.u, %bb.i ], [ %i.u, %bb.f ], [ 1, %bb.c ]
  %.046 = phi i32 [ %i.aj, %bb.j ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.c ] ; 3 uses
  call fastcc void @parse_re_flags(ptr noundef %1, ptr noundef %i.q)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = load i8, ptr %i.ao, align 4, !range !5, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread61
  %i.ar = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.as = tail call i32 @errcode(i32 noundef 50856066) #7 ; 0 uses
  %i.at = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.19) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1955, ptr noundef nonnull @__func__.regexp_substr) #7
  unreachable

bb.m:                                             ; preds = %.thread61
  %i.au = add nsw i32 %.0486064, -1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
