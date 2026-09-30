Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/stat_utils?download=true
inline.NumInlined: 32
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@RangeVarCallbackForStats:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %3, align 4                ; 2 uses
  %.not49 = icmp eq i32 %i.a, 0
  br i1 %.not49, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @UnlockRelationOid(i32 noundef %i.a, i32 noundef 4) #8
  store i32 0, ptr %3, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.not50 = icmp eq i32 %1, 0
  br i1 %.not50, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.b = tail call signext i8 @get_rel_relkind(i32 noundef %1) #8
  %i.c = and i8 %i.b, -33
  %or.cond = icmp eq i8 %i.c, 73
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.d = tail call i32 @IndexGetRelation(i32 noundef %1, i1 noundef zeroext false) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i32 [ %i.d, %bb.f ], [ %1, %bb.e ]    ; 8 uses
  br i1 %.not, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.e = icmp eq i32 %.0, %1
  %i.f = load i32, ptr %3, align 4                ; 2 uses
  br i1 %i.e, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not51 = icmp eq i32 %i.f, 0
  br i1 %.not51, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.g = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.h = tail call i32 @errcode(i32 noundef 67137668) #8 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5, ptr noundef %i.j) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 191, ptr noundef nonnull @__func__.RangeVarCallbackForStats) #8
  unreachable

bb.k:                                             ; preds = %bb.h
  %.not53 = icmp eq i32 %.0, %i.f
  br i1 %.not53, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.m = tail call i32 @errcode(i32 noundef 67137668) #8 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef %i.o) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 206, ptr noundef nonnull @__func__.RangeVarCallbackForStats) #8
  unreachable

.thread:                                          ; preds = %bb.i, %bb.k, %bb.g
  %i.q = zext i32 %.0 to i64
  %i.r = tail call ptr @SearchSysCache1(i32 noundef 65, i64 noundef %i.q) #8 ; 3 uses
  %.not54 = icmp eq ptr %i.r, null
  br i1 %.not54, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, i32 noundef %.0) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 211, ptr noundef nonnull @__func__.RangeVarCallbackForStats) #8
  unreachable

bb.n:                                             ; preds = %.thread
  %i.u = getelementptr i8, ptr %i.r, i64 16
  %.val = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.w = load i8, ptr %i.v, align 2
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %i.x ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 119 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1
  switch i8 %i.aa, label %bb.o [
    i8 114, label %bb.p
    i8 109, label %bb.p
    i8 102, label %bb.p
    i8 112, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.ac = tail call i32 @errcode(i32 noundef 151027844) #8 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ae = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.ad) #8 ; 0 uses
  %i.af = load i8, ptr %i.z, align 1
  %i.ag = tail call i32 @errdetail_relkind_not_supported(i8 noundef signext %i.af) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 227, ptr noundef nonnull @__func__.RangeVarCallbackForStats) #8
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 117
  %i.ai = load i8, ptr %i.ah, align 1, !range !4, !noundef !5
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.al = tail call i32 @errcode(i32 noundef 1088) #8 ; 0 uses
  %i.am = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 233, ptr noundef nonnull @__func__.RangeVarCallbackForStats) #8
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.an = load i32, ptr @MyDatabaseId, align 4
  %i.ao = tail call i32 @GetUserId() #8
  %i.ap = tail call zeroext i1 @object_ownercheck(i32 noundef 1262, i32 noundef %i.an, i32 noundef %i.ao) #8
  br i1 %i.ap, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = tail call i32 @GetUserId() #8
  %i.ar = tail call i32 @pg_class_aclcheck(i32 noundef %.0, i32 noundef %i.aq, i64 noundef 16384) #8 ; 2 uses
  %.not55 = icmp eq i32 %i.ar, 0
  br i1 %.not55, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = load i8, ptr %i.z, align 1
  %i.at = tail call i32 @get_relkind_objtype(i8 noundef signext %i.as) #8
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  tail call void @aclcheck_error(i32 noundef %i.ar, i32 noundef %i.at, ptr noundef nonnull %i.au) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.r) #8
  %.not56 = icmp eq i32 %.0, %1
  %or.cond57 = select i1 %.not, i1 true, i1 %.not56
  br i1 %or.cond57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @LockRelationOid(i32 noundef %.0, i32 noundef 4) #8
  store i32 %.0, ptr %3, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.d
  ret void
}

