Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/dependencies?download=true
inline.NumInlined: 54
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@statext_dependencies_validate:bb.a
.lr.ph74:                                         ; preds = %bb.b
  %wide.trip.count87 = zext nneg i16 %i.k to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph74, %.critedge
  %indvars.iv84 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next85, %.critedge ] ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv84
  %i.n = load i16, ptr %i.m, align 2              ; 4 uses
  %i.o = sext i16 %i.n to i32                     ; 2 uses
  %i.p = icmp sgt i16 %i.n, 0
  br i1 %i.p, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.q = load i32, ptr %i.e, align 4              ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.preheader, label %.thread58

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread58, label %.lr.ph, !llvm.loop !20

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv
  %i.t = load i16, ptr %i.s, align 2
  %i.u = icmp eq i16 %i.n, %i.t
  br i1 %i.u, label %.critedge, label %bb.d

bb.e:                                             ; preds = %bb.c
  %i.v = icmp ne i16 %i.n, 0
  %.not = icmp sge i32 %i.o, %i.a
  %or.cond52.not = and i1 %i.v, %.not
  br i1 %or.cond52.not, label %.critedge, label %.thread58

.thread58:                                        ; preds = %.preheader, %bb.e, %bb.d
  %i.w = tail call zeroext i1 @errstart(i32 noundef %3, ptr noundef null) #7
  br i1 %i.w, label %bb.f, label %.critedge56

bb.f:                                             ; preds = %.thread58
  %i.x = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.y = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %i.o) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 649, ptr noundef nonnull @__func__.statext_dependencies_validate) #7
  br label %.critedge56

.critedge:                                        ; preds = %.lr.ph, %bb.e
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %.critedge54, label %bb.c, !llvm.loop !21

.critedge54:                                      ; preds = %.critedge, %bb.b
  %i.z = add nuw i32 %.04376, 1                   ; 2 uses
  %exitcond89.not = icmp eq i32 %i.z, %i.c
  br i1 %exitcond89.not, label %.critedge56, label %bb.b, !llvm.loop !22

.critedge56:                                      ; preds = %.critedge54, %bb.f, %.thread58, %bb.a
  %.not5166 = phi i1 [ false, %bb.f ], [ true, %bb.a ], [ false, %.thread58 ], [ true, %.critedge54 ]
  ret i1 %.not5166
}

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @statext_dependencies_load(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = zext i32 %0 to i64
  %i.c = zext i1 %1 to i64
  %i.d = tail call ptr @SearchSysCache2(i32 noundef 70, i64 noundef %i.b, i64 noundef %i.c) #7 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %0) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 699, ptr noundef nonnull @__func__.statext_dependencies_load) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = call i64 @SysCacheGetAttr(i32 noundef 70, ptr noundef nonnull %i.d, i16 noundef signext 4, ptr noundef nonnull %i.a) #7
  %i.h = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.k = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, i32 noundef 102, i32 noundef %0) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 706, ptr noundef nonnull @__func__.statext_dependencies_load) #7
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  %i.m = call ptr @pg_detoast_datum_packed(ptr noundef %i.l) #7
  %i.n = call ptr @statext_dependencies_deserialize(ptr noundef %i.m)
  call void @ReleaseSysCache(ptr noundef nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %i.n
}

declare ptr @SearchSysCache2(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @SysCacheGetAttr(i32 noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @pg_detoast_datum_packed(ptr noundef) local_unnamed_addr #2

declare void @ReleaseSysCache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @dependencies_clauselist_selectivity(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add i32 %i.n, -1
  %i.p = getelementptr i8, ptr %i.l, i64 16
  %.val256 = load ptr, ptr %i.p, align 8
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val256, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.h, %bb.b ], [ %i.r, %bb.c ]
  %i.s = load ptr, ptr %.in, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call zeroext i1 @has_stats_of_kind(ptr noundef %i.u, i8 noundef signext 102) #7
  br i1 %i.v, label %bb.e, label %bb.av

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %.critedge.thread, label %.lr.ph301

.critedge.thread:                                 ; preds = %bb.e
  %i.w = tail call ptr @palloc_mul(i64 noundef 2, i64 noundef 0) #7
  %i.x = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef 0) #7
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %.critedge287

.lr.ph301:                                        ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = sext i32 %i.aa to i64
  %i.ac = tail call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.ab) #7 ; 4 uses
  %i.ad = load i32, ptr %i.z, align 4
  %i.ae = sext i32 %i.ad to i64
  %i.af = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.ae) #7 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.aj = load i32, ptr %i.ag, align 4
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph473, label %list_length.exit260.lr.ph

