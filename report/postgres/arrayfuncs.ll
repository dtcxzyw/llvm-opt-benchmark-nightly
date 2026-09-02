Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/arrayfuncs?download=true
inline.NumInlined: 302
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@accumArrayResult:bb.a
bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h, %bb.g
  %.029 = phi i64 [ %1, %bb.g ], [ %1, %bb.h ], [ %i.at, %bb.j ], [ %i.av, %bb.k ]
  %i.aw = zext i1 %2 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load i32, ptr %i.s, align 4
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.ba
  store i64 %.029, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load i32, ptr %i.s, align 4
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 %i.bf
  store i8 %i.aw, ptr %i.bg, align 1
  %i.bh = load i32, ptr %i.s, align 4
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.s, align 4
  store ptr %i.r, ptr @CurrentMemoryContext, align 8
  ret ptr %.0
}

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @pg_detoast_datum_copy(ptr noundef) local_unnamed_addr #2

declare i64 @datumCopy(i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @makeArrayResult(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i32], align 4                ; 4 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  store i32 %i.d, ptr %i.a, align 4
  store i32 1, ptr %i.b, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !8, !noundef !9
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %1, ptr @CurrentMemoryContext, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i16, ptr %i.q, align 4
  %i.s = sext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.u = load i8, ptr %i.t, align 2, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.x = load i8, ptr %i.w, align 1
  %i.y = call ptr @construct_md_array(ptr noundef %i.l, ptr noundef %i.n, i32 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.p, i32 noundef %i.s, i1 noundef zeroext %i.v, i8 noundef signext %i.x)
  store ptr %i.j, ptr @CurrentMemoryContext, align 8
  br i1 %i.i, label %bb.b, label %makeMdArrayResult.exit

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %0, align 8
  call void @MemoryContextDelete(ptr noundef %i.z) #16
  br label %makeMdArrayResult.exit

makeMdArrayResult.exit:                           ; preds = %bb.a, %bb.b
  %i.aa = ptrtoint ptr %i.y to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %i.aa
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @makeMdArrayResult(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %4, ptr @CurrentMemoryContext, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = load i16, ptr %i.h, align 4
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.l = load i8, ptr %i.k, align 2, !range !8, !noundef !9
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.o = load i8, ptr %i.n, align 1
  %i.p = tail call ptr @construct_md_array(ptr noundef %i.c, ptr noundef %i.e, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.g, i32 noundef %i.j, i1 noundef zeroext %i.m, i8 noundef signext %i.o)
  store ptr %i.a, ptr @CurrentMemoryContext, align 8
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8
  tail call void @MemoryContextDelete(ptr noundef %i.q) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = ptrtoint ptr %i.p to i64
  ret i64 %i.r
}

declare void @MemoryContextDelete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @initArrayResultArr(i32 noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @get_element_type(i32 noundef %0) #16 ; 2 uses
  %.not19 = icmp eq i32 %i.a, 0
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.c = tail call i32 @errcode(i32 noundef 67141764) #16 ; 0 uses
  %i.d = tail call ptr @format_type_be(i32 noundef %0) #16
  %i.e = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.36, ptr noundef %i.d) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5534, ptr noundef nonnull @__func__.initArrayResultArr) #16
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.016 = phi i32 [ %1, %bb.a ], [ %i.a, %bb.b ]
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @AllocSetContextCreateInternal(ptr noundef %2, ptr noundef nonnull @.str.37, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.f, %bb.e ], [ %2, %bb.d ]    ; 2 uses
  %i.g = zext i1 %3 to i8
  %i.h = tail call ptr @MemoryContextAllocZero(ptr noundef %.0, i64 noundef 104) #16 ; 5 uses
  store ptr %.0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  store i8 %i.g, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  store i32 %0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i32 %.016, ptr %i.k, align 8
  ret ptr %i.h
}

declare i32 @get_element_type(i32 noundef) local_unnamed_addr #2

