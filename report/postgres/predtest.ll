Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/predtest?download=true
inline.NumInlined: 59
inline.NumDeleted: 20
begin_hunk_0_@predicate_refuted_by_recurse:bb.a
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = tail call zeroext i1 @equal(ptr noundef %i.fa, ptr noundef %i.fc) #7
  br i1 %i.fd, label %predicate_refuted_by_simple_clause.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bu
  br i1 %2, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.fe = getelementptr inbounds nuw i8, ptr %.079, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = tail call fastcc zeroext i1 @clause_is_strict_for(ptr noundef nonnull %1, ptr noundef %i.ff, i1 noundef zeroext true)
  br i1 %i.fg, label %predicate_refuted_by_simple_clause.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.ci, %bb.cd, %bb.bz, %bb.by
  br label %predicate_refuted_by_simple_clause.exit

bb.cb:                                            ; preds = %._crit_edge, %bb.bt
  %i.fh = phi i32 [ %.pre, %._crit_edge ], [ %.pre133, %bb.bt ]
  %cond1.i = icmp eq i32 %i.fh, 52
  br i1 %cond1.i, label %bb.cc, label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fj = load i8, ptr %i.fi, align 4, !range !6, !noundef !7
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %predicate_refuted_by_simple_clause.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fm = load i32, ptr %i.fl, align 8
  %cond2.i = icmp eq i32 %i.fm, 0
  br i1 %cond2.i, label %bb.ce, label %bb.ca

bb.ce:                                            ; preds = %bb.cd
  br i1 %cond.i, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.fn = getelementptr inbounds nuw i8, ptr %.079, i64 20
  %i.fo = load i8, ptr %i.fn, align 4, !range !6, !noundef !7
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %predicate_refuted_by_simple_clause.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fq = getelementptr inbounds nuw i8, ptr %.079, i64 16
  %i.fr = load i32, ptr %i.fq, align 8
  %i.fs = icmp eq i32 %i.fr, 1
  br i1 %i.fs, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ft = getelementptr inbounds nuw i8, ptr %.079, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = tail call zeroext i1 @equal(ptr noundef %i.fu, ptr noundef %i.fw) #7
  br i1 %i.fx, label %predicate_refuted_by_simple_clause.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.ce
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = tail call fastcc zeroext i1 @clause_is_strict_for(ptr noundef nonnull %.079, ptr noundef %i.fz, i1 noundef zeroext true)
  br i1 %i.ga, label %predicate_refuted_by_simple_clause.exit, label %bb.ca

bb.cj:                                            ; preds = %bb.cb
  %i.gb = tail call fastcc zeroext i1 @operator_predicate_proof(ptr noundef nonnull %1, ptr noundef nonnull %.079, i1 noundef zeroext true, i1 noundef zeroext %2)
  br label %predicate_refuted_by_simple_clause.exit

default.unreachable145:                           ; preds = %extract_strong_not_arg.exit.thread, %bb.z, %bb.d, %bb.c
  unreachable

