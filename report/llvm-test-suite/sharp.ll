inline.NumInlined: 3
begin_hunk_0_@cb_recur_sharp:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !23
  %i.o = load i32, ptr @cube, align 8, !tbaa !8
  %i.p = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.n, i32 noundef %i.o) #5 ; 6 uses
  %i.q = tail call i32 (ptr, ptr, ...) @cdist0(ptr noundef %0, ptr noundef %i.g) #5
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.i, ptr noundef %0, ptr noundef %i.g) #5 ; 0 uses
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !23
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %sharp.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.z = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.k, ptr noundef %i.i, ptr noundef %i.y) #5
  %i.aa = tail call i32 (ptr, ...) @setp_empty(ptr noundef %i.z) #5
  %.not21.i = icmp eq i32 %i.aa, 0
  br i1 %.not21.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ae = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.m, ptr noundef %0, ptr noundef %i.ad) #5 ; 0 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.ag = load i32, ptr %i.p, align 8, !tbaa !18
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !17  ; 2 uses
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.v, align 4, !tbaa !17
  %i.aj = mul nsw i32 %i.ah, %i.ag
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.al, ptr noundef %i.k, ptr noundef %i.m) #5 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !23
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next.i, %i.ao
  br i1 %i.ap, label %bb.d, label %sharp.exit

bb.g:                                             ; preds = %bb.b
  %i.aq = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.p, ptr noundef %0) #5
  br label %sharp.exit

bb.h:                                             ; preds = %bb.a
  %i.ar = add nsw i32 %3, %2
  %i.as = sdiv i32 %i.ar, 2                       ; 2 uses
  %i.at = add nsw i32 %4, 1                       ; 2 uses
  %i.au = tail call ptr @cb_recur_sharp(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.as, i32 noundef %i.at) ; 3 uses
  %i.av = add nsw i32 %i.as, 1
  %i.aw = tail call ptr @cb_recur_sharp(ptr noundef %0, ptr noundef %1, i32 noundef %i.av, i32 noundef %3, i32 noundef %i.at) ; 3 uses
  %i.ax = tail call ptr @cv_intersect(ptr noundef %i.au, ptr noundef %i.aw) ; 2 uses
  %i.ay = load i32, ptr @debug, align 4, !tbaa !4
  %i.az = and i32 %i.ay, 8192
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = icmp slt i32 %4, 4
  %or.cond = and i1 %i.bb, %i.ba
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !17
  %i.bi = tail call i64 (...) @util_cpu_time() #5
  %i.bj = load i64, ptr @start_time, align 8, !tbaa !19
  %i.bk = sub nsw i64 %i.bi, %i.bj
  %i.bl = tail call ptr @util_print_time(i64 noundef %i.bk) #5
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4, i32 noundef %i.bd, i32 noundef %i.bf, i32 noundef %i.bh, ptr noundef %i.bl) ; 0 uses
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.bo = tail call i32 @fflush(ptr noundef %i.bn) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void (ptr, ...) @sf_free(ptr noundef %i.au) #5
  tail call void (ptr, ...) @sf_free(ptr noundef %i.aw) #5
  br label %sharp.exit

sharp.exit:                                       ; preds = %bb.f, %bb.g, %bb.c, %bb.j
  %.0 = phi ptr [ %i.ax, %bb.j ], [ %i.aq, %bb.g ], [ %i.p, %bb.c ], [ %i.p, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare ptr @util_print_time(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #2

declare void @sf_free(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @sharp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !21 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !23
  %i.h = load i32, ptr @cube, align 8, !tbaa !8
  %i.i = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.g, i32 noundef %i.h) #5 ; 6 uses
  %i.j = tail call i32 (ptr, ptr, ...) @cdist0(ptr noundef %0, ptr noundef %1) #5
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.b, ptr noundef %0, ptr noundef %1) #5 ; 0 uses
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !23
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.d, ptr noundef %i.b, ptr noundef %i.r) #5
  %i.t = tail call i32 (ptr, ...) @setp_empty(ptr noundef %i.s) #5
  %.not21 = icmp eq i32 %i.t, 0
  br i1 %.not21, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.f, ptr noundef %0, ptr noundef %i.w) #5 ; 0 uses
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.z = load i32, ptr %i.i, align 8, !tbaa !18
  %i.aa = load i32, ptr %i.o, align 4, !tbaa !17  ; 2 uses
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.o, align 4, !tbaa !17
  %i.ac = mul nsw i32 %i.aa, %i.z
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.ae, ptr noundef %i.d, ptr noundef %i.f) #5 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !23
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.c, label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.aj = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.i, ptr noundef %0) #5
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.f
  %.0 = phi ptr [ %i.aj, %bb.f ], [ %i.i, %bb.b ], [ %i.i, %bb.e ]
  ret ptr %.0
}