declare ptr @MemoryContextAllocZero(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @accumArrayResultArr(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0, i64 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.b = tail call i32 @errcode(i32 noundef 67108994) #16 ; 0 uses
  %i.c = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.38) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5589, ptr noundef nonnull @.str.37) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.e = tail call ptr @pg_detoast_datum(ptr noundef %i.d) #16 ; 7 uses
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @initArrayResultArr(i32 noundef %3, i32 noundef 0, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0107 = phi ptr [ %i.g, %bb.d ], [ %0, %bb.c ] ; 21 uses
  %i.h = load ptr, ptr %.0107, align 8
  %i.i = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.h, ptr @CurrentMemoryContext, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4              ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  %i.m = sext i32 %i.k to i64                     ; 2 uses
  %i.n = shl nsw i64 %i.m, 2                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.m, 3
  %i.t = add nsw i64 %i.s, 16
  %i.u = select i1 %.not, i64 %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.u
  %i.w = tail call i32 @ArrayGetNItems(i32 noundef %i.k, ptr noundef nonnull %i.l) #16 ; 4 uses
  %.val = load i32, ptr %i.e, align 4
  %i.x = lshr i32 %.val, 2
  %i.y = load i32, ptr %i.p, align 4              ; 2 uses
  %.not121 = icmp eq i32 %i.y, 0
  br i1 %.not121, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.j, align 4
  %5 = shl i32 %i.z, 3
  %6 = add i32 %5, 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %7 = phi i32 [ %6, %bb.f ], [ %i.y, %bb.e ]
  %8 = sub i32 %i.x, %7                           ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0107, i64 36 ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add i32 %i.ab, %i.w                     ; 5 uses
  %i.ad = icmp ugt i32 %i.ac, 134217727
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.af = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.ag = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 134217727) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5615, ptr noundef nonnull @.str.37) #16
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.0107, i64 40 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp eq i32 %i.k, 0
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.am = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.an = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.39) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5625, ptr noundef nonnull @.str.37) #16
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ao = add i32 %i.k, 1                         ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 6
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.ar = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.as = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13, i32 noundef %i.ao, i32 noundef 6) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5630, ptr noundef nonnull @.str.37) #16
  unreachable

bb.n:                                             ; preds = %bb.l
  store i32 %i.ao, ptr %i.ah, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.0107, i64 44
  store i32 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.0107, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull align 4 %i.l, i64 %i.n, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.0107, i64 68
  store i32 1, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.0107, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr nonnull align 4 %i.o, i64 %i.n, i1 false)
  %i.ax = add i32 %8, 1
  %i.ay = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 1024) ; 3 uses
  %i.az = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.ay)
  %i.ba = icmp samesign ult i32 %i.az, 2
  %i.bb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ay, i1 true)
  %i.bc = xor i32 %i.bb, 31
  %i.bd = shl nuw i32 2, %i.bc
  %.0.i = select i1 %i.ba, i32 %i.ay, i32 %i.bd   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0107, i64 24
  store i32 %.0.i, ptr %i.be, align 8
  %i.bf = sext i32 %.0.i to i64
  %i.bg = tail call ptr @palloc(i64 noundef %i.bf) #16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0107, i64 8
  store ptr %i.bg, ptr %i.bh, align 8
  br label %bb.u

bb.o:                                             ; preds = %bb.i
  %i.bi = add i32 %i.k, 1
  %.not122 = icmp eq i32 %i.ai, %i.bi
  br i1 %.not122, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %.0107, i64 44
  %i.bk = getelementptr inbounds nuw i8, ptr %.0107, i64 68
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not276 = icmp slt i32 %i.k, 1
  br i1 %exitcond.not276, label %._crit_edge278, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bl = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.bm = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.bn = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.40) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5652, ptr noundef nonnull @.str.37) #16
  unreachable

bb.q:                                             ; preds = %bb.r
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge278, label %.lr.ph, !llvm.loop !94

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %indvars.iv277 = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.preheader ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv277, 1 ; 4 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv277
  %i.br = load i32, ptr %i.bq, align 4
  %.not123 = icmp eq i32 %i.bp, %i.br
  br i1 %.not123, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv277
  %i.bv = load i32, ptr %i.bu, align 4
  %.not124 = icmp eq i32 %i.bt, %i.bv
  br i1 %.not124, label %bb.q, label %bb.s, !llvm.loop !94

bb.s:                                             ; preds = %bb.r, %.lr.ph
  %i.bw = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.bx = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.by = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.40) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5658, ptr noundef nonnull @.str.37) #16
  unreachable

