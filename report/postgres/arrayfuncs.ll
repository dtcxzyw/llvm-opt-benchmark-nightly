Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/arrayfuncs?download=true
inline.NumInlined: 302
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@generate_subscripts:bb.a
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.n, align 4
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = phi ptr [ %i.ai, %bb.g ], [ %i.ap, %bb.h ]
  %i.ar = phi ptr [ %i.ak, %bb.g ], [ %i.al, %bb.h ]
  %i.as = add i64 %i.i, 4294967295
  %i.at = and i64 %i.as, 4294967295               ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4            ; 2 uses
  store i32 %i.av, ptr %i.ae, align 4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.at
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = add i32 %i.ax, -1
  %i.az = add i32 %i.ay, %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = icmp slt i16 %i.bc, 3
  br i1 %i.bd, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = zext i1 %i.bg to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.j
  %i.bi = phi i8 [ %i.bh, %bb.j ], [ 0, %bb.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i8 %i.bi, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.ae, ptr %i.bk, align 8
  store ptr %i.ad, ptr @CurrentMemoryContext, align 8
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.a
  %i.bl = tail call ptr @per_MultiFuncCall(ptr noundef nonnull %0) #16 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8            ; 5 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %.not = icmp sgt i32 %i.bo, %i.bq
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bs = load i8, ptr %i.br, align 4, !range !8, !noundef !9
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = load i64, ptr %i.bl, align 8
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.bl, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i32 1, ptr %i.by, align 8
  br i1 %i.bt, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bn, align 4
  %i.cb = sext i32 %i.bz to i64
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.cc = load i32, ptr %i.bp, align 4            ; 2 uses
  %i.cd = add i32 %i.cc, -1
  store i32 %i.cd, ptr %i.bp, align 4
  %i.ce = sext i32 %i.cc to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  tail call void @end_MultiFuncCall(ptr noundef nonnull %0, ptr noundef nonnull %i.bl) #16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i32 2, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ci, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.e, %bb.o, %bb.n, %bb.m
  %.3 = phi i64 [ %i.ce, %bb.n ], [ %i.cb, %bb.m ], [ 0, %bb.o ], [ 0, %bb.e ], [ 0, %bb.c ]
  ret i64 %.3
}

declare ptr @init_MultiFuncCall(ptr noundef) local_unnamed_addr #2

