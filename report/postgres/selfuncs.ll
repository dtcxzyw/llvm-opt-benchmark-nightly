Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/selfuncs?download=true
inline.NumInlined: 290
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@booltestsel:bb.a

bb.u:                                             ; preds = %bb.q
  %i.an = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.ao = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %1) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1764, ptr noundef nonnull @__func__.booltestsel) #12
  unreachable

bb.v:                                             ; preds = %bb.p, %bb.t, %bb.s
  %.2.ph = phi double [ %i.ak, %bb.s ], [ %i.am, %bb.t ], [ %.1, %bb.p ] ; 2 uses
  %.pr = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not39 = icmp eq ptr %.pr, null
  br i1 %.not39, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull %.pr) #12
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.q, %bb.v, %bb.w
  %.243 = phi double [ %.2.ph, %bb.w ], [ %.2.ph, %bb.v ], [ 5.000000e-03, %bb.q ], [ f0x3FEFD70A3D70A3D7, %bb.r ] ; 3 uses
  %i.ar = fcmp olt double %.243, 0.000000e+00
  %i.as = fcmp ogt double %.243, 1.000000e+00
  %spec.store.select = select i1 %i.as, double 1.000000e+00, double %.243
  %.3 = select i1 %i.ar, double 0.000000e+00, double %spec.store.select
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret double %.3
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare double @clause_selectivity(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @nulltestsel(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.VariableStatData, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @examine_variable(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.e = load i8, ptr %i.d, align 2
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load float, ptr %i.h, align 4
  %i.j = fpext float %i.i to double               ; 2 uses
  switch i32 %1, label %bb.d [
    i32 0, label %bb.l
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = fsub double 1.000000e+00, %i.j
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.l = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.m = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %1) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1817, ptr noundef nonnull @__func__.nulltestsel) #12
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %6, align 8                ; 3 uses
  %.not19 = icmp eq ptr %i.n, null
  br i1 %.not19, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 6
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i16, ptr %i.q, align 8
  %i.s = icmp slt i16 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = icmp eq i32 %1, 0
  %i.u = select i1 %i.t, double 0.000000e+00, double 1.000000e+00
  br label %.thread

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  switch i32 %1, label %bb.k [
    i32 0, label %.thread
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.v = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.w = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %1) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1845, ptr noundef nonnull @__func__.nulltestsel) #12
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.c
  %.1 = phi double [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull %i.b) #12
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.j, %bb.i, %bb.l
  %.122 = phi double [ %.1, %bb.l ], [ 5.000000e-03, %bb.i ], [ %i.u, %bb.h ], [ f0x3FEFD70A3D70A3D7, %bb.j ] ; 3 uses
  %i.z = fcmp olt double %.122, 0.000000e+00
  %i.aa = fcmp ogt double %.122, 1.000000e+00
  %spec.store.select = select i1 %i.aa, double 1.000000e+00, double %.122
  %.2 = select i1 %i.z, double 0.000000e+00, double %spec.store.select
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret double %.2
}