._crit_edge278:                                   ; preds = %bb.q, %.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %.0107, i64 28
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = add i32 %i.ca, %8                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0107, i64 24 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8            ; 2 uses
  %i.ce = icmp sgt i32 %i.cb, %i.cd
  br i1 %i.ce, label %bb.t, label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge278
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0107, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge278
  %i.cf = shl i32 %i.cd, 1
  %. = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 %i.cb) ; 2 uses
  store i32 %., ptr %i.cc, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0107, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = sext i32 %. to i64
  %i.cj = tail call ptr @repalloc(ptr noundef %i.ch, i64 noundef %i.ci) #16 ; 2 uses
  store ptr %i.cj, ptr %i.cg, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.t, %bb.n
  %i.ck = phi ptr [ %.pre, %._crit_edge ], [ %i.cj, %bb.t ], [ %i.bg, %bb.n ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0107, i64 28 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 %i.cn
  %9 = sext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr nonnull align 1 %i.v, i64 %9, i1 false)
  %i.cp = load i32, ptr %i.cl, align 4
  %i.cq = add i32 %i.cp, %8
  store i32 %i.cq, ptr %i.cl, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.0107, i64 16 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not125 = icmp eq ptr %i.cs, null
  br i1 %.not125, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ct = load i32, ptr %i.p, align 4
  %.not126 = icmp eq i32 %i.ct, 0
  br i1 %.not126, label %array_bitmap_copy.exit143, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 255)
  %i.cv = add nuw nsw i32 %i.cu, 1                ; 3 uses
  %i.cw = tail call range(i32 1, 29) i32 @llvm.ctpop.i32(i32 %i.cv)
  %i.cx = icmp samesign ult i32 %i.cw, 2
  %i.cy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cv, i1 true)
  %i.cz = xor i32 %i.cy, 31
  %i.da = shl nuw nsw i32 2, %i.cz
  %.0.i130 = select i1 %i.cx, i32 %i.cv, i32 %i.da ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0107, i64 32
  store i32 %.0.i130, ptr %i.db, align 8
  %i.dc = add nuw nsw i32 %.0.i130, 7
  %i.dd = lshr i32 %i.dc, 3
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = tail call ptr @palloc(i64 noundef %i.de) #16 ; 4 uses
  store ptr %i.df, ptr %i.cr, align 8
  %i.dg = load i32, ptr %i.aa, align 4            ; 3 uses
  %i.dh = icmp slt i32 %i.dg, 1
  br i1 %i.dh, label %array_bitmap_copy.exit, label %.lr.ph94.i.outer.preheader

.lr.ph94.i.outer.preheader:                       ; preds = %bb.w
  %.393.i.ph.in279 = load i8, ptr %i.df, align 1  ; 2 uses
  %.not284 = icmp eq i32 %i.dg, 1
  br i1 %.not284, label %._crit_edge95.thread.sink.split.i.split.loop.exit234, label %.lr.ph94.i.1

bb.x:                                             ; preds = %.lr.ph94.i.6
  %i.di = add nsw i32 %.in99.i.ph280, -8          ; 3 uses
  store i8 -1, ptr %.25491.i.ph281, align 1
  %.not82.i = icmp eq i32 %i.di, 0
  br i1 %.not82.i, label %array_bitmap_copy.exit, label %.thread144

.lr.ph94.i.1:                                     ; preds = %.lr.ph94.i.outer.preheader, %.thread144
  %.393.i.ph.in282 = phi i8 [ %.393.i.ph.in, %.thread144 ], [ %.393.i.ph.in279, %.lr.ph94.i.outer.preheader ] ; 6 uses
  %.25491.i.ph281 = phi ptr [ %i.dm, %.thread144 ], [ %i.df, %.lr.ph94.i.outer.preheader ] ; 8 uses
  %.in99.i.ph280 = phi i32 [ %i.di, %.thread144 ], [ %i.dg, %.lr.ph94.i.outer.preheader ] ; 7 uses
  %i.dj = icmp sgt i32 %.in99.i.ph280, 2
  br i1 %i.dj, label %.lr.ph94.i.2, label %._crit_edge95.thread.sink.split.i.split.loop.exit231

.lr.ph94.i.2:                                     ; preds = %.lr.ph94.i.1
  %.not210 = icmp eq i32 %.in99.i.ph280, 3
  br i1 %.not210, label %._crit_edge95.thread.sink.split.i.split.loop.exit228, label %.lr.ph94.i.3

.lr.ph94.i.3:                                     ; preds = %.lr.ph94.i.2
  %i.dk = icmp samesign ugt i32 %.in99.i.ph280, 4
  br i1 %i.dk, label %.lr.ph94.i.4, label %._crit_edge95.thread.sink.split.i.split.loop.exit225

.lr.ph94.i.4:                                     ; preds = %.lr.ph94.i.3
  %.not211 = icmp eq i32 %.in99.i.ph280, 5
  br i1 %.not211, label %._crit_edge95.thread.sink.split.i.split.loop.exit222, label %.lr.ph94.i.5

.lr.ph94.i.5:                                     ; preds = %.lr.ph94.i.4
  %i.dl = icmp samesign ugt i32 %.in99.i.ph280, 6
  br i1 %i.dl, label %.lr.ph94.i.6, label %._crit_edge95.thread.sink.split.i.split.loop.exit219

