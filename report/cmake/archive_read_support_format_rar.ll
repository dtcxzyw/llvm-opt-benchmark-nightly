Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_rar?download=true
inline.NumInlined: 106
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@create_code:bb.a

bb.t:                                             ; preds = %bb.s, %._crit_edge.loopexit.i
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.54) #20
  br label %add_value.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.bi, ptr %i.bc, align 4, !tbaa !131
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !131
  %i.bj = add nsw i32 %.12753, 1
  %i.bk = add nsw i32 %.154, -1
  %i.bl = icmp slt i32 %.154, 2
  br i1 %i.bl, label %add_value.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.d
  %.228 = phi i32 [ %.12753, %bb.d ], [ %i.bj, %bb.u ] ; 2 uses
  %.2 = phi i32 [ %.154, %bb.d ], [ %i.bk, %bb.u ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.w, label %bb.d, !llvm.loop !282

bb.w:                                             ; preds = %bb.v
  %i.bm = icmp slt i32 %.2, 1
  br i1 %i.bm, label %add_value.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = shl i32 %.228, 1
  %i.bo = add nuw nsw i32 %.03155, 1              ; 2 uses
  %exitcond61.not = icmp eq i32 %i.bo, 16
  br i1 %exitcond61.not, label %add_value.exit.thread, label %.preheader, !llvm.loop !283

add_value.exit.thread:                            ; preds = %bb.x, %bb.w, %bb.u, %bb.t, %bb.p, %bb.k, %bb.b
  %.032 = phi i32 [ -30, %bb.b ], [ -30, %bb.t ], [ -30, %bb.p ], [ 0, %bb.u ], [ -30, %bb.k ], [ 0, %bb.w ], [ 0, %bb.x ]
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_next_symbol(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !159  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !160
  %i.g = icmp slt i32 %i.d, %i.f
  %i.h = tail call i32 @llvm.smin.i32(i32 %i.d, i32 10)
  %spec.select.i = select i1 %i.g, i32 10, i32 %i.h ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %spec.select.i, ptr %i.i, align 8, !tbaa !286
  %i.j = zext nneg i32 %spec.select.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 8) #21 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !148
  %i.m = tail call fastcc i32 @make_table_recurse(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.l, i32 noundef 0, i32 noundef %spec.select.i)
  %.not57 = icmp eq i32 %i.m, 0
  br i1 %.not57, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20280 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 20288 ; 6 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !139  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !286  ; 2 uses
  %.not58 = icmp slt i32 %i.s, %i.u
  br i1 %.not58, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc i32 @rar_br_fillup(ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %.not59 = icmp eq i32 %i.v, 0
  %.pre = load i32, ptr %i.r, align 8, !tbaa !139 ; 2 uses
  %.pre68 = load i32, ptr %i.t, align 8, !tbaa !286 ; 2 uses
  %.not60 = icmp slt i32 %.pre, %.pre68
  %or.cond = select i1 %.not59, i1 %.not60, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.40) #20
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  store i8 0, ptr %i.w, align 8, !tbaa !120
  br label %.loopexit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.x = phi i32 [ %i.u, %bb.c ], [ %.pre68, %bb.d ] ; 3 uses
  %i.y = phi i32 [ %i.s, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.z = load i64, ptr %i.q, align 8, !tbaa !146
  %i.aa = sub nsw i32 %i.y, %i.x                  ; 3 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = lshr i64 %i.z, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = sext i32 %i.x to i64
  %i.af = getelementptr inbounds [4 x i8], ptr @cache_masks, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !131
  %i.ah = and i32 %i.ag, %i.ad
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !162 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !163 ; 2 uses
  %i.ao = icmp slt i32 %i.al, 0
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.55) #20
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %.not61 = icmp sgt i32 %i.al, %i.x
  br i1 %.not61, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = sub nsw i32 %i.y, %i.al
  store i32 %i.ap, ptr %i.r, align 8, !tbaa !139
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  store i32 %i.aa, ptr %i.r, align 8, !tbaa !139
  %.pre69 = load ptr, ptr %1, align 8, !tbaa !147
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %i.aq = phi i32 [ %i.aa, %bb.j ], [ %i.bd, %bb.o ] ; 2 uses
  %i.ar = phi ptr [ %.pre69, %bb.j ], [ %i.bh, %bb.o ]
  %.0 = phi i32 [ %i.an, %bb.j ], [ %i.bk, %bb.o ]
  %i.as = sext i32 %.0 to i64                     ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !131 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !131
  %.not62 = icmp eq i32 %i.au, %i.aw
  br i1 %.not62, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = icmp sgt i32 %i.aq, 0
  br i1 %i.ax, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call fastcc i32 @rar_br_fillup(ptr noundef %0, ptr noundef nonnull %i.q)
  %.not63 = icmp ne i32 %i.ay, 0
  %.pre70 = load i32, ptr %i.r, align 8, !tbaa !139 ; 2 uses
  %i.az = icmp sgt i32 %.pre70, 0
  %or.cond79 = select i1 %.not63, i1 true, i1 %i.az
  br i1 %or.cond79, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.40) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  store i8 0, ptr %i.ba, align 8, !tbaa !120
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.bb = phi i32 [ %i.aq, %bb.l ], [ %.pre70, %bb.m ]
  %i.bc = load i64, ptr %i.q, align 8, !tbaa !146
  %i.bd = add nsw i32 %i.bb, -1                   ; 3 uses
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = lshr i64 %i.bc, %i.be
  %i.bg = and i64 %i.bf, 1
  store i32 %i.bd, ptr %i.r, align 8, !tbaa !139
  %i.bh = load ptr, ptr %1, align 8, !tbaa !147   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.as
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bg
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !131 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.p, label %bb.k, !llvm.loop !285

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.55) #20
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.b, %bb.p, %bb.n, %bb.i, %bb.g, %bb.e
  %.053 = phi i32 [ -1, %bb.g ], [ %i.an, %bb.i ], [ -1, %bb.p ], [ -1, %bb.n ], [ -1, %bb.b ], [ -1, %bb.e ], [ %i.au, %bb.k ]
  ret i32 %.053
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @make_table_recurse(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %.not75 = icmp eq ptr %i.a, null
  br i1 %.not75, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph141

tailrecurse._crit_edge:                           ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.56) #20
  br label %.loopexit

