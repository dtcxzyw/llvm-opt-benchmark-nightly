Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/numeric?download=true
inline.NumInlined: 28
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@add_abs:bb.a
  %i.z = add i32 %i.r, %i.y
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.g
  %indvars.iv = phi i64 [ %i.t, %bb.b ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.096 = phi i32 [ 0, %bb.b ], [ %.3, %bb.g ]    ; 2 uses
  %.07495 = phi i32 [ %i.z, %bb.b ], [ %i.ab, %bb.g ]
  %.07594 = phi i32 [ %i.x, %bb.b ], [ %i.aa, %bb.g ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.aa = add i32 %.07594, -1                     ; 4 uses
  %i.ab = add i32 %.07495, -1                     ; 4 uses
  %i.ac = icmp sgt i32 %i.aa, -1
  %i.ad = icmp slt i32 %i.aa, %i.a
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nuw nsw i32 %.096, %i.ah
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.ai, %bb.d ], [ %.096, %bb.c ] ; 2 uses
  %i.aj = icmp sgt i32 %i.ab, -1
  %i.ak = icmp slt i32 %i.ab, %i.b
  %or.cond92 = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond92, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = zext nneg i32 %i.ab to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nuw nsw i32 %.1, %i.ao
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i32 [ %i.ap, %bb.f ], [ %.1, %bb.e ]  ; 2 uses
  %i.aq = icmp samesign ugt i32 %.2, 9            ; 2 uses
  %i.ar = trunc i32 %.2 to i8                     ; 2 uses
  %i.as = add i8 %i.ar, -10
  %.sink = select i1 %i.aq, i8 %i.as, i8 %i.ar
  %.3 = zext i1 %i.aq to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next
  store i8 %.sink, ptr %i.at, align 1
  %i.au = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.au, label %bb.c, label %.preheader.preheader, !llvm.loop !15

.preheader.preheader:                             ; preds = %bb.g
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.t
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %.077100 = phi i32 [ %i.ay, %bb.h ], [ %i.k, %.preheader.preheader ] ; 3 uses
  %.07999 = phi i32 [ %i.az, %bb.h ], [ %spec.store.select, %.preheader.preheader ] ; 6 uses
  %.08198 = phi ptr [ %i.ax, %bb.h ], [ %i.u, %.preheader.preheader ] ; 6 uses
  %i.av = load i8, ptr %.08198, align 1
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %.08198, i64 1
  %i.ay = add i32 %.077100, -1
  %i.az = add i32 %.07999, -1
  %i.ba = icmp sgt i32 %.07999, 1
  br i1 %i.ba, label %.preheader, label %.critedge2.thread120, !llvm.loop !16

.critedge:                                        ; preds = %.preheader
  %i.bb = icmp sgt i32 %.07999, 0
  br i1 %i.bb, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.critedge, %bb.i
  %.180101 = phi i32 [ %i.bh, %bb.i ], [ %.07999, %.critedge ] ; 4 uses
  %i.bc = zext nneg i32 %.180101 to i64
  %i.bd = getelementptr i8, ptr %.08198, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -1
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %.critedge2.thread120

bb.i:                                             ; preds = %.lr.ph
  %i.bh = add nsw i32 %.180101, -1
  %i.bi = icmp sgt i32 %.180101, 1
  br i1 %i.bi, label %.lr.ph, label %.critedge2.thread120, !llvm.loop !17

.critedge2:                                       ; preds = %.critedge
  %i.bj = icmp eq i32 %.07999, 0
  %spec.select = select i1 %i.bj, i32 0, i32 %.077100
  br label %.critedge2.thread120

.critedge2.thread120:                             ; preds = %bb.h, %bb.i, %.lr.ph, %.critedge2
  %.180.lcssa118 = phi i32 [ %.07999, %.critedge2 ], [ %.180101, %.lr.ph ], [ 0, %bb.i ], [ 0, %bb.h ]
  %.081.lcssa110116 = phi ptr [ %.08198, %.critedge2 ], [ %.08198, %bb.i ], [ %.08198, %.lr.ph ], [ %scevgep, %bb.h ]
  %i.bk = phi i32 [ %spec.select, %.critedge2 ], [ %.077100, %.lr.ph ], [ 0, %bb.i ], [ 0, %bb.h ]
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void @free(ptr noundef %i.bm) #16
  store i32 %.180.lcssa118, ptr %2, align 8
  store ptr %i.u, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.081.lcssa110116, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.bk, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x i32> %i.p, ptr %i.bp, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.critedge2.thread120
  %.082 = phi i32 [ 0, %.critedge2.thread120 ], [ -1, %bb.a ]
  ret i32 %.082
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 2) i32 @cmp_abs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 6 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0) ; 3 uses
  %i.h = sub i32 %i.b, %i.d                       ; 2 uses
  %i.i = sub i32 %i.b, %smax
  %wide.trip.count = zext nneg i32 %smax to i64
  %wide.trip.count84 = zext i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1
  %.not51 = icmp eq i8 %i.l, 0
  br i1 %.not51, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next, %wide.trip.count84
  br i1 %exitcond85.not, label %.critedge2.thread, label %bb.b, !llvm.loop !18