declare i32 @cdist0(...) local_unnamed_addr #1

declare ptr @set_diff(...) local_unnamed_addr #1

declare i32 @setp_empty(...) local_unnamed_addr #1

declare ptr @set_and(...) local_unnamed_addr #1

declare ptr @set_or(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @make_disjoint(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @cube, align 8, !tbaa !8
  %i.b = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.a) #5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  %i.g = load i32, ptr %0, align 8, !tbaa !18
  %i.h = mul nsw i32 %i.g, %i.f                   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.idx = shl nsw i64 %i.i, 2
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 %.idx
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi ptr [ %i.p, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %.01314 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.l = tail call ptr @cb_dsharp(ptr noundef %.015, ptr noundef %.01314)
  %i.m = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %.01314, ptr noundef %i.l) #5 ; 2 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !18
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %.015, i64 %i.o ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.j
  br i1 %i.q, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.013.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.m, %.lr.ph ]
  ret ptr %.013.lcssa
}

declare ptr @sf_append(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @cv_dsharp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @cube, align 8, !tbaa !8
  %i.b = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.a) #5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  %i.g = load i32, ptr %0, align 8, !tbaa !18
  %i.h = mul nsw i32 %i.g, %i.f                   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.idx = shl nsw i64 %i.i, 2
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 %.idx
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %bb.a ]
  %.01213 = phi ptr [ %i.p, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.l = tail call ptr @cb_dsharp(ptr noundef %.01213, ptr noundef %1)
  %i.m = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef %.014, ptr noundef %i.l) #5 ; 2 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !18
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %.01213, i64 %i.o ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.j
  br i1 %i.q, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.m, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cb1_dsharp(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = load i32, ptr @cube, align 8, !tbaa !8
  %i.d = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.b, i32 noundef %i.c) #5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !17
  %i.h = load i32, ptr %0, align 8, !tbaa !18
  %i.i = mul nsw i32 %i.h, %i.g                   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.idx = shl nsw i64 %i.j, 2
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %.idx
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi ptr [ %i.n, %.lr.ph ], [ %i.d, %bb.a ]
  %.01314 = phi ptr [ %i.q, %.lr.ph ], [ %i.f, %bb.a ] ; 2 uses
  %i.m = tail call ptr @dsharp(ptr noundef %.01314, ptr noundef %1)
  %i.n = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef %.015, ptr noundef %i.m) #5 ; 2 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !18
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %.01314, i64 %i.p ; 2 uses
  %i.r = icmp ult ptr %i.q, %i.k
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.n, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cb_dsharp(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i32, ptr @cube, align 8, !tbaa !8   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.d) #5
  %i.f = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.e, ptr noundef %0) #5
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.b, i32 noundef %i.d) #5 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = load i32, ptr %i.g, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17   ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !17
  %i.n = mul nsw i32 %i.l, %i.j
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.o
  %i.q = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.p, ptr noundef %0) #5 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.t = load i32, ptr %i.a, align 4, !tbaa !17
  %i.u = load i32, ptr %1, align 8, !tbaa !18
  %i.v = mul nsw i32 %i.u, %i.t                   ; 2 uses
  %i.w = sext i32 %i.v to i64
  %.idx = shl nsw i64 %i.w, 2
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %.idx
  %i.y = icmp sgt i32 %i.v, 0
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %cb1_dsharp.exit
  %.023 = phi ptr [ %i.at, %cb1_dsharp.exit ], [ %i.s, %bb.c ] ; 2 uses
  %.02022 = phi ptr [ %.0.lcssa.i, %cb1_dsharp.exit ], [ %i.g, %bb.c ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02022, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !17
  %i.ab = load i32, ptr @cube, align 8, !tbaa !8
  %i.ac = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.aa, i32 noundef %i.ab) #5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02022, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !14 ; 2 uses
  %i.af = load i32, ptr %i.z, align 4, !tbaa !17
  %i.ag = load i32, ptr %.02022, align 8, !tbaa !18
  %i.ah = mul nsw i32 %i.ag, %i.af                ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %.idx.i = shl nsw i64 %i.ai, 2
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %.idx.i
  %i.ak = icmp sgt i32 %i.ah, 0
  br i1 %i.ak, label %.lr.ph.i, label %cb1_dsharp.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.015.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.ac, %.lr.ph ]
  %.01314.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.al = tail call ptr @dsharp(ptr noundef %.01314.i, ptr noundef %.023)
  %i.am = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef %.015.i, ptr noundef %i.al) #5 ; 2 uses
  %i.an = load i32, ptr %.02022, align 8, !tbaa !18
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %.01314.i, i64 %i.ao ; 2 uses
  %i.aq = icmp ult ptr %i.ap, %i.aj
  br i1 %i.aq, label %.lr.ph.i, label %cb1_dsharp.exit

