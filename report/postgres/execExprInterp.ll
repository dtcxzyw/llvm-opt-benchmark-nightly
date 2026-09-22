Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/execExprInterp?download=true
inline.NumInlined: 347
inline.NumDeleted: 89
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@nextval_internal

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @ExecEvalRowNull(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.HeapTupleData, align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !15, !noundef !16
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i8 0, ptr %i.e, align 1
  br i1 %i.g, label %ExecEvalRowNullInt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.c to ptr
  %i.i = tail call ptr @pg_detoast_datum(ptr noundef %i.h) #16 ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val.i = load i32, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %i.i, i64 4
  %.val28.i = load i32, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = tail call fastcc ptr @get_cached_rowtype(i32 noundef %.val.i, i32 noundef %.val28.i, ptr noundef nonnull %i.l, ptr noundef null) ; 4 uses
  %.val29.i = load i32, ptr %i.i, align 4
  %i.n = lshr i32 %.val29.i, 2
  store i32 %i.n, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.i, ptr %i.o, align 8
  %i.p = load i32, ptr %i.m, align 8              ; 2 uses
  %.not1.i = icmp slt i32 %i.p, 1
  br i1 %.not1.i, label %ExecEvalRowNullInt.exit, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.i:                          ; preds = %bb.b, %bb.d
  %i.q = phi i32 [ %i.y, %bb.d ], [ %i.p, %bb.b ]
  %.02.us.i = phi i32 [ %i.z, %bb.d ], [ 1, %bb.b ] ; 3 uses
  %i.r = add i32 %.02.us.i, -1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [8 x i8], ptr %i.m, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 38
  %i.v = load i8, ptr %i.u, align 2
  %i.w = and i8 %i.v, 4
  %.not27.us.i = icmp eq i8 %i.w, 0
  br i1 %.not27.us.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us.split.i
  %i.x = call zeroext i1 @heap_attisnull(ptr noundef nonnull %3, i32 noundef %.02.us.i, ptr noundef nonnull %i.m) #16
  br i1 %i.x, label %._crit_edge6.i, label %ExecEvalRowNullInt.exit

._crit_edge6.i:                                   ; preds = %bb.c
  %.pre7.i = load i32, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge6.i, %.lr.ph.split.us.split.i
  %i.y = phi i32 [ %.pre7.i, %._crit_edge6.i ], [ %i.q, %.lr.ph.split.us.split.i ] ; 2 uses
  %i.z = add i32 %.02.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i32 %i.z, %i.y
  br i1 %.not.us.i, label %ExecEvalRowNullInt.exit, label %.lr.ph.split.us.split.i, !llvm.loop !6

ExecEvalRowNullInt.exit:                          ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %.sink.i = phi i64 [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %bb.d ]
  %i.aa = load ptr, ptr %i.a, align 8
  store i64 %.sink.i, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ExecEvalRowNotNull(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.HeapTupleData, align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !15, !noundef !16
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i8 0, ptr %i.e, align 1
  br i1 %i.g, label %ExecEvalRowNullInt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.c to ptr
  %i.i = tail call ptr @pg_detoast_datum(ptr noundef %i.h) #16 ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val.i = load i32, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %i.i, i64 4
  %.val28.i = load i32, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = tail call fastcc ptr @get_cached_rowtype(i32 noundef %.val.i, i32 noundef %.val28.i, ptr noundef nonnull %i.l, ptr noundef null) ; 4 uses
  %.val29.i = load i32, ptr %i.i, align 4
  %i.n = lshr i32 %.val29.i, 2
  store i32 %i.n, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.i, ptr %i.o, align 8
  %i.p = load i32, ptr %i.m, align 8              ; 2 uses
  %.not1.i = icmp slt i32 %i.p, 1
  br i1 %.not1.i, label %ExecEvalRowNullInt.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.b, %bb.d
  %i.q = phi i32 [ %i.y, %bb.d ], [ %i.p, %bb.b ]
  %.02.i = phi i32 [ %i.z, %bb.d ], [ 1, %bb.b ]  ; 3 uses
  %i.r = add i32 %.02.i, -1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [8 x i8], ptr %i.m, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 38
  %i.v = load i8, ptr %i.u, align 2
  %i.w = and i8 %i.v, 4
  %.not27.i = icmp eq i8 %i.w, 0
  br i1 %.not27.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.x = call zeroext i1 @heap_attisnull(ptr noundef nonnull %3, i32 noundef %.02.i, ptr noundef nonnull %i.m) #16
  br i1 %i.x, label %ExecEvalRowNullInt.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i32, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph.split.i
  %i.y = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.q, %.lr.ph.split.i ] ; 2 uses
  %i.z = add i32 %.02.i, 1                        ; 2 uses
  %.not.i = icmp sgt i32 %i.z, %i.y
  br i1 %.not.i, label %ExecEvalRowNullInt.exit, label %.lr.ph.split.i, !llvm.loop !6

ExecEvalRowNullInt.exit:                          ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %.sink.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.d ]
  %i.aa = load ptr, ptr %i.a, align 8
  store i64 %.sink.i, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ExecEvalArrayExpr(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 14 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 3 uses
  %i.c = alloca [6 x i32], align 16               ; 13 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i32, ptr %i.h, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  store i8 0, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.m = load i8, ptr %i.l, align 4, !range !15, !noundef !16
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  store i32 %i.i, ptr %i.a, align 16
  store i32 1, ptr %i.c, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load i16, ptr %i.r, align 8
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.v = load i8, ptr %i.u, align 2, !range !15, !noundef !16
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 51
  %i.y = load i8, ptr %i.x, align 1
  %i.z = call ptr @construct_md_array(ptr noundef %i.o, ptr noundef %i.q, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %i.g, i32 noundef %i.t, i1 noundef zeroext %i.w, i8 noundef signext %i.y) #16
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.aa = sext i32 %i.i to i64                    ; 2 uses
  %i.ab = shl nsw i64 %i.aa, 3                    ; 2 uses
  %i.ac = tail call ptr @palloc(i64 noundef %i.ab) #16 ; 5 uses
  %i.ad = tail call ptr @palloc(i64 noundef %i.ab) #16 ; 2 uses
  %i.ae = shl nsw i64 %i.aa, 2                    ; 2 uses
  %i.af = tail call ptr @palloc(i64 noundef %i.ae) #16 ; 5 uses
  %i.ag = tail call ptr @palloc(i64 noundef %i.ae) #16 ; 2 uses
  %i.ah = icmp sgt i32 %i.i, 0
  br i1 %i.ah, label %.lr.ph, label %.thread295

.thread295:                                       ; preds = %bb.c
  store i32 0, ptr %i.a, align 16
  store i32 1, ptr %i.c, align 16
  br label %._crit_edge250

.lr.ph:                                           ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.z
  %.2168320.le = ptrtoaddr ptr %.2168 to i64      ; 2 uses
  %.2165322.le = ptrtoaddr ptr %.2165 to i64      ; 2 uses
  br i1 %.1, label %bb.aa, label %bb.ac

bb.d:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 3 uses
  %.0158239 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.z ]
  %.0159238 = phi i1 [ false, %.lr.ph ], [ %.1160, %bb.z ] ; 3 uses
  %.0161237 = phi i1 [ true, %.lr.ph ], [ %.2, %bb.z ] ; 3 uses
  %.0163236 = phi ptr [ null, %.lr.ph ], [ %.2165, %bb.z ] ; 4 uses
  %.0166235 = phi ptr [ null, %.lr.ph ], [ %.2168, %bb.z ] ; 4 uses
  %.0169234 = phi i32 [ 0, %.lr.ph ], [ %.2171, %bb.z ] ; 5 uses
  %.0172233 = phi i32 [ 0, %.lr.ph ], [ %.1173, %bb.z ] ; 4 uses
  %.0174232 = phi i32 [ 0, %.lr.ph ], [ %.1175, %bb.z ] ; 3 uses
  %.0179231 = phi i32 [ 0, %.lr.ph ], [ %.2181, %bb.z ] ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !range !15, !noundef !16
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.e, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = tail call ptr @pg_detoast_datum(ptr noundef %i.aq) #16 ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4
  %.not189 = icmp eq i32 %i.g, %i.at
  br i1 %.not189, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.av = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.aw = tail call i32 @errcode(i32 noundef 67141764) #16 ; 0 uses
  %i.ax = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5) #16 ; 0 uses
  %i.ay = load i32, ptr %i.au, align 4
  %i.az = tail call ptr @format_type_be(i32 noundef %i.ay) #16
  %i.ba = tail call ptr @format_type_be(i32 noundef %i.g) #16
  %i.bb = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.6, ptr noundef %i.az, ptr noundef %i.ba) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3493, ptr noundef nonnull @__func__.ExecEvalArrayExpr) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 5 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 7 uses
  %i.be = icmp slt i32 %i.bd, 1
  br i1 %i.be, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.0161237, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bf = add nuw i32 %i.bd, 1                    ; 2 uses
  %or.cond = icmp samesign ugt i32 %i.bd, 5
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.bh = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.bi = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i32 noundef %i.bf, i32 noundef 6) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3512, ptr noundef nonnull @__func__.ExecEvalArrayExpr) #16
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bj = shl nuw nsw i32 %i.bd, 2
  %i.bk = zext nneg i32 %i.bj to i64              ; 4 uses
  %i.bl = tail call ptr @palloc(i64 noundef %i.bk) #16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bl, ptr nonnull align 4 %i.bm, i64 %i.bk, i1 false)
  %i.bn = tail call ptr @palloc(i64 noundef %i.bk) #16 ; 2 uses
  %i.bo = load i32, ptr %i.bc, align 4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bn, ptr nonnull align 4 %i.br, i64 %i.bk, i1 false)
  br label %bb.p

