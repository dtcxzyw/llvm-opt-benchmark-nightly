inline.NumInlined: 101
inline.NumDeleted: 48
begin_hunk_0_@JsonEncodeDateTime:bb.a
  %i.s = load i32, ptr %i.b, align 4
  %i.t = load i32, ptr %i.c, align 4
  call void @EncodeTimeOnly(ptr noundef nonnull %6, i32 noundef %i.s, i1 noundef zeroext true, i32 noundef %i.t, i32 noundef 4, ptr noundef %.046) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.aa

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.u = add i64 %1, -9223372036854775807
  %or.cond3 = icmp ult i64 %i.u, 2
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @EncodeSpecialTimestamp(i64 noundef %1, ptr noundef %.046) #10
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.v = call i32 @timestamp2tm(i64 noundef %1, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef null) #10
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.x = load i32, ptr %i.d, align 4
  call void @EncodeDateTime(ptr noundef nonnull %7, i32 noundef %i.x, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, i32 noundef 4, ptr noundef %.046) #10
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.y = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.z = call i32 @errcode(i32 noundef 134217858) #10 ; 0 uses
  %i.aa = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 374, ptr noundef nonnull @__func__.JsonEncodeDateTime) #10
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.aa

bb.p:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  store ptr null, ptr %i.g, align 8
  %.not51 = icmp eq ptr %3, null                  ; 4 uses
  br i1 %.not51, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = load i32, ptr %3, align 4               ; 2 uses
  store i32 %i.ab, ptr %i.e, align 4
  %i.ac = sext i32 %i.ab to i64
  %.neg = mul nsw i64 %i.ac, -1000000
  %i.ad = add i64 %.neg, %1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i64 [ %i.ad, %bb.q ], [ %1, %bb.p ]   ; 3 uses
  %i.ae = add i64 %.0, -9223372036854775807
  %or.cond5 = icmp ult i64 %i.ae, 2
  br i1 %or.cond5, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @EncodeSpecialTimestamp(i64 noundef %.0, ptr noundef %.046) #10
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %. = select i1 %.not51, ptr %i.e, ptr null
  %i.af = select i1 %.not51, ptr %i.g, ptr null
  %i.ag = call i32 @timestamp2tm(i64 noundef %.0, ptr noundef %., ptr noundef nonnull %8, ptr noundef nonnull %i.f, ptr noundef %i.af, ptr noundef null) #10
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  br i1 %.not51, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 1, ptr %i.ai, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aj = load i32, ptr %i.f, align 4
  %i.ak = load i32, ptr %i.e, align 4
  %i.al = load ptr, ptr %i.g, align 8
  call void @EncodeDateTime(ptr noundef nonnull %8, i32 noundef %i.aj, i1 noundef zeroext true, i32 noundef %i.ak, ptr noundef %i.al, i32 noundef 4, ptr noundef %.046) #10
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.am = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.an = call i32 @errcode(i32 noundef 134217858) #10 ; 0 uses
  %i.ao = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 413, ptr noundef nonnull @__func__.JsonEncodeDateTime) #10
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.aa