declare void @end_MultiFuncCall(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @per_MultiFuncCall(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @generate_subscripts_nodir(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @generate_subscripts(ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @array_fill_with_lower_bounds(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !9
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i8, ptr %i.f, align 8, !range !8, !noundef !9
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.j = tail call i32 @errcode(i32 noundef 67108994) #16 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.41) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6026, ptr noundef nonnull @__func__.array_fill_with_lower_bounds) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i64, ptr %i.b, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call ptr @pg_detoast_datum(ptr noundef %i.n) #16
  %i.p = load i64, ptr %i.l, align 8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = tail call ptr @pg_detoast_datum(ptr noundef %i.q) #16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i8, ptr %i.s, align 8, !range !8, !noundef !9
  %i.u = trunc nuw i8 %i.t to i1                  ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.014 = phi i64 [ %i.v, %bb.e ], [ 0, %bb.d ]
  %i.w = load ptr, ptr %0, align 8
  %i.x = tail call i32 @get_fn_expr_argtype(ptr noundef %i.w, i32 noundef 0) #16 ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.z = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.42) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6044, ptr noundef nonnull @__func__.array_fill_with_lower_bounds) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aa = tail call fastcc ptr @array_fill_internal(ptr noundef %i.o, ptr noundef %i.r, i64 noundef %.014, i1 noundef zeroext %i.u, i32 noundef %i.x, ptr noundef nonnull %0)
  %i.ab = ptrtoint ptr %i.aa to i64
  ret i64 %i.ab
}

declare i32 @get_fn_expr_argtype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @array_fill_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, i32 noundef range(i32 1, 0) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #16 ; 0 uses
  %i.h = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.64) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6130, ptr noundef nonnull @__func__.array_fill_internal) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = tail call i32 @ArrayGetNItems(i32 noundef %i.c, ptr noundef nonnull %i.k) #16 ; 3 uses
  %i.m = load i32, ptr %i.i, align 4              ; 2 uses
  %.not18.i = icmp eq i32 %i.m, 0                 ; 2 uses
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.b, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.s = icmp sgt i32 %i.l, 7
  br i1 %i.s, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %bb.f
  %.016.lcssa.i = phi i32 [ %i.l, %bb.f ], [ %i.y, %bb.g ] ; 2 uses
  %.015.lcssa.i = phi ptr [ %i.r, %bb.f ], [ %i.x, %bb.g ]
  %i.t = icmp sgt i32 %.016.lcssa.i, 0
  br i1 %i.t, label %.lr.ph28.i, label %.loopexit154

.lr.ph28.i:                                       ; preds = %.preheader.i
  %i.u = load i8, ptr %.015.lcssa.i, align 1
  %i.v = zext i8 %i.u to i32
  br label %bb.h

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.01524.i = phi ptr [ %i.x, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %.01623.i = phi i32 [ %i.y, %bb.g ], [ %i.l, %bb.f ] ; 2 uses
  %i.w = load i8, ptr %.01524.i, align 1
  %.not19.i = icmp eq i8 %i.w, -1
  br i1 %.not19.i, label %bb.g, label %array_contains_nulls.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.01524.i, i64 1 ; 2 uses
  %i.y = add nsw i32 %.01623.i, -8                ; 2 uses
  %i.z = icmp samesign ugt i32 %.01623.i, 15
  br i1 %i.z, label %.lr.ph.i, label %.preheader.i, !llvm.loop !2

bb.h:                                             ; preds = %bb.i, %.lr.ph28.i
  %.027.i = phi i32 [ 1, %.lr.ph28.i ], [ %i.ac, %bb.i ] ; 2 uses
  %.126.i = phi i32 [ %.016.lcssa.i, %.lr.ph28.i ], [ %i.ad, %bb.i ] ; 2 uses
  %i.aa = and i32 %.027.i, %i.v
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %array_contains_nulls.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = shl i32 %.027.i, 1
  %i.ad = add nsw i32 %.126.i, -1
  %i.ae = icmp sgt i32 %.126.i, 1
  br i1 %i.ae, label %bb.h, label %.loopexit154, !llvm.loop !3

array_contains_nulls.exit:                        ; preds = %.lr.ph.i, %bb.h
  %i.af = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.ag = tail call i32 @errcode(i32 noundef 67108994) #16 ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.65) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6135, ptr noundef nonnull @__func__.array_fill_internal) #16
  unreachable

.loopexit154:                                     ; preds = %bb.i, %.preheader.i
  %.pre = load i32, ptr %i.b, align 4             ; 2 uses
  br i1 %.not18.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %.loopexit154
  %i.ai = sext i32 %i.m to i64
  br label %bb.k

.thread:                                          ; preds = %bb.c, %.loopexit154
  %i.aj = phi i32 [ %i.c, %bb.c ], [ %.pre, %.loopexit154 ] ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = add nsw i64 %i.al, 16
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.an = phi i32 [ %i.aj, %.thread ], [ %.pre, %bb.j ]
  %i.ao = phi i64 [ %i.am, %.thread ], [ %i.ai, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao ; 4 uses
  %i.aq = icmp sgt i32 %i.an, 0
  br i1 %i.aq, label %bb.l, label %.thread142

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load i32, ptr %i.ar, align 4            ; 5 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.av = tail call i32 @errcode(i32 noundef 50856066) #16 ; 0 uses
  %i.aw = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.12, i32 noundef %i.as) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6143, ptr noundef nonnull @__func__.array_fill_internal) #16
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ax = icmp samesign ugt i32 %i.as, 6
  br i1 %i.ax, label %bb.o, label %.thread142

bb.o:                                             ; preds = %bb.n
  %i.ay = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.az = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.ba = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13, i32 noundef %i.as, i32 noundef 6) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6148, ptr noundef nonnull @__func__.array_fill_internal) #16
  unreachable

.thread142:                                       ; preds = %bb.k, %bb.n
  %i.bb = phi i32 [ %i.as, %bb.n ], [ 0, %bb.k ]  ; 9 uses
  %.not116 = icmp eq ptr %1, null
  br i1 %.not116, label %.preheader.preheader, label %bb.p

.preheader.preheader:                             ; preds = %.thread142
  store <4 x i32> splat (i32 1), ptr %i.a, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 1, ptr %i.bc, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 1, ptr %i.bd, align 4
  br label %.loopexit151