.critedge:                                        ; preds = %bb.b, %bb.a
  %.042.lcssa = phi i32 [ 0, %bb.a ], [ %smax, %bb.b ] ; 3 uses
  %.040.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.i, %bb.b ] ; 3 uses
  %i.m = icmp sgt i32 %i.d, %.040.lcssa
  br i1 %i.m, label %.lr.ph71, label %.critedge2

.lr.ph71:                                         ; preds = %.critedge
  %i.n = load i32, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %smax88 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0) ; 3 uses
  %i.p = sub i32 %i.d, %.040.lcssa                ; 2 uses
  %i.q = sub i32 %i.d, %smax88
  %wide.trip.count90 = zext nneg i32 %smax88 to i64
  %wide.trip.count92 = zext i32 %i.p to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph71, %bb.g
  %indvars.iv86 = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next87, %bb.g ] ; 3 uses
  %exitcond91.not = icmp eq i64 %indvars.iv86, %wide.trip.count90
  br i1 %exitcond91.not, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv86
  %i.t = load i8, ptr %i.s, align 1
  %.not50 = icmp eq i8 %i.t, 0
  br i1 %.not50, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count92
  br i1 %exitcond93.not, label %.critedge2.thread, label %bb.e, !llvm.loop !19

.critedge2.thread:                                ; preds = %bb.d, %bb.g
  %.042.lcssa122.ph = phi i32 [ %.042.lcssa, %bb.g ], [ %i.h, %bb.d ]
  %.041.lcssa.ph = phi i32 [ %i.p, %bb.g ], [ 0, %bb.d ]
  %.pre128.a = load i32, ptr %0, align 8
  br label %.preheader53

.critedge2:                                       ; preds = %bb.e, %.critedge
  %.041.lcssa = phi i32 [ 0, %.critedge ], [ %smax88, %bb.e ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.d, %.critedge ], [ %i.q, %bb.e ]
  %i.u = icmp eq i32 %.040.lcssa, %.0.lcssa
  %.pre = load i32, ptr %0, align 8               ; 2 uses
  br i1 %i.u, label %.preheader53, label %.critedge4