declare void @UnlockRelationOid(i32 noundef, i32 noundef) local_unnamed_addr #3

declare signext i8 @get_rel_relkind(i32 noundef) local_unnamed_addr #3

declare i32 @IndexGetRelation(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @SearchSysCache1(i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #3

declare i32 @errdetail_relkind_not_supported(i8 noundef signext) local_unnamed_addr #3

declare zeroext i1 @object_ownercheck(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @GetUserId() local_unnamed_addr #3

declare i32 @pg_class_aclcheck(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @aclcheck_error(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @get_relkind_objtype(i8 noundef signext) local_unnamed_addr #3

declare void @ReleaseSysCache(ptr noundef) local_unnamed_addr #3

declare void @LockRelationOid(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @stats_fill_fcinfo_from_arg_pairs(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = load ptr, ptr %2, align 8
  %.not45 = icmp eq ptr %i.d, null
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.f = call i32 @extract_variadic_args(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #8 ; 3 uses
  %i.g = and i32 %i.f, 1
  %.not35 = icmp eq i32 %i.g, 0
  br i1 %.not35, label %.preheader, label %bb.c

.preheader:                                       ; preds = %._crit_edge
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.j = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.b ]
  %.03246 = phi i32 [ 0, %.lr.ph ], [ %i.m, %bb.b ]
  %i.k = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.j ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 1, ptr %i.l, align 8
  %i.m = add i32 %.03246, 1                       ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %2, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !7

bb.c:                                             ; preds = %._crit_edge
  %i.q = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.r = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10) #8 ; 0 uses
  %i.s = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.11) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 373, ptr noundef nonnull @__func__.stats_fill_fcinfo_from_arg_pairs) #8
  unreachable

._crit_edge50:                                    ; preds = %get_arg_by_name.exit.thread, %.preheader
  %.033.lcssa = phi i1 [ true, %.preheader ], [ %.1, %get_arg_by_name.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.033.lcssa

bb.d:                                             ; preds = %.lr.ph49, %get_arg_by_name.exit.thread
  %.048 = phi i32 [ 0, %.lr.ph49 ], [ %6, %get_arg_by_name.exit.thread ] ; 5 uses
  %.03347 = phi i1 [ true, %.lr.ph49 ], [ %.1, %get_arg_by_name.exit.thread ] ; 3 uses
  %i.t = load ptr, ptr %i.b, align 8              ; 2 uses
  %3 = sext i32 %.048 to i64                      ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %3
  %i.v = load i8, ptr %i.u, align 1, !range !4, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.y = or disjoint i32 %.048, 1
  %i.z = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.12, i32 noundef %i.y) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 387, ptr noundef nonnull @__func__.stats_fill_fcinfo_from_arg_pairs) #8
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.c, align 8
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %3
  %i.ac = load i32, ptr %i.ab, align 4
  %.not36 = icmp eq i32 %i.ac, 25
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.ae = or disjoint i32 %.048, 1
  %i.af = load ptr, ptr %i.c, align 8
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %3
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = call ptr @format_type_be(i32 noundef %i.ah) #8
  %i.aj = call ptr @format_type_be(i32 noundef 25) #8
  %i.ak = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13, i32 noundef %i.ae, ptr noundef %i.ai, ptr noundef %i.aj) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 393, ptr noundef nonnull @__func__.stats_fill_fcinfo_from_arg_pairs) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  %4 = or disjoint i32 %.048, 1
  %5 = sext i32 %4 to i64                         ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.t, i64 %5
  %i.am = load i8, ptr %i.al, align 1, !range !4, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %get_arg_by_name.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %3
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = call ptr @text_to_cstring(ptr noundef %i.ar) #8 ; 4 uses
  %i.at = call i32 @pg_strcasecmp(ptr noundef %i.as, ptr noundef nonnull @.str.14) #8
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %get_arg_by_name.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %2, align 8               ; 2 uses
  %.not11.i = icmp eq ptr %i.av, null
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %i.aw = phi ptr [ %i.bc, %bb.k ], [ %i.av, %bb.j ]
  %.012.i = phi i32 [ %i.az, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %i.ax = call i32 @pg_strcasecmp(ptr noundef %i.as, ptr noundef nonnull %i.aw) #8
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %get_arg_by_name.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.az = add i32 %.012.i, 1                      ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [16 x i8], ptr %2, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %i.bd = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #8
  br i1 %i.bd, label %bb.l, label %get_arg_by_name.exit.thread

bb.l:                                             ; preds = %._crit_edge.i
  %i.be = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19, ptr noundef %i.as) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 273, ptr noundef nonnull @__func__.get_arg_by_name) #8
  br label %get_arg_by_name.exit.thread