; Function Attrs: nounwind uwtable
define dso_local double @scalararraysel(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.FmgrInfo, align 8           ; 9 uses
  %i.a = alloca i16, align 2                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i16, align 2                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i8, ptr %i.k, align 4, !range !5, !noundef !6
  %i.m = trunc nuw i8 %i.l to i1                  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %.val232 = load ptr, ptr %i.p, align 8          ; 2 uses
  %i.q = load ptr, ptr %.val232, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.val232, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @estimate_expression_value(ptr noundef %0, ptr noundef %i.q) #12 ; 4 uses
  %i.u = tail call ptr @estimate_expression_value(ptr noundef %0, ptr noundef %i.s) #12 ; 4 uses
  %i.v = tail call i32 @exprType(ptr noundef %i.u) #12
  %i.w = tail call i32 @get_base_element_type(i32 noundef %i.v) #12 ; 5 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = tail call i32 @exprCollation(ptr noundef %i.u) #12
  %.not13.i = icmp eq ptr %i.u, null
  br i1 %.not13.i, label %strip_array_coercion.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.01014.i = phi ptr [ %.2.i, %bb.e ], [ %i.u, %bb.b ] ; 6 uses
  %i.y = load i32, ptr %.01014.i, align 4
  switch i32 %i.y, label %strip_array_coercion.exit [
    i32 29, label %bb.c
    i32 27, label %bb.e
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01014.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, 27
  br i1 %i.ac, label %bb.d, label %strip_array_coercion.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %i.af, 34
  br i1 %i.ag, label %bb.e, label %strip_array_coercion.exit

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.2.in.i = getelementptr inbounds nuw i8, ptr %.01014.i, i64 8
  %.2.i = load ptr, ptr %.2.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.2.i, null
  br i1 %.not.i, label %strip_array_coercion.exit, label %.lr.ph.i

strip_array_coercion.exit:                        ; preds = %.lr.ph.i, %bb.c, %bb.d, %bb.e, %bb.b
  %.010.lcssa.i = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ %.01014.i, %bb.d ], [ %.01014.i, %bb.c ], [ %.01014.i, %.lr.ph.i ] ; 8 uses
  %i.ah = tail call ptr @lookup_type_cache(i32 noundef %i.w, i32 noundef 1) #12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 52 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %.not226 = icmp eq i32 %i.aj, 0
  br i1 %.not226, label %bb.i, label %bb.f

bb.f:                                             ; preds = %strip_array_coercion.exit
  %i.ak = icmp eq i32 %i.j, %i.aj                 ; 2 uses
  br i1 %i.ak, label %8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = tail call i32 @get_negator(i32 noundef %i.j) #12
  %i.am = load i32, ptr %i.ai, align 4
  %7 = icmp ne i32 %i.al, %i.am                   ; 2 uses
  %spec.select = or i1 %2, %7
  %not. = xor i1 %7, true
  %spec.select.a = zext i1 %not. to i8            ; 2 uses
  br i1 %spec.select, label %bb.i, label %bb.h

8:                                                ; preds = %bb.f
  br i1 %2, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %8
  %.0195239 = phi i8 [ 0, %bb.g ], [ 1, %8 ]
  %.0199238 = phi i8 [ %spec.select.a, %bb.g ], [ 0, %8 ]
  %9 = tail call double @scalararraysel_containment(ptr noundef %0, ptr noundef %i.t, ptr noundef %.010.lcssa.i, i32 noundef %i.w, i1 noundef zeroext %i.ak, i1 noundef zeroext %i.m, i32 noundef %3) #12 ; 2 uses
  %10 = fcmp ult double %9, 0.000000e+00
  br i1 %10, label %bb.i, label %bb.bd

bb.i:                                             ; preds = %strip_array_coercion.exit, %bb.g, %bb.h
  %.0195237 = phi i8 [ 0, %strip_array_coercion.exit ], [ %.0195239, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.0199236 = phi i8 [ 0, %strip_array_coercion.exit ], [ %.0199238, %bb.h ], [ %spec.select.a, %bb.g ] ; 2 uses
  br i1 %2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %8, %bb.i
  %.0199236305 = phi i8 [ %.0199236, %bb.i ], [ 0, %8 ]
  %.0195237303 = phi i8 [ %.0195237, %bb.i ], [ 1, %8 ]
  %i.an = tail call i32 @get_oprjoin(i32 noundef %i.j) #12
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ao = tail call i32 @get_oprrest(i32 noundef %i.j) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0199236304 = phi i8 [ %.0199236305, %bb.j ], [ %.0199236, %bb.k ] ; 3 uses
  %.0195237302 = phi i8 [ %.0195237303, %bb.j ], [ %.0195237, %bb.k ] ; 2 uses
  %.0218 = phi i32 [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 3 uses
  %.not228.a = icmp eq i32 %.0218, 0
  br i1 %.not228.a, label %bb.bd, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @fmgr_info(i32 noundef %.0218, ptr noundef nonnull %6) #12
  switch i32 %.0218, label %.fold.split [
    i32 105, label %bb.o
    i32 101, label %bb.o
    i32 106, label %bb.n
    i32 102, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  br label %bb.o

.fold.split:                                      ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.m, %.fold.split, %bb.n
  %.1200 = phi i8 [ %.0199236304, %bb.m ], [ 1, %bb.n ], [ %.0199236304, %bb.m ], [ %.0199236304, %.fold.split ] ; 4 uses
  %.1196 = phi i8 [ 1, %bb.m ], [ %.0195237302, %bb.n ], [ 1, %bb.m ], [ %.0195237302, %.fold.split ] ; 4 uses
  %.not229.a = icmp eq ptr %.010.lcssa.i, null
  br i1 %.not229.a, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = load i32, ptr %.010.lcssa.i, align 4
  switch i32 %i.ap, label %.critedge [
    i32 7, label %bb.q
    i32 35, label %bb.ai
  ]

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.lcssa.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.010.lcssa.i, i64 32
  %i.at = load i8, ptr %i.as, align 8, !range !5, !noundef !6
  %i.au = trunc nuw i8 %i.at to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  br i1 %i.au, label %bb.ah, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = inttoptr i64 %i.ar to ptr
  %i.aw = call ptr @pg_detoast_datum(ptr noundef %i.av) #12 ; 3 uses
  br i1 %i.m, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = call zeroext i1 @array_contains_nulls(ptr noundef %i.aw) #12
  br i1 %i.ax, label %bb.ah, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ay = phi double [ 1.000000e+00, %bb.s ], [ 0.000000e+00, %bb.r ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  call void @get_typlenbyvalalign(i32 noundef %i.ba, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %i.bb = load i32, ptr %i.az, align 4
  %i.bc = load i16, ptr %i.a, align 2
  %i.bd = sext i16 %i.bc to i32
  %i.be = load i8, ptr %i.b, align 1, !range !5, !noundef !6
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = load i8, ptr %i.c, align 1
  call void @deconstruct_array(ptr noundef %i.aw, i32 noundef %i.bb, i32 noundef %i.bd, i1 noundef zeroext %i.bf, i8 noundef signext %i.bg, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d) #12
  %i.bh = load i32, ptr %i.d, align 4
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph274, label %._crit_edge275

.lr.ph274:                                        ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bk = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.bl = zext i32 %i.j to i64                    ; 2 uses
  %i.bm = sext i32 %3 to i64
  %i.bn = zext i32 %4 to i64
  %sext259 = shl i64 %i.bn, 48
  %i.bo = ashr exact i64 %sext259, 48
  %i.bp = ptrtoint ptr %5 to i64
  %i.bq = trunc nuw i8 %.1200 to i1
  %i.br = trunc nuw i8 %.1196 to i1
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph274, %bb.ac
  %indvars.iv283 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next284, %bb.ac ] ; 3 uses
  %.0207271 = phi double [ %i.ay, %.lr.ph274 ], [ %.1208, %bb.ac ] ; 4 uses
  %.1213270 = phi double [ %i.ay, %.lr.ph274 ], [ %.2214, %bb.ac ] ; 3 uses
  %i.bs = load i16, ptr %i.a, align 2
  %i.bt = sext i16 %i.bs to i32
  %i.bu = load ptr, ptr %i.e, align 8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv283
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = load ptr, ptr %i.f, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv283
  %i.bz = load i8, ptr %i.by, align 1, !range !5, !noundef !6
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = load i8, ptr %i.b, align 1, !range !5, !noundef !6
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = call ptr @makeConst(i32 noundef %i.w, i32 noundef -1, i32 noundef %i.x, i32 noundef %i.bt, i64 noundef %i.bw, i1 noundef zeroext %i.ca, i1 noundef zeroext %i.cc) #12
  %i.ce = call ptr @list_make2_impl(i32 noundef 1, ptr %i.t, ptr %i.cd) #12
  %i.cf = load i32, ptr %i.bj, align 8            ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64               ; 2 uses
  br i1 %2, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ch = call i64 @FunctionCall5Coll(ptr noundef nonnull %6, i32 noundef %i.cf, i64 noundef %i.bk, i64 noundef %i.bl, i64 noundef %i.cg, i64 noundef %i.bo, i64 noundef %i.bp) #12
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ci = call i64 @FunctionCall4Coll(ptr noundef nonnull %6, i32 noundef %i.cf, i64 noundef %i.bk, i64 noundef %i.bl, i64 noundef %i.cg, i64 noundef %i.bm) #12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0201.in = phi i64 [ %i.ch, %bb.v ], [ %i.ci, %bb.w ]
  %.0201 = bitcast i64 %.0201.in to double        ; 5 uses
  br i1 %i.m, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cj = fadd double %.1213270, %.0201
  %i.ck = fneg double %.1213270
  %i.cl = call double @llvm.fmuladd.f64(double %i.ck, double %.0201, double %i.cj) ; 2 uses
  br i1 %i.br, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cm = fadd double %.0207271, %.0201
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.cn = fmul double %.1213270, %.0201           ; 2 uses
  br i1 %i.bq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.co = fadd double %.0201, -1.000000e+00
  %i.cp = fadd double %.0207271, %i.co
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.y, %bb.z
  %.2214 = phi double [ %i.cl, %bb.z ], [ %i.cl, %bb.y ], [ %i.cn, %bb.ab ], [ %i.cn, %bb.aa ] ; 2 uses
  %.1208 = phi double [ %i.cm, %bb.z ], [ %.0207271, %bb.y ], [ %i.cp, %bb.ab ], [ %.0207271, %bb.aa ] ; 2 uses
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %i.cq = load i32, ptr %i.d, align 4
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp slt i64 %indvars.iv.next284, %i.cr
  br i1 %i.cs, label %bb.u, label %._crit_edge275, !llvm.loop !29

._crit_edge275:                                   ; preds = %bb.ac, %bb.t
  %.1213.lcssa = phi double [ %i.ay, %bb.t ], [ %.2214, %bb.ac ] ; 3 uses
  %.0207.lcssa = phi double [ %i.ay, %bb.t ], [ %.1208, %bb.ac ] ; 3 uses
  br i1 %i.m, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge275
  %i.ct = trunc nuw i8 %.1196 to i1
  br i1 %i.ct, label %bb.af, label %.thread

bb.ae:                                            ; preds = %._crit_edge275
  %i.cu = trunc nuw i8 %.1200 to i1
  br i1 %i.cu, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cv = fcmp oge double %.0207.lcssa, 0.000000e+00
  %i.cw = fcmp ole double %.0207.lcssa, 1.000000e+00
  %or.cond12 = and i1 %i.cv, %i.cw
  br i1 %or.cond12, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  br label %.thread

.thread:                                          ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.4216.ph = phi double [ %.1213.lcssa, %bb.ae ], [ %.1213.lcssa, %bb.ad ], [ %.1213.lcssa, %bb.af ], [ %.0207.lcssa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

bb.ah:                                            ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.bd

bb.ai:                                            ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %.010.lcssa.i, i64 24
  %i.cy = load i8, ptr %i.cx, align 8, !range !5, !noundef !6
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.da = getelementptr inbounds nuw i8, ptr %.010.lcssa.i, i64 12
  %i.db = load i32, ptr %i.da, align 4
  call void @get_typlenbyval(i32 noundef %i.db, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #12
  %i.dc = select i1 %i.m, double 0.000000e+00, double 1.000000e+00 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.010.lcssa.i, i64 16
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not230 = icmp eq ptr %i.de, null
  br i1 %.not230, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.di = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.dj = zext i32 %i.j to i64                    ; 2 uses
  %i.dk = sext i32 %3 to i64
  %i.dl = zext i32 %4 to i64
  %sext = shl i64 %i.dl, 48
  %i.dm = ashr exact i64 %sext, 48
  %i.dn = ptrtoint ptr %5 to i64
  %i.do = trunc nuw i8 %.1200 to i1
  %i.dp = trunc nuw i8 %.1196 to i1
  %i.dq = load i32, ptr %i.df, align 4
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph298, label %._crit_edge

.lr.ph298:                                        ; preds = %.lr.ph, %bb.au
  %.5217263297 = phi double [ %.7.ph, %bb.au ], [ %i.dc, %.lr.ph ] ; 3 uses
  %.2209264296 = phi double [ %.4211.ph, %bb.au ], [ %i.dc, %.lr.ph ] ; 4 uses
  %indvars.iv295 = phi i64 [ %indvars.iv.next, %bb.au ], [ 0, %.lr.ph ] ; 2 uses
  %i.ds = load ptr, ptr %i.dg, align 8
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv295
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  br i1 %i.m, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph298
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = icmp eq i32 %i.dv, 7
  br i1 %i.dw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dy = load i8, ptr %i.dx, align 8, !range !5, !noundef !6
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.az, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.lr.ph298
  %i.ea = call ptr @list_make2_impl(i32 noundef 1, ptr %i.t, ptr %i.du) #12
  %i.eb = load i32, ptr %i.dh, align 8            ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64               ; 2 uses
  br i1 %2, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ed = call i64 @FunctionCall5Coll(ptr noundef nonnull %6, i32 noundef %i.eb, i64 noundef %i.di, i64 noundef %i.dj, i64 noundef %i.ec, i64 noundef %i.dm, i64 noundef %i.dn) #12
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ee = call i64 @FunctionCall4Coll(ptr noundef nonnull %6, i32 noundef %i.eb, i64 noundef %i.di, i64 noundef %i.dj, i64 noundef %i.ec, i64 noundef %i.dk) #12
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0197.in = phi i64 [ %i.ed, %bb.an ], [ %i.ee, %bb.ao ]
  %.0197 = bitcast i64 %.0197.in to double        ; 5 uses
  br i1 %i.m, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ef = fadd double %.5217263297, %.0197
  %i.eg = fneg double %.5217263297
  %i.eh = call double @llvm.fmuladd.f64(double %i.eg, double %.0197, double %i.ef) ; 2 uses
  br i1 %i.dp, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ei = fadd double %.2209264296, %.0197
  br label %bb.au

bb.as:                                            ; preds = %bb.ap
  %i.ej = fmul double %.5217263297, %.0197        ; 2 uses
  br i1 %i.do, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ek = fadd double %.0197, -1.000000e+00
  %i.el = fadd double %.2209264296, %i.ek
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.aq, %bb.ar
  %.7.ph = phi double [ %i.ej, %bb.as ], [ %i.ej, %bb.at ], [ %i.eh, %bb.aq ], [ %i.eh, %bb.ar ] ; 2 uses
  %.4211.ph = phi double [ %.2209264296, %bb.as ], [ %i.el, %bb.at ], [ %.2209264296, %bb.aq ], [ %i.ei, %bb.ar ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %i.em = load i32, ptr %i.df, align 4
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next, %i.en
  br i1 %i.eo, label %.lr.ph298, label %._crit_edge

._crit_edge:                                      ; preds = %bb.au, %.lr.ph, %bb.aj
  %.5217.lcssa = phi double [ %i.dc, %bb.aj ], [ %i.dc, %.lr.ph ], [ %.7.ph, %bb.au ] ; 3 uses
  %.2209.lcssa = phi double [ %i.dc, %bb.aj ], [ %i.dc, %.lr.ph ], [ %.4211.ph, %bb.au ] ; 3 uses
  br i1 %i.m, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge
  %i.ep = trunc nuw i8 %.1196 to i1
  br i1 %i.ep, label %bb.ax, label %.thread256

bb.aw:                                            ; preds = %._crit_edge
  %i.eq = trunc nuw i8 %.1200 to i1
  br i1 %i.eq, label %bb.ax, label %.thread256

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.er = fcmp oge double %.2209.lcssa, 0.000000e+00
  %i.es = fcmp ole double %.2209.lcssa, 1.000000e+00
  %or.cond14 = and i1 %i.er, %i.es
  br i1 %or.cond14, label %bb.ay, label %.thread256

bb.ay:                                            ; preds = %bb.ax
  br label %.thread256

.thread256:                                       ; preds = %bb.aw, %bb.ay, %bb.ax, %bb.av
  %.10.ph = phi double [ %.5217.lcssa, %bb.av ], [ %.5217.lcssa, %bb.ax ], [ %.2209.lcssa, %bb.ay ], [ %.5217.lcssa, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %.loopexit

bb.az:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %bb.bd

.critedge:                                        ; preds = %bb.p, %bb.o, %bb.ai
  %i.et = call noundef ptr @palloc0(i64 noundef 16) #12 ; 5 uses
  store i32 34, ptr %i.et, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store i32 %i.w, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 -1, ptr %i.ev, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  store i32 %i.ex, ptr %i.ey, align 4
  %i.ez = call ptr @list_make2_impl(i32 noundef 1, ptr %i.t, ptr nonnull %i.et) #12
  %i.fa = load i32, ptr %i.ew, align 8            ; 2 uses
  %i.fb = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.fc = zext i32 %i.j to i64                    ; 2 uses
  %i.fd = ptrtoint ptr %i.ez to i64               ; 2 uses
  br i1 %2, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.critedge
  %i.fe = zext i32 %4 to i64
  %sext260 = shl i64 %i.fe, 48
  %i.ff = ashr exact i64 %sext260, 48
  %i.fg = ptrtoint ptr %5 to i64
  %i.fh = call i64 @FunctionCall5Coll(ptr noundef nonnull %6, i32 noundef %i.fa, i64 noundef %i.fb, i64 noundef %i.fc, i64 noundef %i.fd, i64 noundef %i.ff, i64 noundef %i.fg) #12
  br label %bb.bc

bb.bb:                                            ; preds = %.critedge
  %i.fi = sext i32 %3 to i64
  %i.fj = call i64 @FunctionCall4Coll(ptr noundef nonnull %6, i32 noundef %i.fa, i64 noundef %i.fb, i64 noundef %i.fc, i64 noundef %i.fd, i64 noundef %i.fi) #12
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.0194.in = phi i64 [ %i.fh, %bb.ba ], [ %i.fj, %bb.bb ]
  %.0194 = bitcast i64 %.0194.in to double        ; 30 uses
  br i1 %i.m, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.bc
  %i.fk = fmul double %.0194, %.0194
  %i.fl = fmul double %i.fk, %.0194
  %i.fm = fmul double %i.fl, %.0194
  %i.fn = fmul double %i.fm, %.0194
  %i.fo = fmul double %i.fn, %.0194
  %i.fp = fmul double %i.fo, %.0194
  %i.fq = fmul double %i.fp, %.0194
  %i.fr = fmul double %i.fq, %.0194
  %i.fs = fmul double %i.fr, %.0194
  br label %.loopexit

.split.us.preheader:                              ; preds = %bb.bc
  %i.ft = fadd double %.0194, 0.000000e+00
  %i.fu = call double @llvm.fmuladd.f64(double %.0194, double -0.000000e+00, double %i.ft) ; 2 uses
  %i.fv = fadd double %i.fu, %.0194
  %i.fw = fneg double %i.fu
  %i.fx = call double @llvm.fmuladd.f64(double %i.fw, double %.0194, double %i.fv) ; 2 uses
  %i.fy = fadd double %i.fx, %.0194
  %i.fz = fneg double %i.fx
  %i.ga = call double @llvm.fmuladd.f64(double %i.fz, double %.0194, double %i.fy) ; 2 uses
  %i.gb = fadd double %i.ga, %.0194
  %i.gc = fneg double %i.ga
  %i.gd = call double @llvm.fmuladd.f64(double %i.gc, double %.0194, double %i.gb) ; 2 uses
  %i.ge = fadd double %i.gd, %.0194
  %i.gf = fneg double %i.gd
  %i.gg = call double @llvm.fmuladd.f64(double %i.gf, double %.0194, double %i.ge) ; 2 uses
  %i.gh = fadd double %i.gg, %.0194
  %i.gi = fneg double %i.gg
  %i.gj = call double @llvm.fmuladd.f64(double %i.gi, double %.0194, double %i.gh) ; 2 uses
  %i.gk = fadd double %i.gj, %.0194
  %i.gl = fneg double %i.gj
  %i.gm = call double @llvm.fmuladd.f64(double %i.gl, double %.0194, double %i.gk) ; 2 uses
  %i.gn = fadd double %i.gm, %.0194
  %i.go = fneg double %i.gm
  %i.gp = call double @llvm.fmuladd.f64(double %i.go, double %.0194, double %i.gn) ; 2 uses
  %i.gq = fadd double %i.gp, %.0194
  %i.gr = fneg double %i.gp
  %i.gs = call double @llvm.fmuladd.f64(double %i.gr, double %.0194, double %i.gq) ; 2 uses
  %i.gt = fadd double %i.gs, %.0194
  %i.gu = fneg double %i.gs
  %i.gv = call double @llvm.fmuladd.f64(double %i.gu, double %.0194, double %i.gt)
  br label %.loopexit

.loopexit:                                        ; preds = %.split.preheader, %.split.us.preheader, %.thread256, %.thread
  %.13 = phi double [ %.4216.ph, %.thread ], [ %.10.ph, %.thread256 ], [ %i.gv, %.split.us.preheader ], [ %i.fs, %.split.preheader ] ; 3 uses
  %i.gw = fcmp olt double %.13, 0.000000e+00
  %i.gx = fcmp ogt double %.13, 1.000000e+00
  %spec.store.select = select i1 %i.gx, double 1.000000e+00, double %.13
  %.14 = select i1 %i.gw, double 0.000000e+00, double %spec.store.select
  br label %bb.bd

bb.bd:                                            ; preds = %bb.az, %bb.ah, %bb.l, %bb.h, %bb.a, %.loopexit
  %.4 = phi double [ %.14, %.loopexit ], [ 0.000000e+00, %bb.ah ], [ 0.000000e+00, %bb.az ], [ %9, %bb.h ], [ 5.000000e-01, %bb.a ], [ 5.000000e-01, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret double %.4
}

declare ptr @estimate_expression_value(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_base_element_type(i32 noundef) local_unnamed_addr #2

declare i32 @exprType(ptr noundef) local_unnamed_addr #2

declare i32 @exprCollation(ptr noundef) local_unnamed_addr #2

declare ptr @lookup_type_cache(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @get_negator(i32 noundef) local_unnamed_addr #2

declare double @scalararraysel_containment(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @get_oprjoin(i32 noundef) local_unnamed_addr #2

declare i32 @get_oprrest(i32 noundef) local_unnamed_addr #2

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @array_contains_nulls(ptr noundef) local_unnamed_addr #2

declare void @get_typlenbyvalalign(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @deconstruct_array(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_make2_impl(i32 noundef, ptr, ptr) local_unnamed_addr #2

declare ptr @makeConst(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @FunctionCall5Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @FunctionCall4Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @get_typlenbyval(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local double @estimate_array_length(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.VariableStatData, align 8   ; 7 uses
  %3 = alloca %struct.AttStatsSlot, align 8       ; 8 uses
  %.not13.i = icmp eq ptr %1, null
  br i1 %.not13.i, label %.critedge.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.01014.i = phi ptr [ %.2.i, %bb.d ], [ %1, %bb.a ] ; 9 uses
  %i.a = load i32, ptr %.01014.i, align 4         ; 2 uses
  switch i32 %i.a, label %.critedge [
    i32 29, label %bb.b
    i32 27, label %bb.d
    i32 7, label %bb.e
    i32 35, label %bb.g
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.01014.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 27
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 34
  br i1 %i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph.i, %bb.c
  %.2.in.i = getelementptr inbounds nuw i8, ptr %.01014.i, i64 8
  %.2.i = load ptr, ptr %.2.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.2.i, null
  br i1 %.not.i, label %.critedge.thread, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01014.i, i64 32
  %i.k = load i8, ptr %i.j, align 8, !range !5, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %list_length.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.01014.i, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call ptr @pg_detoast_datum(ptr noundef %i.o) #12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = tail call i32 @ArrayGetNItems(i32 noundef %i.r, ptr noundef nonnull %i.s) #12
  %i.u = sitofp i32 %i.t to double
  br label %list_length.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.01014.i, i64 24
  %i.w = load i8, ptr %i.v, align 8, !range !5, !noundef !6
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.01014.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i34 = icmp eq ptr %i.z, null
  br i1 %.not.i34, label %list_length.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sitofp i32 %i.ab to double
  br label %list_length.exit

.critedge:                                        ; preds = %bb.c, %bb.b, %.lr.ph.i, %bb.g
  %.not50 = icmp eq ptr %0, null
  br i1 %.not50, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ad = icmp eq i32 %i.a, 6
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.01014.i, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.thread45, label %bb.l

.thread45:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %list_length.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @examine_variable(ptr noundef nonnull %0, ptr noundef nonnull %.01014.i, i32 noundef 0, ptr noundef nonnull %2)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.thread48, label %bb.m

.thread48:                                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %.critedge.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = call zeroext i1 @get_attstatsslot(ptr noundef nonnull %3, ptr noundef nonnull %i.ai, i32 noundef 5, i32 noundef 0, i32 noundef 2) #12
  br i1 %i.aj, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = zext nneg i32 %i.al to i64
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -4
  %i.as = load float, ptr %i.ar, align 4
  %i.at = fpext float %i.as to double
  %i.au = call double @clamp_row_est(double noundef %i.at) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi double [ %i.au, %bb.o ], [ 0.000000e+00, %bb.n ]
  call void @free_attstatsslot(ptr noundef nonnull %3) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.1.ph = phi double [ 0.000000e+00, %bb.m ], [ %.0, %bb.p ] ; 2 uses
  %.pr41 = load ptr, ptr %i.ah, align 8           ; 2 uses
  %.not33 = icmp eq ptr %.pr41, null
  br i1 %.not33, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull %.pr41) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ax = fcmp ule double %.1.ph, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br i1 %i.ax, label %.critedge.thread, label %list_length.exit

.critedge.thread:                                 ; preds = %bb.d, %bb.a, %.thread48, %bb.s, %.critedge
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.i, %bb.h, %.thread45, %bb.s, %bb.f, %bb.e, %.critedge.thread
  %.2 = phi double [ 1.000000e+01, %.thread45 ], [ 1.000000e+01, %.critedge.thread ], [ %.1.ph, %bb.s ], [ %i.u, %bb.f ], [ 0.000000e+00, %bb.e ], [ %i.ac, %bb.i ], [ 0.000000e+00, %bb.h ]
  ret double %.2
end_hunk_0
