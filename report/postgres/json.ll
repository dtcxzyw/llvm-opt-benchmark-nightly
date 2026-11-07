Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/json?download=true
inline.NumInlined: 101
inline.NumDeleted: 48
begin_hunk_0_@JsonEncodeDateTime:bb.a
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
  %.not = icmp samesign ult i64 %indvars.iv, %i.ad
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
  br i1 %i.ch, label %.lr.ph, label %._crit_edge, !llvm.loop !8

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
  store i8 34, ptr %i.h, align 1
  %i.i = load ptr, ptr %0, align 8
  %i.j = load i32, ptr %i.a, align 8
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.a, align 8
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  store i8 0, ptr %i.m, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = load i8, ptr %1, align 1                 ; 2 uses
  %.not1820 = icmp eq i8 %i.n, 0
  br i1 %.not1820, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %escape_json_char.exit
  %i.o = phi i8 [ %i.ad, %escape_json_char.exit ], [ %i.n, %bb.d ] ; 5 uses
  %.021 = phi ptr [ %i.ac, %escape_json_char.exit ], [ %1, %bb.d ]
  %i.p = zext nneg i8 %i.o to i32
  switch i8 %i.o, label %bb.l [
    i8 8, label %bb.e
    i8 12, label %bb.f
    i8 10, label %bb.g
    i8 13, label %bb.h
    i8 9, label %bb.i
    i8 34, label %bb.j
    i8 92, label %bb.k
  ]

bb.e:                                             ; preds = %.lr.ph
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.40) #10
  br label %escape_json_char.exit

bb.f:                                             ; preds = %.lr.ph
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.41) #10
  br label %escape_json_char.exit

bb.g:                                             ; preds = %.lr.ph
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.42) #10
  br label %escape_json_char.exit

bb.h:                                             ; preds = %.lr.ph
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.43) #10
  br label %escape_json_char.exit

bb.i:                                             ; preds = %.lr.ph
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.44) #10
  br label %escape_json_char.exit

bb.j:                                             ; preds = %.lr.ph
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.45) #10
  br label %escape_json_char.exit

bb.k:                                             ; preds = %.lr.ph
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.46) #10
  br label %escape_json_char.exit

bb.l:                                             ; preds = %.lr.ph
  %i.q = icmp ult i8 %i.o, 32
  br i1 %i.q, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %i.p) #10
  br label %escape_json_char.exit

bb.n:                                             ; preds = %bb.l
  %i.r = load i32, ptr %i.a, align 8              ; 2 uses
  %i.s = add i32 %i.r, 1
  %i.t = load i32, ptr %i.d, align 4
  %.not.i = icmp slt i32 %i.s, %i.t
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @appendStringInfoChar(ptr noundef nonnull %0, i8 noundef signext %i.o) #10
  br label %escape_json_char.exit

bb.p:                                             ; preds = %bb.n
  %i.u = load ptr, ptr %0, align 8
  %i.v = sext i32 %i.r to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  store i8 %i.o, ptr %i.w, align 1
  %i.x = load ptr, ptr %0, align 8
  %i.y = load i32, ptr %i.a, align 8
  %i.z = add i32 %i.y, 1                          ; 2 uses
  store i32 %i.z, ptr %i.a, align 8
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  store i8 0, ptr %i.ab, align 1
  br label %escape_json_char.exit

escape_json_char.exit:                            ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.m, %bb.o, %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %.021, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %.not18 = icmp eq i8 %i.ad, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %escape_json_char.exit, %bb.d
  %i.ae = load i32, ptr %i.a, align 8             ; 2 uses
  %i.af = add i32 %i.ae, 1
  %i.ag = load i32, ptr %i.d, align 4
  %.not19 = icmp slt i32 %i.af, %i.ag
  br i1 %.not19, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  tail call void @appendStringInfoChar(ptr noundef nonnull %0, i8 noundef signext 34) #10
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = sext i32 %i.ae to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  store i8 34, ptr %i.aj, align 1
  %i.ak = load ptr, ptr %0, align 8
  %i.al = load i32, ptr %i.a, align 8
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.a, align 8
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  store i8 0, ptr %i.ao, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

declare void @json_categorize_type(i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @datum_to_json_internal(i64 noundef %0, i1 noundef zeroext %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.pg_tm, align 8              ; 6 uses
  %i.a = alloca [129 x i8], align 16              ; 5 uses
  %i.b = alloca [129 x i8], align 16              ; 4 uses
  %i.c = alloca [129 x i8], align 16              ; 4 uses
  tail call void @check_stack_depth() #10
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @appendBinaryStringInfo(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 4) #10
  br label %escape_json_text.exit

bb.c:                                             ; preds = %bb.a
end_hunk_0
