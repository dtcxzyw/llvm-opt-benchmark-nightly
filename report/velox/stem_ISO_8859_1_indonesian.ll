Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/stem_ISO_8859_1_indonesian?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@indonesian_ISO_8859_1_stem:bb.a

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.az = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 3) #4
  %.not21.i = icmp eq i32 %i.az, 0
  br i1 %.not21.i, label %._crit_edge197, label %bb.k

._crit_edge197:                                   ; preds = %bb.j
  %.pre198 = load ptr, ptr %i.a, align 8, !tbaa !54
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ba = load i32, ptr %i.d, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !62
  %i.bc = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.l, label %r_remove_particle.exit

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !55
  %i.bh = add nsw i32 %i.bg, -1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge197, %bb.i, %bb.l, %bb.h
  %i.bi = phi ptr [ %.pre198, %._crit_edge197 ], [ %i.ao, %bb.i ], [ %i.be, %bb.l ], [ %i.ao, %bb.h ]
  %i.bj = load i32, ptr %i.v, align 8, !tbaa !57  ; 6 uses
  store i32 %i.bj, ptr %i.d, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !55
  %i.bm = icmp sgt i32 %i.bl, 2
  br i1 %i.bm, label %bb.n, label %r_remove_particle.exit

bb.n:                                             ; preds = %bb.m
  %i.bn = tail call fastcc i32 @r_remove_first_order_prefix(ptr noundef nonnull %0) ; 5 uses
  %.not = icmp eq i32 %i.bn, 0
  %i.bo = icmp slt i32 %i.bn, 0
  %.lobit194 = lshr i32 %i.bn, 31
  %.2116 = select i1 %i.bo, i32 %i.bn, i32 %.1.i.ph
  %cond2 = icmp sgt i32 %i.bn, 0
  %.6 = select i1 %.not, i32 5, i32 %.lobit194
  br i1 %cond2, label %bb.o, label %.thread172

bb.o:                                             ; preds = %bb.n
  %i.bp = load i32, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !55
  %i.bt = icmp sgt i32 %i.bs, 2
  br i1 %i.bt, label %bb.p, label %.thread176

bb.p:                                             ; preds = %bb.o
  store i32 %i.bp, ptr %i.v, align 8, !tbaa !57
  %i.bu = load i32, ptr %i.w, align 4, !tbaa !58
  store i32 %i.bu, ptr %i.d, align 8, !tbaa !56
  %i.bv = tail call fastcc i32 @r_remove_suffix(ptr noundef nonnull %0) ; 6 uses
  %i.bw = icmp slt i32 %i.bv, 0                   ; 2 uses
  %.lobit195 = lshr i32 %i.bv, 31                 ; 2 uses
  %.3117 = select i1 %i.bw, i32 %i.bv, i32 %.1.i.ph
  %cond7 = icmp sgt i32 %i.bv, 0
  br i1 %cond7, label %.thread160, label %bb.q

.thread160:                                       ; preds = %bb.p
  store i32 %i.bp, ptr %i.d, align 8, !tbaa !56
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not190 = icmp eq i32 %i.bv, 0
  %.7 = select i1 %.not190, i32 6, i32 %.lobit195
  switch i32 %.7, label %bb.t [
    i32 0, label %bb.r
    i32 6, label %.thread176
  ]

bb.r:                                             ; preds = %.thread160, %bb.q
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !55
  %i.ca = icmp sgt i32 %i.bz, 2
  br i1 %i.ca, label %bb.s, label %.thread176

bb.s:                                             ; preds = %bb.r
  %i.cb = tail call fastcc i32 @r_remove_second_order_prefix(ptr noundef nonnull %0) ; 4 uses
  %.lobit = lshr i32 %i.cb, 31
  %i.cc = icmp slt i32 %i.cb, 0
  %.5119 = select i1 %i.cc, i32 %i.cb, i32 %.3117
  %.not204 = icmp sgt i32 %i.cb, -1
  br i1 %.not204, label %.thread176, label %.thread172

bb.t:                                             ; preds = %bb.q
  br i1 %i.bw, label %.thread172, label %.thread176

.thread176:                                       ; preds = %bb.o, %bb.s, %bb.r, %bb.q, %bb.t
  store i32 %i.bj, ptr %i.d, align 8, !tbaa !56
  br label %r_remove_particle.exit

.thread172:                                       ; preds = %bb.s, %bb.t, %bb.n
  %.8122 = phi i32 [ %.2116, %bb.n ], [ %i.bv, %bb.t ], [ %.5119, %bb.s ] ; 2 uses
  %.11 = phi i32 [ %.6, %bb.n ], [ %.lobit195, %bb.t ], [ %.lobit, %bb.s ] ; 2 uses
  switch i32 %.11, label %.critedge [
    i32 0, label %r_remove_particle.exit
    i32 5, label %bb.u
  ]

bb.u:                                             ; preds = %.thread172
  store i32 %i.bj, ptr %i.d, align 8, !tbaa !56
  %i.cd = tail call fastcc i32 @r_remove_second_order_prefix(ptr noundef nonnull %0) ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, -1
  br i1 %i.ce, label %bb.v, label %r_remove_particle.exit