.preheader53:                                     ; preds = %.critedge2.thread, %.critedge2
  %.pre131 = phi i32 [ %.pre128.a, %.critedge2.thread ], [ %.pre, %.critedge2 ] ; 6 uses
  %.041.lcssa130 = phi i32 [ %.041.lcssa.ph, %.critedge2.thread ], [ %.041.lcssa, %.critedge2 ] ; 3 uses
  %.042.lcssa122129 = phi i32 [ %.042.lcssa122.ph, %.critedge2.thread ], [ %.042.lcssa, %.critedge2 ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %smax98 = tail call i32 @llvm.smax.i32(i32 %.042.lcssa122129, i32 %.pre131) ; 2 uses
  %i.x = icmp sgt i32 %.pre131, %.042.lcssa122129
  br i1 %i.x, label %.lr.ph149, label %.critedge4

.lr.ph149:                                        ; preds = %.preheader53
  %2 = zext i32 %.041.lcssa130 to i64
  %i.y = zext i32 %.042.lcssa122129 to i64
  %i.z = load i32, ptr %1, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94148, 1 ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96147, 1 ; 2 uses
  %i.aa = trunc nuw i64 %indvars.iv.next95 to i32 ; 2 uses
  %i.ab = icmp sgt i32 %.pre131, %i.aa
  %3 = trunc nuw i64 %indvars.iv.next97 to i32    ; 2 uses
  br i1 %i.ab, label %bb.i, label %.critedge4, !llvm.loop !20

bb.i:                                             ; preds = %.lr.ph149, %bb.h
  %4 = phi i32 [ %.041.lcssa130, %.lr.ph149 ], [ %3, %bb.h ] ; 2 uses
  %i.ac = phi i32 [ %.042.lcssa122129, %.lr.ph149 ], [ %i.aa, %bb.h ]
  %indvars.iv94148 = phi i64 [ %i.y, %.lr.ph149 ], [ %indvars.iv.next95, %bb.h ] ; 2 uses
  %indvars.iv96147 = phi i64 [ %2, %.lr.ph149 ], [ %indvars.iv.next97, %bb.h ] ; 2 uses
  %5 = icmp sgt i32 %i.z, %4
  br i1 %5, label %bb.j, label %.critedge4

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.v, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv94148
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  %i.ag = load ptr, ptr %i.w, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv96147
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %.not49 = icmp eq i8 %i.af, %i.ai
  br i1 %.not49, label %bb.h, label %bb.k, !llvm.loop !20

bb.k:                                             ; preds = %bb.j
  %i.aj = icmp ugt i8 %i.af, %i.ai
  %. = select i1 %i.aj, i32 1, i32 -1
  br label %.loopexit

.critedge4:                                       ; preds = %bb.h, %bb.i, %.preheader53, %.critedge2
  %.pre132 = phi i32 [ %.pre, %.critedge2 ], [ %.pre131, %.preheader53 ], [ %.pre131, %bb.i ], [ %.pre131, %bb.h ] ; 2 uses
  %.244 = phi i32 [ %.042.lcssa, %.critedge2 ], [ %smax98, %.preheader53 ], [ %smax98, %bb.h ], [ %i.ac, %bb.i ] ; 3 uses
  %.2 = phi i32 [ %.041.lcssa, %.critedge2 ], [ %.041.lcssa130, %.preheader53 ], [ %3, %bb.h ], [ %4, %bb.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %smax105 = tail call i32 @llvm.smax.i32(i32 %.244, i32 %.pre132)
  %wide.trip.count106 = sext i32 %smax105 to i64
  %exitcond107.not154.not = icmp slt i32 %.244, %.pre132
  br i1 %exitcond107.not154.not, label %.lr.ph156, label %.preheader

.lr.ph156:                                        ; preds = %.critedge4
  %i.al = sext i32 %.244 to i64
  %i.am = load ptr, ptr %i.ak, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next103 = add nsw i64 %indvars.iv102155, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count106
  br i1 %exitcond107.not, label %.preheader, label %bb.m, !llvm.loop !21

.preheader:                                       ; preds = %bb.l, %.critedge4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i32, ptr %1, align 8               ; 2 uses
  %smax111 = tail call i32 @llvm.smax.i32(i32 %.2, i32 %i.ao)
  %wide.trip.count112 = sext i32 %smax111 to i64
  %exitcond113.not157.not = icmp slt i32 %.2, %i.ao
  br i1 %exitcond113.not157.not, label %.lr.ph159, label %.loopexit

.lr.ph159:                                        ; preds = %.preheader
  %i.ap = sext i32 %.2 to i64
  %i.aq = load ptr, ptr %i.an, align 8
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph156, %bb.l
  %indvars.iv102155 = phi i64 [ %i.al, %.lr.ph156 ], [ %indvars.iv.next103, %bb.l ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %indvars.iv102155
  %i.as = load i8, ptr %i.ar, align 1
  %.not48 = icmp eq i8 %i.as, 0
  br i1 %.not48, label %bb.l, label %.loopexit, !llvm.loop !21

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next109 = add nsw i64 %indvars.iv108158, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count112
  br i1 %exitcond113.not, label %.loopexit, label %bb.o, !llvm.loop !22

bb.o:                                             ; preds = %.lr.ph159, %bb.n
  %indvars.iv108158 = phi i64 [ %i.ap, %.lr.ph159 ], [ %indvars.iv.next109, %bb.n ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %indvars.iv108158
  %i.au = load i8, ptr %i.at, align 1
  %.not = icmp eq i8 %i.au, 0
  br i1 %.not, label %bb.n, label %..loopexit.loopexit_crit_edge, !llvm.loop !22

..loopexit.loopexit_crit_edge:                    ; preds = %bb.o
  br label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %bb.c, %bb.f, %bb.m, %bb.n, %.preheader, %..loopexit.loopexit_crit_edge, %bb.k
  %.046 = phi i32 [ 0, %bb.n ], [ -1, %bb.f ], [ %., %bb.k ], [ 1, %bb.m ], [ 0, %.preheader ], [ -1, %..loopexit.loopexit_crit_edge ], [ 1, %bb.c ]
  ret i32 %.046
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @sub_abs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = load i32, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load <2 x i32>, ptr %i.i, align 8
  %i.l = load <2 x i32>, ptr %i.j, align 8
  %i.m = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.k, <2 x i32> %i.l) ; 2 uses
  %i.n = extractelement <2 x i32> %i.m, i64 0
  %i.o = add i32 %i.n, 1                          ; 3 uses
  %i.p = add i32 %i.o, %i.h
  %.fr = freeze i32 %i.p
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.fr, i32 1) ; 2 uses
  %i.q = zext nneg i32 %spec.store.select to i64  ; 3 uses
  %i.r = tail call ptr @pgtypes_alloc(i64 noundef %i.q) #16 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.g, align 4
  %i.u = add i32 %i.o, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add i32 %i.o, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.g
  %indvars.iv = phi i64 [ %i.q, %bb.b ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.091 = phi i32 [ 0, %bb.b ], [ %.2.lobit, %bb.g ] ; 2 uses
  %.07190 = phi i32 [ %i.x, %bb.b ], [ %i.z, %bb.g ]
  %.07289 = phi i32 [ %i.u, %bb.b ], [ %i.y, %bb.g ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.y = add i32 %.07289, -1                      ; 4 uses
  %i.z = add i32 %.07190, -1                      ; 4 uses
  %i.aa = icmp sgt i32 %i.y, -1
  %i.ab = icmp slt i32 %i.y, %i.a
  %or.cond = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = zext nneg i32 %i.y to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %.091, %i.af
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.ag, %bb.d ], [ %.091, %bb.c ] ; 2 uses
  %i.ah = icmp sgt i32 %i.z, -1
  %i.ai = icmp slt i32 %i.z, %i.b
  %or.cond87 = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond87, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = zext nneg i32 %i.z to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = sub nsw i32 %.1, %i.am
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i32 [ %i.an, %bb.f ], [ %.1, %bb.e ]  ; 3 uses
  %i.ao = icmp slt i32 %.2, 0
  %i.ap = trunc i32 %.2 to i8                     ; 2 uses
  %i.aq = add i8 %i.ap, 10
  %.sink = select i1 %i.ao, i8 %i.aq, i8 %i.ap
  %.2.lobit = ashr i32 %.2, 31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next
  store i8 %.sink, ptr %i.ar, align 1
  %i.as = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.as, label %bb.c, label %.preheader.preheader, !llvm.loop !23

.preheader.preheader:                             ; preds = %bb.g
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.q
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %.07495 = phi i32 [ %i.aw, %bb.h ], [ %i.h, %.preheader.preheader ] ; 3 uses
  %.07694 = phi i32 [ %i.ax, %bb.h ], [ %spec.store.select, %.preheader.preheader ] ; 6 uses
  %.07893 = phi ptr [ %i.av, %bb.h ], [ %i.r, %.preheader.preheader ] ; 6 uses
  %i.at = load i8, ptr %.07893, align 1
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %.07893, i64 1
  %i.aw = add i32 %.07495, -1
  %i.ax = add i32 %.07694, -1
  %i.ay = icmp sgt i32 %.07694, 1
  br i1 %i.ay, label %.preheader, label %.critedge2.thread115, !llvm.loop !24

.critedge:                                        ; preds = %.preheader
  %i.az = icmp sgt i32 %.07694, 0
  br i1 %i.az, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.critedge, %bb.i
  %.17796 = phi i32 [ %i.bf, %bb.i ], [ %.07694, %.critedge ] ; 4 uses
  %i.ba = zext nneg i32 %.17796 to i64
  %i.bb = getelementptr i8, ptr %.07893, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -1
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.i, label %.critedge2.thread115

bb.i:                                             ; preds = %.lr.ph
  %i.bf = add nsw i32 %.17796, -1
  %i.bg = icmp sgt i32 %.17796, 1
  br i1 %i.bg, label %.lr.ph, label %.critedge2.thread115, !llvm.loop !25

.critedge2:                                       ; preds = %.critedge
  %i.bh = icmp eq i32 %.07694, 0
  %spec.select = select i1 %i.bh, i32 0, i32 %.07495
  br label %.critedge2.thread115

.critedge2.thread115:                             ; preds = %bb.h, %bb.i, %.lr.ph, %.critedge2
  %.177.lcssa113 = phi i32 [ %.07694, %.critedge2 ], [ %.17796, %.lr.ph ], [ 0, %bb.i ], [ 0, %bb.h ]
  %.078.lcssa105111 = phi ptr [ %.07893, %.critedge2 ], [ %.07893, %bb.i ], [ %.07893, %.lr.ph ], [ %scevgep, %bb.h ]
  %i.bi = phi i32 [ %spec.select, %.critedge2 ], [ %.07495, %.lr.ph ], [ 0, %bb.i ], [ 0, %bb.h ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void @free(ptr noundef %i.bk) #16
  store i32 %.177.lcssa113, ptr %2, align 8
  store ptr %i.r, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.078.lcssa105111, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.bi, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x i32> %i.m, ptr %i.bn, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.critedge2.thread115
  %.079 = phi i32 [ 0, %.critedge2.thread115 ], [ -1, %bb.a ]
  ret i32 %.079
end_hunk_0