.lr.ph94.i.6:                                     ; preds = %.lr.ph94.i.5
  %.not212 = icmp eq i32 %.in99.i.ph280, 7
  br i1 %.not212, label %._crit_edge95.thread.sink.split.i.split.loop.exit, label %bb.x

.thread144:                                       ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %.25491.i.ph281, i64 1 ; 3 uses
  %.393.i.ph.in = load i8, ptr %i.dm, align 1     ; 2 uses
  %.not285 = icmp eq i32 %i.di, 1
  br i1 %.not285, label %._crit_edge95.thread.sink.split.i.split.loop.exit234, label %.lr.ph94.i.1, !llvm.loop !1

._crit_edge95.thread.sink.split.i.split.loop.exit: ; preds = %.lr.ph94.i.6
  %i.dn = or i8 %.393.i.ph.in282, 127
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i.split.loop.exit219: ; preds = %.lr.ph94.i.5
  %i.do = or i8 %.393.i.ph.in282, 63
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i.split.loop.exit222: ; preds = %.lr.ph94.i.4
  %i.dp = or i8 %.393.i.ph.in282, 31
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i.split.loop.exit225: ; preds = %.lr.ph94.i.3
  %i.dq = or i8 %.393.i.ph.in282, 15
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i.split.loop.exit228: ; preds = %.lr.ph94.i.2
  %i.dr = or i8 %.393.i.ph.in282, 7
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i.split.loop.exit231: ; preds = %.lr.ph94.i.1
  %i.ds = or i8 %.393.i.ph.in282, 3
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i.split.loop.exit234: ; preds = %.thread144, %.lr.ph94.i.outer.preheader
  %.25491.i.ph.lcssa = phi ptr [ %i.df, %.lr.ph94.i.outer.preheader ], [ %i.dm, %.thread144 ]
  %.393.i.ph.in.lcssa = phi i8 [ %.393.i.ph.in279, %.lr.ph94.i.outer.preheader ], [ %.393.i.ph.in, %.thread144 ]
  %i.dt = or i8 %.393.i.ph.in.lcssa, 1
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i:                ; preds = %._crit_edge95.thread.sink.split.i.split.loop.exit234, %._crit_edge95.thread.sink.split.i.split.loop.exit231, %._crit_edge95.thread.sink.split.i.split.loop.exit228, %._crit_edge95.thread.sink.split.i.split.loop.exit225, %._crit_edge95.thread.sink.split.i.split.loop.exit222, %._crit_edge95.thread.sink.split.i.split.loop.exit219, %._crit_edge95.thread.sink.split.i.split.loop.exit
  %.25491.i.ph275 = phi ptr [ %.25491.i.ph281, %._crit_edge95.thread.sink.split.i.split.loop.exit231 ], [ %.25491.i.ph281, %._crit_edge95.thread.sink.split.i.split.loop.exit ], [ %.25491.i.ph281, %._crit_edge95.thread.sink.split.i.split.loop.exit219 ], [ %.25491.i.ph281, %._crit_edge95.thread.sink.split.i.split.loop.exit222 ], [ %.25491.i.ph281, %._crit_edge95.thread.sink.split.i.split.loop.exit225 ], [ %.25491.i.ph281, %._crit_edge95.thread.sink.split.i.split.loop.exit228 ], [ %.25491.i.ph.lcssa, %._crit_edge95.thread.sink.split.i.split.loop.exit234 ]
  %.lcssa182.ph.in = phi i8 [ %i.ds, %._crit_edge95.thread.sink.split.i.split.loop.exit231 ], [ %i.dn, %._crit_edge95.thread.sink.split.i.split.loop.exit ], [ %i.do, %._crit_edge95.thread.sink.split.i.split.loop.exit219 ], [ %i.dp, %._crit_edge95.thread.sink.split.i.split.loop.exit222 ], [ %i.dq, %._crit_edge95.thread.sink.split.i.split.loop.exit225 ], [ %i.dr, %._crit_edge95.thread.sink.split.i.split.loop.exit228 ], [ %i.dt, %._crit_edge95.thread.sink.split.i.split.loop.exit234 ]
  store i8 %.lcssa182.ph.in, ptr %.25491.i.ph275, align 1
  br label %array_bitmap_copy.exit

bb.y:                                             ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %.0107, i64 32 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8            ; 2 uses
  %i.dw = icmp sgt i32 %i.ac, %i.dv
  br i1 %i.dw, label %bb.z, label %array_bitmap_copy.exit