bb.p:                                             ; preds = %.thread142
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.bi = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.bj = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #16 ; 0 uses
  %i.bk = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.64) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6156, ptr noundef nonnull @__func__.array_fill_internal) #16
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4
  %.not.i122 = icmp eq i32 %i.bm, 0
  br i1 %.not.i122, label %.loopexit152, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bo = tail call i32 @ArrayGetNItems(i32 noundef %i.bf, ptr noundef nonnull %i.bn) #16 ; 3 uses
  %i.bp = load i32, ptr %i.bl, align 4            ; 3 uses
  %.not18.i123 = icmp eq i32 %i.bp, 0
  br i1 %.not18.i123, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = load i32, ptr %i.be, align 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = shl nsw i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bs
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bu = phi ptr [ %i.bt, %bb.t ], [ null, %bb.s ] ; 2 uses
  %i.bv = icmp sgt i32 %i.bo, 7
  br i1 %i.bv, label %.lr.ph.i131, label %.preheader.i124

.preheader.i124:                                  ; preds = %bb.v, %bb.u
  %.016.lcssa.i125 = phi i32 [ %i.bo, %bb.u ], [ %i.cb, %bb.v ] ; 2 uses
  %.015.lcssa.i126 = phi ptr [ %i.bu, %bb.u ], [ %i.ca, %bb.v ]
  %i.bw = icmp sgt i32 %.016.lcssa.i125, 0
  br i1 %i.bw, label %.lr.ph28.i128, label %.loopexit152

.lr.ph28.i128:                                    ; preds = %.preheader.i124
  %i.bx = load i8, ptr %.015.lcssa.i126, align 1
  %i.by = zext i8 %i.bx to i32
  br label %bb.w

.lr.ph.i131:                                      ; preds = %bb.u, %bb.v
  %.01524.i132 = phi ptr [ %i.ca, %bb.v ], [ %i.bu, %bb.u ] ; 2 uses
  %.01623.i133 = phi i32 [ %i.cb, %bb.v ], [ %i.bo, %bb.u ] ; 2 uses
  %i.bz = load i8, ptr %.01524.i132, align 1
  %.not19.i134 = icmp eq i8 %i.bz, -1
  br i1 %.not19.i134, label %bb.v, label %array_contains_nulls.exit135

bb.v:                                             ; preds = %.lr.ph.i131
  %i.ca = getelementptr inbounds nuw i8, ptr %.01524.i132, i64 1 ; 2 uses
  %i.cb = add nsw i32 %.01623.i133, -8            ; 2 uses
  %i.cc = icmp samesign ugt i32 %.01623.i133, 15
  br i1 %i.cc, label %.lr.ph.i131, label %.preheader.i124, !llvm.loop !2

bb.w:                                             ; preds = %bb.x, %.lr.ph28.i128
  %.027.i129 = phi i32 [ 1, %.lr.ph28.i128 ], [ %i.cf, %bb.x ] ; 2 uses
  %.126.i130 = phi i32 [ %.016.lcssa.i125, %.lr.ph28.i128 ], [ %i.cg, %bb.x ] ; 2 uses
  %i.cd = and i32 %.027.i129, %i.by
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %array_contains_nulls.exit135, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = shl i32 %.027.i129, 1
  %i.cg = add nsw i32 %.126.i130, -1
  %i.ch = icmp sgt i32 %.126.i130, 1
  br i1 %i.ch, label %bb.w, label %.loopexit152, !llvm.loop !3

array_contains_nulls.exit135:                     ; preds = %.lr.ph.i131, %bb.w
  %i.ci = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.cj = tail call i32 @errcode(i32 noundef 67108994) #16 ; 0 uses
  %i.ck = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.65) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6161, ptr noundef nonnull @__func__.array_fill_internal) #16
  unreachable

.loopexit152:                                     ; preds = %bb.x, %bb.r, %.preheader.i124
  %i.cl = phi i32 [ %i.bp, %.preheader.i124 ], [ 0, %bb.r ], [ %i.bp, %bb.x ] ; 2 uses
  %i.cm = load i32, ptr %i.be, align 4            ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit152
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cp = load i32, ptr %i.co, align 4
  br label %bb.z

bb.z:                                             ; preds = %.loopexit152, %bb.y
  %i.cq = phi i32 [ %i.cp, %bb.y ], [ 0, %.loopexit152 ]
  %.not117 = icmp eq i32 %i.bb, %i.cq
  br i1 %.not117, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.cs = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.ct = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #16 ; 0 uses
  %i.cu = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.66) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6167, ptr noundef nonnull @__func__.array_fill_internal) #16
  unreachable

bb.ab:                                            ; preds = %bb.z
  %.not118 = icmp eq i32 %i.cl, 0
  %i.cv = sext i32 %i.cl to i64
  %i.cw = sext i32 %i.cm to i64
  %i.cx = shl nsw i64 %i.cw, 3
  %i.cy = add nsw i64 %i.cx, 16
  %i.cz = select i1 %.not118, i64 %i.cy, i64 %i.cv
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %i.cz
  br label %.loopexit151