.lr.ph473:                                        ; preds = %.lr.ph301, %bb.l
  %.0204299472 = phi i32 [ %.2206, %bb.l ], [ 0, %.lr.ph301 ] ; 9 uses
  %indvars.iv380471 = phi i64 [ %indvars.iv.next381, %bb.l ], [ 0, %.lr.ph301 ] ; 4 uses
  %i.al = load ptr, ptr %i.ah, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv380471
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv380471 ; 2 uses
  store i16 0, ptr %i.ao, align 2
  %i.ap = load ptr, ptr %6, align 8
  %i.aq = trunc nuw nsw i64 %indvars.iv380471 to i32
  %i.ar = tail call zeroext i1 @bms_is_member(i32 noundef %i.aq, ptr noundef %i.ap) #7
  br i1 %i.ar, label %bb.l, label %bb.f

list_length.exit260.lr.ph:                        ; preds = %bb.l, %.lr.ph301
  %.0204299.lcssa = phi i32 [ 0, %.lr.ph301 ], [ %.2206, %bb.l ] ; 4 uses
  %i.as = icmp sgt i32 %.0204299.lcssa, 0         ; 3 uses
  %i.at = shl i32 %.0204299.lcssa, 16
  %sext = add i32 %i.at, 65536
  %i.au = ashr exact i32 %sext, 16
  %.0207 = select i1 %i.as, i32 %i.au, i32 0      ; 3 uses
  %i.av = trunc nsw i32 %.0207 to i16
  %i.aw = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph311, label %.critedge287

bb.f:                                             ; preds = %.lr.ph473
  %i.ay = load i32, ptr %i.ai, align 8
  %i.az = call fastcc zeroext i1 @dependency_is_compatible_clause(ptr noundef %i.an, i32 noundef %i.ay, ptr noundef %i.a)
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = load i16, ptr %i.a, align 2
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %i.t, align 8
  %i.bc = call fastcc zeroext i1 @dependency_is_compatible_expression(ptr noundef %i.an, ptr noundef %i.bb, ptr noundef %i.b)
  br i1 %i.bc, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  store i16 0, ptr %i.a, align 2
  %i.bd = icmp sgt i32 %.0204299472, 0
  br i1 %i.bd, label %.lr.ph, label %thread-pre-split.thread

.lr.ph:                                           ; preds = %bb.i
  %i.be = load ptr, ptr %i.b, align 8
  %wide.trip.count = zext nneg i32 %.0204299472 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call zeroext i1 @equal(ptr noundef %i.bg, ptr noundef %i.be) #7
  br i1 %i.bh, label %thread-pre-split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %thread-pre-split.thread, label %bb.j, !llvm.loop !23

thread-pre-split:                                 ; preds = %bb.j
  %i.bi = trunc i64 %indvars.iv to i16            ; 2 uses
  %i.bj = xor i16 %i.bi, -1
  %i.bk = icmp eq i16 %i.bi, -1
  br i1 %i.bk, label %thread-pre-split.thread, label %.sink.split

thread-pre-split.thread:                          ; preds = %bb.k, %bb.i, %thread-pre-split
  %i.bl = load ptr, ptr %i.b, align 8
  %i.bm = add i32 %.0204299472, 1
  %i.bn = sext i32 %.0204299472 to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bn
  store ptr %i.bl, ptr %i.bo, align 8
  %i.bp = trunc i32 %.0204299472 to i16
  %i.bq = xor i16 %i.bp, -1
  br label %.sink.split

