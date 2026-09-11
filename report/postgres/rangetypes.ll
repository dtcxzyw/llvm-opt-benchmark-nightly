Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/rangetypes?download=true
inline.NumInlined: 324
inline.NumDeleted: 53
begin_hunk_0_@range_compare:bb.a
bb.g:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.y = load i8, ptr %i.x, align 2, !range !5, !noundef !6
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = select i1 %i.z, i32 1, i32 -1
  br label %range_cmp_bounds.exit14

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = load i64, ptr %3, align 8
  %i.af = load i64, ptr %5, align 8
  %i.ag = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.ab, i32 noundef %i.ad, i64 noundef %i.ae, i64 noundef %i.af) #13
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %range_cmp_bounds.exit14

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.ak = load i8, ptr %i.aj, align 1, !range !5, !noundef !6
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.an = load i8, ptr %i.am, align 1, !range !5, !noundef !6
  %i.ao = trunc nuw i8 %i.an to i1                ; 2 uses
  br i1 %i.al, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.aq = load i8, ptr %i.ap, align 2, !range !5, !noundef !6 ; 3 uses
  br i1 %i.ao, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.as = load i8, ptr %i.ar, align 2, !range !5, !noundef !6
  %i.at = icmp eq i8 %i.aq, %i.as
  br i1 %i.at, label %range_cmp_bounds.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = trunc nuw i8 %i.aq to i1
  %i.av = select i1 %i.au, i32 1, i32 -1
  br label %range_cmp_bounds.exit14

bb.n:                                             ; preds = %bb.k
  %i.aw = trunc nuw i8 %i.aq to i1
  %i.ax = select i1 %i.aw, i32 1, i32 -1
  br label %range_cmp_bounds.exit14

bb.o:                                             ; preds = %bb.j
  br i1 %i.ao, label %range_cmp_bounds.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.az = load i8, ptr %i.ay, align 2, !range !5, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = select i1 %i.ba, i32 -1, i32 1
  br label %range_cmp_bounds.exit14

range_cmp_bounds.exit:                            ; preds = %bb.o, %bb.l, %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bd = load i8, ptr %i.bc, align 8, !range !5, !noundef !6
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = load i8, ptr %i.bf, align 8, !range !5, !noundef !6
  %i.bh = trunc nuw i8 %i.bg to i1                ; 2 uses
  br i1 %i.be, label %bb.q, label %bb.u

bb.q:                                             ; preds = %range_cmp_bounds.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.bj = load i8, ptr %i.bi, align 2, !range !5, !noundef !6 ; 3 uses
  br i1 %i.bh, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.bl = load i8, ptr %i.bk, align 2, !range !5, !noundef !6
  %i.bm = icmp eq i8 %i.bj, %i.bl
  br i1 %i.bm, label %range_cmp_bounds.exit14, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc nuw i8 %i.bj to i1
  %i.bo = select i1 %i.bn, i32 -1, i32 1
  br label %range_cmp_bounds.exit14

bb.t:                                             ; preds = %bb.q
  %i.bp = trunc nuw i8 %i.bj to i1
  %i.bq = select i1 %i.bp, i32 -1, i32 1
  br label %range_cmp_bounds.exit14

bb.u:                                             ; preds = %range_cmp_bounds.exit
  br i1 %i.bh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.bs = load i8, ptr %i.br, align 2, !range !5, !noundef !6
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = select i1 %i.bt, i32 1, i32 -1
  br label %range_cmp_bounds.exit14

bb.w:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = load i64, ptr %4, align 8
  %i.bz = load i64, ptr %6, align 8
  %i.ca = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.bv, i32 noundef %i.bx, i64 noundef %i.by, i64 noundef %i.bz) #13
  %i.cb = trunc i64 %i.ca to i32                  ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.x, label %range_cmp_bounds.exit14

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.ce = load i8, ptr %i.cd, align 1, !range !5, !noundef !6
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.ch = load i8, ptr %i.cg, align 1, !range !5, !noundef !6
  %i.ci = trunc nuw i8 %i.ch to i1                ; 2 uses
  br i1 %i.cf, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ck = load i8, ptr %i.cj, align 2, !range !5, !noundef !6 ; 3 uses
  br i1 %i.ci, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.cm = load i8, ptr %i.cl, align 2, !range !5, !noundef !6
  %i.cn = icmp eq i8 %i.ck, %i.cm
  br i1 %i.cn, label %range_cmp_bounds.exit14, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = trunc nuw i8 %i.ck to i1
  %i.cp = select i1 %i.co, i32 1, i32 -1
  br label %range_cmp_bounds.exit14

bb.ab:                                            ; preds = %bb.y
  %i.cq = trunc nuw i8 %i.ck to i1
  %i.cr = select i1 %i.cq, i32 1, i32 -1
  br label %range_cmp_bounds.exit14