bb.l:                                             ; preds = %bb.h
  %.not190 = icmp eq i32 %.0169234, %i.bd
  br i1 %.not190, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.bt = zext nneg i32 %.0169234 to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2                ; 3 uses
  %bcmp = tail call i32 @bcmp(ptr %.0166235, ptr nonnull %i.bs, i64 %i.bu)
  %.not191 = icmp eq i32 %bcmp, 0
  br i1 %.not191, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bu
  %bcmp192 = tail call i32 @bcmp(ptr %.0163236, ptr nonnull %i.bv, i64 %i.bu)
  %.not193 = icmp eq i32 %bcmp192, 0
  br i1 %.not193, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bw = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.bx = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.by = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3532, ptr noundef nonnull @__func__.ExecEvalArrayExpr) #16
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.k
  %.1180 = phi i32 [ %i.bf, %bb.k ], [ %.0179231, %bb.n ]
  %.1170 = phi i32 [ %i.bd, %bb.k ], [ %.0169234, %bb.n ]
  %.1167 = phi ptr [ %i.bl, %bb.k ], [ %.0166235, %bb.n ]
  %.1164 = phi ptr [ %i.bn, %bb.k ], [ %.0163236, %bb.n ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %.not194 = icmp eq i32 %i.ca, 0
  br i1 %.not194, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = sext i32 %i.ca to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %i.bc, align 4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = shl nsw i64 %i.cd, 3
  %i.cf = add nsw i64 %i.ce, 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cg = phi i64 [ %i.cb, %bb.q ], [ %i.cf, %bb.r ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cg
  %i.ci = sext i32 %.0172233 to i64               ; 4 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ci
  store ptr %i.ch, ptr %i.cj, align 8
  %i.ck = load i32, ptr %i.bz, align 4
  %.not195 = icmp eq i32 %i.ck, 0
  br i1 %.not195, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.cm = load i32, ptr %i.bc, align 4
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cq = phi ptr [ %i.cp, %bb.t ], [ null, %bb.s ]
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ci
  store ptr %i.cq, ptr %i.cr, align 8
  %.val = load i32, ptr %i.ar, align 4
  %i.cs = lshr i32 %.val, 2
  %i.ct = load i32, ptr %i.bz, align 4            ; 2 uses
  %.not196 = icmp eq i32 %i.ct, 0
  br i1 %.not196, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cu = load i32, ptr %i.bc, align 4
  %i.cv = shl i32 %i.cu, 3
  %i.cw = add i32 %i.cv, 16
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.cx = phi i32 [ %i.cw, %bb.v ], [ %i.ct, %bb.u ]
  %i.cy = sub i32 %i.cs, %i.cx                    ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ci
  store i32 %i.cy, ptr %i.cz, align 4
  %i.da = add i32 %i.cy, %.0174232                ; 2 uses
  %i.db = icmp ult i32 %i.da, 1073741824
  br i1 %i.db, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.dd = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.de = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9, i32 noundef 1073741823) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3544, ptr noundef nonnull @__func__.ExecEvalArrayExpr) #16
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.dg = tail call i32 @ArrayGetNItems(i32 noundef %i.bd, ptr noundef nonnull %i.df) #16
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ci
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = load i32, ptr %i.bz, align 4
  %i.dj = icmp ne i32 %i.di, 0
  %2 = or i1 %.0159238, %i.dj
  %i.dk = add i32 %.0172233, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.g, %bb.d, %bb.y
  %.2181 = phi i32 [ %.1180, %bb.y ], [ %.0179231, %bb.d ], [ %.0179231, %bb.g ] ; 9 uses
  %.1175 = phi i32 [ %i.da, %bb.y ], [ %.0174232, %bb.d ], [ %.0174232, %bb.g ] ; 5 uses
  %.1173 = phi i32 [ %i.dk, %bb.y ], [ %.0172233, %bb.d ], [ %.0172233, %bb.g ] ; 6 uses
  %.2171 = phi i32 [ %.1170, %bb.y ], [ %.0169234, %bb.d ], [ %.0169234, %bb.g ]
  %.2168 = phi ptr [ %.1167, %bb.y ], [ %.0166235, %bb.d ], [ %.0166235, %bb.g ] ; 6 uses
  %.2165 = phi ptr [ %.1164, %bb.y ], [ %.0163236, %bb.d ], [ %.0163236, %bb.g ] ; 6 uses
  %.2 = phi i1 [ false, %bb.y ], [ %.0161237, %bb.d ], [ %.0161237, %bb.g ]
  %.1160 = phi i1 [ %2, %bb.y ], [ %.0159238, %bb.d ], [ %.0159238, %bb.g ] ; 5 uses
  %.1 = phi i1 [ %.0158239, %bb.y ], [ true, %bb.d ], [ true, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !31

bb.aa:                                            ; preds = %._crit_edge
  %i.dl = icmp eq i32 %.2181, 0
  br i1 %i.dl, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.aa
  %i.dm = tail call ptr @construct_empty_array(i32 noundef %i.g) #16
  br label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.dn = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.do = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.dp = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3567, ptr noundef nonnull @__func__.ExecEvalArrayExpr) #16
  unreachable

