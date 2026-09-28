Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_ndistinct?download=true
inline.NumInlined: 22
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pg_ndistinct_in:bb.a
bb.x:                                             ; preds = %bb.w
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = icmp eq i32 %i.fj, 468
  br i1 %i.fk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fm = load i8, ptr %i.fl, align 4, !range !5, !noundef !6
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y
  %i.fo = call zeroext i1 @errsave_start(ptr noundef %i.fi, ptr noundef null) #7
  br i1 %i.fo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fp = call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.fq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.fr = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.1) #7 ; 0 uses
  call void @errsave_finish(ptr noundef %i.fi, ptr noundef nonnull @.str.2, i32 noundef 780, ptr noundef nonnull @__func__.pg_ndistinct_in) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.fs, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.v
  %.015 = phi i64 [ %i.fh, %bb.v ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i64 %.015
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 24) i32 @ndistinct_object_start(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.m [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.a, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call zeroext i1 @errsave_start(ptr noundef %i.d, ptr noundef null) #7
  br i1 %i.e, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.g) #7 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.10) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.d, ptr noundef nonnull @.str.2, i32 noundef 76, ptr noundef nonnull @__func__.ndistinct_object_start) #7
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = tail call zeroext i1 @errsave_start(ptr noundef %i.k, ptr noundef null) #7
  br i1 %i.l, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.n = load ptr, ptr %0, align 8
  %i.o = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.n) #7 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.11) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.k, ptr noundef nonnull @.str.2, i32 noundef 84, ptr noundef nonnull @__func__.ndistinct_object_start) #7
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = tail call zeroext i1 @errsave_start(ptr noundef %i.r, ptr noundef null) #7
  br i1 %i.s, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.u = load ptr, ptr %0, align 8
  %i.v = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.u) #7 ; 0 uses
  %i.w = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.r, ptr noundef nonnull @.str.2, i32 noundef 93, ptr noundef nonnull @__func__.ndistinct_object_start) #7
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = tail call zeroext i1 @errsave_start(ptr noundef %i.y, ptr noundef null) #7
  br i1 %i.z, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.ab) #7 ; 0 uses
  %i.ad = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.14) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.y, ptr noundef nonnull @.str.2, i32 noundef 101, ptr noundef nonnull @__func__.ndistinct_object_start) #7
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = tail call zeroext i1 @errsave_start(ptr noundef %i.af, ptr noundef null) #7
  br i1 %i.ag, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.ai) #7 ; 0 uses
  %i.ak = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.af, ptr noundef nonnull @.str.2, i32 noundef 110, ptr noundef nonnull @__func__.ndistinct_object_start) #7
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.al = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.am = load i32, ptr %i.a, align 8
  %i.an = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9, i32 noundef %i.am) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 116, ptr noundef nonnull @__func__.ndistinct_object_start) #7
  unreachable

bb.n:                                             ; preds = %bb.d, %bb.c, %bb.f, %bb.e, %bb.h, %bb.g, %bb.j, %bb.i, %bb.l, %bb.k, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 23, %bb.k ], [ 23, %bb.l ], [ 23, %bb.i ], [ 23, %bb.j ], [ 23, %bb.g ], [ 23, %bb.h ], [ 23, %bb.e ], [ 23, %bb.f ], [ 23, %bb.c ], [ 23, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 24) i32 @ndistinct_object_end(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.d = load i32, ptr %i.a, align 8
  %i.e = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.9, i32 noundef %i.d) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 140, ptr noundef nonnull @__func__.ndistinct_object_end) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !5, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = tail call zeroext i1 @errsave_start(ptr noundef %i.j, ptr noundef null) #7
  br i1 %i.k, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.m = load ptr, ptr %0, align 8
  %i.n = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.m) #7 ; 0 uses
  %i.o = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.13) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.j, ptr noundef nonnull @.str.2, i32 noundef 148, ptr noundef nonnull @__func__.ndistinct_object_end) #7
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !range !5, !noundef !6
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = tail call zeroext i1 @errsave_start(ptr noundef %i.t, ptr noundef null) #7
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.w = load ptr, ptr %0, align 8
  %i.x = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.w) #7 ; 0 uses
  %i.y = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.t, ptr noundef nonnull @.str.2, i32 noundef 158, ptr noundef nonnull @__func__.ndistinct_object_end) #7
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %list_length.exit.thread, label %list_length.exit

