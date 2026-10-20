Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/jsonb?download=true
inline.NumInlined: 135
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@to_jsonb:bb.a
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load ptr, ptr %0, align 8
  %i.f = tail call i32 @get_fn_expr_argtype(ptr noundef %i.e, i32 noundef 0) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.i = tail call i32 @errcode(i32 noundef 50856066) #10 ; 0 uses
  %i.j = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1103, ptr noundef nonnull @__func__.to_jsonb) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @json_categorize_type(i32 noundef %i.f, i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %i.k = load i32, ptr %i.a, align 4
  %i.l = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  call fastcc void @datum_to_jsonb_internal(i64 noundef %i.d, i1 noundef zeroext false, ptr noundef nonnull %1, i32 noundef %i.k, i32 noundef %i.l, i1 noundef zeroext false)
  %i.m = load ptr, ptr %1, align 8
  %i.n = call ptr @JsonbValueToJsonb(ptr noundef %i.m) #10
  %i.o = ptrtoint ptr %i.n to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.o
}

declare i32 @get_fn_expr_argtype(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #3

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #3

declare void @json_categorize_type(i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @datum_to_jsonb(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.JsonbInState, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call fastcc void @datum_to_jsonb_internal(i64 noundef %0, i1 noundef zeroext false, ptr noundef nonnull %3, i32 noundef %1, i32 noundef %2, i1 noundef zeroext false)
  %i.a = load ptr, ptr %3, align 8
  %i.b = call ptr @JsonbValueToJsonb(ptr noundef %i.a) #10
  %i.c = ptrtoint ptr %i.b to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @datum_to_jsonb_internal(i64 noundef %0, i1 noundef zeroext %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.HeapTupleData, align 8      ; 6 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %7 = alloca %struct.JsonbValue, align 8         ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i16, align 2                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %8 = alloca %struct.JsonbValue, align 8         ; 34 uses
  %9 = alloca %struct.JsonLexContext, align 8     ; 5 uses
  %10 = alloca %struct.JsonSemAction, align 8     ; 11 uses
  %i.m = alloca ptr, align 8                      ; 7 uses
  %11 = alloca %struct.JsonbValue, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  tail call void @check_stack_depth() #10
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %8, align 8
  br label %checkStringLen.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.n = add i32 %3, -6
  %or.cond7 = icmp ult i32 %i.n, 5
  %or.cond = and i1 %5, %or.cond7
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.p = tail call i32 @errcode(i32 noundef 50856066) #10 ; 0 uses
  %i.q = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.44) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 657, ptr noundef nonnull @__func__.datum_to_jsonb_internal) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  switch i32 %3, label %bb.az [
    i32 8, label %bb.f
    i32 9, label %bb.i
    i32 1, label %bb.af
    i32 2, label %bb.ai
    i32 3, label %bb.as
    i32 4, label %bb.at
    i32 5, label %bb.au
    i32 10, label %bb.av
    i32 6, label %bb.aw
    i32 7, label %bb.ax
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = inttoptr i64 %0 to ptr
  %i.s = tail call ptr @pg_detoast_datum(ptr noundef %i.r) #10, !inline_history !13 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.y = tail call i32 @ArrayGetNItems(i32 noundef %i.w, ptr noundef nonnull %i.x) #10, !inline_history !13 ; 2 uses
  store i32 %i.y, ptr %i.d, align 4
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @pushJsonbValue(ptr noundef %2, i32 noundef 4, ptr noundef null) #10, !inline_history !13
  tail call void @pushJsonbValue(ptr noundef %2, i32 noundef 5, ptr noundef null) #10, !inline_history !13
  br label %array_to_jsonb_internal.exit

bb.h:                                             ; preds = %bb.f
  call void @get_typlenbyvalalign(i32 noundef %i.u, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #10, !inline_history !13
  call void @json_categorize_type(i32 noundef %i.u, i1 noundef zeroext true, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #10, !inline_history !13
  %i.aa = load i16, ptr %i.h, align 2
  %i.ab = sext i16 %i.aa to i32
  %i.ac = load i8, ptr %i.i, align 1, !range !6, !noundef !7
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i8, ptr %i.j, align 1
  call void @deconstruct_array(ptr noundef nonnull %i.s, i32 noundef %i.u, i32 noundef %i.ab, i1 noundef zeroext %i.ad, i8 noundef signext %i.ae, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d) #10, !inline_history !13
  %i.af = load ptr, ptr %i.f, align 8
  %i.ag = load ptr, ptr %i.g, align 8
  %i.ah = load i32, ptr %i.k, align 4
  %i.ai = load i32, ptr %i.l, align 4
  call fastcc void @array_dim_to_jsonb(ptr noundef %2, i32 noundef 0, i32 noundef %i.w, ptr noundef nonnull %i.x, ptr noundef %i.af, ptr noundef %i.ag, ptr noundef %i.e, i32 noundef %i.ah, i32 noundef %i.ai), !inline_history !13
  %i.aj = load ptr, ptr %i.f, align 8
  call void @pfree(ptr noundef %i.aj) #10, !inline_history !13
  %i.ak = load ptr, ptr %i.g, align 8
  call void @pfree(ptr noundef %i.ak) #10, !inline_history !13
  br label %array_to_jsonb_internal.exit

array_to_jsonb_internal.exit:                     ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %checkStringLen.exit

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.al = inttoptr i64 %0 to ptr
  %i.am = tail call ptr @pg_detoast_datum(ptr noundef %i.al) #10, !inline_history !14 ; 4 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val.i = load i32, ptr %i.an, align 4
  %i.ao = getelementptr i8, ptr %i.am, i64 4
  %.val26.i = load i32, ptr %i.ao, align 4
  %i.ap = tail call ptr @lookup_rowtype_tupdesc(i32 noundef %.val.i, i32 noundef %.val26.i) #10, !inline_history !14 ; 10 uses
  %.val27.i = load i32, ptr %i.am, align 4
  %i.aq = lshr i32 %.val27.i, 2
  store i32 %i.aq, ptr %6, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.am, ptr %i.ar, align 8
  tail call void @pushJsonbValue(ptr noundef %2, i32 noundef 6, ptr noundef null) #10, !inline_history !14
  %i.as = load i32, ptr %i.ap, align 8
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph118, label %._crit_edge

.lr.ph118:                                        ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph118, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next.pre-phi, %bb.ad ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.aw = load i32, ptr %i.ap, align 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = getelementptr i8, ptr %i.ap, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  %i.bb = getelementptr inbounds [100 x i8], ptr %i.ba, i64 %indvars.iv ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 91
  %i.bd = load i8, ptr %i.bc, align 1, !range !6, !noundef !7
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %._crit_edge122, label %bb.k

._crit_edge122:                                   ; preds = %bb.j
  %.pre123 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.ad

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  store i32 1, ptr %7, align 8
  %i.bg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bf) #9, !inline_history !14
  %i.bh = trunc i64 %i.bg to i32
  store i32 %i.bh, ptr %i.au, align 8
  store ptr %i.bf, ptr %i.av, align 8
  call void @pushJsonbValue(ptr noundef %2, i32 noundef 1, ptr noundef nonnull %7) #10, !inline_history !14
  %i.bi = add nuw nsw i64 %indvars.iv, 1          ; 5 uses
  %i.bj = load ptr, ptr %i.ar, align 8            ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 18
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = and i16 %i.bl, 2047
  %i.bn = zext nneg i16 %i.bm to i64
  %.not130 = icmp ult i64 %indvars.iv, %i.bn
  br i1 %.not130, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = trunc nuw nsw i64 %i.bi to i32
  %i.bp = call i64 @getmissingattr(ptr noundef nonnull %i.ap, i32 noundef %i.bo, ptr noundef nonnull %i.a) #10
  br label %heap_getattr.exit

bb.m:                                             ; preds = %bb.k
  store i8 0, ptr %i.a, align 1
  %i.bq = getelementptr i8, ptr %i.bj, i64 20
  %.val.val.i.i = load i16, ptr %i.bq, align 4
  %i.br = trunc i16 %.val.val.i.i to i1
  br i1 %i.br, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr [8 x i8], ptr %i.ap, i64 %i.bi ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 24
  %i.bu = load i16, ptr %i.bt, align 2            ; 2 uses
  %i.bv = icmp sgt i16 %i.bu, -1
  br i1 %i.bv, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.bw = zext nneg i16 %i.bu to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 22
  %i.by = load i8, ptr %i.bx, align 2
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bw ; 5 uses
  %i.cc = getelementptr i8, ptr %i.bs, i64 28
  %i.cd = load i8, ptr %i.cc, align 2, !range !6, !noundef !7
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr i8, ptr %i.bs, i64 26
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = sext i16 %i.cg to i32                   ; 3 uses
  br i1 %i.ce, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ci = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 range(i32 -32768, 32768) %i.ch)
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %.split.i.i.i, label %bb.u

.split.i.i.i:                                     ; preds = %bb.p
  %i.ck = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 -32768, 32768) %i.ch, i1 true)
  switch i32 %i.ck, label %bb.u [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
  ]

bb.q:                                             ; preds = %.split.i.i.i
  %i.cl = load i8, ptr %i.cb, align 1
  %i.cm = sext i8 %i.cl to i64
  br label %heap_getattr.exit

bb.r:                                             ; preds = %.split.i.i.i
  %i.cn = load i16, ptr %i.cb, align 2
  %i.co = sext i16 %i.cn to i64
  br label %heap_getattr.exit

bb.s:                                             ; preds = %.split.i.i.i
  %i.cp = load i32, ptr %i.cb, align 4
  %i.cq = sext i32 %i.cp to i64
  br label %heap_getattr.exit

bb.t:                                             ; preds = %.split.i.i.i
  %i.cr = load i64, ptr %i.cb, align 8
  br label %heap_getattr.exit

bb.u:                                             ; preds = %.split.i.i.i, %bb.p
  %i.cs = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ct = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.45, i32 noundef range(i32 -32768, 32768) %i.ch) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.46, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #10
  unreachable