bb.z:                                             ; preds = %bb.y
  %i.dx = shl i32 %i.dv, 1
  %.129 = tail call i32 @llvm.smax.i32(i32 %i.dx, i32 %i.ac) ; 2 uses
  store i32 %.129, ptr %i.du, align 8
  %i.dy = add nuw i32 %.129, 7
  %i.dz = sdiv i32 %i.dy, 8
  %i.ea = sext i32 %i.dz to i64
  %i.eb = tail call ptr @repalloc(ptr noundef nonnull %i.cs, i64 noundef %i.ea) #16
  store ptr %i.eb, ptr %i.cr, align 8
  br label %array_bitmap_copy.exit

array_bitmap_copy.exit:                           ; preds = %bb.x, %._crit_edge95.thread.sink.split.i, %bb.w, %bb.y, %bb.z
  %i.ec = load ptr, ptr %i.cr, align 8
  %i.ed = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ee = load i32, ptr %i.p, align 4
  %.not127 = icmp eq i32 %i.ee, 0
  br i1 %.not127, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %array_bitmap_copy.exit
  %i.ef = load i32, ptr %i.j, align 4
  %i.eg = sext i32 %i.ef to i64
  %i.eh = shl nsw i64 %i.eg, 3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.eh
  br label %bb.ab

bb.ab:                                            ; preds = %array_bitmap_copy.exit, %bb.aa
  %i.ej = phi ptr [ %i.ei, %bb.aa ], [ null, %array_bitmap_copy.exit ] ; 3 uses
  %i.ek = icmp slt i32 %i.w, 1
  br i1 %i.ek, label %array_bitmap_copy.exit143, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = sdiv i32 %i.ed, 8
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.ec, i64 %i.em ; 3 uses
  %i.eo = and i32 %i.ed, 7
  %i.ep = shl nuw nsw i32 1, %i.eo                ; 2 uses
  %i.eq = load i8, ptr %i.en, align 1
  %i.er = zext i8 %i.eq to i32                    ; 2 uses
  %.not.i = icmp eq ptr %i.ej, null
  br i1 %.not.i, label %.lr.ph94.i132.outer, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ac
  %i.es = load i8, ptr %i.ej, align 1
  %i.et = zext i8 %i.es to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread75.i, %.lr.ph.preheader.i
  %.in.i = phi i32 [ %i.eu, %.thread75.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.088.i = phi i32 [ %.1.i, %.thread75.i ], [ %i.et, %.lr.ph.preheader.i ] ; 2 uses
  %.04287.i = phi i32 [ %.143.i, %.thread75.i ], [ 1, %.lr.ph.preheader.i ] ; 2 uses
  %.04486.i = phi i32 [ %.2.i, %.thread75.i ], [ %i.er, %.lr.ph.preheader.i ] ; 2 uses
  %.04685.i = phi i32 [ %.147.i, %.thread75.i ], [ %i.ep, %.lr.ph.preheader.i ] ; 3 uses
  %.05284.i = phi ptr [ %.153.i, %.thread75.i ], [ %i.en, %.lr.ph.preheader.i ] ; 3 uses
  %.05683.i = phi ptr [ %.157.i, %.thread75.i ], [ %i.ej, %.lr.ph.preheader.i ] ; 2 uses
  %i.eu = add nsw i32 %.in.i, -1                  ; 3 uses
  %i.ev = and i32 %.04287.i, %.088.i
  %.not65.i = icmp eq i32 %i.ev, 0
  %i.ew = or i32 %.04685.i, %.04486.i
  %i.ex = xor i32 %.04685.i, -1
  %i.ey = and i32 %.04486.i, %i.ex
  %.145.i = select i1 %.not65.i, i32 %i.ey, i32 %i.ew ; 2 uses
  %i.ez = shl i32 %.04685.i, 1                    ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 256
  br i1 %i.fa, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph.i
  %i.fb = trunc i32 %.145.i to i8
  store i8 %i.fb, ptr %.05284.i, align 1
  %.not80.i = icmp eq i32 %i.eu, 0
  br i1 %.not80.i, label %array_bitmap_copy.exit143, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fc = getelementptr inbounds nuw i8, ptr %.05284.i, i64 1 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = zext i8 %i.fd to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i
  %.153.i = phi ptr [ %i.fc, %bb.ae ], [ %.05284.i, %.lr.ph.i ] ; 2 uses
  %.147.i = phi i32 [ 1, %bb.ae ], [ %i.ez, %.lr.ph.i ] ; 2 uses
  %.2.i = phi i32 [ %i.fe, %bb.ae ], [ %.145.i, %.lr.ph.i ] ; 2 uses
  %i.ff = shl i32 %.04287.i, 1                    ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 256
end_hunk_0
