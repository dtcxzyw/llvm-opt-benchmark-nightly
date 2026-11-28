Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/stem_ISO_8859_1_indonesian?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@indonesian_ISO_8859_1_stem:bb.a
  br i1 %.not.i142, label %bb.h, label %thread-pre-split160.thread

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %0, align 8
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  switch i8 %i.aq, label %thread-pre-split160.thread [
    i8 97, label %bb.i
    i8 117, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ar = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 3, ptr noundef null) #2
  %.not21.i = icmp eq i32 %i.ar, 0
  br i1 %.not21.i, label %.thread-pre-split160_crit_edge, label %bb.j

.thread-pre-split160_crit_edge:                   ; preds = %bb.i
  %.pr161.pre = load i32, ptr %i.a, align 4
  br label %thread-pre-split160

bb.j:                                             ; preds = %bb.i
  %i.as = load i32, ptr %i.b, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.as, ptr %i.at, align 4
  %i.au = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.k, label %r_remove_particle.exit

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.a, align 4
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.a, align 4
  br label %thread-pre-split160

thread-pre-split160.thread:                       ; preds = %bb.g, %bb.h
  %i.ay = load i32, ptr %i.p, align 8             ; 2 uses
  store i32 %i.ay, ptr %i.b, align 8
  br label %bb.l

thread-pre-split160:                              ; preds = %.thread-pre-split160_crit_edge, %bb.k
  %i.az = phi i32 [ %i.ax, %bb.k ], [ %.pr161.pre, %.thread-pre-split160_crit_edge ]
  %i.ba = load i32, ptr %i.p, align 8             ; 2 uses
  store i32 %i.ba, ptr %i.b, align 8
  %i.bb = icmp slt i32 %i.az, 3
  br i1 %i.bb, label %r_remove_particle.exit, label %bb.l

bb.l:                                             ; preds = %thread-pre-split160.thread, %thread-pre-split160
  %i.bc = phi i32 [ %i.ay, %thread-pre-split160.thread ], [ %i.ba, %thread-pre-split160 ] ; 4 uses
  %i.bd = tail call fastcc i32 @r_remove_first_order_prefix(ptr noundef nonnull %0) ; 5 uses
  %.not = icmp eq i32 %i.bd, 0
  %i.be = icmp slt i32 %i.bd, 0
  %.lobit196 = lshr i32 %i.bd, 31
  %.2116 = select i1 %i.be, i32 %i.bd, i32 %.1.i.ph209
  %cond2 = icmp sgt i32 %i.bd, 0
  %.6 = select i1 %.not, i32 7, i32 %.lobit196
  br i1 %cond2, label %bb.m, label %.thread174

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.b, align 8             ; 2 uses
  %i.bg = load i32, ptr %i.a, align 4
  %i.bh = icmp slt i32 %i.bg, 3
  br i1 %i.bh, label %.thread178, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.bf, ptr %i.p, align 8
  %i.bi = load i32, ptr %i.q, align 4
  store i32 %i.bi, ptr %i.b, align 8
  %i.bj = tail call fastcc i32 @r_remove_suffix(ptr noundef nonnull %0) ; 6 uses
  %i.bk = icmp slt i32 %i.bj, 0                   ; 2 uses
  %.lobit197 = lshr i32 %i.bj, 31                 ; 2 uses
  %.3117 = select i1 %i.bk, i32 %i.bj, i32 %.1.i.ph209
  %cond6 = icmp sgt i32 %i.bj, 0
  br i1 %cond6, label %.thread162, label %bb.o

.thread162:                                       ; preds = %bb.n
  store i32 %i.bf, ptr %i.b, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not192 = icmp eq i32 %i.bj, 0
  %.7 = select i1 %.not192, i32 8, i32 %.lobit197
  switch i32 %.7, label %bb.r [
    i32 0, label %bb.p
    i32 8, label %.thread178
  ]

bb.p:                                             ; preds = %.thread162, %bb.o
  %i.bl = load i32, ptr %i.a, align 4
  %i.bm = icmp slt i32 %i.bl, 3
  br i1 %i.bm, label %.thread178, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = tail call fastcc i32 @r_remove_second_order_prefix(ptr noundef nonnull %0) ; 4 uses
  %.lobit = lshr i32 %i.bn, 31
  %i.bo = icmp slt i32 %i.bn, 0
  %.5119 = select i1 %i.bo, i32 %i.bn, i32 %.3117
  %.not207 = icmp sgt i32 %i.bn, -1
  br i1 %.not207, label %.thread178, label %.thread174