.sink.split:                                      ; preds = %thread-pre-split, %thread-pre-split.thread, %bb.g
  %.sink = phi i16 [ %i.ba, %bb.g ], [ %i.bq, %thread-pre-split.thread ], [ %i.bj, %thread-pre-split ]
  %.2206.ph = phi i32 [ %.0204299472, %bb.g ], [ %i.bm, %thread-pre-split.thread ], [ %.0204299472, %thread-pre-split ]
  store i16 %.sink, ptr %i.ao, align 2
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %.lr.ph473
  %.2206 = phi i32 [ %.0204299472, %.lr.ph473 ], [ %.0204299472, %bb.h ], [ %.2206.ph, %.sink.split ] ; 2 uses
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380471, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.br = load i32, ptr %i.ag, align 4
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next381, %i.bs
  br i1 %i.bt, label %.lr.ph473, label %list_length.exit260.lr.ph

.lr.ph311:                                        ; preds = %list_length.exit260.lr.ph, %list_length.exit260
  %i.bu = phi i32 [ %i.cb, %list_length.exit260 ], [ %i.aw, %list_length.exit260.lr.ph ]
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %list_length.exit260 ], [ 0, %list_length.exit260.lr.ph ] ; 2 uses
  %.0220304310 = phi ptr [ %.1221, %list_length.exit260 ], [ null, %list_length.exit260.lr.ph ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv385 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2            ; 2 uses
  %i.bx = icmp eq i16 %i.bw, 0
  br i1 %i.bx, label %list_length.exit260, label %bb.m

bb.m:                                             ; preds = %.lr.ph311
  %i.by = add i16 %i.bw, %i.av                    ; 2 uses
  store i16 %i.by, ptr %i.bv, align 2
  %i.bz = sext i16 %i.by to i32
  %i.ca = tail call ptr @bms_add_member(ptr noundef %.0220304310, i32 noundef %i.bz) #7
  %.pre = load i32, ptr %i.ag, align 4
  br label %list_length.exit260

list_length.exit260:                              ; preds = %.lr.ph311, %bb.m
  %i.cb = phi i32 [ %.pre, %bb.m ], [ %i.bu, %.lr.ph311 ] ; 2 uses
  %.1221 = phi ptr [ %i.ca, %bb.m ], [ %.0220304310, %.lr.ph311 ] ; 2 uses
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i64 %indvars.iv.next386, %i.cc
  br i1 %i.cd, label %.lr.ph311, label %.critedge287

.critedge287:                                     ; preds = %list_length.exit260, %.critedge.thread, %list_length.exit260.lr.ph
  %.0207442 = phi i32 [ 0, %.critedge.thread ], [ %.0207, %list_length.exit260.lr.ph ], [ %.0207, %list_length.exit260 ] ; 3 uses
  %i.ce = phi i1 [ false, %.critedge.thread ], [ %i.as, %list_length.exit260.lr.ph ], [ %i.as, %list_length.exit260 ] ; 3 uses
  %.0204.lcssa441 = phi i32 [ 0, %.critedge.thread ], [ %.0204299.lcssa, %list_length.exit260.lr.ph ], [ %.0204299.lcssa, %list_length.exit260 ] ; 2 uses
  %i.cf = phi ptr [ %i.w, %.critedge.thread ], [ %i.ac, %list_length.exit260.lr.ph ], [ %i.ac, %list_length.exit260 ] ; 4 uses
  %i.cg = phi ptr [ %i.x, %.critedge.thread ], [ %i.af, %list_length.exit260.lr.ph ], [ %i.af, %list_length.exit260 ] ; 4 uses
  %i.ch = phi ptr [ %i.y, %.critedge.thread ], [ %i.ag, %list_length.exit260.lr.ph ], [ %i.ag, %list_length.exit260 ] ; 2 uses
  %.0220.lcssa = phi ptr [ null, %.critedge.thread ], [ null, %list_length.exit260.lr.ph ], [ %.1221, %list_length.exit260 ] ; 9 uses
  %i.ci = tail call i32 @bms_membership(ptr noundef %.0220.lcssa) #7
  %.not240 = icmp eq i32 %i.ci, 2
  br i1 %.not240, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge287
  tail call void @bms_free(ptr noundef %.0220.lcssa) #7
  br label %.sink.split461

bb.o:                                             ; preds = %.critedge287
  %i.cj = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not.i261 = icmp eq ptr %i.cj, null
  br i1 %.not.i261, label %list_length.exit262, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = sext i32 %i.cl to i64
  br label %list_length.exit262

list_length.exit262:                              ; preds = %bb.o, %bb.p
  %i.cn = phi i64 [ %i.cm, %bb.p ], [ 0, %bb.o ]
  %i.co = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.cn) #7 ; 5 uses
  %i.cp = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %.not241 = icmp eq ptr %i.cp, null
  br i1 %.not241, label %.critedge253.thread, label %.lr.ph353