cb1_dsharp.exit:                                  ; preds = %.lr.ph.i, %.lr.ph
  %.0.lcssa.i = phi ptr [ %i.ac, %.lr.ph ], [ %i.am, %.lr.ph.i ] ; 2 uses
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %.02022) #5
  %i.ar = load i32, ptr %1, align 8, !tbaa !18
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.023, i64 %i.as ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.x
  br i1 %i.au, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %cb1_dsharp.exit, %bb.c, %bb.b
  %.1 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %.0.lcssa.i, %cb1_dsharp.exit ]
  ret ptr %.1
}

declare ptr @set_copy(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @dsharp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !21
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 17 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 3 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !23
  %i.f = load i32, ptr @cube, align 8, !tbaa !8
  %i.g = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.e, i32 noundef %i.f) #5 ; 6 uses
  %i.h = tail call i32 (ptr, ptr, ...) @cdist0(ptr noundef %0, ptr noundef %1) #5
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr @cube, align 8, !tbaa !8   ; 2 uses
  %i.j = icmp slt i32 %i.i, 33
  %i.k = add nsw i32 %i.i, -1
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 536870908
  %i.n = add nuw nsw i32 %i.m, 8
  %narrow = select i1 %i.j, i32 8, i32 %i.n
  %i.o = zext nneg i32 %narrow to i64
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #6
  %i.q = load i32, ptr @cube, align 8, !tbaa !8
  %i.r = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.p, i32 noundef %i.q) #5
  %i.s = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.r, ptr noundef %0, ptr noundef %1) #5 ; 4 uses
  %i.t = load i32, ptr @cube, align 8, !tbaa !8   ; 2 uses
  %i.u = icmp slt i32 %i.t, 33
  %i.v = add nsw i32 %i.t, -1
  %i.w = lshr i32 %i.v, 3
  %i.x = and i32 %i.w, 536870908
  %i.y = add nuw nsw i32 %i.x, 8
  %narrow86 = select i1 %i.u, i32 8, i32 %i.y
  %i.z = zext nneg i32 %narrow86 to i64
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #6
  %i.ab = load i32, ptr @cube, align 8, !tbaa !8
  %i.ac = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.aa, i32 noundef %i.ab) #5
  %i.ad = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.ac, ptr noundef %0, ptr noundef %1) #5 ; 6 uses
  %i.ae = load i32, ptr @cube, align 8, !tbaa !8  ; 2 uses
  %i.af = icmp slt i32 %i.ae, 33
  %i.ag = add nsw i32 %i.ae, -1
  %i.ah = lshr i32 %i.ag, 3
  %i.ai = and i32 %i.ah, 536870908
  %i.aj = add nuw nsw i32 %i.ai, 8
  %narrow87 = select i1 %i.af, i32 8, i32 %i.aj
  %i.ak = zext nneg i32 %narrow87 to i64
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.ak) #6
  %i.am = load i32, ptr @cube, align 8, !tbaa !8
  %i.an = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.al, i32 noundef %i.am) #5 ; 9 uses
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !23
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.aq = ptrtoaddr ptr %i.an to i64
  %i.ar = ptrtoaddr ptr %i.ad to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %scevgep107 = getelementptr i8, ptr %i.c, i64 4
  %i.au = sub i64 %i.aq, %i.d                     ; 2 uses
  %scevgep135 = getelementptr i8, ptr %i.c, i64 4
  %i.av = sub i64 %i.d, %i.ar
  %diff.check156 = icmp ugt i64 %i.av, -32
  %i.aw = add i64 %i.au, -1
  %diff.check157 = icmp ult i64 %i.aw, 31
  %conflict.rdx158 = or i1 %diff.check156, %diff.check157
  %i.ax = sub i64 %i.d, %i.a
  %diff.check = icmp ugt i64 %i.ax, -32
  %i.ay = add i64 %i.au, -1
  %diff.check113 = icmp ult i64 %i.ay, 31
  %conflict.rdx = or i1 %diff.check, %diff.check113
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv99 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next100, %.loopexit ] ; 4 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv99
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !22
  %i.bc = tail call i32 (ptr, ptr, ...) @setp_disjoint(ptr noundef %i.s, ptr noundef %i.bb) #5
  %.not85 = icmp eq i32 %i.bc, 0
  br i1 %.not85, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !14 ; 5 uses
  %i.be = load i32, ptr %i.g, align 8, !tbaa !18
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !17 ; 2 uses
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.at, align 4, !tbaa !17
  %i.bh = mul nsw i32 %i.bf, %i.be
  %i.bi = sext i32 %i.bh to i64                   ; 5 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bi ; 7 uses
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv99
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.bn = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.bj, ptr noundef %i.s, ptr noundef %i.bm) #5 ; 0 uses
  %i.bo = load i32, ptr %i.ad, align 4, !tbaa !4  ; 2 uses
  %i.bp = and i32 %i.bo, 1023
  %i.bq = load i32, ptr %i.c, align 4, !tbaa !4
  %i.br = and i32 %i.bq, -1024
  %i.bs = or disjoint i32 %i.br, %i.bp
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !4
  %i.bt = and i32 %i.bo, 1023                     ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64              ; 4 uses
  %i.bv = icmp ne i32 %i.bt, 0
  %.neg = sext i1 %i.bv to i64
  %i.bw = add nsw i64 %.neg, %i.bu
  %i.bx = add nsw i64 %i.bw, 1                    ; 3 uses
  %min.iters.check160 = icmp ult i64 %i.bx, 8
  %brmerge = select i1 %min.iters.check160, i1 true, i1 %conflict.rdx158
  br i1 %brmerge, label %scalar.ph159.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %bb.d
  %n.vec163 = and i64 %i.bx, -8                   ; 3 uses
  %i.by = sub nsw i64 %i.bu, %n.vec163
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph161
  %index165 = phi i64 [ 0, %vector.ph161 ], [ %index.next170, %vector.body164 ] ; 2 uses
  %i.bz = sub i64 %i.bu, %index165                ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -12
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -28
  %wide.load166 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !4
  %wide.load167 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bz ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -12
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -28
  %wide.load168 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !4
  %wide.load169 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !4
  %i.cg = and <4 x i32> %wide.load168, %wide.load166
  %i.ch = and <4 x i32> %wide.load169, %wide.load167
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bz ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -12
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -28
  store <4 x i32> %i.cg, ptr %i.cj, align 4, !tbaa !4
  store <4 x i32> %i.ch, ptr %i.ck, align 4, !tbaa !4
  %index.next170 = add nuw i64 %index165, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.cl, label %middle.block171, label %vector.body164, !llvm.loop !27