bb.r:                                             ; preds = %bb.o
  br i1 %i.bk, label %.thread174, label %.thread178

.thread178:                                       ; preds = %bb.m, %bb.q, %bb.p, %bb.o, %bb.r
  store i32 %i.bc, ptr %i.b, align 8
  br label %r_remove_particle.exit

.thread174:                                       ; preds = %bb.q, %bb.r, %bb.l
  %.8122 = phi i32 [ %.2116, %bb.l ], [ %i.bj, %bb.r ], [ %.5119, %bb.q ] ; 2 uses
  %.11 = phi i32 [ %.6, %bb.l ], [ %.lobit197, %bb.r ], [ %.lobit, %bb.q ] ; 2 uses
  switch i32 %.11, label %.critedge [
    i32 0, label %r_remove_particle.exit
    i32 7, label %bb.s
  ]

bb.s:                                             ; preds = %.thread174
  store i32 %i.bc, ptr %i.b, align 8
  %i.bp = tail call fastcc i32 @r_remove_second_order_prefix(ptr noundef nonnull %0) ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %bb.t, label %r_remove_particle.exit

bb.t:                                             ; preds = %bb.s
  %i.br = load i32, ptr %i.a, align 4
  %i.bs = icmp slt i32 %i.br, 3
  br i1 %i.bs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.bc, ptr %i.p, align 8
  %i.bt = load i32, ptr %i.q, align 4
  store i32 %i.bt, ptr %i.b, align 8
  %i.bu = tail call fastcc i32 @r_remove_suffix(ptr noundef nonnull %0) ; 3 uses
  %.lobit194 = lshr i32 %i.bu, 31                 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  %.10124 = select i1 %i.bv, i32 %i.bu, i32 %.8122
  %i.bw = add nsw i32 %.lobit194, -1
  %switch210 = icmp ult i32 %i.bw, 8
  br i1 %switch210, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 %i.bc, ptr %i.b, align 8
  br label %r_remove_particle.exit

.critedge:                                        ; preds = %bb.u, %.thread174
  %.13127 = phi i32 [ %.8122, %.thread174 ], [ %.10124, %bb.u ]
  %.16 = phi i32 [ %.11, %.thread174 ], [ %.lobit194, %bb.u ]
  %i.bx = icmp eq i32 %.16, 1
  %spec.select = select i1 %i.bx, i32 %.13127, i32 1
  br label %r_remove_particle.exit

r_remove_particle.exit:                           ; preds = %bb.j, %.critedge, %.thread174, %.thread178, %bb.v, %bb.s, %bb.e, %thread-pre-split160, %thread-pre-split, %._crit_edge
  %.14128 = phi i32 [ 1, %.thread178 ], [ 0, %._crit_edge ], [ 0, %thread-pre-split ], [ %i.ac, %bb.e ], [ 0, %thread-pre-split160 ], [ %i.bp, %bb.s ], [ %spec.select, %.critedge ], [ 1, %.thread174 ], [ 1, %bb.v ], [ %i.au, %bb.j ]
  ret i32 %.14128
}