.lr.ph141:                                        ; preds = %.lr.ph, %tailrecurse
  %accumulator.tr76140 = phi i32 [ %i.ax, %tailrecurse ], [ 0, %.lr.ph ] ; 7 uses
  %.tr5577139 = phi i32 [ %i.at, %tailrecurse ], [ %2, %.lr.ph ] ; 3 uses
  %.tr5678138 = phi ptr [ %i.aw, %tailrecurse ], [ %3, %.lr.ph ] ; 13 uses
  %.tr5779137 = phi i32 [ %i.ao, %tailrecurse ], [ %4, %.lr.ph ] ; 9 uses
  %i.d = phi ptr [ %i.aq, %tailrecurse ], [ %i.a, %.lr.ph ]
  %i.e = load i32, ptr %i.b, align 8, !tbaa !158
  %.not53 = icmp slt i32 %.tr5577139, %i.e
  br i1 %.not53, label %bb.b, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph141, %tailrecurse
  %accumulator.tr76.lcssa.ph = phi i32 [ %i.ax, %tailrecurse ], [ %accumulator.tr76140, %.lr.ph141 ]
  %i.f = or i32 %accumulator.tr76.lcssa.ph, -30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph
  %accumulator.tr76.lcssa = phi i32 [ -30, %.lr.ph ], [ %i.f, %._crit_edge.loopexit ]
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.57) #20
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph141
  %i.g = sub nsw i32 %5, %.tr5779137              ; 2 uses
  %i.h = shl nuw i32 1, %i.g                      ; 4 uses
  %i.i = zext nneg i32 %.tr5577139 to i64         ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.i ; 10 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !131  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !131
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %6 = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.not82 = icmp eq i32 %i.g, 31
  br i1 %.not82, label %.loopexit, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %.preheader
  %smax = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %min.iters.check = icmp slt i32 %i.h, 10
  br i1 %min.iters.check, label %.lr.ph81.preheader149, label %vector.memcheck

.lr.ph81.preheader149:                            ; preds = %vector.memcheck, %.lr.ph81.preheader
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.o = icmp slt i32 %i.h, 4
  br i1 %i.o, label %.lr.ph81.epil.preheader, label %.lr.ph81.preheader149.new

.lr.ph81.preheader149.new:                        ; preds = %.lr.ph81.preheader149
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph81