middle.block171:                                  ; preds = %vector.body164
  %cmp.n172 = icmp eq i64 %i.bx, %n.vec163
  br i1 %cmp.n172, label %.loopexit176, label %scalar.ph159.preheader

scalar.ph159.preheader:                           ; preds = %bb.d, %middle.block171
  %indvars.iv.ph = phi i64 [ %i.by, %middle.block171 ], [ %i.bu, %bb.d ]
  br label %scalar.ph159

scalar.ph159:                                     ; preds = %scalar.ph159.preheader, %scalar.ph159
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph159 ], [ %indvars.iv.ph, %scalar.ph159.preheader ] ; 5 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = and i32 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cs = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.cs, label %scalar.ph159, label %.loopexit176, !llvm.loop !30

.loopexit176:                                     ; preds = %scalar.ph159, %middle.block171
  %i.ct = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.cu = and i32 %i.ct, 1023                     ; 3 uses
  %i.cv = zext nneg i32 %i.cu to i64              ; 7 uses
  %i.cw = icmp ne i32 %i.cu, 0
  %.neg177 = sext i1 %i.cw to i64
  %i.cx = add nsw i64 %.neg177, %i.cv
  %i.cy = add nsw i64 %i.cx, 1                    ; 3 uses
end_hunk_0