declare i32 @out_grouping(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_remove_first_order_prefix(ptr noundef initializes((20, 24)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.b, ptr %i.c, align 4
  %i.d = add i32 %i.b, 1                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not = icmp slt i32 %i.d, %i.f
  br i1 %.not, label %bb.b, label %.thread168

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %.thread168 [
    i8 105, label %bb.c
    i8 101, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = tail call i32 @find_among(ptr noundef nonnull %0, ptr noundef nonnull @a_3, i32 noundef 10, ptr noundef null) #2 ; 2 uses
  %.not157 = icmp eq i32 %i.k, 0
  br i1 %.not157, label %.thread168, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.a, align 8              ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 %i.l, ptr %i.m, align 8
  switch i32 %i.k, label %.thread168 [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.k
    i32 4, label %bb.l
    i32 5, label %bb.q
    i32 6, label %bb.t
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %1, label %.thread168

1:                                                ; preds = %bb.e
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 4
  br label %.thread168

bb.f:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.e, align 4
  %i.q = icmp eq i32 %i.l, %i.p
  br i1 %i.q, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %0, align 8
  %i.s = sext i32 %i.l to i64
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %.not162 = icmp eq i8 %i.u, 121
  br i1 %.not162, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = add i32 %i.l, 1                          ; 3 uses
  store i32 %i.v, ptr %i.a, align 8
  %i.w = tail call i32 @in_grouping(ptr noundef nonnull %0, ptr noundef nonnull @g_vowel, i32 noundef 97, i32 noundef 117, i32 noundef 0) #2
  %.not163 = icmp eq i32 %i.w, 0
  br i1 %.not163, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.v, ptr %i.a, align 8
  store i32 %i.v, ptr %i.m, align 8
  %i.x = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_0) #2 ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %6, label %.thread168

6:                                                ; preds = %bb.i
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 4
  br label %.thread168

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.g
  store i32 %i.l, ptr %i.a, align 8
  %i.z = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %11, label %.thread168

11:                                               ; preds = %bb.j
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr %13, align 4
  br label %.thread168

bb.k:                                             ; preds = %bb.d
  %i.ab = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %16, label %.thread168

16:                                               ; preds = %bb.k
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 3, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4
  br label %.thread168

bb.l:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.e, align 4
  %i.ae = icmp eq i32 %i.l, %i.ad
  br i1 %i.ae, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %0, align 8
  %i.ag = sext i32 %i.l to i64
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %.not160 = icmp eq i8 %i.ai, 121
  br i1 %.not160, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aj = add i32 %i.l, 1                         ; 3 uses
  store i32 %i.aj, ptr %i.a, align 8
  %i.ak = tail call i32 @in_grouping(ptr noundef nonnull %0, ptr noundef nonnull @g_vowel, i32 noundef 97, i32 noundef 117, i32 noundef 0) #2
  %.not161 = icmp eq i32 %i.ak, 0
  br i1 %.not161, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.aj, ptr %i.a, align 8
  store i32 %i.aj, ptr %i.m, align 8
  %i.al = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_1) #2 ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %21, label %.thread168

21:                                               ; preds = %bb.o
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  store i32 %25, ptr %23, align 4
  br label %.thread168

bb.p:                                             ; preds = %bb.n, %bb.l, %bb.m
  store i32 %i.l, ptr %i.a, align 8
  %i.an = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %26, label %.thread168

26:                                               ; preds = %bb.p
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 3, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr %28, align 4
  br label %.thread168

bb.q:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr %i.aq, align 4
  %i.at = tail call i32 @in_grouping(ptr noundef nonnull %0, ptr noundef nonnull @g_vowel, i32 noundef 97, i32 noundef 117, i32 noundef 0) #2
  %.not159 = icmp eq i32 %i.at, 0
  store i32 %i.l, ptr %i.a, align 8
  br i1 %.not159, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_2) #2 ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.thread186, label %.thread168

bb.s:                                             ; preds = %bb.q
  %i.aw = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %.thread186, label %.thread168

.thread186:                                       ; preds = %bb.r, %bb.s
  %.11142.ph = phi i32 [ %i.au, %bb.r ], [ %i.aw, %bb.s ]
  br label %.thread168

bb.t:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 3, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr %i.az, align 4
  %i.bc = tail call i32 @in_grouping(ptr noundef nonnull %0, ptr noundef nonnull @g_vowel, i32 noundef 97, i32 noundef 117, i32 noundef 0) #2
  %.not158 = icmp eq i32 %i.bc, 0
  store i32 %i.l, ptr %i.a, align 8
  br i1 %.not158, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bd = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_3) #2 ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %.thread199, label %.thread168

bb.v:                                             ; preds = %bb.t
  %i.bf = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.thread199, label %.thread168

.thread199:                                       ; preds = %bb.u, %bb.v
  %.15146.ph = phi i32 [ %i.bd, %bb.u ], [ %i.bf, %bb.v ]
  br label %.thread168

.thread168:                                       ; preds = %bb.o, %bb.p, %bb.i, %bb.j, %bb.d, %1, %16, %11, %6, %26, %21, %bb.s, %bb.r, %bb.v, %bb.u, %.thread199, %.thread186, %bb.c, %bb.a, %bb.b, %bb.e, %bb.k
  %.16147 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.n, %bb.e ], [ 1, %bb.d ], [ %i.ab, %bb.k ], [ %i.z, %bb.j ], [ %.11142.ph, %.thread186 ], [ %.15146.ph, %.thread199 ], [ 0, %bb.b ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %21 ], [ 1, %26 ], [ 1, %6 ], [ 1, %11 ], [ 1, %16 ], [ 1, %1 ], [ %i.x, %bb.i ], [ %i.al, %bb.o ], [ %i.an, %bb.p ]
  ret i32 %.16147
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_remove_suffix(ptr noundef initializes((24, 28)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp sgt i32 %i.b, %i.e
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %bb.n [
    i8 105, label %bb.c
    i8 110, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_2, i32 noundef 2, ptr noundef null) #2 ; 2 uses
  %.not59 = icmp eq i32 %i.k, 0
  br i1 %.not59, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.a, align 8              ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 %i.l, ptr %i.m, align 4
  switch i32 %i.k, label %.thread [
    i32 1, label %bb.e
    i32 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = and i32 %i.o, -2
  %switch = icmp eq i32 %i.p, 2
  br i1 %switch, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.d, align 8
  %.not62 = icmp sgt i32 %i.l, %i.q
  br i1 %.not62, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %0, align 8
  %i.s = add nsw i32 %i.l, -1                     ; 3 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %.not63 = icmp eq i8 %i.v, 107
  br i1 %.not63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.s, ptr %i.a, align 8
  store i32 %i.s, ptr %i.m, align 4
  br label %.thread

bb.i:                                             ; preds = %bb.f, %bb.g
  %i.w = icmp eq i32 %i.o, 1
  br i1 %i.w, label %bb.n, label %.thread

bb.j:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp sgt i32 %i.y, 2
  br i1 %i.z, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load i32, ptr %i.d, align 8
  %.not60 = icmp sgt i32 %i.l, %i.aa
  br i1 %.not60, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = add nsw i32 %i.l, -1                    ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %.not61 = icmp eq i8 %i.af, 115
  br i1 %.not61, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.l
  store i32 %i.ac, ptr %i.a, align 8
  br label %bb.n

.thread:                                          ; preds = %bb.e, %bb.h, %bb.i, %bb.l, %bb.k, %bb.d
  %i.ag = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr %i.ai, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %.critedge, %bb.j, %bb.c, %bb.a, %bb.b, %.thread, %bb.m
  %.4 = phi i32 [ 0, %bb.a ], [ 1, %bb.m ], [ %i.ag, %.thread ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %.critedge ], [ 0, %bb.b ], [ 0, %bb.i ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_remove_second_order_prefix(ptr noundef initializes((20, 24)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.b, ptr %i.c, align 4
  %i.d = add i32 %i.b, 1                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not = icmp slt i32 %i.d, %i.f
  br i1 %.not, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %.not73 = icmp eq i8 %i.j, 101
  br i1 %.not73, label %bb.c, label %select.unfold

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @find_among(ptr noundef nonnull %0, ptr noundef nonnull @a_4, i32 noundef 2, ptr noundef null) #2 ; 2 uses
  switch i32 %i.k, label %bb.m [
    i32 0, label %select.unfold
    i32 1, label %bb.d
    i32 2, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.a, align 8              ; 7 uses
  %i.m = load i32, ptr %i.e, align 4
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %.sink.split.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8
  %i.p = sext i32 %i.l to i64
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  switch i8 %i.r, label %.sink.split.sink.split [
    i8 114, label %bb.f
    i8 108, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = add i32 %i.l, 1
  br label %.sink.split.sink.split

bb.g:                                             ; preds = %bb.e
  %i.t = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.t, ptr %i.u, align 8
  %i.v = tail call i32 @eq_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_4) #2
  %.not82 = icmp eq i32 %i.v, 0
  br i1 %.not82, label %.sink.split.sink.split, label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.a, align 8              ; 6 uses
  %i.x = load i32, ptr %i.e, align 4
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.thread84, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %0, align 8
  %i.aa = sext i32 %i.w to i64
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  switch i8 %i.ac, label %.thread84 [
    i8 114, label %bb.j
    i8 108, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ad = add i32 %i.w, 1
  br label %.sink.split.sink.split

bb.k:                                             ; preds = %bb.i
  %i.ae = add i32 %i.w, 1                         ; 2 uses
  store i32 %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ae, ptr %i.af, align 8
  %i.ag = tail call i32 @eq_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_5) #2
  %.not77 = icmp eq i32 %i.ag, 0
  br i1 %.not77, label %.thread84, label %.sink.split

.thread84:                                        ; preds = %bb.i, %bb.h, %bb.k
  store i32 %i.w, ptr %i.a, align 8
end_hunk_0