bb.v:                                             ; preds = %bb.u
  store i32 %i.bj, ptr %i.d, align 8, !tbaa !56
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !55
  %i.ci = icmp sgt i32 %i.ch, 2
  br i1 %i.ci, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.bj, ptr %i.v, align 8, !tbaa !57
  %i.cj = load i32, ptr %i.w, align 4, !tbaa !58
  store i32 %i.cj, ptr %i.d, align 8, !tbaa !56
  %i.ck = tail call fastcc i32 @r_remove_suffix(ptr noundef nonnull %0) ; 3 uses
  %.lobit192 = lshr i32 %i.ck, 31                 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  %.10124 = select i1 %i.cl, i32 %i.ck, i32 %.8122
  %i.cm = add nsw i32 %.lobit192, -1
  %switch205 = icmp ult i32 %i.cm, 7
  br i1 %switch205, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.bj, ptr %i.d, align 8, !tbaa !56
  br label %r_remove_particle.exit

.critedge:                                        ; preds = %bb.w, %.thread172
  %.13127 = phi i32 [ %.8122, %.thread172 ], [ %.10124, %bb.w ]
  %.16 = phi i32 [ %.11, %.thread172 ], [ %.lobit192, %bb.w ]
  %i.cn = icmp eq i32 %.16, 1
  %spec.select = select i1 %i.cn, i32 %.13127, i32 1
  br label %r_remove_particle.exit

r_remove_particle.exit:                           ; preds = %bb.k, %.critedge, %.thread172, %.thread176, %bb.x, %bb.u, %bb.e, %bb.m, %bb.g, %._crit_edge
  %.14128 = phi i32 [ %i.ai, %bb.e ], [ 0, %bb.m ], [ 0, %bb.g ], [ 1, %.thread176 ], [ 0, %._crit_edge ], [ %i.cd, %bb.u ], [ %spec.select, %.critedge ], [ 1, %.thread172 ], [ 1, %bb.x ], [ %i.bc, %bb.k ]
  ret i32 %.14128
}

declare i32 @out_grouping(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_remove_first_order_prefix(ptr noundef initializes((20, 24)) %0) unnamed_addr #0 !guid !64 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.b, ptr %i.c, align 4, !tbaa !62
  %i.d = add nsw i32 %i.b, 1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !58
  %.not = icmp slt i32 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !60
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !61
  switch i8 %i.j, label %bb.s [
    i8 105, label %bb.c
    i8 101, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = tail call i32 @find_among(ptr noundef nonnull %0, ptr noundef nonnull @a_3, i32 noundef 12) #4 ; 2 uses
  %.not104 = icmp eq i32 %i.k, 0
  br i1 %.not104, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.a, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.l, ptr %i.m, align 8, !tbaa !59
  switch i32 %i.k, label %bb.s [
    i32 1, label %bb.e
    i32 2, label %bb.g
    i32 3, label %bb.i
    i32 4, label %bb.k
    i32 5, label %bb.m
    i32 6, label %bb.p
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  store i32 1, ptr %i.q, align 4, !tbaa !55
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.r = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54   ; 2 uses
  store i32 3, ptr %i.u, align 4, !tbaa !55
  br label %.sink.split

bb.i:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  store i32 1, ptr %i.w, align 4, !tbaa !55
  %i.x = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_1) #4 ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !54
  br label %.sink.split

bb.k:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54
  store i32 3, ptr %i.ab, align 4, !tbaa !55
  %i.ac = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_2) #4 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !54
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !54 ; 2 uses
  store i32 1, ptr %i.ag, align 4, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !55
  %i.aj = add nsw i32 %i.ai, -1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !55
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !56
  %i.al = tail call i32 @in_grouping(ptr noundef nonnull %0, ptr noundef nonnull @g_vowel, i32 noundef 97, i32 noundef 117, i32 noundef 0) #4
  %.not106 = icmp eq i32 %i.al, 0
  store i32 %i.ak, ptr %i.a, align 8, !tbaa !56
  br i1 %.not106, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_3) #4 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %.thread117, label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.ao = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %.thread117, label %bb.s

.thread117:                                       ; preds = %bb.n, %bb.o
  %.792.ph = phi i32 [ %i.am, %bb.n ], [ %i.ao, %bb.o ]
  br label %bb.s

bb.p:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 2 uses
  store i32 3, ptr %i.ar, align 4, !tbaa !55
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !55
  %i.au = add nsw i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !55
  %i.av = load i32, ptr %i.a, align 8, !tbaa !56
  %i.aw = tail call i32 @in_grouping(ptr noundef nonnull %0, ptr noundef nonnull @g_vowel, i32 noundef 97, i32 noundef 117, i32 noundef 0) #4
  %.not105 = icmp eq i32 %i.aw, 0
  store i32 %i.av, ptr %i.a, align 8, !tbaa !56
  br i1 %.not105, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_4) #4 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.thread130, label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.az = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.thread130, label %bb.s