bb.v:                                             ; preds = %bb.o
  %i.cu = ptrtoint ptr %i.cb to i64
  br label %heap_getattr.exit

bb.w:                                             ; preds = %bb.n
  %i.cv = trunc nuw nsw i64 %i.bi to i32
  %i.cw = call i64 @nocachegetattr(ptr noundef nonnull %6, i32 noundef range(i32 1, 2048) %i.cv, ptr noundef nonnull %i.ap) #10
  br label %heap_getattr.exit

bb.x:                                             ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bj, i64 23
  %i.cy = trunc nuw nsw i64 %indvars.iv to i32
  %i.cz = lshr i64 %indvars.iv, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i32
  %i.dd = and i32 %i.cy, 7
  %i.de = shl nuw nsw i32 1, %i.dd
  %i.df = and i32 %i.de, %i.dc
  %.not.i.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.a, align 1
  br label %heap_getattr.exit

bb.z:                                             ; preds = %bb.x
  %i.dg = trunc nuw nsw i64 %i.bi to i32
  %i.dh = call i64 @nocachegetattr(ptr noundef nonnull %6, i32 noundef range(i32 1, 2048) %i.dg, ptr noundef nonnull %i.ap) #10
  br label %heap_getattr.exit

heap_getattr.exit:                                ; preds = %bb.l, %bb.q, %bb.r, %bb.s, %bb.t, %bb.v, %bb.w, %bb.y, %bb.z
  %.0.i111 = phi i64 [ %i.bp, %bb.l ], [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ 0, %bb.y ], [ %i.cw, %bb.w ], [ %i.cm, %bb.q ], [ %i.co, %bb.r ], [ %i.cq, %bb.s ], [ %i.cr, %bb.t ]
  %i.di = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %heap_getattr.exit
  store i32 0, ptr %i.b, align 4
  store i32 0, ptr %i.c, align 4
  br label %bb.ac