.lr.ph353:                                        ; preds = %list_length.exit262
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ct = trunc nsw i32 %.0207442 to i16          ; 2 uses
  %wide.trip.count394 = zext nneg i32 %.0204.lcssa441 to i64
  %wide.trip.count402 = zext nneg i32 %.0204.lcssa441 to i64
  %i.cu = load i32, ptr %i.cq, align 4
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph477, label %.critedge253

.lr.ph477:                                        ; preds = %.lr.ph353, %bb.ah
  %.0216350476 = phi i32 [ %.2218, %bb.ah ], [ 0, %.lr.ph353 ] ; 6 uses
  %.0213351475 = phi i32 [ %.2215, %bb.ah ], [ 0, %.lr.ph353 ] ; 5 uses
  %indvars.iv407474 = phi i64 [ %indvars.iv.next408, %bb.ah ], [ 0, %.lr.ph353 ] ; 2 uses
  %i.cw = load ptr, ptr %i.cr, align 8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv407474
  %i.cy = load ptr, ptr %i.cx, align 8            ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i8, ptr %i.cz, align 8
  %.not245 = icmp eq i8 %i.da, 102
  br i1 %.not245, label %bb.q, label %bb.ah

..critedge253_crit_edge:                          ; preds = %bb.ah
  %i.db = sext i32 %.2215 to i64
  br label %.critedge253

.critedge253:                                     ; preds = %..critedge253_crit_edge, %.lr.ph353
  %.0213351.lcssa = phi i64 [ %i.db, %..critedge253_crit_edge ], [ 0, %.lr.ph353 ]
  %.0216350.lcssa = phi i32 [ %.2218, %..critedge253_crit_edge ], [ 0, %.lr.ph353 ] ; 4 uses
  %i.dc = icmp eq i32 %.0216350.lcssa, 0
  br i1 %i.dc, label %.critedge253.thread, label %bb.ai

bb.q:                                             ; preds = %.lr.ph477
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.de = load i8, ptr %i.dd, align 8, !range !6, !noundef !7
  %i.df = load i8, ptr %i.cs, align 8, !range !6, !noundef !7
  %.not246 = icmp eq i8 %i.de, %i.df
  br i1 %.not246, label %.preheader291, label %bb.ah

.preheader291:                                    ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call i32 @bms_next_member(ptr noundef %i.dh, i32 noundef -1) #7 ; 2 uses
  %i.dj = icmp sgt i32 %i.di, -1
  br i1 %i.dj, label %.lr.ph314, label %.preheader

.preheader:                                       ; preds = %bb.s, %.preheader291
  %.0199.lcssa = phi i32 [ 0, %.preheader291 ], [ %.2201, %bb.s ]
  br i1 %i.ce, label %.lr.ph330, label %._crit_edge

.lr.ph330:                                        ; preds = %.preheader
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %._crit_edge, label %.lr.ph330.split

.lr.ph314:                                        ; preds = %.preheader291, %bb.s
  %i.dn = phi i32 [ %i.dw, %bb.s ], [ %i.di, %.preheader291 ] ; 3 uses
  %.0199313 = phi i32 [ %.2201, %bb.s ], [ 0, %.preheader291 ] ; 2 uses
  %i.do = trunc i32 %i.dn to i16
  %i.dp = icmp sgt i16 %i.do, 0
  br i1 %i.dp, label %bb.r, label %bb.s, !llvm.loop !24