get_arg_by_name.exit:                             ; preds = %.lr.ph.i
  %i.bf = icmp slt i32 %.012.i, 0
  br i1 %i.bf, label %get_arg_by_name.exit.thread, label %bb.m

bb.m:                                             ; preds = %get_arg_by_name.exit
  %i.bg = load ptr, ptr %i.c, align 8
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %5
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.bj = zext nneg i32 %.012.i to i64            ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8            ; 2 uses
  %.not.i37 = icmp eq i32 %i.bi, %i.bm
  br i1 %.not.i37, label %stats_check_arg_type.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #8
  br i1 %i.bn, label %bb.o, label %get_arg_by_name.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bo = call ptr @format_type_be(i32 noundef %i.bi) #8
  %i.bp = call ptr @format_type_be(i32 noundef %i.bm) #8
  %i.bq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20, ptr noundef %i.as, ptr noundef %i.bo, ptr noundef %i.bp) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 289, ptr noundef nonnull @__func__.stats_check_arg_type) #8
  br label %get_arg_by_name.exit.thread

stats_check_arg_type.exit:                        ; preds = %bb.m
  %i.br = load ptr, ptr %i.a, align 8
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %5
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.bj ; 2 uses
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i8 0, ptr %i.bv, align 8
  br label %get_arg_by_name.exit.thread

get_arg_by_name.exit.thread:                      ; preds = %bb.o, %bb.n, %bb.l, %._crit_edge.i, %get_arg_by_name.exit, %bb.i, %bb.h, %stats_check_arg_type.exit
  %.1 = phi i1 [ %.03347, %stats_check_arg_type.exit ], [ %.03347, %bb.h ], [ %.03347, %bb.i ], [ false, %bb.l ], [ false, %get_arg_by_name.exit ], [ false, %._crit_edge.i ], [ false, %bb.n ], [ false, %bb.o ] ; 2 uses
  %6 = add i32 %.048, 2                           ; 2 uses
  %7 = icmp slt i32 %6, %i.f
  br i1 %7, label %bb.d, label %._crit_edge50, !llvm.loop !9
}

