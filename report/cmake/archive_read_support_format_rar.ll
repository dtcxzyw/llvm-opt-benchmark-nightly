Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_rar?download=true
inline.NumInlined: 106
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@create_code:bb.a
  br i1 %i.bh, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.loopexit.i
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.54) #20
  br label %add_value.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.bi, ptr %i.bc, align 4, !tbaa !164
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !164
  %i.bj = add nsw i32 %.12753, 1
  %i.bk = add nsw i32 %.154, -1
  %i.bl = icmp slt i32 %.154, 2
  br i1 %i.bl, label %add_value.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.d
  %.228 = phi i32 [ %.12753, %bb.d ], [ %i.bj, %bb.u ] ; 2 uses
  %.2 = phi i32 [ %.154, %bb.d ], [ %i.bk, %bb.u ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.w, label %bb.d, !llvm.loop !280

bb.w:                                             ; preds = %bb.v
  %i.bm = icmp slt i32 %.2, 1
  br i1 %i.bm, label %add_value.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = shl i32 %.228, 1
  %i.bo = add nuw nsw i32 %.03155, 1              ; 2 uses
  %exitcond61.not = icmp eq i32 %i.bo, 16
  br i1 %exitcond61.not, label %add_value.exit.thread, label %.preheader, !llvm.loop !281

add_value.exit.thread:                            ; preds = %bb.x, %bb.w, %bb.u, %bb.t, %bb.p, %bb.k, %bb.b
  %.032 = phi i32 [ -30, %bb.b ], [ -30, %bb.t ], [ -30, %bb.p ], [ 0, %bb.u ], [ -30, %bb.k ], [ 0, %bb.w ], [ 0, %bb.x ]
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_next_symbol(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !277  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !278
  %i.g = icmp slt i32 %i.d, %i.f
  %i.h = tail call i32 @llvm.smin.i32(i32 %i.d, i32 10)
  %spec.select.i = select i1 %i.g, i32 10, i32 %i.h ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %spec.select.i, ptr %i.i, align 8, !tbaa !282
  %i.j = zext nneg i32 %spec.select.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 8) #21 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !220
  %i.m = tail call fastcc i32 @make_table_recurse(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.l, i32 noundef 0, i32 noundef %spec.select.i)
  %.not57 = icmp eq i32 %i.m, 0
  br i1 %.not57, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20280 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 20288 ; 6 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !190  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !282  ; 2 uses
  %.not58 = icmp slt i32 %i.s, %i.u
  br i1 %.not58, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc i32 @rar_br_fillup(ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %.not59 = icmp eq i32 %i.v, 0
  %.pre = load i32, ptr %i.r, align 8, !tbaa !190 ; 2 uses
  %.pre68 = load i32, ptr %i.t, align 8, !tbaa !282 ; 2 uses
  %.not60 = icmp slt i32 %.pre, %.pre68
  %or.cond = select i1 %.not59, i1 %.not60, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.40) #20
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  store i8 0, ptr %i.w, align 8, !tbaa !153
  br label %.loopexit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.x = phi i32 [ %i.u, %bb.c ], [ %.pre68, %bb.d ] ; 3 uses
  %i.y = phi i32 [ %i.s, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.z = load i64, ptr %i.q, align 8, !tbaa !207
  %i.aa = sub nsw i32 %i.y, %i.x                  ; 3 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = lshr i64 %i.z, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = sext i32 %i.x to i64
  %i.af = getelementptr inbounds [4 x i8], ptr @cache_masks, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !164
  %i.ah = and i32 %i.ag, %i.ad
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !220
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !283 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !285 ; 2 uses
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
  store i32 %i.ap, ptr %i.r, align 8, !tbaa !190
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  store i32 %i.aa, ptr %i.r, align 8, !tbaa !190
  %.pre69 = load ptr, ptr %1, align 8, !tbaa !219
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %i.aq = phi i32 [ %i.aa, %bb.j ], [ %i.bd, %bb.o ] ; 2 uses
  %i.ar = phi ptr [ %.pre69, %bb.j ], [ %i.bh, %bb.o ]
  %.0 = phi i32 [ %i.an, %bb.j ], [ %i.bk, %bb.o ]
  %i.as = sext i32 %.0 to i64                     ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !164 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !164
  %.not62 = icmp eq i32 %i.au, %i.aw
  br i1 %.not62, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = icmp sgt i32 %i.aq, 0
  br i1 %i.ax, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call fastcc i32 @rar_br_fillup(ptr noundef %0, ptr noundef nonnull %i.q)
  %.not63 = icmp ne i32 %i.ay, 0
  %.pre70 = load i32, ptr %i.r, align 8, !tbaa !190 ; 2 uses
  %i.az = icmp sgt i32 %.pre70, 0
  %or.cond79 = select i1 %.not63, i1 true, i1 %i.az
  br i1 %or.cond79, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.40) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  store i8 0, ptr %i.ba, align 8, !tbaa !153
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.bb = phi i32 [ %i.aq, %bb.l ], [ %.pre70, %bb.m ]
  %i.bc = load i64, ptr %i.q, align 8, !tbaa !207
  %i.bd = add nsw i32 %i.bb, -1                   ; 3 uses
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = lshr i64 %i.bc, %i.be
  %i.bg = and i64 %i.bf, 1
  store i32 %i.bd, ptr %i.r, align 8, !tbaa !190
  %i.bh = load ptr, ptr %1, align 8, !tbaa !219   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.as
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bg
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !164 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.p, label %bb.k, !llvm.loop !286

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
  %i.a = load ptr, ptr %1, align 8, !tbaa !219    ; 2 uses
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
  %accumulator.tr76140 = phi i32 [ %i.al, %tailrecurse ], [ 0, %.lr.ph ] ; 6 uses
  %.tr5577139 = phi i32 [ %i.ah, %tailrecurse ], [ %2, %.lr.ph ] ; 4 uses
  %.tr5678138 = phi ptr [ %i.ak, %tailrecurse ], [ %3, %.lr.ph ] ; 9 uses
  %.tr5779137 = phi i32 [ %i.ac, %tailrecurse ], [ %4, %.lr.ph ] ; 5 uses
  %i.d = phi ptr [ %i.ae, %tailrecurse ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !275
  %.not53 = icmp slt i32 %.tr5577139, %i.e
  br i1 %.not53, label %bb.b, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph141, %tailrecurse
  %accumulator.tr76.lcssa.ph = phi i32 [ %i.al, %tailrecurse ], [ %accumulator.tr76140, %.lr.ph141 ]
  %i.f = or i32 %accumulator.tr76.lcssa.ph, -30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph
  %accumulator.tr76.lcssa = phi i32 [ -30, %.lr.ph ], [ %i.f, %._crit_edge.loopexit ]
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.57) #20
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph141
  %i.g = sub nsw i32 %5, %.tr5779137              ; 2 uses
  %i.h = shl nuw i32 1, %i.g                      ; 3 uses
  %i.i = zext nneg i32 %.tr5577139 to i64         ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.i ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !164  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !164
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not82 = icmp eq i32 %i.g, 31
  br i1 %.not82, label %.loopexit, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %.preheader
  %6 = sext i32 %i.h to i64                       ; 3 uses
  %7 = tail call i64 @llvm.smax.i64(i64 %6, i64 1) ; 2 uses
  %min.iters.check = icmp slt i32 %i.h, 12
  br i1 %min.iters.check, label %.lr.ph81.preheader146, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph81.preheader
  %i.o = shl nuw nsw i64 %6, 3
  %scevgep = getelementptr i8, ptr %.tr5678138, i64 %i.o
  %scevgep144 = getelementptr i8, ptr %i.d, i64 4
  %i.p = zext nneg i32 %.tr5577139 to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %scevgep145 = getelementptr i8, ptr %scevgep144, i64 %i.q
  %bound0 = icmp ult ptr %.tr5678138, %scevgep145
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph81.preheader146, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %7, 2147483644                 ; 3 uses
  %i.r = load i32, ptr %i.j, align 4, !tbaa !164, !alias.scope !287
  %broadcast.splatinsert146 = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.tr5779137, i64 0
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %broadcast.splatinsert146, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %index
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %interleaved.vec, ptr %i.s, align 4, !tbaa !164, !alias.scope !290, !noalias !287
  store <4 x i32> %interleaved.vec, ptr %i.u, align 4, !tbaa !164, !alias.scope !290, !noalias !287
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph81.preheader146

.lr.ph81.preheader146:                            ; preds = %vector.memcheck, %.lr.ph81.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph81.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader146, %.lr.ph81
  %niter = phi i64 [ %niter.next.3, %.lr.ph81 ], [ %indvars.iv.ph, %.lr.ph81.preheader146 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %niter ; 2 uses
  store i32 %.tr5779137, ptr %i.w, align 4, !tbaa !283
  %i.x = load i32, ptr %i.j, align 4, !tbaa !164
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !285
  %niter.next.3 = add nuw nsw i64 %niter, 1       ; 2 uses
  %8 = icmp slt i64 %niter.next.3, %6
  br i1 %8, label %.lr.ph81, label %.loopexit, !llvm.loop !293

bb.c:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %.tr5779137, %5
  br i1 %i.z, label %bb.d, label %tailrecurse

bb.d:                                             ; preds = %bb.c
  %i.aa = add nsw i32 %5, 1
  store i32 %i.aa, ptr %.tr5678138, align 4, !tbaa !283
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr5678138, i64 4
  store i32 %.tr5577139, ptr %i.ab, align 4, !tbaa !285
  br label %.loopexit

tailrecurse:                                      ; preds = %bb.c
  %i.ac = add nsw i32 %.tr5779137, 1              ; 2 uses
  %i.ad = tail call fastcc i32 @make_table_recurse(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.k, ptr noundef %.tr5678138, i32 noundef %i.ac, i32 noundef %5)
  %i.ae = load ptr, ptr %1, align 8, !tbaa !219   ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !164 ; 2 uses
  %i.ai = sdiv i32 %i.h, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %.tr5678138, i64 %i.aj
  %i.al = or i32 %i.ad, %accumulator.tr76140      ; 2 uses
  %i.am = icmp slt i32 %i.ah, 0
  br i1 %i.am, label %._crit_edge.loopexit, label %.lr.ph141

.loopexit:                                        ; preds = %.lr.ph81, %middle.block, %.preheader, %bb.d, %._crit_edge, %tailrecurse._crit_edge
  %.047 = phi i32 [ %accumulator.tr76.lcssa, %._crit_edge ], [ -30, %tailrecurse._crit_edge ], [ %accumulator.tr76140, %bb.d ], [ %accumulator.tr76140, %.preheader ], [ %accumulator.tr76140, %middle.block ], [ %accumulator.tr76140, %.lr.ph81 ]
  ret i32 %.047
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @membr_next_rarvm_number(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !237  ; 4 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %.membr_fill.exit_crit_edge.i

.membr_fill.exit_crit_edge.i:                     ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !238
  br label %membr_bits.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !239
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %.lr.ph.i.i, label %membr_bits.exit.thread.thread

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !229
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted13.i.i = load i64, ptr %i.f, align 8, !tbaa !240 ; 2 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i, i64 %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.k = phi i32 [ %i.b, %.lr.ph.i.i ], [ %i.t, %bb.d ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.j, %umax.i.i
  br i1 %exitcond.not.i.i, label %membr_fill.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.i, align 8, !tbaa !238
  %i.m = shl i64 %i.l, 8
  %i.n = load ptr, ptr %0, align 8, !tbaa !227
  %i.o = add i64 %i.j, 1                          ; 2 uses
  store i64 %i.o, ptr %i.f, align 8, !tbaa !240
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j
  %i.q = load i8, ptr %i.p, align 1, !tbaa !33
  %i.r = zext i8 %i.q to i64
  %i.s = or disjoint i64 %i.m, %i.r               ; 2 uses
  store i64 %i.s, ptr %i.i, align 8, !tbaa !238
  %i.t = add nsw i32 %i.k, 8                      ; 3 uses
  store i32 %i.t, ptr %i.a, align 8, !tbaa !237
  %i.u = icmp slt i32 %i.k, -6
  br i1 %i.u, label %bb.c, label %membr_bits.exit, !llvm.loop !241

membr_fill.exit.thread.i:                         ; preds = %bb.c
  store i32 1, ptr %i.d, align 4, !tbaa !239
  br label %membr_bits.exit.thread.thread

membr_bits.exit:                                  ; preds = %bb.d, %.membr_fill.exit_crit_edge.i
  %i.v = phi i32 [ %i.b, %.membr_fill.exit_crit_edge.i ], [ %i.t, %bb.d ] ; 6 uses
  %.pre.i24 = phi i64 [ %.pre.i, %.membr_fill.exit_crit_edge.i ], [ %i.s, %bb.d ] ; 8 uses
  %i.w = add nsw i32 %i.v, -2                     ; 10 uses
  store i32 %i.w, ptr %i.a, align 8, !tbaa !237
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
  %.pre.i12 = load i64, ptr %.phi.trans.insert.i11, align 8, !tbaa !238
  br label %membr_fill.exit.i13

membr_bits.exit.thread.thread:                    ; preds = %membr_fill.exit.thread.i, %bb.b, %membr_bits.exit.thread
  %i.ac = phi i32 [ %i.w, %membr_bits.exit.thread ], [ %i.k, %membr_fill.exit.thread.i ], [ %i.b, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !239
  %.not.i15 = icmp eq i32 %i.ae, 0
  br i1 %.not.i15, label %.lr.ph.i.i16, label %membr_bits.exit21

.lr.ph.i.i16:                                     ; preds = %membr_bits.exit.thread.thread
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !229
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted13.i.i17 = load i64, ptr %i.af, align 8, !tbaa !240 ; 2 uses
  %umax.i.i18 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i17, i64 %i.ah)
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i16
  %i.aj = phi i64 [ %.promoted13.i.i17, %.lr.ph.i.i16 ], [ %i.ao, %bb.f ] ; 3 uses
  %i.ak = phi i32 [ %i.ac, %.lr.ph.i.i16 ], [ %i.at, %bb.f ] ; 2 uses
  %exitcond.not.i.i19 = icmp eq i64 %i.aj, %umax.i.i18
  br i1 %exitcond.not.i.i19, label %membr_fill.exit.thread.i20, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !238
  %i.am = shl i64 %i.al, 8
  %i.an = load ptr, ptr %0, align 8, !tbaa !227
  %i.ao = add i64 %i.aj, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.af, align 8, !tbaa !240
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !33
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.am, %i.ar            ; 2 uses
  store i64 %i.as, ptr %i.ai, align 8, !tbaa !238
  %i.at = add nsw i32 %i.ak, 8                    ; 3 uses
  store i32 %i.at, ptr %i.a, align 8, !tbaa !237
  %i.au = icmp slt i32 %i.ak, -4
  br i1 %i.au, label %bb.e, label %membr_fill.exit.i13, !llvm.loop !241

membr_fill.exit.thread.i20:                       ; preds = %bb.e
  store i32 1, ptr %i.ad, align 4, !tbaa !239
  br label %membr_bits.exit21

membr_fill.exit.i13:                              ; preds = %bb.f, %.membr_fill.exit_crit_edge.i10
  %i.av = phi i32 [ %i.w, %.membr_fill.exit_crit_edge.i10 ], [ %i.at, %bb.f ]
  %i.aw = phi i64 [ %.pre.i12, %.membr_fill.exit_crit_edge.i10 ], [ %i.as, %bb.f ]
  %i.ax = add nsw i32 %i.av, -4                   ; 2 uses
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !237
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = lshr i64 %i.aw, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 15
  br label %membr_bits.exit21

bb.g:                                             ; preds = %membr_bits.exit
  %i.bc = icmp samesign ult i32 %i.v, 10
  br i1 %i.bc, label %bb.h, label %.membr_fill.exit_crit_edge.i22

.membr_fill.exit_crit_edge.i22:                   ; preds = %bb.g
  %i.bd = add nsw i32 %i.v, -10
  br label %membr_bits.exit33

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !239
  %.not.i27 = icmp eq i32 %i.bf, 0
  br i1 %.not.i27, label %.lr.ph.i.i28, label %membr_bits.exit33.thread

.lr.ph.i.i28:                                     ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !229
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.promoted13.i.i29 = load i64, ptr %i.bg, align 8, !tbaa !240 ; 2 uses
  %umax.i.i30 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i29, i64 %i.bi)
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i28
  %i.bk = phi i64 [ %.pre.i24, %.lr.ph.i.i28 ], [ %i.bt, %bb.j ] ; 2 uses
  %i.bl = phi i64 [ %.promoted13.i.i29, %.lr.ph.i.i28 ], [ %i.bp, %bb.j ] ; 3 uses
  %i.bm = phi i32 [ %i.w, %.lr.ph.i.i28 ], [ %i.bu, %bb.j ] ; 4 uses
  %exitcond.not.i.i31 = icmp eq i64 %i.bl, %umax.i.i30
  br i1 %exitcond.not.i.i31, label %membr_fill.exit.thread.i32, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = shl i64 %i.bk, 8
  %i.bo = load ptr, ptr %0, align 8, !tbaa !227
  %i.bp = add i64 %i.bl, 1                        ; 2 uses
  store i64 %i.bp, ptr %i.bg, align 8, !tbaa !240
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !33
  %i.bs = zext i8 %i.br to i64
  %i.bt = or disjoint i64 %i.bn, %i.bs            ; 3 uses
  store i64 %i.bt, ptr %i.bj, align 8, !tbaa !238
  %i.bu = add nsw i32 %i.bm, 8                    ; 2 uses
  store i32 %i.bu, ptr %i.a, align 8, !tbaa !237
  %i.bv = icmp slt i32 %i.bm, 0
  br i1 %i.bv, label %bb.i, label %membr_bits.exit33, !llvm.loop !241

membr_fill.exit.thread.i32:                       ; preds = %bb.i
  store i32 1, ptr %i.be, align 4, !tbaa !239
  br label %membr_bits.exit33.thread

membr_bits.exit33:                                ; preds = %bb.j, %.membr_fill.exit_crit_edge.i22
  %i.bw = phi i32 [ %i.bd, %.membr_fill.exit_crit_edge.i22 ], [ %i.bm, %bb.j ] ; 3 uses
  %i.bx = phi i64 [ %.pre.i24, %.membr_fill.exit_crit_edge.i22 ], [ %i.bt, %bb.j ] ; 2 uses
  store i32 %i.bw, ptr %i.a, align 8, !tbaa !237
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = lshr i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = and i32 %i.ca, 255                      ; 3 uses
  %i.cc = icmp samesign ugt i32 %i.cb, 15
  br i1 %i.cc, label %membr_bits.exit21, label %membr_bits.exit33.thread

membr_bits.exit33.thread:                         ; preds = %bb.h, %membr_fill.exit.thread.i32, %membr_bits.exit33
  %.pre.i36 = phi i64 [ %i.bx, %membr_bits.exit33 ], [ %i.bk, %membr_fill.exit.thread.i32 ], [ %.pre.i24, %bb.h ] ; 2 uses
  %i.cd = phi i32 [ %i.bw, %membr_bits.exit33 ], [ %i.bm, %membr_fill.exit.thread.i32 ], [ %i.w, %bb.h ] ; 3 uses
  %.0.i2672 = phi i32 [ %i.cb, %membr_bits.exit33 ], [ 0, %membr_fill.exit.thread.i32 ], [ 0, %bb.h ]
  %i.ce = shl nuw nsw i32 %.0.i2672, 4            ; 3 uses
  %i.cf = icmp slt i32 %i.cd, 4
  br i1 %i.cf, label %bb.k, label %membr_fill.exit.i37

bb.k:                                             ; preds = %membr_bits.exit33.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !239
  %.not.i39 = icmp eq i32 %i.ch, 0
  br i1 %.not.i39, label %.lr.ph.i.i40, label %membr_bits.exit45

.lr.ph.i.i40:                                     ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !229
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.promoted13.i.i41 = load i64, ptr %i.ci, align 8, !tbaa !240 ; 2 uses
  %umax.i.i42 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i41, i64 %i.ck)
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i40
  %i.cm = phi i64 [ %.pre.i36, %.lr.ph.i.i40 ], [ %i.cv, %bb.m ]
  %i.cn = phi i64 [ %.promoted13.i.i41, %.lr.ph.i.i40 ], [ %i.cr, %bb.m ] ; 3 uses
  %i.co = phi i32 [ %i.cd, %.lr.ph.i.i40 ], [ %i.cw, %bb.m ] ; 2 uses
  %exitcond.not.i.i43 = icmp eq i64 %i.cn, %umax.i.i42
  br i1 %exitcond.not.i.i43, label %membr_fill.exit.thread.i44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = shl i64 %i.cm, 8
  %i.cq = load ptr, ptr %0, align 8, !tbaa !227
  %i.cr = add i64 %i.cn, 1                        ; 2 uses
  store i64 %i.cr, ptr %i.ci, align 8, !tbaa !240
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !33
  %i.cu = zext i8 %i.ct to i64
  %i.cv = or disjoint i64 %i.cp, %i.cu            ; 3 uses
  store i64 %i.cv, ptr %i.cl, align 8, !tbaa !238
  %i.cw = add nsw i32 %i.co, 8                    ; 3 uses
  store i32 %i.cw, ptr %i.a, align 8, !tbaa !237
  %i.cx = icmp slt i32 %i.co, -4
  br i1 %i.cx, label %bb.l, label %membr_fill.exit.i37, !llvm.loop !241

membr_fill.exit.thread.i44:                       ; preds = %bb.l
  store i32 1, ptr %i.cg, align 4, !tbaa !239
  br label %membr_bits.exit45

membr_fill.exit.i37:                              ; preds = %bb.m, %membr_bits.exit33.thread
  %i.cy = phi i32 [ %i.cd, %membr_bits.exit33.thread ], [ %i.cw, %bb.m ]
  %i.cz = phi i64 [ %.pre.i36, %membr_bits.exit33.thread ], [ %i.cv, %bb.m ]
  %i.da = add nsw i32 %i.cy, -4                   ; 2 uses
  store i32 %i.da, ptr %i.a, align 8, !tbaa !237
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = lshr i64 %i.cz, %i.db
  %i.dd = trunc i64 %i.dc to i32
  %i.de = and i32 %i.dd, 15
  %i.df = or disjoint i32 %i.de, %i.ce
  br label %membr_bits.exit45

membr_bits.exit45:                                ; preds = %bb.k, %membr_fill.exit.thread.i44, %membr_fill.exit.i37
  %.0.i38 = phi i32 [ %i.df, %membr_fill.exit.i37 ], [ %i.ce, %membr_fill.exit.thread.i44 ], [ %i.ce, %bb.k ]
  %i.dg = or i32 %.0.i38, -256
  br label %membr_bits.exit21

bb.n:                                             ; preds = %membr_bits.exit
  %i.dh = icmp samesign ult i32 %i.v, 18
  br i1 %i.dh, label %bb.o, label %membr_fill.exit.i49

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !239
  %.not.i51 = icmp eq i32 %i.dj, 0
  br i1 %.not.i51, label %.lr.ph.i.i52, label %membr_bits.exit21

.lr.ph.i.i52:                                     ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !229
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.promoted13.i.i53 = load i64, ptr %i.dk, align 8, !tbaa !240 ; 2 uses
  %umax.i.i54 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i53, i64 %i.dm)
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i52
  %i.do = phi i64 [ %.pre.i24, %.lr.ph.i.i52 ], [ %i.dx, %bb.q ]
  %i.dp = phi i64 [ %.promoted13.i.i53, %.lr.ph.i.i52 ], [ %i.dt, %bb.q ] ; 3 uses
  %i.dq = phi i32 [ %i.w, %.lr.ph.i.i52 ], [ %i.dy, %bb.q ] ; 2 uses
  %exitcond.not.i.i55 = icmp eq i64 %i.dp, %umax.i.i54
  br i1 %exitcond.not.i.i55, label %membr_fill.exit.thread.i56, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = shl i64 %i.do, 8
  %i.ds = load ptr, ptr %0, align 8, !tbaa !227
  %i.dt = add i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dt, ptr %i.dk, align 8, !tbaa !240
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dp
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !33
  %i.dw = zext i8 %i.dv to i64
  %i.dx = or disjoint i64 %i.dr, %i.dw            ; 3 uses
  store i64 %i.dx, ptr %i.dn, align 8, !tbaa !238
  %i.dy = add nsw i32 %i.dq, 8                    ; 3 uses
  store i32 %i.dy, ptr %i.a, align 8, !tbaa !237
  %i.dz = icmp slt i32 %i.dq, 8
  br i1 %i.dz, label %bb.p, label %membr_fill.exit.i49, !llvm.loop !241

membr_fill.exit.thread.i56:                       ; preds = %bb.p
  store i32 1, ptr %i.di, align 4, !tbaa !239
  br label %membr_bits.exit21

membr_fill.exit.i49:                              ; preds = %bb.q, %bb.n
  %i.ea = phi i32 [ %i.w, %bb.n ], [ %i.dy, %bb.q ]
  %i.eb = phi i64 [ %.pre.i24, %bb.n ], [ %i.dx, %bb.q ]
  %i.ec = add nsw i32 %i.ea, -16                  ; 2 uses
  store i32 %i.ec, ptr %i.a, align 8, !tbaa !237
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = lshr i64 %i.eb, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = and i32 %i.ef, 65535
  br label %membr_bits.exit21

default.unreachable:                              ; preds = %membr_bits.exit
  unreachable

bb.r:                                             ; preds = %membr_bits.exit
  %i.eh = icmp samesign ult i32 %i.v, 34
  br i1 %i.eh, label %bb.s, label %membr_fill.exit.i61

bb.s:                                             ; preds = %bb.r
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !239
  %.not.i63 = icmp eq i32 %i.ej, 0
  br i1 %.not.i63, label %.lr.ph.i.i64, label %membr_bits.exit21

.lr.ph.i.i64:                                     ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !229
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.promoted13.i.i65 = load i64, ptr %i.ek, align 8, !tbaa !240 ; 2 uses
  %umax.i.i66 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i65, i64 %i.em)
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i64
  %i.eo = phi i64 [ %.pre.i24, %.lr.ph.i.i64 ], [ %i.ex, %bb.u ]
  %i.ep = phi i64 [ %.promoted13.i.i65, %.lr.ph.i.i64 ], [ %i.et, %bb.u ] ; 3 uses
  %i.eq = phi i32 [ %i.w, %.lr.ph.i.i64 ], [ %i.ey, %bb.u ] ; 2 uses
  %exitcond.not.i.i67 = icmp eq i64 %i.ep, %umax.i.i66
  br i1 %exitcond.not.i.i67, label %membr_fill.exit.thread.i68, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.er = shl i64 %i.eo, 8
  %i.es = load ptr, ptr %0, align 8, !tbaa !227
  %i.et = add i64 %i.ep, 1                        ; 2 uses
  store i64 %i.et, ptr %i.ek, align 8, !tbaa !240
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ep
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !33
  %i.ew = zext i8 %i.ev to i64
  %i.ex = or disjoint i64 %i.er, %i.ew            ; 3 uses
  store i64 %i.ex, ptr %i.en, align 8, !tbaa !238
  %i.ey = add nsw i32 %i.eq, 8                    ; 3 uses
  store i32 %i.ey, ptr %i.a, align 8, !tbaa !237
  %i.ez = icmp slt i32 %i.eq, 24
  br i1 %i.ez, label %bb.t, label %membr_fill.exit.i61, !llvm.loop !241