bb.r:                                             ; preds = %.lr.ph314
  %i.dq = add nsw i32 %i.dn, %.0207442
  %i.dr = shl i32 %i.dq, 16
  %i.ds = ashr exact i32 %i.dr, 16
  %i.dt = tail call zeroext i1 @bms_is_member(i32 noundef %i.ds, ptr noundef %.0220.lcssa) #7
  %i.du = zext i1 %i.dt to i32
  %spec.select = add i32 %.0199313, %i.du
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph314, %bb.r
  %.2201 = phi i32 [ %spec.select, %bb.r ], [ %.0199313, %.lr.ph314 ] ; 2 uses
  %i.dv = load ptr, ptr %i.dg, align 8
  %i.dw = tail call i32 @bms_next_member(ptr noundef %i.dv, i32 noundef %i.dn) #7 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, -1
  br i1 %i.dx, label %.lr.ph314, label %.preheader

.lr.ph330.splitthread-pre-split:                  ; preds = %.critedge255
  %.pr = load ptr, ptr %i.dk, align 8
  br label %.lr.ph330.split

.lr.ph330.split:                                  ; preds = %.lr.ph330, %.lr.ph330.splitthread-pre-split
  %i.dy = phi ptr [ %.pr, %.lr.ph330.splitthread-pre-split ], [ %i.dl, %.lr.ph330 ] ; 3 uses
  %indvars.iv391 = phi i64 [ %indvars.iv.next392, %.lr.ph330.splitthread-pre-split ], [ 0, %.lr.ph330 ] ; 2 uses
  %.0196329 = phi i32 [ %.1197.lcssa, %.lr.ph330.splitthread-pre-split ], [ 0, %.lr.ph330 ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 2 uses
  %.not250 = icmp eq ptr %i.dy, null
  br i1 %.not250, label %.critedge255, label %.lr.ph318

.lr.ph318:                                        ; preds = %.lr.ph330.split
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv391
  %i.ec = load i32, ptr %i.dz, align 4
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph326, label %.critedge255

.lr.ph326:                                        ; preds = %.lr.ph318, %.lr.ph326
  %indvars.iv388 = phi i64 [ %indvars.iv.next389, %.lr.ph326 ], [ 0, %.lr.ph318 ] ; 2 uses
  %.1197316325 = phi i32 [ %.2198, %.lr.ph326 ], [ %.0196329, %.lr.ph318 ]
  %i.ee = load ptr, ptr %i.ea, align 8
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv388
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load ptr, ptr %i.eb, align 8
  %i.ei = tail call zeroext i1 @equal(ptr noundef %i.eg, ptr noundef %i.eh) #7
  %i.ej = zext i1 %i.ei to i32
  %.2198 = add i32 %.1197316325, %i.ej            ; 2 uses
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %i.ek = load i32, ptr %i.dz, align 4
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next389, %i.el
  br i1 %i.em, label %.lr.ph326, label %.critedge255

.critedge255:                                     ; preds = %.lr.ph326, %.lr.ph318, %.lr.ph330.split
  %.1197.lcssa = phi i32 [ %.0196329, %.lr.ph330.split ], [ %.0196329, %.lr.ph318 ], [ %.2198, %.lr.ph326 ] ; 2 uses
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1 ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next392, %wide.trip.count394
  br i1 %exitcond395.not, label %._crit_edge, label %.lr.ph330.splitthread-pre-split, !llvm.loop !25

._crit_edge:                                      ; preds = %.critedge255, %.lr.ph330, %.preheader
  %.0196.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.lr.ph330 ], [ %.1197.lcssa, %.critedge255 ]
  %i.en = add i32 %.0196.lcssa, %.0199.lcssa
  %i.eo = icmp slt i32 %i.en, 2
  br i1 %i.eo, label %bb.ah, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = load i8, ptr %i.cs, align 8, !range !6, !noundef !7
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = tail call ptr @statext_dependencies_load(i32 noundef %i.eq, i1 noundef zeroext %i.es) ; 5 uses
  br i1 %i.ce, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8
  %.not247 = icmp eq ptr %i.ev, null
  br i1 %.not247, label %._crit_edge415, label %bb.v

._crit_edge415:                                   ; preds = %bb.u
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.pre416 = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.af

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 8
  %.not369 = icmp eq i32 %i.ex, 0
  br i1 %.not369, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph347, %.thread274.thread
  %.0192344 = phi i32 [ 0, %.lr.ph347 ], [ %.1193, %.thread274.thread ] ; 8 uses
  %.3343 = phi i32 [ 0, %.lr.ph347 ], [ %i.gr, %.thread274.thread ] ; 3 uses
  %i.fa = sext i32 %.3343 to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 3 uses
  %i.fe = load i16, ptr %i.fd, align 8
  %i.ff = icmp sgt i16 %i.fe, 0
  br i1 %i.ff, label %.lr.ph339, label %.critedge288.loopexit