bb.z:                                             ; preds = %bb.c
  %i.ap = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.aq = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %2) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 417, ptr noundef nonnull @__func__.JsonEncodeDateTime) #10
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.o, %bb.i, %bb.h, %bb.g
  ret ptr %.046
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare void @EncodeSpecialDate(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @j2date(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EncodeDateOnly(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @time2tm(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EncodeTimeOnly(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @timetz2tm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EncodeSpecialTimestamp(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @timestamp2tm(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EncodeDateTime(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @composite_to_json(i64 noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.HeapTupleData, align 8      ; 6 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.d = select i1 %2, ptr @.str.3, ptr @.str.4
  %i.e = select i1 %2, i32 3, i32 1
  %i.f = inttoptr i64 %0 to ptr
  %i.g = tail call ptr @pg_detoast_datum(ptr noundef %i.f) #10 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val = load i32, ptr %i.h, align 4
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %.val33 = load i32, ptr %i.i, align 4
  %i.j = tail call ptr @lookup_rowtype_tupdesc(i32 noundef %.val, i32 noundef %.val33) #10 ; 9 uses
  %.val34 = load i32, ptr %i.g, align 4
  %i.k = lshr i32 %.val34, 2
  store i32 %i.k, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.g, ptr %i.l, align 8
  tail call void @appendStringInfoChar(ptr noundef %1, i8 noundef signext 123) #10
  %i.m = load i32, ptr %i.j, align 8              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.w
  %i.o = phi i32 [ %i.cg, %bb.w ], [ %i.m, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.pre-phi, %bb.w ], [ 0, %bb.a ] ; 6 uses
  %.037 = phi i1 [ %.1, %bb.w ], [ false, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = shl nsw i64 %i.p, 3
  %i.r = getelementptr i8, ptr %i.j, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds [100 x i8], ptr %i.s, i64 %indvars.iv ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 91
  %i.v = load i8, ptr %i.u, align 1, !range !4, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.lr.ph._crit_edge, label %bb.b

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre42 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.w

bb.b:                                             ; preds = %.lr.ph
  br i1 %.037, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @appendBinaryStringInfo(ptr noundef %1, ptr noundef nonnull %i.d, i32 noundef %i.e) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  call void @escape_json(ptr noundef %1, ptr noundef nonnull %i.x)
  call void @appendStringInfoChar(ptr noundef %1, i8 noundef signext 58) #10
  %i.y = add nuw nsw i64 %indvars.iv, 1           ; 5 uses
  %i.z = load ptr, ptr %i.l, align 8              ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = and i16 %i.ab, 2047
  %i.ad = zext nneg i16 %i.ac to i64
  %.not = icmp ult i64 %indvars.iv, %i.ad
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = trunc nuw nsw i64 %i.y to i32
  %i.af = call i64 @getmissingattr(ptr noundef nonnull %i.j, i32 noundef %i.ae, ptr noundef nonnull %i.a) #10
  br label %heap_getattr.exit

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 1
  %i.ag = getelementptr i8, ptr %i.z, i64 20
  %.val.val.i.i = load i16, ptr %i.ag, align 4
  %i.ah = trunc i16 %.val.val.i.i to i1
  br i1 %i.ah, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr [8 x i8], ptr %i.j, i64 %i.y ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 24
  %i.ak = load i16, ptr %i.aj, align 2            ; 2 uses
  %i.al = icmp sgt i16 %i.ak, -1
  br i1 %i.al, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.am = zext nneg i16 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 22
  %i.ao = load i8, ptr %i.an, align 2
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am ; 5 uses
  %i.as = getelementptr i8, ptr %i.ai, i64 28
  %i.at = load i8, ptr %i.as, align 2, !range !4, !noundef !5
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr i8, ptr %i.ai, i64 26
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = sext i16 %i.aw to i32                   ; 3 uses
  br i1 %i.au, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ay = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 range(i32 -32768, 32768) %i.ax)
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %.split.i.i.i, label %bb.n

.split.i.i.i:                                     ; preds = %bb.i
  %i.ba = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 -32768, 32768) %i.ax, i1 true)
  switch i32 %i.ba, label %bb.n [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

bb.j:                                             ; preds = %.split.i.i.i
  %i.bb = load i8, ptr %i.ar, align 1
  %i.bc = sext i8 %i.bb to i64
  br label %heap_getattr.exit

bb.k:                                             ; preds = %.split.i.i.i
  %i.bd = load i16, ptr %i.ar, align 2
  %i.be = sext i16 %i.bd to i64
  br label %heap_getattr.exit

bb.l:                                             ; preds = %.split.i.i.i
  %i.bf = load i32, ptr %i.ar, align 4
  %i.bg = sext i32 %i.bf to i64
  br label %heap_getattr.exit

bb.m:                                             ; preds = %.split.i.i.i
  %i.bh = load i64, ptr %i.ar, align 8
  br label %heap_getattr.exit

bb.n:                                             ; preds = %.split.i.i.i, %bb.i
  %i.bi = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.bj = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.30, i32 noundef range(i32 -32768, 32768) %i.ax) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.31, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #10
  unreachable

bb.o:                                             ; preds = %bb.h
  %i.bk = ptrtoint ptr %i.ar to i64
  br label %heap_getattr.exit

bb.p:                                             ; preds = %bb.g
  %i.bl = trunc nuw nsw i64 %i.y to i32
  %i.bm = call i64 @nocachegetattr(ptr noundef nonnull %3, i32 noundef range(i32 1, 2048) %i.bl, ptr noundef nonnull %i.j) #10
  br label %heap_getattr.exit

bb.q:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 23
  %i.bo = trunc nuw nsw i64 %indvars.iv to i32
  %i.bp = lshr i64 %indvars.iv, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = and i32 %i.bo, 7
  %i.bu = shl nuw nsw i32 1, %i.bt
  %i.bv = and i32 %i.bu, %i.bs
  %.not.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.a, align 1
  br label %heap_getattr.exit

bb.s:                                             ; preds = %bb.q
  %i.bw = trunc nuw nsw i64 %i.y to i32
  %i.bx = call i64 @nocachegetattr(ptr noundef nonnull %3, i32 noundef range(i32 1, 2048) %i.bw, ptr noundef nonnull %i.j) #10
  br label %heap_getattr.exit

heap_getattr.exit:                                ; preds = %bb.e, %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.r, %bb.s
  %.0.i = phi i64 [ %i.af, %bb.e ], [ %i.bk, %bb.o ], [ %i.bx, %bb.s ], [ 0, %bb.r ], [ %i.bm, %bb.p ], [ %i.bc, %bb.j ], [ %i.be, %bb.k ], [ %i.bg, %bb.l ], [ %i.bh, %bb.m ]
  %i.by = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %heap_getattr.exit
  store i32 0, ptr %i.b, align 4
  store i32 0, ptr %i.c, align 4
  br label %bb.v

bb.u:                                             ; preds = %heap_getattr.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 68
  %i.cb = load i32, ptr %i.ca, align 4
  call void @json_categorize_type(i32 noundef %i.cb, i1 noundef zeroext false, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #10
  %.pre = load i8, ptr %i.a, align 1, !range !4
  %.pre38 = load i32, ptr %i.b, align 4
  %.pre39 = load i32, ptr %i.c, align 4
  %i.cc = trunc nuw i8 %.pre to i1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cd = phi i32 [ %.pre39, %bb.u ], [ 0, %bb.t ]
  %i.ce = phi i32 [ %.pre38, %bb.u ], [ 0, %bb.t ]
  %i.cf = phi i1 [ %i.cc, %bb.u ], [ true, %bb.t ]
  call fastcc void @datum_to_json_internal(i64 noundef %.0.i, i1 noundef zeroext %i.cf, ptr noundef %1, i32 noundef %i.ce, i32 noundef %i.cd, i1 noundef zeroext false)
  %.pre40 = load i32, ptr %i.j, align 8           ; 2 uses
  %.pre41 = sext i32 %.pre40 to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph._crit_edge, %bb.v
  %indvars.iv.next.pre-phi = phi i64 [ %.pre42, %.lr.ph._crit_edge ], [ %i.y, %bb.v ] ; 2 uses
  %.pre-phi = phi i64 [ %i.p, %.lr.ph._crit_edge ], [ %.pre41, %bb.v ]
  %i.cg = phi i32 [ %i.o, %.lr.ph._crit_edge ], [ %.pre40, %bb.v ]
  %.1 = phi i1 [ %.037, %.lr.ph._crit_edge ], [ true, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ch = icmp slt i64 %indvars.iv.next.pre-phi, %.pre-phi
  br i1 %i.ch, label %.lr.ph, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.w, %bb.a
  call void @appendStringInfoChar(ptr noundef %1, i8 noundef signext 125) #10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge
  call void @DecrTupleDescRefCount(ptr noundef nonnull %i.j) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

declare ptr @lookup_rowtype_tupdesc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @appendStringInfoChar(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare void @appendBinaryStringInfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @escape_json(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = add i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp slt i32 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @appendStringInfoChar(ptr noundef nonnull %0, i8 noundef signext 34) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
end_hunk_0