bb.ac:                                            ; preds = %._crit_edge
  store i32 %.1173, ptr %i.a, align 16
  store i32 1, ptr %i.c, align 16
  %i.dq = icmp sgt i32 %.2181, 1
  br i1 %i.dq, label %.lr.ph249.preheader, label %._crit_edge250

.lr.ph249.preheader:                              ; preds = %bb.ac
  %wide.trip.count264 = zext nneg i32 %.2181 to i64 ; 4 uses
  %i.dr = add nsw i64 %wide.trip.count264, -1     ; 2 uses
  %min.iters.check = icmp ult i32 %.2181, 33
  br i1 %min.iters.check, label %.lr.ph249.preheader333, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph249.preheader
  %i.ds = sub i64 %i.b, %i.d
  %diff.check = icmp ugt i64 %i.ds, -32
  %i.dt = or disjoint i64 %i.b, 4
  %i.du = sub i64 %.2168320.le, %i.dt
  %diff.check321 = icmp ugt i64 %i.du, -32
  %conflict.rdx = or i1 %diff.check, %diff.check321
  %reass.sub = sub i64 %.2165322.le, %i.b
  %i.dv = add i64 %reass.sub, -5
  %diff.check323 = icmp ult i64 %i.dv, 31
  %conflict.rdx324 = or i1 %conflict.rdx, %diff.check323
  %i.dw = or disjoint i64 %i.d, 4                 ; 2 uses
  %i.dx = sub i64 %.2168320.le, %i.dw
  %diff.check325 = icmp ugt i64 %i.dx, -32
  %conflict.rdx326 = or i1 %conflict.rdx324, %diff.check325
  %i.dy = sub i64 %.2165322.le, %i.dw
  %diff.check327 = icmp ugt i64 %i.dy, -32
  %conflict.rdx328 = or i1 %conflict.rdx326, %diff.check327
  br i1 %conflict.rdx328, label %.lr.ph249.preheader333, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dr, -8                      ; 3 uses
  %i.dz = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ea = or disjoint i64 %index, 1               ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %.2168, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load = load <4 x i32>, ptr %i.eb, align 4
  %wide.load329 = load <4 x i32>, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ea ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <4 x i32> %wide.load, ptr %i.ed, align 4
  store <4 x i32> %wide.load329, ptr %i.ee, align 4
  %i.ef = getelementptr inbounds [4 x i8], ptr %.2165, i64 %index ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load330 = load <4 x i32>, ptr %i.ef, align 4
  %wide.load331 = load <4 x i32>, ptr %i.eg, align 4
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ea ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <4 x i32> %wide.load330, ptr %i.eh, align 4
  store <4 x i32> %wide.load331, ptr %i.ei, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %._crit_edge250, label %.lr.ph249.preheader333