declare i32 @extract_variadic_args(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #3

declare ptr @format_type_be(i32 noundef) local_unnamed_addr #3

declare ptr @text_to_cstring(ptr noundef) local_unnamed_addr #3

declare i32 @pg_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @statatt_get_type(i32 noundef %0, i16 noundef signext %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @relation_open(i32 noundef %0, i32 noundef 1) #8 ; 6 uses
  %i.b = zext i32 %0 to i64
  %i.c = sext i16 %1 to i64
  %i.d = tail call ptr @SearchSysCache2(i32 noundef 7, i64 noundef %i.b, i64 noundef %i.c) #8 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 50360452) #8 ; 0 uses
  %i.g = sext i16 %1 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.15, i32 noundef %i.g, ptr noundef nonnull %i.j) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 458, ptr noundef nonnull @__func__.statatt_get_type) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.d, i64 16
  %.val = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.n = load i8, ptr %i.m, align 2
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 91
  %i.r = load i8, ptr %i.q, align 1, !range !4, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.v = tail call i32 @errcode(i32 noundef 50360452) #8 ; 0 uses
  %i.w = sext i16 %1 to i32
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.15, i32 noundef %i.w, ptr noundef nonnull %i.y) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 466, ptr noundef nonnull @__func__.statatt_get_type) #8
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 74
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  %i.ac = sext i16 %i.ab to i32
  %i.ad = load ptr, ptr %i.t, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 119
  %i.af = load i8, ptr %i.ae, align 1
  switch i8 %i.af, label %statatt_get_index_expr.exit.thread [
    i8 105, label %bb.f
    i8 73, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ag = tail call ptr @RelationGetIndexExpressions(ptr noundef nonnull %i.a) #8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %statatt_get_index_expr.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 4 uses
  %i.al = add nsw i32 %i.ac, -1                   ; 4 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2
  %.not20.i = icmp eq i16 %i.ao, 0
  br i1 %.not20.i, label %bb.h, label %statatt_get_index_expr.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %list_head.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  br label %list_head.exit.i

list_head.exit.i:                                 ; preds = %bb.i, %bb.h
  %i.at = phi ptr [ %i.as, %bb.i ], [ null, %bb.h ] ; 3 uses
  %i.au = icmp sgt i16 %i.ab, 1
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %list_head.exit.i
  %i.av = getelementptr i8, ptr %i.aq, i64 4      ; 3 uses
  %i.aw = getelementptr i8, ptr %i.aq, i64 16     ; 3 uses
  %wide.trip.count.i = zext i32 %i.al to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ax = icmp eq i32 %i.al, 1
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.k

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01622.i.epil.init = phi ptr [ %i.at, %.lr.ph.i ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod49 = trunc i32 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.i.epil.init
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = icmp eq i16 %i.az, 0
  br i1 %i.ba, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %.epil.preheader
  %.val.i.epil = load i32, ptr %i.av, align 4
  %.val21.i.epil = load ptr, ptr %i.aw, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01622.i.epil.init, i64 8 ; 2 uses
  %i.bc = sext i32 %.val.i.epil to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.val21.i.epil, i64 %i.bc
  %i.be = icmp ult ptr %i.bb, %i.bd
  %..i.i.epil = select i1 %i.be, ptr %i.bb, ptr null
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.j, %.epil.preheader, %list_head.exit.i
  %.016.lcssa.i = phi ptr [ %i.at, %list_head.exit.i ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %..i.i.epil, %bb.j ], [ %.01622.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.bf = icmp eq ptr %.016.lcssa.i, null
  br i1 %i.bf, label %bb.p, label %statatt_get_index_expr.exit

bb.k:                                             ; preds = %bb.o, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.o ] ; 3 uses
  %.01622.i = phi ptr [ %i.at, %.lr.ph.i.new ], [ %.1.i.1, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.o ]
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = icmp eq i16 %i.bh, 0
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.val.i = load i32, ptr %i.av, align 4
  %.val21.i = load ptr, ptr %i.aw, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.01622.i, i64 8 ; 2 uses
  %i.bk = sext i32 %.val.i to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %.val21.i, i64 %i.bk
  %i.bm = icmp ult ptr %i.bj, %i.bl
  %..i.i = select i1 %i.bm, ptr %i.bj, ptr null
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi ptr [ %..i.i, %bb.l ], [ %.01622.i, %bb.k ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.val.i.1 = load i32, ptr %i.av, align 4
  %.val21.i.1 = load ptr, ptr %i.aw, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 2 uses
  %i.bs = sext i32 %.val.i.1 to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %.val21.i.1, i64 %i.bs
  %i.bu = icmp ult ptr %i.br, %i.bt
  %..i.i.1 = select i1 %i.bu, ptr %i.br, ptr null
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i.1 = phi ptr [ %..i.i.1, %bb.n ], [ %.1.i, %bb.m ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.k, !llvm.loop !10

bb.p:                                             ; preds = %._crit_edge.i
  %i.bv = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.bw = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.21) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 335, ptr noundef nonnull @__func__.statatt_get_index_expr) #8
  unreachable

statatt_get_index_expr.exit:                      ; preds = %._crit_edge.i
  %i.bx = load ptr, ptr %.016.lcssa.i, align 8    ; 4 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %statatt_get_index_expr.exit.thread, label %bb.q

statatt_get_index_expr.exit.thread:               ; preds = %bb.g, %bb.f, %bb.e, %statatt_get_index_expr.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  %i.ca = load i32, ptr %i.bz, align 4
end_hunk_0