vector.memcheck:                                  ; preds = %.lr.ph81.preheader
  %i.p = shl nuw nsw i64 %wide.trip.count, 3
  %i.q = getelementptr i8, ptr %.tr5678138, i64 %i.p
  %bound0 = icmp ult ptr %.tr5678138, %6
  %bound1 = icmp ult ptr %i.j, %i.q
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph81.preheader149, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644
  %i.r = load i32, ptr %i.j, align 4, !tbaa !131, !alias.scope !293
  %broadcast.splatinsert146 = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.tr5779137, i64 0
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %broadcast.splatinsert146, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %index
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %interleaved.vec, ptr %i.s, align 4, !tbaa !131, !alias.scope !294, !noalias !293
  store <4 x i32> %interleaved.vec, ptr %i.u, align 4, !tbaa !131, !alias.scope !294, !noalias !293
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %.loopexit, label %vector.body, !llvm.loop !290

.lr.ph81:                                         ; preds = %.lr.ph81, %.lr.ph81.preheader149.new
  %indvars.iv = phi i64 [ 0, %.lr.ph81.preheader149.new ], [ %indvars.iv.next.3, %.lr.ph81 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph81.preheader149.new ], [ %niter.next.3, %.lr.ph81 ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %indvars.iv ; 2 uses
  store i32 %.tr5779137, ptr %i.w, align 4, !tbaa !162
  %i.x = load i32, ptr %i.j, align 4, !tbaa !131
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !163
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %indvars.iv ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %.tr5779137, ptr %i.aa, align 4, !tbaa !162
  %i.ab = load i32, ptr %i.j, align 4, !tbaa !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !163
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %indvars.iv ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 %.tr5779137, ptr %i.ae, align 4, !tbaa !162
  %i.af = load i32, ptr %i.j, align 4, !tbaa !131
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !163
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %indvars.iv ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 %.tr5779137, ptr %i.ai, align 4, !tbaa !162
  %i.aj = load i32, ptr %i.j, align 4, !tbaa !131
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !163
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph81, !llvm.loop !291

bb.c:                                             ; preds = %bb.b
  %i.al = icmp eq i32 %.tr5779137, %5
  br i1 %i.al, label %bb.d, label %tailrecurse

bb.d:                                             ; preds = %bb.c
  %i.am = add nsw i32 %5, 1
  store i32 %i.am, ptr %.tr5678138, align 4, !tbaa !162
  %i.an = getelementptr inbounds nuw i8, ptr %.tr5678138, i64 4
  store i32 %.tr5577139, ptr %i.an, align 4, !tbaa !163
  br label %.loopexit

tailrecurse:                                      ; preds = %bb.c
  %i.ao = add nsw i32 %.tr5779137, 1              ; 2 uses
  %i.ap = tail call fastcc i32 @make_table_recurse(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.k, ptr noundef %.tr5678138, i32 noundef %i.ao, i32 noundef %5)
  %i.aq = load ptr, ptr %1, align 8, !tbaa !147   ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !131 ; 2 uses
  %i.au = sdiv i32 %i.h, 2
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %.tr5678138, i64 %i.av
  %i.ax = or i32 %i.ap, %accumulator.tr76140      ; 2 uses
  %i.ay = icmp slt i32 %i.at, 0
  br i1 %i.ay, label %._crit_edge.loopexit, label %.lr.ph141

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph81
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph81.epil.preheader

.lr.ph81.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph81.preheader149
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph81.preheader149 ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph81.epil

.lr.ph81.epil:                                    ; preds = %.lr.ph81.epil, %.lr.ph81.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph81.epil ], [ %indvars.iv.epil.init, %.lr.ph81.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph81.epil ], [ 0, %.lr.ph81.epil.preheader ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %indvars.iv.epil ; 2 uses
  store i32 %.tr5779137, ptr %i.az, align 4, !tbaa !162
  %i.ba = load i32, ptr %i.j, align 4, !tbaa !131
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !163
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph81.epil, !llvm.loop !292

.loopexit:                                        ; preds = %vector.body, %.loopexit.loopexit.unr-lcssa, %.lr.ph81.epil, %.preheader, %bb.d, %._crit_edge, %tailrecurse._crit_edge
  %.047 = phi i32 [ %accumulator.tr76.lcssa, %._crit_edge ], [ -30, %tailrecurse._crit_edge ], [ %accumulator.tr76140, %bb.d ], [ %accumulator.tr76140, %.preheader ], [ %accumulator.tr76140, %.loopexit.loopexit.unr-lcssa ], [ %accumulator.tr76140, %.lr.ph81.epil ], [ %accumulator.tr76140, %vector.body ]
  ret i32 %.047
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @membr_next_rarvm_number(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !152  ; 4 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %.membr_fill.exit_crit_edge.i

.membr_fill.exit_crit_edge.i:                     ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !153
  br label %membr_bits.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !154
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %.lr.ph.i.i, label %membr_bits.exit.thread.thread

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted13.i.i = load i64, ptr %i.f, align 8, !tbaa !155 ; 2 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i, i64 %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.k = phi i32 [ %i.b, %.lr.ph.i.i ], [ %i.t, %bb.d ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.j, %umax.i.i
  br i1 %exitcond.not.i.i, label %membr_fill.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.i, align 8, !tbaa !153
  %i.m = shl i64 %i.l, 8
  %i.n = load ptr, ptr %0, align 8, !tbaa !150
  %i.o = add i64 %i.j, 1                          ; 2 uses
  store i64 %i.o, ptr %i.f, align 8, !tbaa !155
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j
  %i.q = load i8, ptr %i.p, align 1, !tbaa !37
  %i.r = zext i8 %i.q to i64
  %i.s = or disjoint i64 %i.m, %i.r               ; 2 uses
  store i64 %i.s, ptr %i.i, align 8, !tbaa !153
  %i.t = add nsw i32 %i.k, 8                      ; 3 uses
  store i32 %i.t, ptr %i.a, align 8, !tbaa !152
  %i.u = icmp slt i32 %i.k, -6
  br i1 %i.u, label %bb.c, label %membr_bits.exit, !llvm.loop !3

membr_fill.exit.thread.i:                         ; preds = %bb.c
  store i32 1, ptr %i.d, align 4, !tbaa !154
  br label %membr_bits.exit.thread.thread

membr_bits.exit:                                  ; preds = %bb.d, %.membr_fill.exit_crit_edge.i
  %i.v = phi i32 [ %i.b, %.membr_fill.exit_crit_edge.i ], [ %i.t, %bb.d ] ; 6 uses
  %.pre.i24 = phi i64 [ %.pre.i, %.membr_fill.exit_crit_edge.i ], [ %i.s, %bb.d ] ; 8 uses
  %i.w = add nsw i32 %i.v, -2                     ; 10 uses
  store i32 %i.w, ptr %i.a, align 8, !tbaa !152
  %i.x = zext nneg i32 %i.w to i64
  %i.y = lshr i64 %.pre.i24, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.z, 3
  switch i32 %i.aa, label %default.unreachable [
    i32 0, label %membr_bits.exit.thread
    i32 1, label %bb.g
    i32 2, label %bb.n
    i32 3, label %bb.r
  ]

membr_bits.exit.thread:                           ; preds = %membr_bits.exit
  %i.ab = icmp slt i32 %i.v, 6
  br i1 %i.ab, label %membr_bits.exit.thread.thread, label %.membr_fill.exit_crit_edge.i10

.membr_fill.exit_crit_edge.i10:                   ; preds = %membr_bits.exit.thread
  %.phi.trans.insert.i11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i12 = load i64, ptr %.phi.trans.insert.i11, align 8, !tbaa !153
  br label %membr_fill.exit.i13

membr_bits.exit.thread.thread:                    ; preds = %membr_fill.exit.thread.i, %bb.b, %membr_bits.exit.thread
  %i.ac = phi i32 [ %i.w, %membr_bits.exit.thread ], [ %i.k, %membr_fill.exit.thread.i ], [ %i.b, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !154
  %.not.i15 = icmp eq i32 %i.ae, 0
  br i1 %.not.i15, label %.lr.ph.i.i16, label %membr_bits.exit21

.lr.ph.i.i16:                                     ; preds = %membr_bits.exit.thread.thread
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !151
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted13.i.i17 = load i64, ptr %i.af, align 8, !tbaa !155 ; 2 uses
  %umax.i.i18 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i17, i64 %i.ah)
  br label %bb.e
end_hunk_0