.lr.ph249.preheader333:                           ; preds = %vector.memcheck, %.lr.ph249.preheader, %middle.block
  %indvars.iv261.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph249.preheader ], [ %i.dz, %middle.block ] ; 6 uses
  %i.ek = and i64 %wide.trip.count264, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ek, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph249.prol, label %.lr.ph249.prol.loopexit

.lr.ph249.prol:                                   ; preds = %.lr.ph249.preheader333
  %i.el = add nsw i64 %indvars.iv261.ph, -1       ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %.2168, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv261.ph
  store i32 %i.en, ptr %i.eo, align 4
  %i.ep = getelementptr inbounds [4 x i8], ptr %.2165, i64 %i.el
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv261.ph
  store i32 %i.eq, ptr %i.er, align 4
  %indvars.iv.next262.prol = add nuw nsw i64 %indvars.iv261.ph, 1
  br label %.lr.ph249.prol.loopexit

.lr.ph249.prol.loopexit:                          ; preds = %.lr.ph249.prol, %.lr.ph249.preheader333
  %indvars.iv261.unr = phi i64 [ %indvars.iv261.ph, %.lr.ph249.preheader333 ], [ %indvars.iv.next262.prol, %.lr.ph249.prol ]
  %i.es = add nsw i64 %wide.trip.count264, -1
  %i.et = icmp eq i64 %indvars.iv261.ph, %i.es
  br i1 %i.et, label %._crit_edge250, label %.lr.ph249