.loopexit151:                                     ; preds = %.preheader.preheader, %bb.ab
  %.0104 = phi ptr [ %i.da, %bb.ab ], [ %i.a, %.preheader.preheader ] ; 3 uses
  %i.db = tail call i32 @ArrayGetNItems(i32 noundef %i.bb, ptr noundef %i.ap) #16 ; 4 uses
  call void @ArrayCheckBounds(i32 noundef %i.bb, ptr noundef %i.ap, ptr noundef %.0104) #16
  %i.dc = icmp slt i32 %i.db, 1
  br i1 %i.dc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit151
  %i.dd = call ptr @palloc0(i64 noundef 16) #16   ; 5 uses
  store i32 64, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store i32 0, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 0, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 %4, ptr %i.dg, align 4
  br label %.loopexit

bb.ad:                                            ; preds = %.loopexit151
  %i.dh = load ptr, ptr %5, align 8               ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8            ; 4 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.thread183, label %bb.ae

.thread183:                                       ; preds = %bb.ad
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call ptr @MemoryContextAlloc(ptr noundef %i.dm, i64 noundef 72) #16
  %i.do = load ptr, ptr %5, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store ptr %i.dn, ptr %i.dp, align 8
  %i.dq = load ptr, ptr %5, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  store i32 0, ptr %i.ds, align 8
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.pre169 = load i32, ptr %i.dj, align 8
  %i.dt = icmp eq i32 %.pre169, %4
  br i1 %i.dt, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.thread183, %bb.ae
  %.0103186.a = phi ptr [ %i.ds, %.thread183 ], [ %i.dj, %bb.ae ] ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0103186.a, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.0103186.a, i64 6
  %i.dw = getelementptr inbounds nuw i8, ptr %.0103186.a, i64 7
  call void @get_typlenbyvalalign(i32 noundef %4, ptr noundef nonnull %i.du, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dw) #16
  store i32 %4, ptr %.0103186.a, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0103187 = phi ptr [ %.0103186.a, %bb.af ], [ %i.dj, %bb.ae ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0103187, i64 4
  %i.dy = load i16, ptr %i.dx, align 4            ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0103187, i64 6
  %i.ea = load i8, ptr %i.dz, align 2, !range !8, !noundef !9
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = getelementptr inbounds nuw i8, ptr %.0103187, i64 7
  %i.ed = load i8, ptr %i.ec, align 1             ; 2 uses
  %switch.tableidx = add i8 %i.ed, -99            ; 3 uses
  %i.ee = icmp ult i8 %switch.tableidx, 17
  br i1 %i.ee, label %switch.hole_check, label %bb.ah

bb.ah:                                            ; preds = %switch.hole_check, %bb.ag
  %i.ef = sext i8 %i.ed to i32
  %i.eg = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.eh = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.47, i32 noundef %i.ef) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 322, ptr noundef nonnull @__func__.typalign_to_alignby) #16
  unreachable

switch.hole_check:                                ; preds = %bb.ag
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 65603, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.ah

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ei = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.width_bucket_array, i64 %i.ei
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  br i1 %3, label %bb.as, label %bb.ai

bb.ai:                                            ; preds = %switch.lookup
  %i.ej = sext i16 %i.dy to i32                   ; 2 uses
  %i.ek = icmp eq i16 %i.dy, -1
  br i1 %i.ek, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.el = icmp sgt i16 %i.dy, 0
  br i1 %i.el, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.em = zext nneg i32 %i.ej to i64
  br label %VARSIZE_ANY.exit

bb.al:                                            ; preds = %bb.ai
  %i.en = inttoptr i64 %2 to ptr
  %i.eo = call ptr @pg_detoast_datum(ptr noundef %i.en) #16 ; 4 uses
  %i.ep = ptrtoint ptr %i.eo to i64               ; 3 uses
  %i.eq = load i8, ptr %i.eo, align 1             ; 2 uses
  %i.er = zext i8 %i.eq to i32                    ; 2 uses
  %i.es = icmp eq i8 %i.eq, 1
  br i1 %i.es, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.et = getelementptr i8, ptr %i.eo, i64 1
  %.val.i = load i8, ptr %i.et, align 1           ; 2 uses
  %i.eu = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.eu, 3
  %i.ev = icmp eq i8 %.val.i, 18
  %i.ew = select i1 %i.ev, i64 18, i64 2
  %i.ex = select i1 %or.cond.i.i.i, i64 10, i64 %i.ew
  br label %VARSIZE_ANY.exit