bb.ab:                                            ; preds = %heap_getattr.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bb, i64 68
  %i.dl = load i32, ptr %i.dk, align 4
  call void @json_categorize_type(i32 noundef %i.dl, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #10, !inline_history !14
  %.pre = load i8, ptr %i.a, align 1, !range !6
  %.pre120 = load i32, ptr %i.b, align 4
  %.pre121 = load i32, ptr %i.c, align 4
  %i.dm = trunc nuw i8 %.pre to i1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dn = phi i32 [ %.pre121, %bb.ab ], [ 0, %bb.aa ]
  %i.do = phi i32 [ %.pre120, %bb.ab ], [ 0, %bb.aa ]
  %i.dp = phi i1 [ %i.dm, %bb.ab ], [ true, %bb.aa ]
  call fastcc void @datum_to_jsonb_internal(i64 noundef %.0.i111, i1 noundef zeroext %i.dp, ptr noundef %2, i32 noundef %i.do, i32 noundef %i.dn, i1 noundef zeroext false), !inline_history !14
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge122, %bb.ac
  %indvars.iv.next.pre-phi = phi i64 [ %.pre123, %._crit_edge122 ], [ %i.bi, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.dq = load i32, ptr %i.ap, align 8
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next.pre-phi, %i.dr
  br i1 %i.ds, label %bb.j, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.ad, %bb.i
  call void @pushJsonbValue(ptr noundef %2, i32 noundef 7, ptr noundef null) #10, !inline_history !14
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = icmp sgt i32 %i.du, -1
  br i1 %i.dv, label %bb.ae, label %composite_to_jsonb.exit

bb.ae:                                            ; preds = %._crit_edge
  call void @DecrTupleDescRefCount(ptr noundef nonnull %i.ap) #10, !inline_history !14
  br label %composite_to_jsonb.exit

composite_to_jsonb.exit:                          ; preds = %._crit_edge, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %checkStringLen.exit

bb.af:                                            ; preds = %bb.e
  br i1 %5, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.not114 = icmp eq i64 %0, 0                    ; 2 uses
  %i.dw = select i1 %.not114, ptr @.str.33, ptr @.str.32
  store i32 1, ptr %8, align 8
  %i.dx = select i1 %.not114, i32 5, i32 4
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.dx, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.dw, ptr %i.dz, align 8
  br label %checkStringLen.exit.thread

bb.ah:                                            ; preds = %bb.af
  store i32 3, ptr %8, align 8
  %i.ea = icmp ne i64 %0, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ec = zext i1 %i.ea to i8
  store i8 %i.ec, ptr %i.eb, align 8
  br label %checkStringLen.exit.thread

bb.ai:                                            ; preds = %bb.e
  br i1 %5, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  switch i32 %4, label %bb.ao [
    i32 1702, label %bb.ak
    i32 39, label %bb.al
    i32 43, label %bb.am
    i32 461, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ed = inttoptr i64 %0 to ptr
  %i.ee = tail call ptr @pg_detoast_datum(ptr noundef %i.ed) #10
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.ef = shl i64 %0, 48
  %i.eg = ashr exact i64 %i.ef, 48
  %i.eh = tail call ptr @int64_to_numeric(i64 noundef %i.eg) #10
  br label %bb.ap

bb.am:                                            ; preds = %bb.aj
  %i.ei = shl i64 %0, 32
  %i.ej = ashr exact i64 %i.ei, 32
  %i.ek = tail call ptr @int64_to_numeric(i64 noundef %i.ej) #10
  br label %bb.ap

bb.an:                                            ; preds = %bb.aj
  %i.el = tail call ptr @int64_to_numeric(i64 noundef %0) #10
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.em = tail call ptr @OidOutputFunctionCall(i32 noundef %4, i64 noundef %0) #10
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = tail call i64 @DirectFunctionCall3Coll(ptr noundef nonnull @numeric_in, i32 noundef 0, i64 noundef %i.en, i64 noundef 0, i64 noundef -1) #10
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = tail call ptr @pg_detoast_datum(ptr noundef %i.ep) #10
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.0101 = phi ptr [ %i.eq, %bb.ao ], [ %i.ee, %bb.ak ], [ %i.eh, %bb.al ], [ %i.ek, %bb.am ], [ %i.el, %bb.an ] ; 3 uses
  %i.er = tail call zeroext i1 @numeric_is_inf(ptr noundef %.0101) #10
  br i1 %i.er, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.es = tail call zeroext i1 @numeric_is_nan(ptr noundef %.0101) #10
  br i1 %i.es, label %.critedge, label %bb.ar

.critedge:                                        ; preds = %bb.ai, %bb.ap, %bb.aq
  %i.et = tail call ptr @OidOutputFunctionCall(i32 noundef %4, i64 noundef %0) #10 ; 2 uses
  store i32 1, ptr %8, align 8
  %i.eu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.et) #9
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.ev, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.et, ptr %i.ex, align 8
  br label %checkStringLen.exit.thread

bb.ar:                                            ; preds = %bb.aq
  store i32 2, ptr %8, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.0101, ptr %i.ey, align 8
  br label %checkStringLen.exit.thread

bb.as:                                            ; preds = %bb.e
  store i32 1, ptr %8, align 8
  %i.ez = tail call ptr @JsonEncodeDateTime(ptr noundef null, i64 noundef %0, i32 noundef 1082, ptr noundef null) #10 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ez, ptr %i.fb, align 8
  %i.fc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ez) #9
  %i.fd = trunc i64 %i.fc to i32
  store i32 %i.fd, ptr %i.fa, align 8
  br label %checkStringLen.exit.thread

bb.at:                                            ; preds = %bb.e
  store i32 1, ptr %8, align 8
  %i.fe = tail call ptr @JsonEncodeDateTime(ptr noundef null, i64 noundef %0, i32 noundef 1114, ptr noundef null) #10 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.fe, ptr %i.fg, align 8
  %i.fh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fe) #9
  %i.fi = trunc i64 %i.fh to i32
  store i32 %i.fi, ptr %i.ff, align 8
  br label %checkStringLen.exit.thread

bb.au:                                            ; preds = %bb.e
  store i32 1, ptr %8, align 8
  %i.fj = tail call ptr @JsonEncodeDateTime(ptr noundef null, i64 noundef %0, i32 noundef 1184, ptr noundef null) #10 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.fj, ptr %i.fl, align 8
  %i.fm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fj) #9
  %i.fn = trunc i64 %i.fm to i32
  store i32 %i.fn, ptr %i.fk, align 8
  br label %checkStringLen.exit.thread

bb.av:                                            ; preds = %bb.e
  %i.fo = tail call i64 @OidFunctionCall1Coll(i32 noundef %4, i32 noundef 0, i64 noundef %0) #10
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.e
  %.0 = phi i64 [ %i.fo, %bb.av ], [ %0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
end_hunk_0