._crit_edge250:                                   ; preds = %.lr.ph249.prol.loopexit, %.lr.ph249, %middle.block, %.thread295, %bb.ac
  %.0179.lcssa289305 = phi i32 [ 0, %.thread295 ], [ %.2181, %bb.ac ], [ %.2181, %middle.block ], [ %.2181, %.lr.ph249 ], [ %.2181, %.lr.ph249.prol.loopexit ] ; 6 uses
  %.0174.lcssa290304 = phi i32 [ 0, %.thread295 ], [ %.1175, %bb.ac ], [ %.1175, %middle.block ], [ %.1175, %.lr.ph249 ], [ %.1175, %.lr.ph249.prol.loopexit ]
  %.0172.lcssa291303 = phi i32 [ 0, %.thread295 ], [ %.1173, %bb.ac ], [ %.1173, %middle.block ], [ %.1173, %.lr.ph249 ], [ %.1173, %.lr.ph249.prol.loopexit ] ; 4 uses
  %.0159.lcssa294302 = phi i1 [ false, %.thread295 ], [ %.1160, %bb.ac ], [ %.1160, %middle.block ], [ %.1160, %.lr.ph249 ], [ %.1160, %.lr.ph249.prol.loopexit ] ; 2 uses
  %i.eu = call i32 @ArrayGetNItems(i32 noundef %.0179.lcssa289305, ptr noundef nonnull %i.a) #16
  call void @ArrayCheckBounds(i32 noundef %.0179.lcssa289305, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #16
  %i.ev = shl i32 %.0179.lcssa289305, 3           ; 2 uses
  br i1 %.0159.lcssa294302, label %bb.ad, label %bb.ae

.lr.ph249:                                        ; preds = %.lr.ph249.prol.loopexit, %.lr.ph249
  %indvars.iv261 = phi i64 [ %indvars.iv.next262.1, %.lr.ph249 ], [ %indvars.iv261.unr, %.lr.ph249.prol.loopexit ] ; 7 uses
  %i.ew = add nsw i64 %indvars.iv261, -1          ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %.2168, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv261
  store i32 %i.ey, ptr %i.ez, align 4
  %i.fa = getelementptr inbounds [4 x i8], ptr %.2165, i64 %i.ew
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv261
  store i32 %i.fb, ptr %i.fc, align 4
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %.2168, i64 %indvars.iv261
  %i.fe = load i32, ptr %i.fd, align 4
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next262
  store i32 %i.fe, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds [4 x i8], ptr %.2165, i64 %indvars.iv261
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next262
  store i32 %i.fh, ptr %i.fi, align 4
  %indvars.iv.next262.1 = add nuw nsw i64 %indvars.iv261, 2 ; 2 uses
  %exitcond265.not.1 = icmp eq i64 %indvars.iv.next262.1, %wide.trip.count264
  br i1 %exitcond265.not.1, label %._crit_edge250, label %.lr.ph249, !llvm.loop !33

bb.ad:                                            ; preds = %._crit_edge250
  %i.fj = add i32 %i.eu, 7
  %i.fk = sdiv i32 %i.fj, 8
  %i.fl = add i32 %i.ev, 23
  %i.fm = add i32 %i.fl, %i.fk
  %i.fn = and i32 %i.fm, -8                       ; 2 uses
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge250
  %i.fo = add i32 %i.ev, 16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi i32 [ %i.fn, %bb.ad ], [ %i.fo, %bb.ae ]
  %.0157 = phi i32 [ %i.fn, %bb.ad ], [ 0, %bb.ae ]
  %.2176 = add i32 %.pn, %.0174.lcssa290304       ; 2 uses
  %i.fp = sext i32 %.2176 to i64
  %i.fq = call ptr @palloc0(i64 noundef %i.fp) #16 ; 10 uses
  %i.fr = shl i32 %.2176, 2
  store i32 %i.fr, ptr %i.fq, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4 ; 3 uses
  store i32 %.0179.lcssa289305, ptr %i.fs, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 3 uses
  store i32 %.0157, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i32 %i.g, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 3 uses
  %i.fw = zext nneg i32 %.0179.lcssa289305 to i64
  %i.fx = shl nuw nsw i64 %i.fw, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fv, ptr nonnull align 16 %i.a, i64 %i.fx, i1 false)
  %i.fy = sext i32 %.0179.lcssa289305 to i64
  %i.fz = shl nsw i64 %i.fy, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ga, ptr nonnull align 16 %i.c, i64 %i.fx, i1 false)
  %i.gb = load i32, ptr %i.ft, align 4            ; 2 uses
  %.not = icmp eq i32 %i.gb, 0
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gc = sext i32 %i.gb to i64
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gd = load i32, ptr %i.fs, align 4
  %i.ge = sext i32 %i.gd to i64
  %i.gf = shl nsw i64 %i.ge, 3
  %i.gg = add nsw i64 %i.gf, 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gh = phi i64 [ %i.gc, %bb.ag ], [ %i.gg, %bb.ah ]
  %i.gi = icmp sgt i32 %.0172.lcssa291303, 0
  br i1 %i.gi, label %.lr.ph255, label %.loopexit