bb.an:                                            ; preds = %bb.al
  %i.ey = and i32 %i.er, 1
  %.not.i136 = icmp eq i32 %i.ey, 0
  br i1 %.not.i136, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ez = lshr i32 %i.er, 1
  %i.fa = zext nneg i32 %i.ez to i64
  br label %VARSIZE_ANY.exit

bb.ap:                                            ; preds = %bb.an
  %i.fb = load i32, ptr %i.eo, align 4
  %i.fc = lshr i32 %i.fb, 2
  %i.fd = zext nneg i32 %i.fc to i64
  br label %VARSIZE_ANY.exit

bb.aq:                                            ; preds = %bb.aj
  %i.fe = inttoptr i64 %2 to ptr
  %i.ff = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fe) #18
  %i.fg = add i64 %i.ff, 1
  br label %VARSIZE_ANY.exit

VARSIZE_ANY.exit:                                 ; preds = %bb.ap, %bb.ao, %bb.am, %bb.aq, %bb.ak
  %.099146 = phi i64 [ %2, %bb.ak ], [ %2, %bb.aq ], [ %i.ep, %bb.am ], [ %i.ep, %bb.ao ], [ %i.ep, %bb.ap ]
  %i.fh = phi i64 [ %i.em, %bb.ak ], [ %i.fg, %bb.aq ], [ %i.ex, %bb.am ], [ %i.fa, %bb.ao ], [ %i.fd, %bb.ap ]
  %i.fi = zext nneg i8 %switch.load to i64        ; 2 uses
end_hunk_0
begin_hunk_1_@array_replace_internal:bb.a
  br label %bb.ay

bb.ay:                                            ; preds = %VARSIZE_ANY.exit205, %bb.ax, %bb.aq
  %i.fe = phi i64 [ %i.eh, %bb.aq ], [ %i.fa, %VARSIZE_ANY.exit205 ], [ %i.fd, %bb.ax ]
  %i.ff = add i64 %i.cd, %i.fe
  %i.fg = and i64 %i.ff, %i.bx                    ; 2 uses
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = and i64 %i.fg, 3221225472
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fk = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.fl = call i32 @errcode(i32 noundef 261) #16  ; 0 uses
  %i.fm = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 1073741823) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6587, ptr noundef nonnull @__func__.array_replace_internal) #16
  unreachable

bb.ba:                                            ; preds = %.thread226, %bb.ao, %bb.ay
  %.1.ph224 = phi i1 [ %.1.ph223, %bb.ay ], [ true, %bb.ao ], [ %.0167251, %.thread226 ]
  %.1173.ph222 = phi ptr [ %.1173.ph221, %bb.ay ], [ %i.dq, %bb.ao ], [ %.0172248, %.thread226 ]
  %.1178 = phi i32 [ %i.fh, %bb.ay ], [ %.0177244, %bb.ao ], [ %.0177244, %.thread226 ]
  %.1175 = phi i1 [ %.0174246, %bb.ay ], [ true, %bb.ao ], [ true, %.thread226 ]
  %i.fn = add i32 %.0181239, 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.t, %bb.an, %bb.ba
  %.1214 = phi i1 [ %.1.ph224, %bb.ba ], [ true, %bb.an ], [ true, %bb.t ] ; 2 uses
  %.1173212 = phi ptr [ %.1173.ph222, %bb.ba ], [ %i.dq, %bb.an ], [ %.0172248, %bb.t ]
  %.1182 = phi i32 [ %i.fn, %bb.ba ], [ %.0181239, %bb.an ], [ %.0181239, %bb.t ] ; 5 uses
  %.2179 = phi i32 [ %.1178, %bb.ba ], [ %.0177244, %bb.an ], [ %.0177244, %bb.t ] ; 2 uses
  %.2 = phi i1 [ %.1175, %bb.ba ], [ %.0174246, %bb.an ], [ %.0174246, %bb.t ] ; 2 uses
  %i.fo = shl i32 %.0168250, 1                    ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 256                  ; 2 uses
  %spec.select.idx = zext i1 %i.fp to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.0170249, i64 %spec.select.idx
  %spec.select198 = select i1 %i.fp, i32 1, i32 %i.fo
  %.1171 = select i1 %.not197, ptr null, ptr %spec.select
  %.1169 = select i1 %.not197, i32 %.0168250, i32 %spec.select198
  %i.fq = add nuw nsw i32 %.0180243, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fq, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !96