bb.ac:                                            ; preds = %bb.x
  br i1 %i.ci, label %range_cmp_bounds.exit14, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.ct = load i8, ptr %i.cs, align 2, !range !5, !noundef !6
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = select i1 %i.cu, i32 -1, i32 1
  br label %range_cmp_bounds.exit14

range_cmp_bounds.exit14:                          ; preds = %bb.i, %bb.m, %bb.n, %bb.p, %bb.h, %bb.f, %bb.e, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.a
  %.0 = phi i32 [ %i.cb, %bb.w ], [ %.mux.mux, %bb.a ], [ 0, %bb.ac ], [ %i.bo, %bb.s ], [ %i.bq, %bb.t ], [ %i.bu, %bb.v ], [ 0, %bb.z ], [ %i.cv, %bb.ad ], [ %i.cr, %bb.ab ], [ 0, %bb.r ], [ %i.cp, %bb.aa ], [ %i.ah, %bb.i ], [ %i.av, %bb.m ], [ %i.ax, %bb.n ], [ %i.bb, %bb.p ], [ %i.aa, %bb.h ], [ %i.w, %bb.f ], [ %i.u, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @elem_contained_by_range_support(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 478
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val10 = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = load ptr, ptr %.val10, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call fastcc ptr @find_simplified_clause(ptr noundef %i.o, ptr noundef %i.m, ptr noundef %i.k)
  %i.q = ptrtoint ptr %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_simplified_clause(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RangeBound, align 8         ; 6 uses
  %4 = alloca %struct.RangeBound, align 8         ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %struct.QualCost, align 16          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %bb.b, label %.thread56

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.thread56, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call ptr @pg_detoast_datum(ptr noundef %i.i) #13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call ptr @lookup_type_cache(i32 noundef %i.l, i32 noundef 2048) #13 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 288 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.r = load i32, ptr %i.k, align 4
  %i.s = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6, i32 noundef %i.r) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3036, ptr noundef nonnull @__func__.find_simplified_clause) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @range_deserialize(ptr noundef nonnull %i.m, ptr noundef nonnull %i.j, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.a)
  %i.t = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = tail call ptr @makeBoolConst(i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %.thread56

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i8, ptr %i.w, align 8, !range !5, !noundef !6
  %i.y = trunc nuw i8 %i.x to i1                  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !range !5
  %i.ab = trunc nuw i8 %i.aa to i1                ; 4 uses
  %or.cond = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call ptr @makeBoolConst(i1 noundef zeroext true, i1 noundef zeroext false) #13
  br label %.thread56

bb.i:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 296
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 300
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %or.cond5 = select i1 %i.y, i1 true, i1 %i.ab
  br i1 %or.cond5, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ai = tail call zeroext i1 @contain_volatile_functions(ptr noundef %2) #13
  br i1 %i.ai, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call zeroext i1 @contain_subplans(ptr noundef %2) #13
  br i1 %i.aj, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @cost_qual_eval_node(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %0) #13
  %6 = load <2 x double>, ptr %5, align 16
  %7 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %6)
  %i.ak = load double, ptr @cpu_operator_cost, align 8
  %i.al = fmul double %i.ak, 1.000000e+01
  %i.am = fcmp ule double %7, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br i1 %i.am, label %.thread, label %.thread56

bb.m:                                             ; preds = %bb.i
  br i1 %i.y, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.l, %bb.m
  %i.an = load i64, ptr %3, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.ap = load i8, ptr %i.ao, align 1, !range !5, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = call fastcc ptr @build_bound_expr(ptr noundef %2, i64 noundef %i.an, i1 noundef zeroext true, i1 noundef zeroext %i.aq, ptr noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ah) ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  %brmerge = select i1 %i.as, i1 true, i1 %i.ab
  br i1 %brmerge, label %.thread56, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.ab, label %.thread56, label %bb.p

bb.o:                                             ; preds = %.thread
  %i.at = call ptr @copyObjectImpl(ptr noundef %2) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0455055 = phi ptr [ %i.ar, %bb.o ], [ null, %bb.n ] ; 2 uses
  %.043 = phi ptr [ %i.at, %bb.o ], [ %2, %bb.n ]
  %i.au = load i64, ptr %4, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.aw = load i8, ptr %i.av, align 1, !range !5, !noundef !6
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = call fastcc ptr @build_bound_expr(ptr noundef %.043, i64 noundef %i.au, i1 noundef zeroext false, i1 noundef zeroext %i.ax, ptr noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ah) ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.thread56, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not = icmp eq ptr %.0455055, null
  br i1 %.not, label %.thread56, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = call ptr @list_make2_impl(i32 noundef 1, ptr nonnull %.0455055, ptr nonnull %i.ay) #13
  %i.bb = call ptr @make_andclause(ptr noundef %i.ba) #13
  br label %.thread56

.critedge:                                        ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.thread56

.thread56:                                        ; preds = %.thread, %bb.q, %bb.n, %bb.r, %bb.l, %.critedge, %bb.p, %bb.a, %bb.b, %bb.h, %bb.f
  %.2 = phi ptr [ null, %bb.a ], [ %i.v, %bb.f ], [ %i.ac, %bb.h ], [ null, %bb.b ], [ %i.bb, %bb.r ], [ null, %bb.p ], [ null, %bb.l ], [ null, %.critedge ], [ %i.ar, %.thread ], [ %i.ay, %bb.q ], [ null, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local i64 @range_contains_elem_support(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 478
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val10 = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = load ptr, ptr %.val10, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call fastcc ptr @find_simplified_clause(ptr noundef %i.o, ptr noundef %i.k, ptr noundef %i.m)
  %i.q = ptrtoint ptr %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

declare ptr @MemoryContextAlloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @get_type_io_data(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @fmgr_info_cxt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @hash_bytes_uint32_extended(i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #9

declare i32 @pg_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @range_parse_bound(ptr noundef %0, ptr nofree noundef readonly captures(ret: address, provenance) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.StringInfoData, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = load i8, ptr %1, align 1
  switch i8 %i.a, label %bb.c [
    i8 44, label %bb.b
    i8 41, label %bb.b
    i8 93, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  store ptr null, ptr %2, align 8
  store i8 1, ptr %3, align 1
  br label %.critedge48

bb.c:                                             ; preds = %bb.a
  call void @initStringInfo(ptr noundef nonnull %5) #13
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %.038 = phi ptr [ %1, %bb.c ], [ %.038.be, %.backedge ] ; 5 uses
  %.033 = phi i1 [ false, %bb.c ], [ %.033.be, %.backedge ] ; 4 uses
  %.pr = load i8, ptr %.038, align 1              ; 3 uses
  br i1 %.033, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i8 %.pr, label %.critedge [
    i8 44, label %.critedge46
    i8 41, label %.critedge46
    i8 93, label %.critedge46
  ]

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.b = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 5 uses
  switch i8 %.pr, label %.sink.split [
    i8 0, label %bb.f
    i8 92, label %bb.h
    i8 34, label %bb.l
  ]

bb.f:                                             ; preds = %.critedge
  %i.c = call zeroext i1 @errsave_start(ptr noundef %4, ptr noundef null) #13
  br i1 %i.c, label %bb.g, label %.critedge48

bb.g:                                             ; preds = %bb.f
  %i.d = call i32 @errcode(i32 noundef 33685634) #13 ; 0 uses
  %i.e = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.24, ptr noundef %0) #13 ; 0 uses
  %i.f = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.30) #13 ; 0 uses
  call void @errsave_finish(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 2698, ptr noundef nonnull @__func__.range_parse_bound) #13
  br label %.critedge48

bb.h:                                             ; preds = %.critedge
  %i.g = load i8, ptr %i.b, align 1               ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.i = call zeroext i1 @errsave_start(ptr noundef %4, ptr noundef null) #13
  br i1 %i.i, label %bb.j, label %.critedge48

bb.j:                                             ; preds = %bb.i
  %i.j = call i32 @errcode(i32 noundef 33685634) #13 ; 0 uses
  %i.k = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.24, ptr noundef %0) #13 ; 0 uses
  %i.l = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.30) #13 ; 0 uses
  call void @errsave_finish(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 2706, ptr noundef nonnull @__func__.range_parse_bound) #13
  br label %.critedge48

bb.k:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %.038, i64 2
  br label %.sink.split

bb.l:                                             ; preds = %.critedge
  br i1 %.033, label %bb.m, label %.backedge

bb.m:                                             ; preds = %bb.l
  %i.n = load i8, ptr %i.b, align 1
  %i.o = icmp eq i8 %i.n, 34
  br i1 %i.o, label %bb.n, label %.backedge

bb.n:                                             ; preds = %bb.m
  %i.p = getelementptr inbounds nuw i8, ptr %.038, i64 2
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.n, %bb.k
  %.sink = phi i8 [ %i.g, %bb.k ], [ 34, %bb.n ], [ %.pr, %.critedge ]
  %.240.ph = phi ptr [ %i.m, %bb.k ], [ %i.p, %bb.n ], [ %i.b, %.critedge ]
  %.2.ph = phi i1 [ %.033, %bb.k ], [ true, %bb.n ], [ %.033, %.critedge ]
  call void @appendStringInfoChar(ptr noundef nonnull %5, i8 noundef signext %.sink) #13
  br label %.backedge

.backedge:                                        ; preds = %.sink.split, %bb.l, %bb.m
  %.038.be = phi ptr [ %i.b, %bb.m ], [ %i.b, %bb.l ], [ %.240.ph, %.sink.split ]
  %.033.be = phi i1 [ false, %bb.m ], [ true, %bb.l ], [ %.2.ph, %.sink.split ]
  br label %bb.d, !llvm.loop !21

.critedge46:                                      ; preds = %bb.e, %bb.e, %bb.e
  %i.q = load ptr, ptr %5, align 8
  store ptr %i.q, ptr %2, align 8
  store i8 0, ptr %3, align 1
  br label %.critedge48

.critedge48:                                      ; preds = %bb.i, %bb.f, %bb.g, %bb.j, %bb.b, %.critedge46
  %.3 = phi ptr [ %.038, %.critedge46 ], [ %1, %bb.b ], [ null, %bb.j ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret ptr %.3
}

declare void @appendStringInfoChar(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #2

declare void @appendStringInfoString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @range_bound_escape(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @initStringInfo(ptr noundef nonnull %1) #13
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = icmp eq i8 %i.a, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i8 [ %.pr, %bb.d ], [ %i.a, %bb.a ]  ; 2 uses
  %.043 = phi ptr [ %i.j, %bb.d ], [ %0, %bb.a ]
  switch i8 %i.c, label %bb.c [
    i8 0, label %bb.e
    i8 93, label %.thread53
    i8 92, label %.thread53
    i8 91, label %.thread53
    i8 44, label %.thread53
    i8 41, label %.thread53
    i8 40, label %.thread53
    i8 34, label %.thread53
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__ctype_b_loc() #14
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = zext i8 %i.c to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2
  %i.i = and i16 %i.h, 8192
  %.not48 = icmp eq i16 %i.i, 0
  br i1 %.not48, label %bb.d, label %.thread53

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.043, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.j, align 1
  br label %bb.b, !llvm.loop !22

bb.e:                                             ; preds = %bb.b
  br i1 %i.b, label %.thread53, label %bb.f

.thread53:                                        ; preds = %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.e
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 34) #13
  br label %bb.f

bb.f:                                             ; preds = %.thread53, %bb.e
  %i.k = phi i1 [ true, %.thread53 ], [ false, %bb.e ]
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.1 = phi ptr [ %0, %bb.f ], [ %i.m, %bb.i ]    ; 2 uses
  %i.l = load i8, ptr %.1, align 1                ; 3 uses
  switch i8 %i.l, label %bb.i [
    i8 0, label %bb.j
    i8 92, label %bb.h
    i8 34, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext %i.l) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext %i.l) #13
  %i.m = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.g, !llvm.loop !23

bb.j:                                             ; preds = %bb.g
  br i1 %i.k, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 34) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.n = load ptr, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret ptr %i.n
}

declare ptr @makeBoolConst(i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @contain_volatile_functions(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @contain_subplans(ptr noundef) local_unnamed_addr #2

declare void @cost_qual_eval_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @build_bound_expr(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i16, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.e = load i8, ptr %i.d, align 2, !range !5, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %3, i16 4, i16 5
  %i.i = select i1 %3, i16 2, i16 1
  %.0 = select i1 %2, i16 %i.h, i16 %i.i
  %i.j = tail call i32 @get_opfamily_member(i32 noundef %5, i32 noundef %i.a, i32 noundef %i.a, i16 noundef signext %.0) #13 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = trunc nuw i8 %i.e to i1
  %i.l = sext i16 %i.c to i32
  %i.m = tail call ptr @makeConst(i32 noundef %i.a, i32 noundef -1, i32 noundef %i.g, i32 noundef %i.l, i64 noundef %1, i1 noundef zeroext false, i1 noundef zeroext %i.k) #13
  %i.n = tail call ptr @make_opclause(i32 noundef %i.j, i32 noundef 16, i1 noundef zeroext false, ptr noundef %0, ptr noundef %i.m, i32 noundef 0, i32 noundef %6) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.021 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  ret ptr %.021
}

declare ptr @copyObjectImpl(ptr noundef) local_unnamed_addr #2

declare ptr @make_andclause(ptr noundef) local_unnamed_addr #2

declare ptr @list_make2_impl(i32 noundef, ptr, ptr) local_unnamed_addr #2

declare i32 @get_opfamily_member(i32 noundef, i32 noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @makeConst(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @make_opclause(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !"pq_writeint8"}
!12 = distinct !{!12, !11, !"pq_writeint8: argument 0"}
!13 = distinct !{!13, !"pq_writeint32"}
!14 = distinct !{!14, !13, !"pq_writeint32: argument 0"}
!15 = distinct !{!15, !"pq_writeint32"}
!16 = distinct !{!16, !15, !"pq_writeint32: argument 0"}
!17 = !{!12}
!18 = !{!14}
!19 = !{!16}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
end_hunk_0