list_length.exit:                                 ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4            ; 10 uses
  %i.ad = add i32 %i.ac, -9
  %or.cond = icmp ult i32 %i.ad, -7
  br i1 %or.cond, label %list_length.exit.thread, label %.lr.ph.preheader

list_length.exit.thread:                          ; preds = %bb.i, %list_length.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = tail call zeroext i1 @errsave_start(ptr noundef %i.af, ptr noundef null) #7
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %list_length.exit.thread
  %i.ah = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.ai) #7 ; 0 uses
  %i.ak = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.13, i32 noundef 2, i32 noundef 8) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.af, ptr noundef nonnull @.str.2, i32 noundef 173, ptr noundef nonnull @__func__.ndistinct_object_end) #7
  br label %bb.k

.lr.ph.preheader:                                 ; preds = %list_length.exit
  %i.al = tail call ptr @palloc(i64 noundef 24) #7 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.ac, ptr %i.am, align 8
  %i.an = shl nuw nsw i32 %i.ac, 1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = tail call ptr @palloc0(i64 noundef %i.ao) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 9 uses
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = sitofp i32 %i.as to double
  store double %i.at, ptr %i.al, align 8
  %i.au = load ptr, ptr %i.z, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %.val.a = load ptr, ptr %i.av, align 8
  %i.aw = load i32, ptr %.val.a, align 8
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = load ptr, ptr %i.aq, align 8
  store i16 %i.ax, ptr %i.ay, align 2
  %exitcond.not = icmp eq i32 %i.ac, 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

._crit_edge:                                      ; preds = %.lr.ph.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call ptr @lappend(ptr noundef %i.ba, ptr noundef nonnull %i.al) #7
  store ptr %i.bb, ptr %i.az, align 8
  %i.bc = load ptr, ptr %i.z, align 8
  tail call void @list_free(ptr noundef %i.bc) #7
  store ptr null, ptr %i.z, align 8
  store i32 0, ptr %i.ar, align 8
  store i8 0, ptr %i.f, align 8
  store i8 0, ptr %i.p, align 1
  store i32 1, ptr %i.a, align 8
  br label %bb.k

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %1 = load ptr, ptr %i.z, align 8
  %2 = getelementptr i8, ptr %1, i64 16
  %.val.1 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %.val.1, i64 8
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  %6 = load ptr, ptr %i.aq, align 8
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %5, ptr %7, align 2
  %exitcond.not.1 = icmp eq i32 %i.ac, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.bd = load ptr, ptr %i.z, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %.val.2 = load ptr, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.2, i64 16
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = trunc i32 %i.bg to i16
  %i.bi = load ptr, ptr %i.aq, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i16 %i.bh, ptr %i.bj, align 2
  %exitcond.not.2 = icmp eq i32 %i.ac, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.bk = load ptr, ptr %i.z, align 8
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %.val.3 = load ptr, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.3, i64 24
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = trunc i32 %i.bn to i16
  %i.bp = load ptr, ptr %i.aq, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  store i16 %i.bo, ptr %i.bq, align 2
  %exitcond.not.3 = icmp eq i32 %i.ac, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.br = load ptr, ptr %i.z, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %.val.4 = load ptr, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.4, i64 32
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = trunc i32 %i.bu to i16
  %i.bw = load ptr, ptr %i.aq, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i16 %i.bv, ptr %i.bx, align 2
  %exitcond.not.4 = icmp eq i32 %i.ac, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.by = load ptr, ptr %i.z, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %.val.5 = load ptr, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.5, i64 40
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = trunc i32 %i.cb to i16
  %i.cd = load ptr, ptr %i.aq, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 10
  store i16 %i.cc, ptr %i.ce, align 2
  %exitcond.not.5 = icmp eq i32 %i.ac, 6
  br i1 %exitcond.not.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.cf = load ptr, ptr %i.z, align 8
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  %.val.6 = load ptr, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.6, i64 48
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = load ptr, ptr %i.aq, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i16 %i.cj, ptr %i.cl, align 2
  %exitcond.not.6 = icmp eq i32 %i.ac, 7
  br i1 %exitcond.not.6, label %._crit_edge, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.cm = load ptr, ptr %i.z, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  %.val.7 = load ptr, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %.val.7, i64 56
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = trunc i32 %i.cp to i16
  %i.cr = load ptr, ptr %i.aq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 14
  store i16 %i.cq, ptr %i.cs, align 2
  br label %._crit_edge