.lr.ph339:                                        ; preds = %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 10 ; 2 uses
  br i1 %i.ce, label %.lr.ph339.split.us, label %.lr.ph339.split

.lr.ph339.split.us:                               ; preds = %.lr.ph339, %select.unfold.us
  %indvars.iv404 = phi i64 [ %indvars.iv.next405, %select.unfold.us ], [ 0, %.lr.ph339 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv404 ; 3 uses
  %i.fi = load i16, ptr %i.fh, align 2            ; 3 uses
  %i.fj = icmp sgt i16 %i.fi, 0
  br i1 %i.fj, label %bb.ab, label %.lr.ph335.us

.lr.ph335.us:                                     ; preds = %.lr.ph339.split.us
  %i.fk = xor i16 %i.fi, -1
  %i.fl = load ptr, ptr %i.ez, align 8
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  %.val.us = load ptr, ptr %i.fm, align 8
  %i.fn = sext i16 %i.fk to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %.val.us, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph335.us, %bb.y
  %indvars.iv399 = phi i64 [ 0, %.lr.ph335.us ], [ %indvars.iv.next400, %bb.y ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv399
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = tail call zeroext i1 @equal(ptr noundef %i.fr, ptr noundef %i.fp) #7
  br i1 %i.fs, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %exitcond403.not = icmp eq i64 %indvars.iv.next400, %wide.trip.count402
  br i1 %exitcond403.not, label %.thread274.thread, label %bb.x, !llvm.loop !26

bb.z:                                             ; preds = %bb.x
  %i.ft = trunc nuw nsw i64 %indvars.iv399 to i32
  %i.fu = xor i32 %i.ft, -1
  %i.fv = add i32 %.0207442, %i.fu
  %i.fw = trunc i32 %i.fv to i16                  ; 2 uses
  %i.fx = icmp eq i16 %i.fw, 0
  br i1 %i.fx, label %.thread274.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i16 %i.fw, ptr %i.fh, align 2
  br label %select.unfold.us

bb.ab:                                            ; preds = %.lr.ph339.split.us
  %i.fy = add i16 %i.fi, %i.ct                    ; 2 uses
  store i16 %i.fy, ptr %i.fh, align 2
  %i.fz = sext i16 %i.fy to i32
  %i.ga = tail call zeroext i1 @bms_is_member(i32 noundef %i.fz, ptr noundef %.0220.lcssa) #7
  br i1 %i.ga, label %select.unfold.us, label %.thread274.thread

select.unfold.us:                                 ; preds = %bb.ab, %bb.aa
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %i.gb = load i16, ptr %i.fd, align 8
  %i.gc = sext i16 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next405, %i.gc
  br i1 %i.gd, label %.lr.ph339.split.us, label %.critedge288.loopexit, !llvm.loop !27

.lr.ph339.split:                                  ; preds = %.lr.ph339, %select.unfold
  %indvars.iv396 = phi i64 [ %indvars.iv.next397, %select.unfold ], [ 0, %.lr.ph339 ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv396 ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 2            ; 2 uses
  %i.gg = icmp sgt i16 %i.gf, 0
  br i1 %i.gg, label %bb.ac, label %.thread274.thread

bb.ac:                                            ; preds = %.lr.ph339.split
  %i.gh = add i16 %i.gf, %i.ct                    ; 2 uses
  store i16 %i.gh, ptr %i.ge, align 2
  %i.gi = sext i16 %i.gh to i32
  %i.gj = tail call zeroext i1 @bms_is_member(i32 noundef %i.gi, ptr noundef %.0220.lcssa) #7
  br i1 %i.gj, label %select.unfold, label %.thread274.thread

select.unfold:                                    ; preds = %bb.ac
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %i.gk = load i16, ptr %i.fd, align 8
  %i.gl = sext i16 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next397, %i.gl
  br i1 %i.gm, label %.lr.ph339.split, label %.critedge288.loopexit, !llvm.loop !27

.critedge288.loopexit:                            ; preds = %select.unfold, %select.unfold.us, %bb.w
  %.not249 = icmp eq i32 %.0192344, %.3343
  br i1 %.not249, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.critedge288.loopexit
  %i.gn = load ptr, ptr %i.fb, align 8
  %i.go = sext i32 %.0192344 to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.go
  store ptr %i.gn, ptr %i.gp, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.critedge288.loopexit
  %i.gq = add i32 %.0192344, 1
  br label %.thread274.thread

.thread274.thread:                                ; preds = %.lr.ph339.split, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.ae
  %.1193 = phi i32 [ %.0192344, %bb.ab ], [ %i.gq, %bb.ae ], [ %.0192344, %bb.y ], [ %.0192344, %bb.z ], [ %.0192344, %bb.ac ], [ %.0192344, %.lr.ph339.split ] ; 2 uses
  %i.gr = add nuw i32 %.3343, 1                   ; 2 uses
  %i.gs = load i32, ptr %i.ew, align 8
  %i.gt = icmp ult i32 %i.gr, %i.gs
  br i1 %i.gt, label %bb.w, label %._crit_edge348, !llvm.loop !28

._crit_edge348:                                   ; preds = %.thread274.thread, %bb.v
  %.0192.lcssa = phi i32 [ 0, %bb.v ], [ %.1193, %.thread274.thread ] ; 2 uses
  store i32 %.0192.lcssa, ptr %i.ew, align 8
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge415, %._crit_edge348
  %i.gu = phi i32 [ %.pre416, %._crit_edge415 ], [ %.0192.lcssa, %._crit_edge348 ]
  %.not248 = icmp eq i32 %i.gu, 0
  br i1 %.not248, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gv = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.gw = sext i32 %.0216350476 to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.gw
  store ptr %i.et, ptr %i.gx, align 8
  %i.gy = load i32, ptr %i.gv, align 8
  %i.gz = add i32 %i.gy, %.0213351475
  %i.ha = add i32 %.0216350476, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %._crit_edge, %bb.q, %.lr.ph477
  %.2218 = phi i32 [ %.0216350476, %._crit_edge ], [ %.0216350476, %.lr.ph477 ], [ %.0216350476, %bb.q ], [ %i.ha, %bb.ag ], [ %.0216350476, %bb.af ] ; 2 uses
  %.2215 = phi i32 [ %.0213351475, %._crit_edge ], [ %.0213351475, %.lr.ph477 ], [ %.0213351475, %bb.q ], [ %i.gz, %bb.ag ], [ %.0213351475, %bb.af ] ; 2 uses
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407474, 1 ; 2 uses
  %i.hb = load i32, ptr %i.cq, align 4
  %i.hc = sext i32 %i.hb to i64
  %i.hd = icmp slt i64 %indvars.iv.next408, %i.hc
  br i1 %i.hd, label %.lr.ph477, label %..critedge253_crit_edge

.critedge253.thread:                              ; preds = %list_length.exit262, %.critedge253
  tail call void @pfree(ptr noundef %i.co) #7
  tail call void @bms_free(ptr noundef %.0220.lcssa) #7
  tail call void @pfree(ptr noundef %i.cf) #7
  br label %.sink.split461

bb.ai:                                            ; preds = %.critedge253
  %i.he = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %.0213351.lcssa) #7 ; 4 uses
  %i.hf = tail call i32 @bms_num_members(ptr noundef %.0220.lcssa) #7
  %i.hg = icmp sgt i32 %.0216350.lcssa, 0
  br i1 %i.hg, label %.preheader.preheader.i.lr.ph, label %._crit_edge368

.preheader.preheader.i.lr.ph:                     ; preds = %bb.ai
  %wide.trip.count.i = zext nneg i32 %.0216350.lcssa to i64
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.aq, %.preheader.preheader.i.lr.ph
  %i.hh = phi i32 [ %i.hf, %.preheader.preheader.i.lr.ph ], [ %i.iz, %bb.aq ]
  %.0211360 = phi i32 [ 0, %.preheader.preheader.i.lr.ph ], [ %i.ip, %bb.aq ] ; 6 uses
  %.2222359 = phi ptr [ %.0220.lcssa, %.preheader.preheader.i.lr.ph ], [ %i.iy, %bb.aq ] ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.031.i = phi ptr [ null, %.preheader.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8            ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load i32, ptr %i.hk, align 8
  %.not34.i = icmp eq i32 %i.hl, 0
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %dependency_is_fully_matched.exit.i
  %i.hm = phi ptr [ %i.ik, %dependency_is_fully_matched.exit.i ], [ %i.hj, %.preheader.i ] ; 5 uses
  %.129.i = phi ptr [ %.3.i, %dependency_is_fully_matched.exit.i ], [ %.031.i, %.preheader.i ] ; 7 uses
  %.02328.i = phi i32 [ %i.il, %dependency_is_fully_matched.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = sext i32 %.02328.i to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8            ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  %i.hs = load i16, ptr %i.hr, align 8            ; 4 uses
  %i.ht = sext i16 %i.hs to i32
  %i.hu = icmp slt i32 %i.hh, %i.ht
  br i1 %i.hu, label %dependency_is_fully_matched.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i
  %.not.i263 = icmp eq ptr %.129.i, null
  br i1 %.not.i263, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hv = getelementptr inbounds nuw i8, ptr %.129.i, i64 8
  %i.hw = load i16, ptr %i.hv, align 8            ; 2 uses
  %i.hx = icmp slt i16 %i.hs, %i.hw
  br i1 %i.hx, label %dependency_is_fully_matched.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hy = icmp eq i16 %i.hw, %i.hs
  br i1 %i.hy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hz = load double, ptr %.129.i, align 8
  %i.ia = load double, ptr %i.hq, align 8
  %i.ib = fcmp ogt double %i.hz, %i.ia
  br i1 %i.ib, label %dependency_is_fully_matched.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.aj
  %i.ic = icmp slt i16 %i.hs, 1
  br i1 %i.ic, label %dependency_is_fully_matched.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.an
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 10
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ie = load i16, ptr %i.hr, align 8
  %i.if = sext i16 %i.ie to i64
  %.not.i.i = icmp slt i64 %indvars.iv.next.i.i, %i.if
  br i1 %.not.i.i, label %bb.ap, label %dependency_is_fully_matched.exit.loopexit.i, !llvm.loop !29

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ao ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.id, i64 %indvars.iv.i.i
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = sext i16 %i.ih to i32
  %i.ij = tail call zeroext i1 @bms_is_member(i32 noundef %i.ii, ptr noundef %.2222359) #7
  br i1 %i.ij, label %bb.ao, label %dependency_is_fully_matched.exit.loopexit.i

dependency_is_fully_matched.exit.loopexit.i:      ; preds = %bb.ap, %bb.ao
  %.3.ph.i = phi ptr [ %.129.i, %bb.ap ], [ %i.hq, %bb.ao ]
  %.pre.i = load ptr, ptr %i.hi, align 8
  br label %dependency_is_fully_matched.exit.i

dependency_is_fully_matched.exit.i:               ; preds = %dependency_is_fully_matched.exit.loopexit.i, %bb.an, %bb.am, %bb.ak, %.lr.ph.i
  %i.ik = phi ptr [ %i.hm, %bb.am ], [ %i.hm, %.lr.ph.i ], [ %i.hm, %bb.ak ], [ %i.hm, %bb.an ], [ %.pre.i, %dependency_is_fully_matched.exit.loopexit.i ] ; 2 uses
  %.3.i = phi ptr [ %.129.i, %bb.am ], [ %.129.i, %.lr.ph.i ], [ %.129.i, %bb.ak ], [ %i.hq, %bb.an ], [ %.3.ph.i, %dependency_is_fully_matched.exit.loopexit.i ] ; 2 uses
  %i.il = add nuw i32 %.02328.i, 1                ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.in = load i32, ptr %i.im, align 8
  %i.io = icmp ult i32 %i.il, %i.in
  br i1 %i.io, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !30

._crit_edge.i:                                    ; preds = %dependency_is_fully_matched.exit.i, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.031.i, %.preheader.i ], [ %.3.i, %dependency_is_fully_matched.exit.i ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_0