predicate_refuted_by_simple_clause.exit:          ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cf, %bb.cc, %bb.ca, %bb.bz, %bb.bx, %bb.bv, %bb.bs, %bb.bq, %.thread, %bb.bo, %bb.az, %bb.ap, %bb.v, %bb.bh, %bb.bd, %bb.as, %.loopexit, %bb.ad, %bb.y, %bb.o, %bb.k
  %.078 = phi i1 [ true, %bb.bo ], [ %.not106.not.not.not.not.not, %bb.k ], [ %.not104, %bb.o ], [ true, %.thread ], [ %.not103.not.not.not.not.not, %bb.y ], [ %.not101, %bb.ad ], [ %.not99130, %.loopexit ], [ true, %bb.v ], [ %.not98, %bb.as ], [ true, %bb.ap ], [ %.not96.not.not.not.not.not, %bb.bd ], [ %.not95, %bb.bh ], [ true, %bb.az ], [ true, %bb.ci ], [ false, %bb.bq ], [ %i.gb, %bb.cj ], [ false, %bb.bv ], [ false, %bb.cc ], [ false, %bb.cf ], [ true, %bb.bz ], [ false, %bb.ca ], [ false, %bb.bs ], [ true, %bb.bx ], [ true, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i1 %.078
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @predicate_classify(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  switch i32 %i.a, label %.critedge [
    i32 1, label %bb.b
    i32 21, label %is_andclause.exit
    i32 20, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @list_startup_fn, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @list_next_fn, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @list_cleanup_fn, ptr %i.d, align 8
  br label %.critedge

is_andclause.exit:                                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4
  switch i32 %i.f, label %.critedge [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %is_andclause.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @boolexpr_startup_fn, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @list_next_fn, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @list_cleanup_fn, ptr %i.i, align 8
  br label %.critedge

bb.d:                                             ; preds = %is_andclause.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @boolexpr_startup_fn, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @list_next_fn, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @list_cleanup_fn, ptr %i.l, align 8
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %.val = load ptr, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 6 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.q, align 4
  switch i32 %i.r, label %.critedge [
    i32 7, label %bb.g
    i32 35, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load i8, ptr %i.s, align 8, !range !6, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = tail call ptr @pg_detoast_datum(ptr noundef %i.x) #7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = tail call i32 @ArrayGetNItems(i32 noundef %i.aa, ptr noundef nonnull %i.ab) #7
  %i.ad = icmp sgt i32 %i.ac, 100
  br i1 %i.ad, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @arrayconst_startup_fn, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @arrayconst_next_fn, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @arrayconst_cleanup_fn, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = load i8, ptr %i.ah, align 4, !range !6, !noundef !7
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = select i1 %i.aj, i32 2, i32 1
  br label %.critedge

bb.j:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.am = load i8, ptr %i.al, align 8, !range !6, !noundef !7
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.i41 = icmp eq ptr %i.ap, null
  br i1 %.not.i41, label %list_length.exit.thread, label %list_length.exit

list_length.exit:                                 ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp slt i32 %i.ar, 101
  br i1 %i.as, label %list_length.exit.thread, label %.critedge

list_length.exit.thread:                          ; preds = %bb.k, %list_length.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @arrayexpr_startup_fn, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @arrayexpr_next_fn, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @arrayexpr_cleanup_fn, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ax = load i8, ptr %i.aw, align 4, !range !6, !noundef !7
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = select i1 %i.ay, i32 2, i32 1
  br label %.critedge

.critedge:                                        ; preds = %is_andclause.exit, %bb.f, %bb.a, %bb.h, %bb.g, %bb.j, %list_length.exit, %bb.e, %bb.i, %list_length.exit.thread, %bb.d, %bb.c, %bb.b
  %.3 = phi i32 [ 1, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ %i.az, %list_length.exit.thread ], [ %i.ak, %bb.i ], [ 0, %is_andclause.exit ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %list_length.exit ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.3
}

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @list_startup_fn(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.a, align 8
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %list_head.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  br label %list_head.exit

list_head.exit:                                   ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  store ptr %i.d, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @list_next_fn(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val = load i32, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val9 = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = sext i32 %.val to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %.val9, i64 %i.i
  %i.k = icmp ult ptr %i.h, %i.j
  %..i = select i1 %i.k, ptr %i.h, ptr null
  store ptr %..i, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @list_cleanup_fn(ptr nofree readnone captures(none) %0) #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @boolexpr_startup_fn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %list_head.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  br label %list_head.exit

list_head.exit:                                   ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  store ptr %i.f, ptr %1, align 8
  ret void
}

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

declare i32 @ArrayGetNItems(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @arrayconst_startup_fn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = tail call ptr @palloc(i64 noundef 112) #7 ; 19 uses
  store ptr %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %.val34 = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.val34, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = tail call ptr @pg_detoast_datum(ptr noundef %i.l) #7 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4
  call void @get_typlenbyvalalign(i32 noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %i.p = load i32, ptr %i.n, align 4
  %i.q = load i16, ptr %i.a, align 2
  %i.r = sext i16 %i.q to i32
  %i.s = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = load i8, ptr %i.c, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  call void @deconstruct_array(ptr noundef %i.m, i32 noundef %i.p, i32 noundef %i.r, i1 noundef zeroext %i.t, i8 noundef signext %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x) #7
  store i32 17, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 16, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ai, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %i.e, align 8
  %i.al = call ptr @list_copy(ptr noundef %i.ak) #7 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i32 7, ptr %i.an, align 8
  %i.ao = load i32, ptr %i.n, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 -1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.as, ptr %i.at, align 4
  %i.au = load i16, ptr %i.a, align 2
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %i.av, ptr %i.aw, align 8
  %i.ax = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 81
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = getelementptr i8, ptr %i.al, i64 16
  %.val = load ptr, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %i.an, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i32 0, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @arrayconst_next_fn(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp slt i32 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = sext i32 %i.c to i64                     ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !range !6, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 %i.o, ptr %i.p, align 8
end_hunk_0