.thread130:                                       ; preds = %bb.q, %bb.r
  %.1196.ph = phi i32 [ %i.ax, %bb.q ], [ %i.az, %bb.r ]
  br label %bb.s

.sink.split:                                      ; preds = %bb.l, %bb.j, %bb.h, %bb.f
  %.sink144 = phi ptr [ %i.q, %bb.f ], [ %i.u, %bb.h ], [ %i.z, %bb.j ], [ %i.ae, %bb.l ]
  %1 = getelementptr inbounds nuw i8, ptr %.sink144, i64 4 ; 2 uses
  %2 = load i32, ptr %1, align 4, !tbaa !55
  %3 = add nsw i32 %2, -1
  store i32 %3, ptr %1, align 4, !tbaa !55
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.d, %bb.o, %bb.n, %bb.r, %bb.q, %.thread130, %.thread117, %bb.c, %bb.a, %bb.b, %bb.e, %bb.g, %bb.i, %bb.k
  %.12 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.n, %bb.e ], [ %i.r, %bb.g ], [ %i.x, %bb.i ], [ %i.ac, %bb.k ], [ %.792.ph, %.thread117 ], [ %.1196.ph, %.thread130 ], [ 0, %bb.b ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.d ], [ 1, %.sink.split ]
  ret i32 %.12
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_remove_suffix(ptr noundef initializes((24, 28)) %0) unnamed_addr #0 !guid !65 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.c, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57
  %.not = icmp sgt i32 %i.b, %i.e
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !60
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !61
  switch i8 %i.j, label %bb.f [
    i8 105, label %bb.c
    i8 110, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_2, i32 noundef 3) #4
  %.not21 = icmp eq i32 %i.k, 0
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.a, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.l, ptr %i.m, align 4, !tbaa !62
  %i.n = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !55
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %bb.e
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ %i.n, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_remove_second_order_prefix(ptr noundef initializes((20, 24)) %0) unnamed_addr #0 !guid !66 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.b, ptr %i.c, align 4, !tbaa !62
  %i.d = add nsw i32 %i.b, 1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !58
  %.not = icmp slt i32 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !60
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !61
  %.not43 = icmp eq i8 %i.j, 101
  br i1 %.not43, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @find_among(ptr noundef nonnull %0, ptr noundef nonnull @a_4, i32 noundef 6) #4 ; 2 uses
  %.not44 = icmp eq i32 %i.k, 0
  br i1 %.not44, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.a, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.l, ptr %i.m, align 8, !tbaa !59
  switch i32 %i.k, label %bb.m [
    i32 1, label %bb.e
    i32 2, label %bb.g
    i32 3, label %bb.i
    i32 4, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  store i32 2, ptr %i.q, align 4, !tbaa !55
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.r = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_5) #4 ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54
  br label %.sink.split

bb.i:                                             ; preds = %bb.d
  %i.v = tail call i32 @slice_del(ptr noundef nonnull %0) #4 ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54   ; 2 uses
  store i32 4, ptr %i.y, align 4, !tbaa !55
  br label %.sink.split

bb.k:                                             ; preds = %bb.d
  %i.z = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_6) #4 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !54 ; 2 uses
  store i32 4, ptr %i.ac, align 4, !tbaa !55
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.j, %bb.h, %bb.f
  %.sink52 = phi ptr [ %i.q, %bb.f ], [ %i.u, %bb.h ], [ %i.y, %bb.j ], [ %i.ac, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink52, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !55
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.d, %bb.c, %bb.a, %bb.b, %bb.e, %bb.g, %bb.i, %bb.k
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.n, %bb.e ], [ %i.r, %bb.g ], [ %i.v, %bb.i ], [ %i.z, %bb.k ], [ 0, %bb.b ], [ 1, %bb.d ], [ 1, %.sink.split ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define ptr @indonesian_ISO_8859_1_create_env() local_unnamed_addr #0 !guid !67 {
bb.a:
  %i.a = tail call ptr @SN_create_env(i32 noundef 0, i32 noundef 2) #4
  ret ptr %i.a
}

declare ptr @SN_create_env(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @indonesian_ISO_8859_1_close_env(ptr noundef %0) local_unnamed_addr #0 !guid !68 {
bb.a:
  tail call void @SN_close_env(ptr noundef %0, i32 noundef 0) #4
  ret void
}

declare void @SN_close_env(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @find_among_b(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @slice_del(ptr noundef) local_unnamed_addr #1

declare i32 @find_among(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @slice_from_s(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @in_grouping(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @r_VOWEL(ptr noundef %0) #0 !guid !69 {
bb.a:
  %i.a = tail call i32 @in_grouping(ptr noundef %0, ptr noundef nonnull @g_vowel, i32 noundef 97, i32 noundef 117, i32 noundef 0) #4
  %.not = icmp eq i32 %i.a, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @r_SUFFIX_I_OK(ptr nofree noundef captures(none) %0) #2 !guid !70 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load i32, ptr %i.b, align 4, !tbaa !55
  %i.d = icmp slt i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57
  %.not = icmp sgt i32 %i.f, %i.h
  br i1 %.not, label %bb.c, label %bb.e

end_hunk_0