.lr.ph255:                                        ; preds = %bb.ai
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gh ; 3 uses
  %wide.trip.count274 = zext nneg i32 %.0172.lcssa291303 to i64 ; 3 uses
  br i1 %.0159.lcssa294302, label %.lr.ph255.split.us, label %.lr.ph255.split.preheader

.lr.ph255.split.preheader:                        ; preds = %.lr.ph255
  %xtraiter338 = and i64 %wide.trip.count274, 1
  %i.gk = icmp eq i32 %.0172.lcssa291303, 1
  br i1 %i.gk, label %.lr.ph255.split.epil.preheader, label %.lr.ph255.split.preheader.new

.lr.ph255.split.preheader.new:                    ; preds = %.lr.ph255.split.preheader
  %unroll_iter = and i64 %wide.trip.count274, 2147483646
  br label %.lr.ph255.split

.lr.ph255.split.us:                               ; preds = %.lr.ph255, %bb.ak
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %bb.ak ], [ 0, %.lr.ph255 ] ; 5 uses
  %.0155252.us = phi i32 [ %i.he, %bb.ak ], [ 0, %.lr.ph255 ] ; 2 uses
  %.0156251.us = phi ptr [ %i.gs, %bb.ak ], [ %i.gj, %.lr.ph255 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv271
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv271 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = sext i32 %i.go to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0156251.us, ptr align 1 %i.gm, i64 %i.gp, i1 false)
  %i.gq = load i32, ptr %i.gn, align 4
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %.0156251.us, i64 %i.gr
  %i.gt = load i32, ptr %i.ft, align 4
  %.not188.us = icmp eq i32 %i.gt, 0
  br i1 %.not188.us, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph255.split.us
  %i.gu = load i32, ptr %i.fs, align 4
  %i.gv = sext i32 %i.gu to i64
  %i.gw = shl nsw i64 %i.gv, 3
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gw
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph255.split.us
  %i.gy = phi ptr [ %i.gx, %bb.aj ], [ null, %.lr.ph255.split.us ]
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv271
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv271 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4
  call void @array_bitmap_copy(ptr noundef %i.gy, i32 noundef %.0155252.us, ptr noundef %i.ha, i32 noundef 0, i32 noundef %i.hc) #16
  %i.hd = load i32, ptr %i.hb, align 4
  %i.he = add i32 %i.hd, %.0155252.us
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %.loopexit, label %.lr.ph255.split.us, !llvm.loop !34