._crit_edge:                                      ; preds = %bb.bb
  br i1 %.1214, label %bb.bc, label %.critedge

.critedge:                                        ; preds = %._crit_edge
  call void @pfree(ptr noundef %i.ba) #16
  call void @pfree(ptr noundef %i.bb) #16
  br label %bb.bk

bb.bc:                                            ; preds = %._crit_edge
  %i.fr = icmp eq i32 %.1182, 0
  br i1 %i.fr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @pfree(ptr noundef %i.ba) #16
  call void @pfree(ptr noundef %i.bb) #16
  %i.fs = call ptr @palloc0(i64 noundef 16) #16   ; 5 uses
  store i32 64, ptr %i.fs, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 0, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i32 0, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  store i32 %i.b, ptr %i.fv, align 4
  br label %bb.bk

bb.be:                                            ; preds = %bb.bc
  %i.fw = shl i32 %i.d, 3                         ; 2 uses
  br i1 %.2, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fx = add i32 %.1182, 7
  %i.fy = sdiv i32 %i.fx, 8
  %i.fz = add i32 %i.fw, 23
  %i.ga = add i32 %i.fz, %i.fy
  %i.gb = and i32 %i.ga, -8                       ; 2 uses
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.gc = add i32 %i.fw, 16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn = phi i32 [ %i.gb, %bb.bf ], [ %i.gc, %bb.bg ]
  %.0176 = phi i32 [ %i.gb, %bb.bf ], [ 0, %bb.bg ]
  %.3 = add i32 %.pn, %.2179                      ; 2 uses
  %i.gd = sext i32 %.3 to i64
  %i.ge = call ptr @palloc0(i64 noundef %i.gd) #16 ; 7 uses
  %i.gf = shl i32 %.3, 2
  store i32 %i.gf, ptr %i.ge, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store i32 %i.d, ptr %i.gg, align 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i32 %.0176, ptr %i.gh, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i32 %i.b, ptr %i.gi, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 3 uses
  %i.gk = sext i32 %i.d to i64
  %i.gl = shl nsw i64 %i.gk, 2                    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gj, ptr nonnull align 4 %i.e, i64 %i.gl, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gl
  %i.gn = load i32, ptr %i.c, align 4
  %i.go = sext i32 %i.gn to i64
  %i.gp = shl nsw i64 %i.go, 2
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gm, ptr nonnull align 4 %i.gq, i64 %i.gl, i1 false)
  br i1 %5, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 %.1182, ptr %i.gj, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @CopyArrayEls(ptr noundef nonnull %i.ge, ptr noundef %i.ba, ptr noundef %i.bb, i32 noundef %.1182, i32 noundef %i.ab, i1 noundef zeroext %i.ae, i8 noundef signext %i.ag, i1 noundef zeroext false)
  call void @pfree(ptr noundef %i.ba) #16
  call void @pfree(ptr noundef %i.bb) #16
  br label %bb.bk