membr_fill.exit.thread.i68:                       ; preds = %bb.t
  store i32 1, ptr %i.ei, align 4, !tbaa !239
  br label %membr_bits.exit21

membr_fill.exit.i61:                              ; preds = %bb.u, %bb.r
  %i.fa = phi i32 [ %i.w, %bb.r ], [ %i.ey, %bb.u ]
  %i.fb = phi i64 [ %.pre.i24, %bb.r ], [ %i.ex, %bb.u ]
  %i.fc = add nsw i32 %i.fa, -32                  ; 2 uses
  store i32 %i.fc, ptr %i.a, align 8, !tbaa !237
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = lshr i64 %i.fb, %i.fd
  %i.ff = trunc i64 %i.fe to i32
  br label %membr_bits.exit21

membr_bits.exit21:                                ; preds = %membr_fill.exit.i61, %membr_fill.exit.thread.i68, %bb.s, %membr_fill.exit.i49, %membr_fill.exit.thread.i56, %bb.o, %membr_fill.exit.i13, %membr_fill.exit.thread.i20, %membr_bits.exit.thread.thread, %membr_bits.exit33, %membr_bits.exit45
  %.0 = phi i32 [ 0, %bb.o ], [ %i.cb, %membr_bits.exit33 ], [ 0, %membr_bits.exit.thread.thread ], [ %i.dg, %membr_bits.exit45 ], [ %i.bb, %membr_fill.exit.i13 ], [ 0, %membr_fill.exit.thread.i20 ], [ %i.eg, %membr_fill.exit.i49 ], [ 0, %membr_fill.exit.thread.i56 ], [ %i.ff, %membr_fill.exit.i61 ], [ 0, %membr_fill.exit.thread.i68 ], [ 0, %bb.s ]
  ret i32 %.0
}