.lr.ph255.split:                                  ; preds = %.lr.ph255.split, %.lr.ph255.split.preheader.new
  %indvars.iv266 = phi i64 [ 0, %.lr.ph255.split.preheader.new ], [ %indvars.iv.next267.1, %.lr.ph255.split ] ; 4 uses
  %.0156251 = phi ptr [ %i.gj, %.lr.ph255.split.preheader.new ], [ %i.hu, %.lr.ph255.split ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph255.split.preheader.new ], [ %niter.next.1, %.lr.ph255.split ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv266
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv266 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = sext i32 %i.hi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0156251, ptr align 1 %i.hg, i64 %i.hj, i1 false)
  %i.hk = load i32, ptr %i.hh, align 4
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds i8, ptr %.0156251, i64 %i.hl ; 2 uses
  %indvars.iv.next267 = or disjoint i64 %indvars.iv266, 1 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next267
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next267 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = sext i32 %i.hq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr align 1 %i.ho, i64 %i.hr, i1 false)
  %i.hs = load i32, ptr %i.hp, align 4
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds i8, ptr %i.hm, i64 %i.ht ; 2 uses
  %indvars.iv.next267.1 = add nuw nsw i64 %indvars.iv266, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit332.unr-lcssa, label %.lr.ph255.split, !llvm.loop !34

.loopexit.loopexit332.unr-lcssa:                  ; preds = %.lr.ph255.split
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %.loopexit, label %.lr.ph255.split.epil.preheader

.lr.ph255.split.epil.preheader:                   ; preds = %.loopexit.loopexit332.unr-lcssa, %.lr.ph255.split.preheader
  %indvars.iv266.epil.init = phi i64 [ 0, %.lr.ph255.split.preheader ], [ %indvars.iv.next267.1, %.loopexit.loopexit332.unr-lcssa ] ; 2 uses
  %.0156251.epil.init = phi ptr [ %i.gj, %.lr.ph255.split.preheader ], [ %i.hu, %.loopexit.loopexit332.unr-lcssa ]
  %lcmp.mod340 = trunc i32 %.0172.lcssa291303 to i1
  call void @llvm.assume(i1 %lcmp.mod340)
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv266.epil.init
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv266.epil.init
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = sext i32 %i.hy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0156251.epil.init, ptr align 1 %i.hw, i64 %i.hz, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph255.split.epil.preheader, %.loopexit.loopexit332.unr-lcssa, %bb.ak, %bb.b, %bb.ai, %.thread
  %.sink314 = phi ptr [ %i.dm, %.thread ], [ %i.z, %bb.b ], [ %i.fq, %bb.ai ], [ %i.fq, %bb.ak ], [ %i.fq, %.loopexit.loopexit332.unr-lcssa ], [ %i.fq, %.lr.ph255.split.epil.preheader ]
  %i.ia = ptrtoint ptr %.sink314 to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  store i64 %i.ia, ptr %i.ic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare ptr @construct_md_array(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i8 noundef signext) local_unnamed_addr #6

declare ptr @palloc(i64 noundef) local_unnamed_addr #6

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #6

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1
end_hunk_0