bb.bk:                                            ; preds = %bb.a, %bb.bj, %bb.bd, %.critedge
  %.0183 = phi ptr [ %0, %.critedge ], [ %i.fs, %bb.bd ], [ %i.ge, %bb.bj ], [ %0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret ptr %.0183
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @array_replace(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.d, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i8, ptr %i.f, align 8, !range !8, !noundef !9
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i8, ptr %i.k, align 8, !range !8, !noundef !9
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8
  %i.p = load i64, ptr %i.e, align 8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = tail call ptr @pg_detoast_datum(ptr noundef %i.q) #16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8
  %i.u = tail call fastcc ptr @array_replace_internal(ptr noundef %i.r, i64 noundef %i.o, i1 noundef zeroext %i.m, i64 noundef %i.j, i1 noundef zeroext %i.h, i1 noundef zeroext false, i32 noundef %i.t, ptr noundef nonnull %0)
  %i.v = ptrtoint ptr %i.u to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ %i.v, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @width_bucket_array(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.anon.8, align 8              ; 13 uses
  %2 = alloca %union.anon.7, align 8              ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call ptr @pg_detoast_datum(ptr noundef %i.e) #16 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 8 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.o = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.43) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6728, ptr noundef nonnull @__func__.width_bucket_array) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %.loopexit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.t = tail call i32 @ArrayGetNItems(i32 noundef %i.l, ptr noundef nonnull %i.s) #16 ; 3 uses
  %i.u = load i32, ptr %i.q, align 4              ; 3 uses
  %.not18.i = icmp eq i32 %i.u, 0
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.k, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi ptr [ %i.y, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.aa = icmp sgt i32 %i.t, 7
  br i1 %i.aa, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %bb.f
  %.016.lcssa.i = phi i32 [ %i.t, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  %.015.lcssa.i = phi ptr [ %i.z, %bb.f ], [ %i.af, %bb.g ]
  %i.ab = icmp sgt i32 %.016.lcssa.i, 0
  br i1 %i.ab, label %.lr.ph28.i, label %.loopexit

.lr.ph28.i:                                       ; preds = %.preheader.i
  %i.ac = load i8, ptr %.015.lcssa.i, align 1
  %i.ad = zext i8 %i.ac to i32
  br label %bb.h

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.01524.i = phi ptr [ %i.af, %bb.g ], [ %i.z, %bb.f ] ; 2 uses
  %.01623.i = phi i32 [ %i.ag, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.ae = load i8, ptr %.01524.i, align 1
  %.not19.i = icmp eq i8 %i.ae, -1
  br i1 %.not19.i, label %bb.g, label %array_contains_nulls.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.01524.i, i64 1 ; 2 uses
  %i.ag = add nsw i32 %.01623.i, -8               ; 2 uses
  %i.ah = icmp samesign ugt i32 %.01623.i, 15
  br i1 %i.ah, label %.lr.ph.i, label %.preheader.i, !llvm.loop !2

bb.h:                                             ; preds = %bb.i, %.lr.ph28.i
  %.027.i = phi i32 [ 1, %.lr.ph28.i ], [ %i.ak, %bb.i ] ; 2 uses
  %.126.i = phi i32 [ %.016.lcssa.i, %.lr.ph28.i ], [ %i.al, %bb.i ] ; 2 uses
  %i.ai = and i32 %.027.i, %i.ad
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %array_contains_nulls.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = shl i32 %.027.i, 1
  %i.al = add nsw i32 %.126.i, -1
  %i.am = icmp sgt i32 %.126.i, 1
  br i1 %i.am, label %bb.h, label %.loopexit, !llvm.loop !3

array_contains_nulls.exit:                        ; preds = %.lr.ph.i, %bb.h
  %i.an = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.ao = tail call i32 @errcode(i32 noundef 67108994) #16 ; 0 uses
  %i.ap = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.44) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6733, ptr noundef nonnull @__func__.width_bucket_array) #16
  unreachable

.loopexit:                                        ; preds = %bb.i, %.preheader.i
  %i.aq = icmp eq i32 %i.j, 701
  br i1 %i.aq, label %bb.j, label %bb.n

.loopexit.thread:                                 ; preds = %bb.c
  %i.ar = icmp eq i32 %i.j, 701
  br i1 %i.ar, label %.thread, label %bb.n

.thread:                                          ; preds = %.loopexit.thread
  %i.as = bitcast i64 %i.b to double
  br label %bb.l

bb.j:                                             ; preds = %.loopexit
  %i.at = bitcast i64 %i.b to double              ; 2 uses
  %.not.i36 = icmp eq i32 %i.u, 0
  br i1 %.not.i36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = sext i32 %i.u to i64
  %.pre.i = load i32, ptr %i.k, align 4
  br label %bb.m

bb.l:                                             ; preds = %.thread, %bb.j
  %i.av = phi double [ %i.as, %.thread ], [ %i.at, %bb.j ]
  %i.aw = load i32, ptr %i.k, align 4             ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = add nsw i64 %i.ay, 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = phi double [ %i.at, %bb.k ], [ %i.av, %bb.l ] ; 2 uses
  %i.bb = phi i32 [ %.pre.i, %bb.k ], [ %i.aw, %bb.l ]
  %i.bc = phi i64 [ %i.au, %bb.k ], [ %i.az, %bb.l ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bf = tail call i32 @ArrayGetNItems(i32 noundef %i.bb, ptr noundef nonnull %i.be) #16 ; 3 uses
  %i.bg = fcmp uno double %i.ba, 0.000000e+00
  br i1 %i.bg, label %width_bucket_array_float8.exit, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.m
  %i.bh = icmp sgt i32 %i.bf, 0
  br i1 %i.bh, label %.lr.ph.i38, label %width_bucket_array_float8.exit

.lr.ph.i38:                                       ; preds = %.preheader.i37, %.lr.ph.i38
  %.026.i = phi i32 [ %.1.i, %.lr.ph.i38 ], [ %i.bf, %.preheader.i37 ] ; 2 uses
  %.02125.i = phi i32 [ %.122.i, %.lr.ph.i38 ], [ 0, %.preheader.i37 ] ; 2 uses
  %i.bi = add i32 %.02125.i, %.026.i
  %i.bj = sdiv i32 %i.bi, 2                       ; 3 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8         ; 2 uses
  %i.bn = fcmp uno double %i.bm, 0.000000e+00
  %i.bo = fcmp ogt double %i.bm, %i.ba
  %or.cond.i = or i1 %i.bn, %i.bo                 ; 2 uses
  %i.bp = add nsw i32 %i.bj, 1
  %.122.i = select i1 %or.cond.i, i32 %.02125.i, i32 %i.bp ; 3 uses
  %.1.i = select i1 %or.cond.i, i32 %i.bj, i32 %.026.i ; 2 uses
  %i.bq = icmp slt i32 %.122.i, %.1.i
  br i1 %i.bq, label %.lr.ph.i38, label %width_bucket_array_float8.exit, !llvm.loop !97

bb.n:                                             ; preds = %.loopexit.thread, %.loopexit
  %i.br = load ptr, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load i32, ptr %i.bt, align 8
  %.not = icmp eq i32 %i.bv, %i.j
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bw = tail call ptr @lookup_type_cache(i32 noundef %i.j, i32 noundef 64) #16 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  %i.by = load i32, ptr %i.bx, align 8
  %.not34 = icmp eq i32 %i.by, 0
  br i1 %.not34, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.ca = tail call i32 @errcode(i32 noundef 52461700) #16 ; 0 uses
  %i.cb = tail call ptr @format_type_be(i32 noundef %i.j) #16
  %i.cc = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.45, ptr noundef %i.cb) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6753, ptr noundef nonnull @__func__.width_bucket_array) #16
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %0, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.bw, ptr %i.ce, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.0 = phi ptr [ %i.bw, %bb.r ], [ %i.bt, %bb.o ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 8            ; 2 uses
  %i.ch = icmp sgt i16 %i.cg, 0
  br i1 %i.ch, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.ci = zext nneg i16 %i.cg to i32              ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0, i64 10
  %i.ck = load i8, ptr %i.cj, align 2, !range !8, !noundef !9
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = load i32, ptr %i.q, align 4             ; 2 uses
  %.not.i39 = icmp eq i32 %i.cm, 0
  br i1 %.not.i39, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = sext i32 %i.cm to i64
  %.pre.i41 = load i32, ptr %i.k, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.co = load i32, ptr %i.k, align 4             ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 3
  %i.cr = add nsw i64 %i.cq, 16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cs = phi i32 [ %.pre.i41, %bb.u ], [ %i.co, %bb.v ]
  %i.ct = phi i64 [ %i.cn, %bb.u ], [ %i.cr, %bb.v ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0, i64 128
  store ptr %i.cv, ptr %2, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store i32 %i.h, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 0, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 30
  store i16 2, ptr %i.cz, align 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.db = tail call i32 @ArrayGetNItems(i32 noundef %i.cs, ptr noundef nonnull %i.da) #16 ; 3 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i42, label %width_bucket_array_fixed.exit

.lr.ph.i42:                                       ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.df = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ci, i1 true)
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  br i1 %i.cl, label %.lr.ph.split.us.i, label %fetch_att.exit.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i42
  %i.di = tail call range(i32 1, 16) i32 @llvm.ctpop.i32(i32 %i.ci)
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %.split.i.us.us.i, label %.lr.ph.split.us.split.i

.split.i.us.us.i:                                 ; preds = %.lr.ph.split.us.i, %fetch_att.exit.us.us.i
  %.042.us.us.i = phi i32 [ %.1.us.us.i, %fetch_att.exit.us.us.i ], [ %i.db, %.lr.ph.split.us.i ] ; 2 uses
  %.03641.us.us.i = phi i32 [ %.137.us.us.i, %fetch_att.exit.us.us.i ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %i.dk = add i32 %.03641.us.us.i, %.042.us.us.i
  %i.dl = sdiv i32 %i.dk, 2                       ; 3 uses
  %i.dm = mul i32 %i.dl, %i.ci
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.cu, i64 %i.dn ; 4 uses
  store i64 %i.b, ptr %i.dd, align 8
  store i8 0, ptr %i.de, align 8
  switch i32 %i.df, label %.split.us.i [
    i32 0, label %bb.aa
    i32 1, label %bb.z
    i32 2, label %bb.y
    i32 3, label %bb.x
  ]

bb.x:                                             ; preds = %.split.i.us.us.i
  %i.dp = load i64, ptr %i.do, align 8
  br label %fetch_att.exit.us.us.i

end_hunk_1
