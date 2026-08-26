Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/utilities?download=true
inline.NumInlined: 15
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@out_grouping_b:bb.a
  %i.al = and i32 %i.ak, %i.ai
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.an = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.an, ptr %i.a, align 8
  %.not = icmp sgt i64 %indvars.iv.next, %i.x
  br i1 %.not, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.h, %bb.i, %.split, %.split.us, %bb.d, %bb.e
  %.us-phi = phi i32 [ -1, %.split.us ], [ 0, %bb.e ], [ 1, %bb.d ], [ -1, %.split ], [ 1, %bb.h ], [ -1, %bb.i ]
  ret i32 %.us-phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @eq_s(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = sub i32 %i.b, %i.d
  %i.f = icmp slt i32 %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = sext i32 %1 to i64
  %bcmp = tail call i32 @bcmp(ptr %i.i, ptr %2, i64 %i.j)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.d, %1
  store i32 %i.k, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @eq_s_b(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = sub i32 %i.b, %i.d
  %i.f = icmp slt i32 %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = sext i32 %i.b to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = sext i32 %1 to i64                       ; 2 uses
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  %bcmp = tail call i32 @bcmp(ptr %i.l, ptr %2, i64 %i.j)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub i32 %i.b, %1
  store i32 %i.m, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @eq_v(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = sub i32 %i.d, %i.f
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %eq_s.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8
  %i.j = sext i32 %i.f to i64
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  %i.l = sext i32 %i.b to i64
  %bcmp.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull readonly %1, i64 %i.l)
  %.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i, label %bb.c, label %eq_s.exit

bb.c:                                             ; preds = %bb.b
  %i.m = add i32 %i.f, %i.b
  store i32 %i.m, ptr %i.e, align 8
  br label %eq_s.exit

eq_s.exit:                                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @eq_v_b(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sub i32 %i.d, %i.f
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %eq_s_b.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8
  %i.j = sext i32 %i.d to i64
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  %i.l = sext i32 %i.b to i64                     ; 2 uses
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  %bcmp.i = tail call i32 @bcmp(ptr %i.n, ptr nonnull readonly %1, i64 %i.l)
  %.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i, label %bb.c, label %eq_s_b.exit

bb.c:                                             ; preds = %bb.b
  %i.o = sub i32 %i.d, %i.b
  store i32 %i.o, ptr %i.c, align 8
  br label %eq_s_b.exit

eq_s_b.exit:                                      ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @find_among(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
select.unfold.outer:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = load ptr, ptr %0, align 8
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f ; 2 uses
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.outer, %.thread149
  %.072 = phi i32 [ %i.ah, %.thread149 ], [ %2, %select.unfold.outer ] ; 4 uses
  %.070 = phi i32 [ %i.ai, %.thread149 ], [ 0, %select.unfold.outer ] ; 4 uses
  %.067 = phi i32 [ %i.ag, %.thread149 ], [ 0, %select.unfold.outer ] ; 4 uses
  %.065 = phi i32 [ %i.aj, %.thread149 ], [ 0, %select.unfold.outer ] ; 5 uses
  %i.h = sub i32 %.072, %.070
  %i.i = ashr i32 %i.h, 1
  %i.j = add i32 %i.i, %.070                      ; 6 uses
  %i.k = tail call i32 @llvm.smin.i32(i32 %.067, i32 %.065) ; 3 uses
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [32 x i8], ptr %1, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp slt i32 %i.k, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread149

.lr.ph:                                           ; preds = %select.unfold
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = tail call i32 @llvm.smin.i32(i32 %.065, i32 %.067)
  %smin = sext i32 %i.q to i64
  %i.r = sext i32 %i.n to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %smin, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %.05993 = phi i32 [ %i.k, %.lr.ph ], [ %i.ac, %bb.c ] ; 2 uses
  %i.s = add i32 %.05993, %i.b
  %i.t = icmp eq i32 %i.s, %i.d
  br i1 %i.t, label %.split153.thread.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = load ptr, ptr %i.p, align 8
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %indvars.iv
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = sub nsw i32 %i.w, %i.aa
  %.fr = freeze i32 %i.ab                         ; 2 uses
  %.not = icmp eq i32 %.fr, 0
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ac = add nsw i32 %.05993, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %exitcond.not, label %.thread149, label %bb.a, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.b
  %i.ad = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ae = icmp slt i32 %.fr, 0
  br i1 %i.ae, label %.split153.thread, label %.thread149

.split153.thread.loopexit:                        ; preds = %bb.a
  %i.af = trunc nsw i64 %indvars.iv to i32
  br label %.thread149

.split153.thread:                                 ; preds = %._crit_edge
  br label %.thread149

.thread149:                                       ; preds = %bb.c, %.split153.thread.loopexit, %._crit_edge, %select.unfold, %.split153.thread
  %i.ag = phi i32 [ %i.ad, %._crit_edge ], [ %.067, %.split153.thread ], [ %i.k, %select.unfold ], [ %.067, %.split153.thread.loopexit ], [ %i.n, %bb.c ] ; 3 uses
  %i.ah = phi i32 [ %.072, %._crit_edge ], [ %i.j, %.split153.thread ], [ %.072, %select.unfold ], [ %i.j, %.split153.thread.loopexit ], [ %.072, %bb.c ] ; 4 uses
  %i.ai = phi i32 [ %i.j, %._crit_edge ], [ %.070, %.split153.thread ], [ %i.j, %select.unfold ], [ %.070, %.split153.thread.loopexit ], [ %i.j, %bb.c ] ; 6 uses
  %i.aj = phi i32 [ %.065, %._crit_edge ], [ %i.ad, %.split153.thread ], [ %.065, %select.unfold ], [ %i.af, %.split153.thread.loopexit ], [ %.065, %bb.c ] ; 2 uses
  %i.ak = sub i32 %i.ah, %i.ai
  %i.al = icmp slt i32 %i.ak, 2
  br i1 %i.al, label %bb.d, label %select.unfold

bb.d:                                             ; preds = %.thread149
  %i.am = icmp slt i32 %i.ai, 1
  %i.an = icmp ne i32 %i.ah, %i.ai
  %or.cond.not89 = and i1 %i.am, %i.an
  br i1 %or.cond.not89, label %select.unfold.1, label %bb.h

select.unfold.1:                                  ; preds = %bb.d, %.thread149.1
  %.072.1 = phi i32 [ %i.bo, %.thread149.1 ], [ %i.ah, %bb.d ] ; 4 uses
  %.070.1 = phi i32 [ %i.bp, %.thread149.1 ], [ %i.ai, %bb.d ] ; 4 uses
  %.067.1 = phi i32 [ %i.bn, %.thread149.1 ], [ %i.ag, %bb.d ] ; 4 uses
  %.065.1 = phi i32 [ %i.bq, %.thread149.1 ], [ %i.aj, %bb.d ] ; 5 uses
  %i.ao = sub i32 %.072.1, %.070.1
  %i.ap = ashr i32 %i.ao, 1
  %i.aq = add i32 %i.ap, %.070.1                  ; 6 uses
  %i.ar = tail call i32 @llvm.smin.i32(i32 %.067.1, i32 %.065.1) ; 3 uses
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [32 x i8], ptr %1, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 8            ; 3 uses
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.1, label %.thread149.1

.lr.ph.1:                                         ; preds = %select.unfold.1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = tail call i32 @llvm.smin.i32(i32 %.065.1, i32 %.067.1)
  %smin.1 = sext i32 %i.ax to i64
  %i.ay = sext i32 %i.au to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ %smin.1, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.g ] ; 5 uses
  %.05993.1 = phi i32 [ %i.ar, %.lr.ph.1 ], [ %i.bl, %bb.g ] ; 2 uses
  %i.az = add i32 %.05993.1, %i.b
  %i.ba = icmp eq i32 %i.az, %i.d
  br i1 %i.ba, label %.split153.thread.loopexit.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds i8, ptr %i.g, i64 %indvars.iv.1
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = load ptr, ptr %i.aw, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %indvars.iv.1
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i32
  %i.bi = sub nsw i32 %i.bd, %i.bh
  %.fr.1 = freeze i32 %i.bi                       ; 2 uses
  %.not.1 = icmp eq i32 %.fr.1, 0
  br i1 %.not.1, label %bb.g, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.f
  %i.bj = trunc nsw i64 %indvars.iv.1 to i32      ; 2 uses
  %i.bk = icmp slt i32 %.fr.1, 0
  br i1 %i.bk, label %.split153.thread.1, label %.thread149.1

.split153.thread.1:                               ; preds = %._crit_edge.1
  br label %.thread149.1

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.bl = add nsw i32 %.05993.1, 1
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.ay
  br i1 %exitcond.not.1, label %.thread149.1, label %bb.e, !llvm.loop !16

.split153.thread.loopexit.1:                      ; preds = %bb.e
  %i.bm = trunc nsw i64 %indvars.iv.1 to i32
  br label %.thread149.1

.thread149.1:                                     ; preds = %bb.g, %.split153.thread.loopexit.1, %.split153.thread.1, %._crit_edge.1, %select.unfold.1
  %i.bn = phi i32 [ %i.bj, %._crit_edge.1 ], [ %.067.1, %.split153.thread.1 ], [ %i.ar, %select.unfold.1 ], [ %.067.1, %.split153.thread.loopexit.1 ], [ %i.au, %bb.g ] ; 2 uses
  %i.bo = phi i32 [ %.072.1, %._crit_edge.1 ], [ %i.aq, %.split153.thread.1 ], [ %.072.1, %select.unfold.1 ], [ %i.aq, %.split153.thread.loopexit.1 ], [ %.072.1, %bb.g ] ; 2 uses
  %i.bp = phi i32 [ %i.aq, %._crit_edge.1 ], [ %.070.1, %.split153.thread.1 ], [ %i.aq, %select.unfold.1 ], [ %.070.1, %.split153.thread.loopexit.1 ], [ %i.aq, %bb.g ] ; 3 uses
  %i.bq = phi i32 [ %.065.1, %._crit_edge.1 ], [ %i.bj, %.split153.thread.1 ], [ %.065.1, %select.unfold.1 ], [ %i.bm, %.split153.thread.loopexit.1 ], [ %.065.1, %bb.g ]
  %i.br = sub i32 %i.bo, %i.bp
  %i.bs = icmp slt i32 %i.br, 2
  br i1 %i.bs, label %bb.h, label %select.unfold.1

bb.h:                                             ; preds = %.thread149.1, %bb.d
  %.lcssa188.lcssa = phi i32 [ %i.ag, %bb.d ], [ %i.bn, %.thread149.1 ]
  %.lcssa186.lcssa = phi i32 [ %i.ai, %bb.d ], [ %i.bp, %.thread149.1 ]
  %i.bt = sext i32 %.lcssa186.lcssa to i64
  %i.bu = getelementptr inbounds [32 x i8], ptr %1, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %bb.h
  %.069 = phi ptr [ %i.bu, %bb.h ], [ %i.cg, %bb.n ] ; 6 uses
  %i.bw = load i32, ptr %.069, align 8            ; 2 uses
  %.not80 = icmp slt i32 %.lcssa188.lcssa, %i.bw
  br i1 %.not80, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = add i32 %i.bw, %i.b
  store i32 %i.bx, ptr %i.a, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %.069, i64 24
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %.not81 = icmp eq i32 %i.bz, 0
  br i1 %.not81, label %.loopexit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.bz, ptr %i.bv, align 4
  %i.ca = tail call i32 %3(ptr noundef nonnull %0) #9
  %.not82 = icmp eq i32 %i.ca, 0
  br i1 %.not82, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = load i32, ptr %.069, align 8
  %i.cc = add i32 %i.cb, %i.b
  store i32 %i.cc, ptr %i.a, align 8
  br label %.loopexit.sink.split

bb.m:                                             ; preds = %bb.k, %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.ce = load i32, ptr %i.cd, align 8            ; 2 uses
  %.not83 = icmp eq i32 %i.ce, 0
  br i1 %.not83, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [32 x i8], ptr %.069, i64 %i.cf
  br label %bb.i

.loopexit.sink.split:                             ; preds = %bb.j, %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %.069, i64 20
  %i.ci = load i32, ptr %i.ch, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.loopexit.sink.split
  %.062 = phi i32 [ %i.ci, %.loopexit.sink.split ], [ 0, %bb.m ]
  ret i32 %.062
}

; Function Attrs: nounwind uwtable
define hidden i32 @find_among_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
select.unfold.outer:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = load ptr, ptr %0, align 8
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -1 ; 2 uses
  %i.i = sub i32 %i.b, %i.d                       ; 2 uses
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.outer, %.thread147
  %.072 = phi i32 [ %i.am, %.thread147 ], [ %2, %select.unfold.outer ] ; 4 uses
  %.070 = phi i32 [ %i.an, %.thread147 ], [ 0, %select.unfold.outer ] ; 4 uses
  %.067 = phi i32 [ %i.al, %.thread147 ], [ 0, %select.unfold.outer ] ; 3 uses
  %.065 = phi i32 [ %i.ao, %.thread147 ], [ 0, %select.unfold.outer ] ; 4 uses
  %i.j = sub i32 %.072, %.070
  %i.k = ashr i32 %i.j, 1
  %i.l = add i32 %i.k, %.070                      ; 6 uses
  %i.m = tail call i32 @llvm.smin.i32(i32 %.067, i32 %.065) ; 3 uses
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds [32 x i8], ptr %1, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = xor i32 %i.m, -1
  %i.r = add i32 %i.p, %i.q                       ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %.lr.ph, label %.thread147

.lr.ph:                                           ; preds = %select.unfold
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.c
  %.05993 = phi i32 [ %i.r, %.lr.ph ], [ %i.ai, %bb.c ] ; 3 uses
  %.06092 = phi i32 [ %i.m, %.lr.ph ], [ %i.ah, %bb.c ] ; 5 uses
  %i.u = sub i32 %i.b, %.06092
  %i.v = icmp eq i32 %i.u, %i.d
  br i1 %i.v, label %.thread147, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = sub i32 0, %.06092
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.h, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = load ptr, ptr %i.t, align 8
  %i.ac = zext nneg i32 %.05993 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = sub nsw i32 %i.aa, %i.af
  %.fr = freeze i32 %i.ag                         ; 2 uses
  %.not = icmp eq i32 %.fr, 0
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.ah = add i32 %.06092, 1
  %i.ai = add nsw i32 %.05993, -1
  %i.aj = icmp sgt i32 %.05993, 0
  br i1 %i.aj, label %bb.a, label %.thread147, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.b
  %i.ak = icmp slt i32 %.fr, 0
  br i1 %i.ak, label %.split151.thread, label %.thread147

.split151.thread:                                 ; preds = %._crit_edge
  br label %.thread147

.thread147:                                       ; preds = %bb.c, %bb.a, %._crit_edge, %select.unfold, %.split151.thread
  %i.al = phi i32 [ %.06092, %._crit_edge ], [ %.067, %.split151.thread ], [ %i.m, %select.unfold ], [ %i.p, %bb.c ], [ %.067, %bb.a ] ; 3 uses
  %i.am = phi i32 [ %.072, %._crit_edge ], [ %i.l, %.split151.thread ], [ %.072, %select.unfold ], [ %.072, %bb.c ], [ %i.l, %bb.a ] ; 4 uses
  %i.an = phi i32 [ %i.l, %._crit_edge ], [ %.070, %.split151.thread ], [ %i.l, %select.unfold ], [ %i.l, %bb.c ], [ %.070, %bb.a ] ; 6 uses
  %i.ao = phi i32 [ %.065, %._crit_edge ], [ %.06092, %.split151.thread ], [ %.065, %select.unfold ], [ %.065, %bb.c ], [ %i.i, %bb.a ] ; 2 uses
  %i.ap = sub i32 %i.am, %i.an
  %i.aq = icmp slt i32 %i.ap, 2
  br i1 %i.aq, label %bb.d, label %select.unfold

bb.d:                                             ; preds = %.thread147
  %i.ar = icmp slt i32 %i.an, 1
  %i.as = icmp ne i32 %i.am, %i.an
  %or.cond.not89 = and i1 %i.ar, %i.as
  br i1 %or.cond.not89, label %select.unfold.1, label %bb.h

select.unfold.1:                                  ; preds = %bb.d, %.thread147.1
  %.072.1 = phi i32 [ %i.bw, %.thread147.1 ], [ %i.am, %bb.d ] ; 4 uses
  %.070.1 = phi i32 [ %i.bx, %.thread147.1 ], [ %i.an, %bb.d ] ; 4 uses
  %.067.1 = phi i32 [ %i.bv, %.thread147.1 ], [ %i.al, %bb.d ] ; 3 uses
  %.065.1 = phi i32 [ %i.by, %.thread147.1 ], [ %i.ao, %bb.d ] ; 4 uses
  %i.at = sub i32 %.072.1, %.070.1
  %i.au = ashr i32 %i.at, 1
  %i.av = add i32 %i.au, %.070.1                  ; 6 uses
  %i.aw = tail call i32 @llvm.smin.i32(i32 %.067.1, i32 %.065.1) ; 3 uses
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.ba = xor i32 %i.aw, -1
  %i.bb = add i32 %i.az, %i.ba                    ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, -1
  br i1 %i.bc, label %.lr.ph.1, label %.thread147.1

.lr.ph.1:                                         ; preds = %select.unfold.1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.1
  %.05993.1 = phi i32 [ %i.bb, %.lr.ph.1 ], [ %i.bt, %bb.g ] ; 3 uses
  %.06092.1 = phi i32 [ %i.aw, %.lr.ph.1 ], [ %i.bs, %bb.g ] ; 5 uses
  %i.be = sub i32 %i.b, %.06092.1
  %i.bf = icmp eq i32 %i.be, %i.d
  br i1 %i.bf, label %.thread147.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = sub i32 0, %.06092.1
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.h, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = load ptr, ptr %i.bd, align 8
  %i.bm = zext nneg i32 %.05993.1 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = sub nsw i32 %i.bk, %i.bp
  %.fr.1 = freeze i32 %i.bq                       ; 2 uses
  %.not.1 = icmp eq i32 %.fr.1, 0
  br i1 %.not.1, label %bb.g, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.f
end_hunk_0
