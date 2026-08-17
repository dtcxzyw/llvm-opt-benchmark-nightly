inline.NumInlined: 15
inline.NumDeleted: 6
begin_hunk_0

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @rbt_create(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc(i64 noundef 56) #6 ; 8 uses
  store ptr @sentinel, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %4, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %5, ptr %i.g, align 8
  ret ptr %i.a
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @rbt_find(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.01320 = load ptr, ptr %0, align 8             ; 2 uses
  %.not21 = icmp eq ptr %.01320, @sentinel
  br i1 %.not21, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01322 = phi ptr [ %.01320, %.lr.ph ], [ %.013, %bb.c ] ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = tail call i32 %i.c(ptr noundef %1, ptr noundef %.01322, ptr noundef %i.d) #6 ; 2 uses
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.e, 0
  %.114.in.v = select i1 %i.f, i64 8, i64 16
  %.114.in = getelementptr inbounds nuw i8, ptr %.01322, i64 %.114.in.v
  %.013 = load ptr, ptr %.114.in, align 8         ; 2 uses
  %.not = icmp eq ptr %.013, @sentinel
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !4

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %.01322, %bb.b ], [ null, %bb.c ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @rbt_find_great(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.02026 = load ptr, ptr %0, align 8             ; 3 uses
  %.not27 = icmp eq ptr %.02026, @sentinel
  br i1 %.not27, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %2, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.02029.us = phi ptr [ %.020.us, %.lr.ph.split.us ], [ %.02026, %.lr.ph ] ; 3 uses
  %.01728.us = phi ptr [ %.118.us, %.lr.ph.split.us ], [ null, %.lr.ph ]
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = tail call i32 %i.c(ptr noundef %1, ptr noundef %.02029.us, ptr noundef %i.d) #6
  %i.f = icmp slt i32 %i.e, 0                     ; 2 uses
  %.121.in.v.us = select i1 %i.f, i64 8, i64 16
  %.121.in.us = getelementptr inbounds nuw i8, ptr %.02029.us, i64 %.121.in.v.us
  %.118.us = select i1 %i.f, ptr %.02029.us, ptr %.01728.us ; 2 uses
  %.020.us = load ptr, ptr %.121.in.us, align 8   ; 2 uses
  %.not.us = icmp eq ptr %.020.us, @sentinel
  br i1 %.not.us, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.b
  %.02029 = phi ptr [ %.020, %bb.b ], [ %.02026, %.lr.ph ] ; 4 uses
  %.01728 = phi ptr [ %.118, %bb.b ], [ null, %.lr.ph ]
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = tail call i32 %i.g(ptr noundef %1, ptr noundef %.02029, ptr noundef %i.h) #6 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.k = icmp slt i32 %i.i, 0                     ; 2 uses
  %.121.in.v = select i1 %i.k, i64 8, i64 16
  %.121.in = getelementptr inbounds nuw i8, ptr %.02029, i64 %.121.in.v
  %.118 = select i1 %i.k, ptr %.02029, ptr %.01728 ; 2 uses
  %.020 = load ptr, ptr %.121.in, align 8         ; 2 uses
  %.not = icmp eq ptr %.020, @sentinel
  br i1 %.not, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %.lr.ph.split.us, %bb.b, %.lr.ph.split, %bb.a
  %.2 = phi ptr [ %.02029, %.lr.ph.split ], [ null, %bb.a ], [ %.118, %bb.b ], [ %.118.us, %.lr.ph.split.us ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @rbt_find_less(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.02026 = load ptr, ptr %0, align 8             ; 3 uses
  %.not27 = icmp eq ptr %.02026, @sentinel
  br i1 %.not27, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %2, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.02029.us = phi ptr [ %.020.us, %.lr.ph.split.us ], [ %.02026, %.lr.ph ] ; 3 uses
  %.01728.us = phi ptr [ %.118.us, %.lr.ph.split.us ], [ null, %.lr.ph ]
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = tail call i32 %i.c(ptr noundef %1, ptr noundef %.02029.us, ptr noundef %i.d) #6
  %i.f = icmp sgt i32 %i.e, 0                     ; 2 uses
  %.121.in.v.us = select i1 %i.f, i64 16, i64 8
  %.121.in.us = getelementptr inbounds nuw i8, ptr %.02029.us, i64 %.121.in.v.us
  %.118.us = select i1 %i.f, ptr %.02029.us, ptr %.01728.us ; 2 uses
  %.020.us = load ptr, ptr %.121.in.us, align 8   ; 2 uses
  %.not.us = icmp eq ptr %.020.us, @sentinel
  br i1 %.not.us, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.b
  %.02029 = phi ptr [ %.020, %bb.b ], [ %.02026, %.lr.ph ] ; 4 uses
  %.01728 = phi ptr [ %.118, %bb.b ], [ null, %.lr.ph ]
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = tail call i32 %i.g(ptr noundef %1, ptr noundef %.02029, ptr noundef %i.h) #6 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.k = icmp sgt i32 %i.i, 0                     ; 2 uses
  %.121.in.v = select i1 %i.k, i64 16, i64 8
  %.121.in = getelementptr inbounds nuw i8, ptr %.02029, i64 %.121.in.v
  %.118 = select i1 %i.k, ptr %.02029, ptr %.01728 ; 2 uses
  %.020 = load ptr, ptr %.121.in, align 8         ; 2 uses
  %.not = icmp eq ptr %.020, @sentinel
  br i1 %.not, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %.lr.ph.split.us, %bb.b, %.lr.ph.split, %bb.a
  %.2 = phi ptr [ %.02029, %.lr.ph.split ], [ null, %bb.a ], [ %.118, %bb.b ], [ %.118.us, %.lr.ph.split.us ]
  ret ptr %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @rbt_leftmost(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not11 = icmp eq ptr %i.a, @sentinel
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0812 = phi ptr [ %i.c, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0812, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, @sentinel
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ @sentinel, %bb.a ], [ %.0812, %.lr.ph ] ; 2 uses
  %.not10 = icmp eq ptr %.0.lcssa, @sentinel
  %..0 = select i1 %.not10, ptr null, ptr %.0.lcssa
  ret ptr %..0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @rbt_insert(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.04147 = load ptr, ptr %0, align 8             ; 2 uses
  %.not48 = icmp eq ptr %.04147, @sentinel
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.04149 = phi ptr [ %.04147, %.lr.ph ], [ %.041, %bb.d ] ; 5 uses
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = tail call i32 %i.c(ptr noundef %1, ptr noundef %.04149, ptr noundef %i.d) #6 ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.b, align 8
  tail call void %i.h(ptr noundef %.04149, ptr noundef %1, ptr noundef %i.i) #6
  store i8 0, ptr %2, align 1
  br label %3

bb.d:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %i.e, 0
  %.in.v = select i1 %i.j, i64 8, i64 16
  %.in = getelementptr inbounds nuw i8, ptr %.04149, i64 %.in.v
  %.041 = load ptr, ptr %.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.041, @sentinel
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !7

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.k = icmp slt i32 %i.e, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.040.lcssa = phi ptr [ null, %bb.a ], [ %.04149, %._crit_edge.loopexit ] ; 4 uses
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %i.k, %._crit_edge.loopexit ]
  store i8 1, ptr %2, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr %i.m(ptr noundef %i.o) #6  ; 11 uses
  store i8 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @sentinel, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr @sentinel, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store ptr %.040.lcssa, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = add i64 %.val, -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull readonly align 8 %i.v, i64 %i.w, i1 false)
  %.not43 = icmp eq ptr %.040.lcssa, null
  br i1 %.not43, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  br i1 %.0.lcssa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.040.lcssa, i64 8
  store ptr %i.p, ptr %i.x, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.040.lcssa, i64 16
  store ptr %i.p, ptr %i.y, align 8
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  store ptr %i.p, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  %.not62.i = icmp eq ptr %i.p, %i.z
  br i1 %.not62.i, label %rbt_insert_fixup.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.aa = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = icmp eq i8 %i.ab, 1
  br i1 %i.ac, label %.lr.ph52, label %rbt_insert_fixup.exit

.lr.ph.i:                                         ; preds = %rbt_rotate_right.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.5.i, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %.lr.ph52, label %rbt_insert_fixup.exit, !llvm.loop !8

.lr.ph52:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ah = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.aa, %.lr.ph.i.preheader ] ; 18 uses
  %i.ai = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.s, %.lr.ph.i.preheader ] ; 4 uses
  %.063.i51 = phi ptr [ %.5.i, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.an = icmp eq ptr %i.ah, %i.am
  br i1 %i.an, label %bb.j, label %bb.af

bb.j:                                             ; preds = %.lr.ph52
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.ah, align 8
  store i8 0, ptr %i.ap, align 8
  %i.as = load ptr, ptr %i.ai, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  store i8 1, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.ai, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %rbt_rotate_right.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 8 uses
  %i.ba = icmp eq ptr %.063.i51, %i.az
  br i1 %i.ba, label %bb.m, label %rbt_rotate_left.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  store ptr %i.bc, ptr %i.ay, align 8
  %.not.i.i = icmp eq ptr %i.bc, @sentinel
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.ah, ptr %i.bd, align 8
  %.pre.i.pre.i = load ptr, ptr %i.aj, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre.i.i = phi ptr [ %.pre.i.pre.i, %bb.n ], [ %i.ak, %bb.m ] ; 4 uses
  %.not25.i.i = icmp eq ptr %.063.i51, @sentinel
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %.pre.i.i, ptr %i.be, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.p, %bb.o
  %.not26.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not26.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp eq ptr %i.ah, %i.bg
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.az, ptr %i.bf, align 8
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  store ptr %i.az, ptr %i.bi, align 8
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  store ptr %i.az, ptr %0, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  store ptr %i.ah, ptr %i.bb, align 8
  %.not27.i.i = icmp eq ptr %i.ah, @sentinel
  br i1 %.not27.i.i, label %.rbt_rotate_left.exit_crit_edge.i, label %bb.v

.rbt_rotate_left.exit_crit_edge.i:                ; preds = %bb.u
  %.pre68.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 24), align 8
  br label %rbt_rotate_left.exit.i

bb.v:                                             ; preds = %bb.u
  store ptr %i.az, ptr %i.aj, align 8
  br label %rbt_rotate_left.exit.i

rbt_rotate_left.exit.i:                           ; preds = %bb.v, %.rbt_rotate_left.exit_crit_edge.i, %bb.l
  %i.bj = phi ptr [ %i.ah, %bb.l ], [ %.pre68.i, %.rbt_rotate_left.exit_crit_edge.i ], [ %i.az, %bb.v ]
  %.1.i = phi ptr [ %.063.i51, %bb.l ], [ @sentinel, %.rbt_rotate_left.exit_crit_edge.i ], [ %i.ah, %bb.v ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.i, i64 24 ; 2 uses
  store i8 0, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  store i8 1, ptr %i.bn, align 8
  %i.bo = load ptr, ptr %i.bk, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8            ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  store ptr %i.bu, ptr %i.br, align 8
  %.not.i39.i = icmp eq ptr %i.bu, @sentinel
  br i1 %.not.i39.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %rbt_rotate_left.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %i.bq, ptr %i.bv, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %rbt_rotate_left.exit.i
  %.not25.i40.i = icmp eq ptr %i.bs, @sentinel
  %.phi.trans.insert.i41.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %.pre.i42.i = load ptr, ptr %.phi.trans.insert.i41.i, align 8 ; 4 uses
  br i1 %.not25.i40.i, label %._crit_edge.i43.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %.pre.i42.i, ptr %i.bw, align 8
  br label %._crit_edge.i43.i

._crit_edge.i43.i:                                ; preds = %bb.y, %bb.x
  %.not26.i44.i = icmp eq ptr %.pre.i42.i, null
  br i1 %.not26.i44.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i43.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.i42.i, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = icmp eq ptr %i.bq, %i.by
  br i1 %i.bz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr %i.bs, ptr %i.bx, align 8
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre.i42.i, i64 8
  store ptr %i.bs, ptr %i.ca, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i43.i
  store ptr %i.bs, ptr %0, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  store ptr %i.bq, ptr %i.bt, align 8
  %.not27.i45.i = icmp eq ptr %i.bq, @sentinel
  br i1 %.not27.i45.i, label %rbt_rotate_right.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.bs, ptr %.phi.trans.insert.i41.i, align 8
  br label %rbt_rotate_right.exit.i

bb.af:                                            ; preds = %.lr.ph52
  %i.cb = load i8, ptr %i.am, align 8
  %i.cc = icmp eq i8 %i.cb, 1
  br i1 %i.cc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr %i.ah, align 8
  store i8 0, ptr %i.am, align 8
  %i.cd = load ptr, ptr %i.ai, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  store i8 1, ptr %i.cf, align 8
  %i.cg = load ptr, ptr %i.ai, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  br label %rbt_rotate_right.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 8 uses
  %i.cl = icmp eq ptr %.063.i51, %i.ck
  br i1 %i.cl, label %bb.ai, label %rbt_rotate_right.exit53.i

bb.ai:                                            ; preds = %bb.ah
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8            ; 3 uses
  store ptr %i.cn, ptr %i.cj, align 8
  %.not.i46.i = icmp eq ptr %i.cn, @sentinel
  br i1 %.not.i46.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr %i.ah, ptr %i.co, align 8
  %.pre.i49.pre.i = load ptr, ptr %i.aj, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pre.i49.i = phi ptr [ %.pre.i49.pre.i, %bb.aj ], [ %i.ak, %bb.ai ] ; 4 uses
  %.not25.i47.i = icmp eq ptr %.063.i51, @sentinel
  br i1 %.not25.i47.i, label %._crit_edge.i50.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %.pre.i49.i, ptr %i.cp, align 8
  br label %._crit_edge.i50.i

._crit_edge.i50.i:                                ; preds = %bb.al, %bb.ak
  %.not26.i51.i = icmp eq ptr %.pre.i49.i, null
  br i1 %.not26.i51.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i50.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre.i49.i, i64 16 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp eq ptr %i.ah, %i.cr
  br i1 %i.cs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store ptr %i.ck, ptr %i.cq, align 8
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre.i49.i, i64 8
  store ptr %i.ck, ptr %i.ct, align 8
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i50.i
  store ptr %i.ck, ptr %0, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  store ptr %i.ah, ptr %i.cm, align 8
  %.not27.i52.i = icmp eq ptr %i.ah, @sentinel
  br i1 %.not27.i52.i, label %.rbt_rotate_right.exit53_crit_edge.i, label %bb.ar

.rbt_rotate_right.exit53_crit_edge.i:             ; preds = %bb.aq
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 24), align 8
  br label %rbt_rotate_right.exit53.i

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.ck, ptr %i.aj, align 8
  br label %rbt_rotate_right.exit53.i

rbt_rotate_right.exit53.i:                        ; preds = %bb.ar, %.rbt_rotate_right.exit53_crit_edge.i, %bb.ah
  %i.cu = phi ptr [ %i.ah, %bb.ah ], [ %.pre.i, %.rbt_rotate_right.exit53_crit_edge.i ], [ %i.ck, %bb.ar ]
  %.3.i = phi ptr [ %.063.i51, %bb.ah ], [ @sentinel, %.rbt_rotate_right.exit53_crit_edge.i ], [ %i.ah, %bb.ar ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.3.i, i64 24 ; 2 uses
  store i8 0, ptr %i.cu, align 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  store i8 1, ptr %i.cy, align 8
  %i.cz = load ptr, ptr %i.cv, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8            ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 3 uses
  store ptr %i.df, ptr %i.dc, align 8
  %.not.i54.i = icmp eq ptr %i.df, @sentinel
  br i1 %.not.i54.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %rbt_rotate_right.exit53.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store ptr %i.db, ptr %i.dg, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %rbt_rotate_right.exit53.i
  %.not25.i55.i = icmp eq ptr %i.dd, @sentinel
  %.phi.trans.insert.i56.i = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %.pre.i57.i = load ptr, ptr %.phi.trans.insert.i56.i, align 8 ; 4 uses
  br i1 %.not25.i55.i, label %._crit_edge.i58.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr %.pre.i57.i, ptr %i.dh, align 8
  br label %._crit_edge.i58.i

._crit_edge.i58.i:                                ; preds = %bb.au, %bb.at
  %.not26.i59.i = icmp eq ptr %.pre.i57.i, null
  br i1 %.not26.i59.i, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %._crit_edge.i58.i
  %i.di = getelementptr inbounds nuw i8, ptr %.pre.i57.i, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = icmp eq ptr %i.db, %i.dj
  br i1 %i.dk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store ptr %i.dd, ptr %i.di, align 8
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.dl = getelementptr inbounds nuw i8, ptr %.pre.i57.i, i64 16
  store ptr %i.dd, ptr %i.dl, align 8
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i58.i
  store ptr %i.dd, ptr %0, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  store ptr %i.db, ptr %i.de, align 8
  %.not27.i60.i = icmp eq ptr %i.db, @sentinel
  br i1 %.not27.i60.i, label %rbt_rotate_right.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr %i.dd, ptr %.phi.trans.insert.i56.i, align 8
  br label %rbt_rotate_right.exit.i

rbt_rotate_right.exit.i:                          ; preds = %bb.ba, %bb.az, %bb.ag, %bb.ae, %bb.ad, %bb.k
  %.5.i = phi ptr [ %.1.i, %bb.ae ], [ %i.ax, %bb.k ], [ %i.ci, %bb.ag ], [ %.1.i, %bb.ad ], [ %.3.i, %bb.az ], [ %.3.i, %bb.ba ] ; 3 uses
  %i.dm = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i = icmp eq ptr %.5.i, %i.dm
  br i1 %.not.i, label %rbt_rotate_right.exit.i.rbt_insert_fixup.exit.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !8

rbt_rotate_right.exit.i.rbt_insert_fixup.exit.loopexit_crit_edge: ; preds = %rbt_rotate_right.exit.i
  br label %rbt_insert_fixup.exit, !llvm.loop !8

rbt_insert_fixup.exit:                            ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %rbt_rotate_right.exit.i.rbt_insert_fixup.exit.loopexit_crit_edge, %bb.i
  %.lcssa.i = phi ptr [ %i.z, %bb.i ], [ %i.z, %.lr.ph.i.preheader ], [ %i.dm, %rbt_rotate_right.exit.i.rbt_insert_fixup.exit.loopexit_crit_edge ], [ %i.dm, %.lr.ph.i ]
  store i8 0, ptr %.lcssa.i, align 8
  br label %3

3:                                                ; preds = %rbt_insert_fixup.exit, %bb.c
  %.039 = phi ptr [ %.04149, %bb.c ], [ %i.p, %rbt_insert_fixup.exit ]
  ret ptr %.039
}

; Function Attrs: nounwind uwtable
define dso_local void @rbt_delete(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %1, @sentinel
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %rbt_delete_node.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, @sentinel
  br i1 %i.e, label %.loopexit69.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, @sentinel
  br i1 %i.h, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.0.i = phi ptr [ %i.j, %.preheader.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.j, @sentinel
  br i1 %.not.i, label %.loopexit69.i, label %.preheader.i, !llvm.loop !9

.loopexit69.i:                                    ; preds = %.preheader.i, %bb.b
  %.1.ph.i = phi ptr [ %1, %bb.b ], [ %.0.i, %.preheader.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.1.ph.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit69.i, %bb.c
  %.167.i = phi ptr [ %.1.ph.i, %.loopexit69.i ], [ %1, %bb.c ] ; 6 uses
  %.035.i = phi ptr [ %i.l, %.loopexit69.i ], [ %i.d, %bb.c ] ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.167.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.035.i, i64 24
  store ptr %i.n, ptr %i.o, align 8
  %.not43.i = icmp eq ptr %i.n, null
  br i1 %.not43.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %.167.i, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %.035.i, ptr %i.p, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.035.i, ptr %i.s, align 8
  br label %bb.h

bb.g:                                             ; preds = %.loopexit.i
  store ptr %.035.i, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.not44.i = icmp eq ptr %.167.i, %1
  br i1 %.not44.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.167.i, i64 32
  %i.w = add i64 %.val.i, -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull readonly align 8 %i.v, i64 %i.w, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = load i8, ptr %.167.i, align 8
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.cc

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %0, align 8
  %.not98.i.i = icmp eq ptr %.035.i, %i.z
  br i1 %.not98.i.i, label %rbt_delete_fixup.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %rbt_rotate_left.exit73.i.i
  %.05699.i.i = phi ptr [ %.3.i.i, %rbt_rotate_left.exit73.i.i ], [ %.035.i, %bb.k ] ; 4 uses
  %i.aa = load i8, ptr %.05699.i.i, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %rbt_delete_fixup.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05699.i.i, i64 24 ; 15 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 4 uses
  %i.ag = icmp eq ptr %.05699.i.i, %i.af
  br i1 %i.ag, label %bb.m, label %bb.au

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = icmp eq i8 %i.aj, 1
  br i1 %i.ak, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.ai, align 8
  %i.al = load ptr, ptr %i.ac, align 8
  store i8 1, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.ac, align 8            ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  store ptr %i.aq, ptr %i.an, align 8
  %.not.i.i.i = icmp eq ptr %i.aq, @sentinel
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.am, ptr %i.ar, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not25.i.i.i = icmp eq ptr %i.ao, @sentinel
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8 ; 4 uses
  br i1 %.not25.i.i.i, label %._crit_edge.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %.pre.i.i.i, ptr %i.as, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.q, %bb.p
  %.not26.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not26.i.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %i.am, %i.au
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %i.ao, ptr %i.at, align 8
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  store ptr %i.ao, ptr %i.aw, align 8
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i
  store ptr %i.ao, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  store ptr %i.am, ptr %i.ap, align 8
  %.not27.i.i.i = icmp eq ptr %i.am, @sentinel
  br i1 %.not27.i.i.i, label %rbt_rotate_left.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.ao, ptr %.phi.trans.insert.i.i.i, align 8
  br label %rbt_rotate_left.exit.i.i

rbt_rotate_left.exit.i.i:                         ; preds = %bb.w, %bb.v
  %i.ax = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  br label %bb.x

bb.x:                                             ; preds = %rbt_rotate_left.exit.i.i, %bb.m
  %i.ba = phi ptr [ %i.ax, %rbt_rotate_left.exit.i.i ], [ %i.ad, %bb.m ] ; 2 uses
  %.054.i.i = phi ptr [ %i.az, %rbt_rotate_left.exit.i.i ], [ %i.ai, %bb.m ] ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.054.i.i, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8
  %i.be = icmp eq i8 %i.bd, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %.054.i.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load i8, ptr %i.bg, align 8
  %i.bi = icmp eq i8 %i.bh, 0                     ; 2 uses
  br i1 %i.be, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  br i1 %i.bi, label %bb.z, label %.thread.i.i

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %.054.i.i, align 8
  br label %rbt_rotate_left.exit73.i.i

bb.aa:                                            ; preds = %bb.x
  br i1 %i.bi, label %bb.ab, label %.thread.i.i

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