bb.k:                                             ; preds = %list_length.exit.thread, %bb.j, %bb.g, %bb.h, %bb.d, %bb.e, %._crit_edge
  %.043 = phi i32 [ 23, %bb.g ], [ 0, %._crit_edge ], [ 23, %bb.d ], [ 23, %bb.e ], [ 23, %bb.h ], [ 23, %bb.j ], [ 23, %list_length.exit.thread ]
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 24) i32 @ndistinct_array_start(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.c [
    i32 3, label %bb.e
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call zeroext i1 @errsave_start(ptr noundef %i.d, ptr noundef null) #7
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.g) #7 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.21) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.d, ptr noundef nonnull @.str.2, i32 noundef 226, ptr noundef nonnull @__func__.ndistinct_array_start) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i32 [ 1, %bb.b ], [ 4, %bb.a ]
  store i32 %storemerge, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 23, %bb.d ], [ 23, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 24) i32 @ndistinct_array_end(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.h [
    i32 4, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %list_length.exit.thread, label %list_length.exit

list_length.exit:                                 ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %list_length.exit.thread

bb.c:                                             ; preds = %list_length.exit
  store i32 2, ptr %i.a, align 8
  br label %bb.i

list_length.exit.thread:                          ; preds = %bb.b, %list_length.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = tail call zeroext i1 @errsave_start(ptr noundef %i.i, ptr noundef null) #7
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %list_length.exit.thread
  %i.k = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.l = load ptr, ptr %0, align 8
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.l) #7 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.13) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.i, ptr noundef nonnull @.str.2, i32 noundef 261, ptr noundef nonnull @__func__.ndistinct_array_end) #7
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i15 = icmp eq ptr %i.p, null
  br i1 %.not.i15, label %list_length.exit16.thread, label %list_length.exit16

list_length.exit16:                               ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %list_length.exit16.thread

bb.f:                                             ; preds = %list_length.exit16
  store i32 6, ptr %i.a, align 8
  br label %bb.i

list_length.exit16.thread:                        ; preds = %bb.e, %list_length.exit16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = tail call zeroext i1 @errsave_start(ptr noundef %i.u, ptr noundef null) #7
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %list_length.exit16.thread
  %i.w = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.x = load ptr, ptr %0, align 8
  %i.y = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.x) #7 ; 0 uses
  %i.z = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.23) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.u, ptr noundef nonnull @.str.2, i32 noundef 275, ptr noundef nonnull @__func__.ndistinct_array_end) #7
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.aa = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ab = load i32, ptr %i.a, align 8
  %i.ac = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9, i32 noundef %i.ab) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 286, ptr noundef nonnull @__func__.ndistinct_array_end) #7
  unreachable

bb.i:                                             ; preds = %bb.d, %list_length.exit.thread, %bb.g, %list_length.exit16.thread, %bb.f, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ 23, %list_length.exit16.thread ], [ 23, %bb.g ], [ 23, %list_length.exit.thread ], [ 23, %bb.d ]
  ret i32 %.0
}

end_hunk_0