declare i64 @__archive_read_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @__archive_reset_read_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind allocsize(1) }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 20312}
!10 = !{!"rar", !6, i64 0, !11, i64 8, !7, i64 16, !7, i64 18, !7, i64 22, !7, i64 23, !6, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !6, i64 64, !12, i64 72, !12, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !7, i64 208, !6, i64 212, !6, i64 216, !12, i64 224, !6, i64 232, !7, i64 236, !7, i64 237, !11, i64 240, !6, i64 248, !7, i64 252, !14, i64 256, !11, i64 264, !11, i64 272, !7, i64 280, !15, i64 288, !15, i64 328, !15, i64 368, !15, i64 408, !7, i64 448, !18, i64 856, !6, i64 880, !6, i64 884, !7, i64 888, !6, i64 904, !6, i64 908, !7, i64 912, !19, i64 920, !7, i64 984, !7, i64 985, !7, i64 986, !6, i64 988, !23, i64 992, !27, i64 20176, !29, i64 20224, !6, i64 20240, !31, i64 20248, !31, i64 20256, !31, i64 20264, !31, i64 20272, !32, i64 20280, !6, i64 20312}
!11 = !{!"long", !7, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 _ZTS18data_block_offsets", !13, i64 0}
!15 = !{!"huffman_code", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !17, i64 32}
!16 = !{!"p1 _ZTS17huffman_tree_node", !13, i64 0}
!17 = !{!"p1 _ZTS19huffman_table_entry", !13, i64 0}
!18 = !{!"lzss", !12, i64 0, !6, i64 8, !11, i64 16}
!19 = !{!"rar_filters", !20, i64 0, !21, i64 8, !22, i64 16, !11, i64 24, !6, i64 32, !11, i64 40, !12, i64 48, !11, i64 56}
!20 = !{!"p1 _ZTS19rar_virtual_machine", !13, i64 0}
!21 = !{!"p1 _ZTS16rar_program_code", !13, i64 0}
!22 = !{!"p1 _ZTS10rar_filter", !13, i64 0}
!23 = !{!"", !24, i64 0, !24, i64 8, !13, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !6, i64 104, !7, i64 108, !7, i64 146, !7, i64 276, !7, i64 428, !7, i64 684, !7, i64 940, !25, i64 1196, !7, i64 1200, !7, i64 2800}
!24 = !{!"p1 _ZTS15CPpmd7_Context_", !13, i64 0}
!25 = !{!"", !26, i64 0, !7, i64 2, !7, i64 3}
!26 = !{!"short", !7, i64 0}
!27 = !{!"", !28, i64 0, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !13, i64 40}
!28 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16}
!29 = !{!"", !30, i64 0, !13, i64 8}
!30 = !{!"p1 _ZTS12archive_read", !13, i64 0}
!31 = !{!"p1 _ZTS19archive_string_conv", !13, i64 0}
!32 = !{!"rar_br", !11, i64 0, !6, i64 8, !11, i64 16, !12, i64 24}
!33 = !{!7, !7, i64 0}
!34 = !{!11, !11, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!38, !46, i64 2072}
!38 = !{!"archive_read", !39, i64 0, !42, i64 144, !6, i64 152, !11, i64 160, !11, i64 168, !43, i64 176, !7, i64 248, !45, i64 632, !6, i64 640, !11, i64 648, !6, i64 656, !6, i64 660, !7, i64 664, !46, i64 2072, !47, i64 2080, !13, i64 2088, !48, i64 2096}
!39 = !{!"archive", !6, i64 0, !6, i64 4, !40, i64 8, !6, i64 16, !12, i64 24, !6, i64 32, !6, i64 36, !12, i64 40, !41, i64 48, !12, i64 72, !6, i64 80, !6, i64 84, !31, i64 88, !12, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !7, i64 128, !11, i64 136}
!40 = !{!"p1 _ZTS14archive_vtable", !13, i64 0}
!41 = !{!"archive_string", !12, i64 0, !11, i64 8, !11, i64 16}
!42 = !{!"p1 _ZTS13archive_entry", !13, i64 0}
!43 = !{!"archive_read_client", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !6, i64 48, !6, i64 52, !11, i64 56, !44, i64 64}
!44 = !{!"p1 _ZTS22archive_read_data_node", !13, i64 0}
!45 = !{!"p1 _ZTS19archive_read_filter", !13, i64 0}
!46 = !{!"p1 _ZTS25archive_format_descriptor", !13, i64 0}
!47 = !{!"p1 _ZTS20archive_read_extract", !13, i64 0}
!48 = !{!"", !49, i64 0, !50, i64 8, !6, i64 16, !13, i64 24, !13, i64 32}
!49 = !{!"p1 _ZTS23archive_read_passphrase", !13, i64 0}
!50 = !{!"p2 _ZTS23archive_read_passphrase", !51, i64 0}
!51 = !{!"any p2 pointer", !13, i64 0}
!52 = !{!53, !13, i64 0}
!53 = !{!"archive_format_descriptor", !13, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80}
!54 = !{!10, !31, i64 20256}
!55 = !{!38, !6, i64 16}
!56 = !{!38, !12, i64 24}
!57 = !{!10, !6, i64 248}
!58 = distinct !{!58, !36}
!59 = distinct !{!59, !36}
!60 = !{!10, !6, i64 0}
!61 = !{!10, !7, i64 22}
!62 = distinct !{!62, !36}
!63 = !{!10, !11, i64 160}
!64 = !{!13, !13, i64 0}
!65 = !{!10, !7, i64 237}
!66 = !{!10, !11, i64 200}
!67 = !{!10, !11, i64 40}
!68 = !{!10, !11, i64 184}
!69 = !{!10, !7, i64 23}
!70 = !{!10, !11, i64 168}
!71 = !{!10, !6, i64 24}
!72 = !{!10, !11, i64 8}
!73 = !{!10, !11, i64 240}
!74 = !{!75, !13, i64 16}
!75 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88}
!76 = !{!10, !7, i64 912}
!77 = !{!10, !7, i64 984}
!78 = !{!38, !42, i64 144}
!79 = !{!10, !14, i64 256}
!80 = !{!81, !11, i64 8}
!81 = !{!"data_block_offsets", !11, i64 0, !11, i64 8, !11, i64 16}
!82 = !{!10, !11, i64 264}
!83 = !{!81, !11, i64 16}
!84 = distinct !{!84, !36}
!85 = !{!81, !11, i64 0}
!86 = !{!10, !11, i64 272}
!87 = !{!10, !7, i64 252}
!88 = distinct !{!88, !36}
!89 = !{!10, !16, i64 288}
!90 = !{!10, !16, i64 328}
!91 = !{!10, !16, i64 368}
!92 = !{!10, !16, i64 408}
!93 = !{!10, !17, i64 320}
!94 = !{!10, !17, i64 360}
!95 = !{!10, !17, i64 400}
!96 = !{!10, !17, i64 440}
!97 = !{!19, !22, i64 16}
!98 = !{!99, !22, i64 80}
!99 = !{!"rar_filter", !21, i64 0, !7, i64 8, !12, i64 40, !6, i64 48, !11, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !22, i64 80}
!100 = !{!99, !12, i64 40}
!101 = distinct !{!101, !36}
!102 = !{!19, !21, i64 8}
!103 = !{!104, !21, i64 48}
!104 = !{!"rar_program_code", !12, i64 0, !6, i64 8, !12, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !21, i64 48}
!105 = !{!104, !12, i64 0}
!106 = !{!104, !12, i64 16}
!107 = distinct !{!107, !36}
!108 = !{!19, !20, i64 0}
!109 = !{!10, !12, i64 72}
!110 = !{!10, !12, i64 80}
!111 = !{!10, !12, i64 224}
!112 = !{!10, !12, i64 856}
!113 = !{!10, !6, i64 20240}
!114 = !{!10, !31, i64 20248}
!115 = !{!116, !6, i64 0}
!116 = !{!"tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !11, i64 40, !12, i64 48}
!117 = !{!116, !6, i64 4}
!118 = !{!116, !6, i64 8}
!119 = !{!116, !6, i64 12}
!120 = !{!116, !6, i64 16}
!121 = !{!116, !6, i64 20}
!122 = !{!116, !6, i64 32}
!123 = !{!10, !11, i64 48}
!124 = !{!10, !11, i64 32}
!125 = !{!10, !11, i64 96}
!126 = distinct !{!126, !36}
!127 = !{!128}
!128 = distinct !{!128, !129}
!129 = distinct !{!129, !"LVerDomain"}
!130 = !{!131}
!131 = distinct !{!131, !129}
!132 = !{!"branch_weights", i32 4, i32 12}
!133 = distinct !{!133, !36, !134, !135}
!134 = !{!"llvm.loop.isvectorized", i32 1}
!135 = !{!"llvm.loop.unroll.runtime.disable"}
!136 = distinct !{!136, !36, !134}
!137 = !{!10, !31, i64 20272}
!138 = distinct !{!138, !36}
!139 = !{!10, !31, i64 20264}
!140 = distinct !{!140, !36}
!141 = distinct !{!141, !36}
!142 = !{!10, !11, i64 88}
!143 = !{!38, !45, i64 632}
!144 = !{!145, !11, i64 0}
!145 = !{!"archive_read_filter", !11, i64 0, !146, i64 8, !45, i64 16, !30, i64 24, !147, i64 32, !13, i64 40, !12, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !12, i64 72, !11, i64 80, !12, i64 88, !11, i64 96, !13, i64 104, !11, i64 112, !12, i64 120, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138}
!146 = !{!"p1 _ZTS26archive_read_filter_bidder", !13, i64 0}
!147 = !{!"p1 _ZTS26archive_read_filter_vtable", !13, i64 0}
!148 = !{!10, !7, i64 280}
!149 = !{!10, !6, i64 64}
!150 = !{!10, !11, i64 872}
!151 = !{!10, !6, i64 232}
!152 = !{!10, !6, i64 20288}
!153 = !{!10, !7, i64 208}
!154 = !{!10, !7, i64 986}
!155 = !{!10, !6, i64 212}
!156 = !{!10, !6, i64 216}
!157 = !{!10, !7, i64 985}
!158 = !{!10, !11, i64 944}
!159 = !{!10, !11, i64 56}
!160 = !{!10, !11, i64 128}
!161 = !{!10, !11, i64 136}
!162 = !{!10, !11, i64 112}
!163 = !{!10, !11, i64 120}
!164 = !{!6, !6, i64 0}
!165 = !{!10, !11, i64 144}
!166 = !{!10, !11, i64 152}
!167 = distinct !{!167, !36, !168}
!168 = !{!"llvm.loop.peeled.count", i32 1}
!169 = !{ptr @rar_read_ahead}
!170 = !{!38, !7, i64 128}
!171 = !{!38, !11, i64 136}
!172 = !{!10, !11, i64 976}
!173 = !{!10, !11, i64 192}
!174 = !{!10, !12, i64 968}
!175 = !{!10, !11, i64 176}
!176 = !{!10, !11, i64 960}
!177 = !{!19, !11, i64 24}
!178 = !{!99, !6, i64 64}
!179 = !{!22, !22, i64 0}
!180 = distinct !{!180, !36}
!181 = !{!99, !6, i64 68}
!182 = !{!99, !6, i64 72}
!183 = !{!99, !11, i64 56}
!184 = distinct !{!184, !36}
!185 = !{!19, !11, i64 40}
!186 = !{!19, !12, i64 48}
!187 = !{!19, !11, i64 56}
!188 = !{!10, !12, i64 20304}
!189 = !{!32, !12, i64 24}
!190 = !{!32, !6, i64 8}
!191 = !{!10, !6, i64 988}
!192 = !{!18, !11, i64 16}
!193 = !{!18, !12, i64 0}
!194 = !{!18, !6, i64 8}
!195 = distinct !{!195, !36, !134, !135}
!196 = !{!"branch_weights", i32 4, i32 28}
!197 = distinct !{!197, !36, !134, !135}
!198 = distinct !{!198, !199}
!199 = !{!"llvm.loop.unroll.disable"}
!200 = distinct !{!200, !36, !134}
!201 = distinct !{!201, !36}
!202 = distinct !{!202, !36, !134, !135}
!203 = distinct !{!203, !36, !134, !135}
!204 = distinct !{!204, !199}
!205 = distinct !{!205, !36, !134}
!206 = distinct !{!206, !36}
!207 = !{!32, !11, i64 0}
!208 = !{!10, !6, i64 1020}
!209 = !{!10, !30, i64 20224}
!210 = !{!10, !13, i64 20232}
!211 = !{!75, !13, i64 40}
!212 = !{!10, !13, i64 20216}
!213 = !{!75, !13, i64 0}
!214 = !{!75, !13, i64 8}
!215 = !{!75, !13, i64 56}
!216 = !{!75, !13, i64 24}
!217 = distinct !{!217, !36}
!218 = distinct !{!218, !36}
!219 = !{!15, !16, i64 0}
!220 = !{!15, !17, i64 32}
!221 = distinct !{!221, !36}
!222 = distinct !{!222, !36}
!223 = distinct !{!223, !36}
!224 = !{!10, !6, i64 864}
!225 = !{!10, !7, i64 236}
!226 = distinct !{!226, !36}
!227 = !{!228, !12, i64 0}
!228 = !{!"memory_bit_reader", !12, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36}
!229 = !{!228, !11, i64 8}
!230 = !{!21, !21, i64 0}
!231 = distinct !{!231, !36}
!232 = !{!19, !6, i64 32}
!233 = distinct !{!233, !36}
!234 = distinct !{!234, !199}
!235 = !{!104, !6, i64 40}
!236 = !{!104, !6, i64 44}
!237 = !{!228, !6, i64 32}
!238 = !{!228, !11, i64 24}
!239 = !{!228, !6, i64 36}
!240 = !{!228, !11, i64 16}
!241 = distinct !{!241, !36}
!242 = distinct !{!242, !36}
!243 = distinct !{!243, !36, !134, !135}
!244 = distinct !{!244, !36, !135, !134}
!245 = !{!104, !11, i64 32}
!246 = !{!104, !6, i64 8}
!247 = distinct !{!247, !36}
!248 = distinct !{!248, !36}
!249 = distinct !{!249, !36}
!250 = !{!99, !21, i64 0}
!251 = !{!99, !6, i64 48}
!252 = distinct !{!252, !36}
!253 = !{!10, !6, i64 880}
!254 = !{!10, !6, i64 884}
!255 = !{!10, !6, i64 908}
!256 = !{!10, !6, i64 904}
!257 = distinct !{!257, !36, !134, !135}
!258 = distinct !{!258, !36, !134, !135}
!259 = distinct !{!259, !199}
!260 = distinct !{!260, !36, !134}
!261 = distinct !{!261, !36}
!262 = distinct !{!262, !36}
!263 = distinct !{!263, !36}
!264 = distinct !{!264, !36}
!265 = distinct !{!265, !36}
!266 = distinct !{!266, !36}
!267 = !{!26, !26, i64 0}
!268 = !{!269, !7, i64 14}
!269 = !{!"audio_state", !7, i64 0, !7, i64 6, !7, i64 14, !7, i64 16, !6, i64 60, !7, i64 64}
!270 = !{!269, !7, i64 64}
!271 = !{!269, !6, i64 60}
!272 = distinct !{!272, !36}
!273 = !{!32, !11, i64 16}
!274 = !{!29, !30, i64 0}
!275 = !{!15, !6, i64 8}
!276 = !{!15, !6, i64 12}
!277 = !{!15, !6, i64 20}
!278 = !{!15, !6, i64 16}
!279 = distinct !{!279, !36}
!280 = distinct !{!280, !36}
!281 = distinct !{!281, !36}
!282 = !{!15, !6, i64 24}
!283 = !{!284, !6, i64 0}
!284 = !{!"huffman_table_entry", !6, i64 0, !6, i64 4}
!285 = !{!284, !6, i64 4}
!286 = distinct !{!286, !36}
!287 = !{!288}
!288 = distinct !{!288, !289}
!289 = distinct !{!289, !"LVerDomain"}
!290 = !{!291}
!291 = distinct !{!291, !289}
!292 = distinct !{!292, !36, !134, !135}
!293 = distinct !{!293, !36, !134}
end_hunk_0
