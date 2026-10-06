Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@cf2_getSeacComponent:bb.a
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !199
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !382
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !181  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1312 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !720
  %.not.i = icmp eq ptr %i.l, null
  %or.cond.i = icmp ugt i32 %1, 255
  %or.cond16.i = or i1 %or.cond.i, %.not.i
  br i1 %or.cond16.i, label %cff_lookup_glyph_by_stdcharcode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !196
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !721
  %i.p = tail call zeroext i16 %i.o(i32 noundef %1) #19, !inline_history !718
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !722  ; 2 uses
  %.not20.i = icmp eq i32 %i.r, 0
  br i1 %.not20.i, label %cff_lookup_glyph_by_stdcharcode.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !720
  %wide.trip.count.i = zext i32 %i.r to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !44
  %i.v = icmp eq i16 %i.u, %i.p
  br i1 %i.v, label %cff_lookup_glyph_by_stdcharcode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %cff_lookup_glyph_by_stdcharcode.exit.thread, label %bb.d, !llvm.loop !719

cff_lookup_glyph_by_stdcharcode.exit:             ; preds = %bb.d
  %i.w = trunc nuw i64 %indvars.iv.i to i32       ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %cff_lookup_glyph_by_stdcharcode.exit.thread, label %cff_lookup_glyph_by_stdcharcode.exit._crit_edge

cff_lookup_glyph_by_stdcharcode.exit._crit_edge:  ; preds = %cff_lookup_glyph_by_stdcharcode.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !233
  br label %bb.f

bb.f:                                             ; preds = %cff_lookup_glyph_by_stdcharcode.exit._crit_edge, %bb.a
  %i.y = phi ptr [ %.pre, %cff_lookup_glyph_by_stdcharcode.exit._crit_edge ], [ %i.d, %bb.a ]
  %.0 = phi i32 [ %i.w, %cff_lookup_glyph_by_stdcharcode.exit._crit_edge ], [ %1, %bb.a ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !723
  %i.ab = call i32 %i.aa(ptr noundef %i.y, i32 noundef %.0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19 ; 2 uses
  %.not18 = icmp eq i32 %i.ab, 0
  br i1 %.not18, label %bb.g, label %cff_lookup_glyph_by_stdcharcode.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !33  ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !205
  %.not19 = icmp eq ptr %i.ac, null
  %i.ae = load i64, ptr %i.b, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.ag = select i1 %.not19, ptr null, ptr %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !206
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !204
  br label %cff_lookup_glyph_by_stdcharcode.exit.thread

cff_lookup_glyph_by_stdcharcode.exit.thread:      ; preds = %bb.e, %bb.c, %bb.b, %bb.f, %cff_lookup_glyph_by_stdcharcode.exit, %bb.g
  %.015 = phi i32 [ 18, %cff_lookup_glyph_by_stdcharcode.exit ], [ 0, %bb.g ], [ %i.ab, %bb.f ], [ 18, %bb.b ], [ 18, %bb.c ], [ 18, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cf2_hintmap_build(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i8 noundef zeroext range(i8 0, 2) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.CF2_HintMoveRec_, align 8   ; 5 uses
  %7 = alloca %struct.CF2_HintMaskRec_, align 8   ; 7 uses
  %8 = alloca %struct.CF2_HintRec_, align 8       ; 5 uses
  %9 = alloca %struct.CF2_HintRec_, align 8       ; 13 uses
  %10 = alloca %struct.CF2_HintRec_, align 8      ; 12 uses
  %11 = alloca %struct.CF2_HintRec_, align 8      ; 6 uses
  %12 = alloca %struct.CF2_HintRec_, align 8      ; 4 uses
  %13 = alloca %struct.CF2_HintRec_, align 8      ; 11 uses
  %14 = alloca %struct.CF2_HintRec_, align 8      ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !350    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %.not = icmp ne i8 %5, 0                        ; 4 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !351  ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %.val119 = load i8, ptr %i.d, align 8, !tbaa !402
  %.not106 = icmp eq i8 %.val119, 0
  br i1 %.not106, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %3, align 8, !tbaa !338
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  store ptr %i.e, ptr %7, align 8, !tbaa !338
  call fastcc void @cf2_hintmap_build(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, i32 noundef %4, i8 noundef zeroext 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val118 = load i8, ptr %i.g, align 8, !tbaa !375
  %.not107 = icmp eq i8 %.val118, 0
  br i1 %.not107, label %bb.e, label %cf2_hintmask_setAll.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %1, i64 32
  %.val122 = load i64, ptr %i.h, align 8, !tbaa !391
  %i.i = getelementptr i8, ptr %2, i64 32
  %.val121 = load i64, ptr %i.i, align 8, !tbaa !391
  %i.j = add i64 %.val121, %.val122               ; 5 uses
  %i.k = trunc i64 %i.j to i8
  %i.l = sub i8 0, %i.k
  %i.m = and i8 %i.l, 7
  %notmask.i = shl nsw i8 -1, %i.m
  %i.n = icmp ugt i64 %i.j, 96
  br i1 %i.n, label %bb.f, label %cf2_hintmask_setCounts.exit.i

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %3, align 8, !tbaa !338    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24
  %.not3.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not3.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 18, ptr %i.o, align 4, !tbaa !24
  br label %bb.i

cf2_hintmask_setCounts.exit.i:                    ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %i.q, align 8, !tbaa !393
  %i.r = add nuw nsw i64 %i.j, 7
  %i.s = lshr i64 %i.r, 3                         ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.s, ptr %i.t, align 8, !tbaa !394
  store i8 1, ptr %i.g, align 8, !tbaa !375
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 1, ptr %i.u, align 1, !tbaa !392
  %i.v = icmp eq i64 %i.j, 0
  br i1 %i.v, label %cf2_hintmask_setAll.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %cf2_hintmask_setCounts.exit.i
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %cf2_hintmask_setAll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.w, i8 -1, i64 %i.s, i1 false), !tbaa !41
  br label %cf2_hintmask_setAll.exit

cf2_hintmask_setAll.exit:                         ; preds = %.preheader.i, %.lr.ph.i
  %i.x = getelementptr i8, ptr %3, i64 31
  %i.y = getelementptr i8, ptr %i.x, i64 %i.s     ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !41
  %i.aa = and i8 %i.z, %notmask.i
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !41
  br label %cf2_hintmask_setAll.exit.thread

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !232
  %.not109 = icmp eq i8 %i.ac, 0
  br i1 %.not109, label %bb.ct, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !338
  store i32 0, ptr %i.ad, align 4, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.ae, align 1, !tbaa !349
  br label %bb.ct

cf2_hintmask_setAll.exit.thread:                  ; preds = %cf2_hintmask_setAll.exit, %cf2_hintmask_setCounts.exit.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 0, ptr %i.af, align 8, !tbaa !414
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.ag, align 4, !tbaa !415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !730
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ai = getelementptr i8, ptr %1, i64 32        ; 4 uses
  %.val120 = load i64, ptr %i.ai, align 8, !tbaa !391 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !393
  %i.al = icmp ugt i64 %.val120, %i.ak
  br i1 %i.al, label %bb.ct, label %bb.k

bb.k:                                             ; preds = %cf2_hintmask_setAll.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 321
  %i.an = load i8, ptr %i.am, align 1, !tbaa !731
  %.not110 = icmp eq i8 %i.an, 0
  br i1 %.not110, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  call fastcc void @cf2_hintmap_insertHint(ptr noundef nonnull %0, ptr noundef nonnull %i.ao, ptr noundef nonnull %8)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  call fastcc void @cf2_hintmap_insertHint(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not217 = icmp eq i64 %.val120, 0
  br i1 %.not217, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 332
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 316
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 408 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 328 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.av
  %.0208 = phi i32 [ 128, %.lr.ph ], [ %.1, %bb.av ] ; 3 uses
  %.097205 = phi i64 [ 0, %.lr.ph ], [ %i.gl, %bb.av ] ; 9 uses
  %.0100204 = phi ptr [ %i.ah, %.lr.ph ], [ %.1101.idx.sroa.sel.idx.sroa.sel, %bb.av ] ; 4 uses
  %i.bi = load i8, ptr %.0100204, align 1, !tbaa !41
  %i.bj = zext i8 %i.bi to i32
  %i.bk = and i32 %.0208, %i.bj
  %.not114 = icmp eq i32 %i.bk, 0
  br i1 %.not114, label %bb.av, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.bl = load i32, ptr %i.aq, align 4, !tbaa !354 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %i.bm = load i64, ptr %i.ai, align 8, !tbaa !391
  %.not.i.i = icmp ult i64 %.097205, %i.bm        ; 2 uses
  br i1 %.not.i.i, label %cf2_arrstack_getPointer.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr %i.ar, align 8, !tbaa !335 ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i127, label %cf2_arrstack_getPointer.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !24
  %.not3.i.i.i128 = icmp eq i32 %i.bo, 0
  br i1 %.not3.i.i.i128, label %bb.r, label %cf2_arrstack_getPointer.exit.i

bb.r:                                             ; preds = %bb.q
  store i32 130, ptr %i.bn, align 4, !tbaa !24
  br label %cf2_arrstack_getPointer.exit.i

cf2_arrstack_getPointer.exit.i:                   ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i.i = phi i64 [ %.097205, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ]
  %i.bp = load ptr, ptr %i.as, align 8, !tbaa !395 ; 2 uses
  %i.bq = load i64, ptr %i.at, align 8, !tbaa !336 ; 2 uses
  %i.br = mul i64 %i.bq, %.0.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.br ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !398 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !397 ; 2 uses
  %i.bx = sub i32 %i.bu, %i.bw                    ; 2 uses
  switch i32 %i.bx, label %bb.t [
    i32 -1376256, label %bb.u
    i32 -1310720, label %bb.s
  ]

bb.s:                                             ; preds = %cf2_arrstack_getPointer.exit.i
  store i32 0, ptr %9, align 8, !tbaa !416
  store i32 %4, ptr %i.au, align 8, !tbaa !417
  store i32 %i.bl, ptr %i.av, align 8, !tbaa !418
  store i64 %.097205, ptr %i.aw, align 8, !tbaa !732
  br label %bb.w

bb.t:                                             ; preds = %cf2_arrstack_getPointer.exit.i
  %i.by = icmp slt i32 %i.bx, 0
  %.92.i = select i1 %i.by, i32 %i.bu, i32 %i.bw
  br label %bb.u

bb.u:                                             ; preds = %cf2_arrstack_getPointer.exit.i, %bb.t
  %.sink.i = phi i32 [ 4, %bb.t ], [ 1, %cf2_arrstack_getPointer.exit.i ] ; 3 uses
  %i.bz = phi i32 [ %.92.i, %bb.t ], [ %i.bu, %cf2_arrstack_getPointer.exit.i ]
  store i32 %.sink.i, ptr %9, align 8, !tbaa !416
  %i.ca = add i32 %i.bz, %4                       ; 3 uses
  store i32 %i.ca, ptr %i.au, align 8, !tbaa !417
  store i32 %i.bl, ptr %i.av, align 8, !tbaa !418
  store i64 %.097205, ptr %i.aw, align 8, !tbaa !732
  %i.cb = load i8, ptr %i.bs, align 4, !tbaa !399
  %.not58.i = icmp eq i8 %i.cb, 0
  br i1 %.not58.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !24 ; 2 uses
  store i32 %i.cd, ptr %i.ax, align 4, !tbaa !419
  %i.ce = or disjoint i32 %.sink.i, 16            ; 2 uses
  store i32 %i.ce, ptr %9, align 8, !tbaa !416
  br label %cf2_hint_init.exit

bb.w:                                             ; preds = %bb.u, %bb.s
  %.val124241 = phi i32 [ %.sink.i, %bb.u ], [ 0, %bb.s ]
  %i.cf = phi i32 [ %i.ca, %bb.u ], [ %4, %bb.s ] ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = sext i32 %i.bl to i64
  %i.ci = mul nsw i64 %i.cg, %i.ch                ; 2 uses
  %i.cj = ashr i64 %i.ci, 63
  %i.ck = add nsw i64 %i.ci, 32768
  %i.cl = add nsw i64 %i.ck, %i.cj
  %i.cm = lshr i64 %i.cl, 16
  %i.cn = trunc i64 %i.cm to i32                  ; 2 uses
  store i32 %i.cn, ptr %i.ax, align 4, !tbaa !419
  br label %cf2_hint_init.exit

cf2_hint_init.exit:                               ; preds = %bb.v, %bb.w
  %i.co = phi i32 [ %i.cd, %bb.v ], [ %i.cn, %bb.w ] ; 3 uses
  %i.cp = phi i32 [ %i.ca, %bb.v ], [ %i.cf, %bb.w ] ; 5 uses
  %.val124 = phi i32 [ %i.ce, %bb.v ], [ %.val124241, %bb.w ] ; 5 uses
  %i.cq = load i32, ptr %i.aq, align 4, !tbaa !354 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  br i1 %.not.i.i, label %cf2_arrstack_getPointer.exit.i132, label %bb.x

bb.x:                                             ; preds = %cf2_hint_init.exit
  %i.cr = load ptr, ptr %i.ar, align 8, !tbaa !335 ; 3 uses
  %.not.i.i.i130 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i130, label %cf2_arrstack_getPointer.exit.i132, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !24
  %.not3.i.i.i131 = icmp eq i32 %i.cs, 0
  br i1 %.not3.i.i.i131, label %bb.z, label %cf2_arrstack_getPointer.exit.i132

bb.z:                                             ; preds = %bb.y
  store i32 130, ptr %i.cr, align 4, !tbaa !24
  br label %cf2_arrstack_getPointer.exit.i132

cf2_arrstack_getPointer.exit.i132:                ; preds = %bb.z, %bb.y, %bb.x, %cf2_hint_init.exit
  %.0.i.i133 = phi i64 [ %.097205, %cf2_hint_init.exit ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.z ]
  %i.ct = mul i64 %.0.i.i133, %i.bq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ct ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !398 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !397 ; 3 uses
  %i.cz = sub i32 %i.cw, %i.cy                    ; 2 uses
  switch i32 %i.cz, label %bb.ab [
    i32 -1376256, label %bb.aa
    i32 -1310720, label %.thread75.i
  ]

bb.aa:                                            ; preds = %cf2_arrstack_getPointer.exit.i132
  store i32 0, ptr %10, align 8, !tbaa !416
  store i32 %4, ptr %i.ay, align 8, !tbaa !417
  store i32 %i.cq, ptr %i.az, align 8, !tbaa !418
  store i64 %.097205, ptr %i.ba, align 8, !tbaa !732
  br label %bb.ad

bb.ab:                                            ; preds = %cf2_arrstack_getPointer.exit.i132
  %i.da = icmp slt i32 %i.cz, 0
  %..i134 = select i1 %i.da, i32 %i.cy, i32 %i.cw
  br label %.thread75.i

.thread75.i:                                      ; preds = %cf2_arrstack_getPointer.exit.i132, %bb.ab
  %.sink87.i = phi i32 [ 8, %bb.ab ], [ 2, %cf2_arrstack_getPointer.exit.i132 ] ; 3 uses
  %i.db = phi i32 [ %..i134, %bb.ab ], [ %i.cy, %cf2_arrstack_getPointer.exit.i132 ]
  store i32 %.sink87.i, ptr %10, align 8, !tbaa !416
end_hunk_0
begin_hunk_1_@cf2_hintmap_build:bb.a

bb.ai:                                            ; preds = %bb.ah
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !250 ; 2 uses
  %i.eq = add i32 %i.ep, %i.dx
  %.not80.i.us = icmp sgt i32 %i.cp, %i.eq
  br i1 %.not80.i.us, label %.thread.i.us195, label %.split199.us

.thread.i.us195:                                  ; preds = %.lr.ph.i137.split.split.us, %bb.ai, %bb.ah
  %indvars.iv.next.i.us196 = add nuw nsw i64 %indvars.iv.i.us193, 1 ; 2 uses
  %exitcond.not.i.us197 = icmp eq i64 %indvars.iv.next.i.us196, %wide.trip.count.i
  br i1 %exitcond.not.i.us197, label %cf2_blues_capture.exit.thread, label %.lr.ph.i137.split.split.us, !llvm.loop !724

.lr.ph.i137.split.split:                          ; preds = %.lr.ph.i137.split, %.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.thread.i ], [ 0, %.lr.ph.i137.split ] ; 2 uses
  %i.er = getelementptr inbounds nuw [20 x i8], ptr %i.bf, i64 %indvars.iv.i ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load i8, ptr %i.es, align 4, !tbaa !251
  %.not.i138 = icmp eq i8 %i.et, 0
  %i.eu = load i32, ptr %i.er, align 4, !tbaa !249 ; 2 uses
  %i.ev = sub i32 %i.eu, %i.dx                    ; 2 uses
  br i1 %.not.i138, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i137.split.split
  %.not79.i = icmp sgt i32 %i.ev, %i.cp
  br i1 %.not79.i, label %.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !250 ; 2 uses
  %i.ey = add i32 %i.ex, %i.dx
  %.not80.i = icmp sgt i32 %i.cp, %i.ey
  br i1 %.not80.i, label %.thread.i, label %.split199.us

.split199.us:                                     ; preds = %bb.ak, %bb.ai
  %.us-phi200 = phi ptr [ %i.ej, %bb.ai ], [ %i.er, %bb.ak ] ; 2 uses
  %.us-phi201 = phi i32 [ %i.ep, %bb.ai ], [ %i.ex, %bb.ak ]
  %i.ez = load i8, ptr %i.bg, align 8, !tbaa !252
  %.not87.i = icmp eq i8 %i.ez, 0
  br i1 %.not87.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.split199.us
  %i.fa = getelementptr inbounds nuw i8, ptr %.us-phi200, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !253
  br label %bb.au

bb.am:                                            ; preds = %.split199.us
  %i.fc = sub i32 %.us-phi201, %i.cp
  %i.fd = load i32, ptr %i.bh, align 8, !tbaa !734
  %.not88.i = icmp slt i32 %i.fc, %i.fd
  %i.fe = add i32 %i.co, 32768
  %i.ff = and i32 %i.fe, -65536                   ; 2 uses
  br i1 %.not88.i, label %bb.au, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %.us-phi200, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !253
  %i.fi = add i32 %i.fh, -65536
  %..i139 = tail call i32 @llvm.smin.i32(i32 %i.ff, i32 %i.fi)
  br label %bb.au

bb.ao:                                            ; preds = %.lr.ph.i137.split.split
  %.not83.i = icmp sgt i32 %i.ev, %i.du
  br i1 %.not83.i, label %.thread.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !250
  %i.fl = add i32 %i.fk, %i.dx
  %.not84.i = icmp sgt i32 %i.du, %i.fl
  br i1 %.not84.i, label %.thread.i, label %.split.us

.split.us:                                        ; preds = %bb.ap, %bb.ag
  %.us-phi = phi ptr [ %i.eb, %bb.ag ], [ %i.er, %bb.ap ] ; 2 uses
  %.us-phi191 = phi i32 [ %i.ee, %bb.ag ], [ %i.eu, %bb.ap ]
  %i.fm = load i8, ptr %i.bg, align 8, !tbaa !252
  %.not85.i = icmp eq i8 %i.fm, 0
  br i1 %.not85.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.split.us
  %i.fn = getelementptr inbounds nuw i8, ptr %.us-phi, i64 12
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !253
  br label %bb.at

bb.ar:                                            ; preds = %.split.us
  %i.fp = sub i32 %i.du, %.us-phi191
  %i.fq = load i32, ptr %i.bh, align 8, !tbaa !734
  %.not86.i = icmp slt i32 %i.fp, %i.fq
  %i.fr = add i32 %i.dt, 32768
  %i.fs = and i32 %i.fr, -65536                   ; 2 uses
  br i1 %.not86.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ft = getelementptr inbounds nuw i8, ptr %.us-phi, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !253
  %i.fv = add nsw i32 %i.fu, 65536
  %.93.i = tail call i32 @llvm.smax.i32(i32 %i.fs, i32 %i.fv)
  br label %bb.at

.thread.i:                                        ; preds = %bb.ap, %bb.ao, %bb.ak, %bb.aj
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %cf2_blues_capture.exit.thread, label %.lr.ph.i137.split.split, !llvm.loop !724

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.1.i = phi i32 [ %i.fo, %bb.aq ], [ %.93.i, %bb.as ], [ %i.fs, %bb.ar ]
  %i.fw = sub i32 %.1.i, %i.dt                    ; 3 uses
  %.not106.i = icmp eq i32 %.val124, 0
  br i1 %.not106.i, label %.thread, label %.thread176

.thread176:                                       ; preds = %bb.at
  %i.fx = add i32 %i.co, %i.fw
  store i32 %i.fx, ptr %i.ax, align 4, !tbaa !419
  %i.fy = or disjoint i32 %.val124, 16
  store i32 %i.fy, ptr %9, align 8, !tbaa !416
  br label %.thread

bb.au:                                            ; preds = %bb.al, %bb.am, %bb.an
  %.071.i = phi i32 [ %i.fb, %bb.al ], [ %..i139, %bb.an ], [ %i.ff, %bb.am ] ; 2 uses
  %i.fz = sub i32 %.071.i, %i.co
  store i32 %.071.i, ptr %i.ax, align 4, !tbaa !419
  %i.ga = or disjoint i32 %.val124, 16
  store i32 %i.ga, ptr %9, align 8, !tbaa !416
  %.not107.i = icmp eq i32 %.val123, 0
  br i1 %.not107.i, label %cf2_blues_capture.exit, label %.thread

.thread:                                          ; preds = %bb.at, %.thread176, %bb.au
  %.070.ph133.i175 = phi i32 [ %i.fw, %.thread176 ], [ %i.fz, %bb.au ], [ %i.fw, %bb.at ]
  %i.gb = add i32 %i.dt, %.070.ph133.i175
  store i32 %i.gb, ptr %i.bc, align 4, !tbaa !419
  %i.gc = or disjoint i32 %.val123, 16
  store i32 %i.gc, ptr %10, align 8, !tbaa !416
  br label %cf2_blues_capture.exit

cf2_blues_capture.exit:                           ; preds = %.thread, %bb.au, %cf2_hint_init.exit136
  call fastcc void @cf2_hintmap_insertHint(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %i.gd = load i8, ptr %.0100204, align 1, !tbaa !41
  %i.ge = trunc i32 %.0208 to i8
  %i.gf = xor i8 %i.ge, -1
  %i.gg = and i8 %i.gd, %i.gf
  store i8 %i.gg, ptr %.0100204, align 1, !tbaa !41
  br label %cf2_blues_capture.exit.thread

cf2_blues_capture.exit.thread:                    ; preds = %.thread.i, %.thread.i.us195, %.thread.i.us, %.lr.ph.i137.split.us, %bb.ae, %cf2_blues_capture.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.av

bb.av:                                            ; preds = %cf2_blues_capture.exit.thread, %bb.n
  %i.gh = and i64 %.097205, 7
  %i.gi = icmp eq i64 %i.gh, 7                    ; 2 uses
  %i.gj = lshr i32 %.0208, 1
  %i.gk = and i32 %i.gj, 127
  %.1101.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.gi to i64
  %.1101.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.0100204, i64 %.1101.idx.sroa.sel.idx.sroa.sel.idx
  %.1 = select i1 %i.gi, i32 128, i32 %i.gk
  %i.gl = add nuw i64 %.097205, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gl, %.val120
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !725

._crit_edge:                                      ; preds = %bb.av
  br i1 %.not, label %bb.aw, label %.lr.ph214

._crit_edge.thread:                               ; preds = %bb.m
  br i1 %.not, label %bb.aw, label %.loopexit184.thread

.lr.ph214:                                        ; preds = %._crit_edge
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.gy = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  br label %bb.ba

bb.aw:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.gz = load i32, ptr %i.af, align 8, !tbaa !414 ; 2 uses
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !417
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.he = add i32 %i.gz, -1
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 56
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !417
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %bb.az, label %.loopexit184.thread

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 49, ptr %11, align 8, !tbaa !416
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !354
  %i.hm = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %i.hl, ptr %i.hm, align 8, !tbaa !418
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  call fastcc void @cf2_hintmap_insertHint(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.loopexit184.thread

bb.ba:                                            ; preds = %.lr.ph214, %bb.br
  %.2213 = phi i32 [ 128, %.lr.ph214 ], [ %.3, %bb.br ] ; 2 uses
  %.198210 = phi i64 [ 0, %.lr.ph214 ], [ %i.ka, %bb.br ] ; 9 uses
  %.2102209 = phi ptr [ %i.ah, %.lr.ph214 ], [ %.3103.idx.sroa.sel.idx.sroa.sel, %bb.br ] ; 2 uses
  %i.hn = load i8, ptr %.2102209, align 1, !tbaa !41
  %i.ho = zext i8 %i.hn to i32
  %i.hp = and i32 %.2213, %i.ho
  %.not111 = icmp eq i32 %i.hp, 0
  br i1 %.not111, label %bb.br, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.hq = load i32, ptr %i.gm, align 4, !tbaa !354 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %i.hr = load i64, ptr %i.ai, align 8, !tbaa !391
  %.not.i.i140 = icmp ult i64 %.198210, %i.hr     ; 2 uses
  br i1 %.not.i.i140, label %cf2_arrstack_getPointer.exit.i143, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hs = load ptr, ptr %i.gn, align 8, !tbaa !335 ; 3 uses
  %.not.i.i.i141 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i141, label %cf2_arrstack_getPointer.exit.i143, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !24
  %.not3.i.i.i142 = icmp eq i32 %i.ht, 0
  br i1 %.not3.i.i.i142, label %bb.be, label %cf2_arrstack_getPointer.exit.i143

bb.be:                                            ; preds = %bb.bd
  store i32 130, ptr %i.hs, align 4, !tbaa !24
  br label %cf2_arrstack_getPointer.exit.i143

cf2_arrstack_getPointer.exit.i143:                ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb
  %.0.i.i144 = phi i64 [ %.198210, %bb.bb ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ 0, %bb.be ]
  %i.hu = load ptr, ptr %i.go, align 8, !tbaa !395 ; 2 uses
  %i.hv = load i64, ptr %i.gp, align 8, !tbaa !336 ; 2 uses
  %i.hw = mul i64 %i.hv, %.0.i.i144
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hw ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !398 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !397 ; 2 uses
  %i.ic = sub i32 %i.hz, %i.ib                    ; 2 uses
  switch i32 %i.ic, label %bb.bg [
    i32 -1376256, label %bb.bh
    i32 -1310720, label %bb.bf
  ]

bb.bf:                                            ; preds = %cf2_arrstack_getPointer.exit.i143
  store i32 0, ptr %13, align 8, !tbaa !416
  store i32 %4, ptr %i.gq, align 8, !tbaa !417
  store i32 %i.hq, ptr %i.gr, align 8, !tbaa !418
  store i64 %.198210, ptr %i.gs, align 8, !tbaa !732
  br label %bb.bj

bb.bg:                                            ; preds = %cf2_arrstack_getPointer.exit.i143
  %i.id = icmp slt i32 %i.ic, 0
  %.92.i148 = select i1 %i.id, i32 %i.hz, i32 %i.ib
  br label %bb.bh

bb.bh:                                            ; preds = %cf2_arrstack_getPointer.exit.i143, %bb.bg
  %.sink.i145 = phi i32 [ 4, %bb.bg ], [ 1, %cf2_arrstack_getPointer.exit.i143 ] ; 2 uses
  %i.ie = phi i32 [ %.92.i148, %bb.bg ], [ %i.hz, %cf2_arrstack_getPointer.exit.i143 ]
  store i32 %.sink.i145, ptr %13, align 8, !tbaa !416
  %i.if = add i32 %i.ie, %4                       ; 2 uses
  store i32 %i.if, ptr %i.gq, align 8, !tbaa !417
  store i32 %i.hq, ptr %i.gr, align 8, !tbaa !418
  store i64 %.198210, ptr %i.gs, align 8, !tbaa !732
  %i.ig = load i8, ptr %i.hx, align 4, !tbaa !399
  %.not58.i146 = icmp eq i8 %i.ig, 0
  br i1 %.not58.i146, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !24
  store i32 %i.ii, ptr %i.gt, align 4, !tbaa !419
  %i.ij = or disjoint i32 %.sink.i145, 16
  store i32 %i.ij, ptr %13, align 8, !tbaa !416
  br label %cf2_hint_init.exit149

bb.bj:                                            ; preds = %bb.bh, %bb.bf
  %i.ik = phi i32 [ %i.if, %bb.bh ], [ %4, %bb.bf ]
  %i.il = sext i32 %i.ik to i64
  %i.im = sext i32 %i.hq to i64
  %i.in = mul nsw i64 %i.il, %i.im                ; 2 uses
  %i.io = ashr i64 %i.in, 63
  %i.ip = add nsw i64 %i.in, 32768
  %i.iq = add nsw i64 %i.ip, %i.io
  %i.ir = lshr i64 %i.iq, 16
  %i.is = trunc i64 %i.ir to i32
  store i32 %i.is, ptr %i.gt, align 4, !tbaa !419
  br label %cf2_hint_init.exit149

cf2_hint_init.exit149:                            ; preds = %bb.bi, %bb.bj
  %i.it = load i32, ptr %i.gm, align 4, !tbaa !354 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  br i1 %.not.i.i140, label %cf2_arrstack_getPointer.exit.i153, label %bb.bk

bb.bk:                                            ; preds = %cf2_hint_init.exit149
  %i.iu = load ptr, ptr %i.gn, align 8, !tbaa !335 ; 3 uses
  %.not.i.i.i151 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i151, label %cf2_arrstack_getPointer.exit.i153, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !24
  %.not3.i.i.i152 = icmp eq i32 %i.iv, 0
  br i1 %.not3.i.i.i152, label %bb.bm, label %cf2_arrstack_getPointer.exit.i153

bb.bm:                                            ; preds = %bb.bl
  store i32 130, ptr %i.iu, align 4, !tbaa !24
  br label %cf2_arrstack_getPointer.exit.i153

cf2_arrstack_getPointer.exit.i153:                ; preds = %bb.bm, %bb.bl, %bb.bk, %cf2_hint_init.exit149
  %.0.i.i154 = phi i64 [ %.198210, %cf2_hint_init.exit149 ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ 0, %bb.bm ]
  %i.iw = mul i64 %.0.i.i154, %i.hv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.iw ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !398 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !397 ; 3 uses
  %i.jc = sub i32 %i.iz, %i.jb                    ; 2 uses
  switch i32 %i.jc, label %bb.bo [
    i32 -1376256, label %bb.bn
    i32 -1310720, label %.thread75.i155
  ]

bb.bn:                                            ; preds = %cf2_arrstack_getPointer.exit.i153
  store i32 0, ptr %14, align 8, !tbaa !416
  store i32 %4, ptr %i.gu, align 8, !tbaa !417
  store i32 %i.it, ptr %i.gv, align 8, !tbaa !418
  store i64 %.198210, ptr %i.gw, align 8, !tbaa !732
  br label %bb.bq

bb.bo:                                            ; preds = %cf2_arrstack_getPointer.exit.i153
  %i.jd = icmp slt i32 %i.jc, 0
  %..i158 = select i1 %i.jd, i32 %i.jb, i32 %i.iz
  br label %.thread75.i155

.thread75.i155:                                   ; preds = %cf2_arrstack_getPointer.exit.i153, %bb.bo
  %.sink87.i156 = phi i32 [ 8, %bb.bo ], [ 2, %cf2_arrstack_getPointer.exit.i153 ] ; 2 uses
  %i.je = phi i32 [ %..i158, %bb.bo ], [ %i.jb, %cf2_arrstack_getPointer.exit.i153 ]
  store i32 %.sink87.i156, ptr %14, align 8, !tbaa !416
  %i.jf = load i32, ptr %i.gx, align 8, !tbaa !243
  %i.jg = shl nsw i32 %i.jf, 1
  %i.jh = add i32 %i.je, %4
  %i.ji = add i32 %i.jh, %i.jg                    ; 2 uses
  store i32 %i.ji, ptr %i.gu, align 8, !tbaa !417
  store i32 %i.it, ptr %i.gv, align 8, !tbaa !418
  store i64 %.198210, ptr %i.gw, align 8, !tbaa !732
  %i.jj = load i8, ptr %i.ix, align 4, !tbaa !399
  %.not5878.i157 = icmp eq i8 %i.jj, 0
  br i1 %.not5878.i157, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.thread75.i155
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !24
  store i32 %i.jl, ptr %i.gy, align 4, !tbaa !419
  %i.jm = or disjoint i32 %.sink87.i156, 16
  store i32 %i.jm, ptr %14, align 8, !tbaa !416
  br label %cf2_hint_init.exit160

bb.bq:                                            ; preds = %.thread75.i155, %bb.bn
  %i.jn = phi i32 [ %i.ji, %.thread75.i155 ], [ %4, %bb.bn ]
  %i.jo = sext i32 %i.jn to i64
  %i.jp = sext i32 %i.it to i64
  %i.jq = mul nsw i64 %i.jo, %i.jp                ; 2 uses
  %i.jr = ashr i64 %i.jq, 63
  %i.js = add nsw i64 %i.jq, 32768
  %i.jt = add nsw i64 %i.js, %i.jr
  %i.ju = lshr i64 %i.jt, 16
  %i.jv = trunc i64 %i.ju to i32
  store i32 %i.jv, ptr %i.gy, align 4, !tbaa !419
  br label %cf2_hint_init.exit160

cf2_hint_init.exit160:                            ; preds = %bb.bp, %bb.bq
  call fastcc void @cf2_hintmap_insertHint(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.br

bb.br:                                            ; preds = %cf2_hint_init.exit160, %bb.ba
  %i.jw = and i64 %.198210, 7
  %i.jx = icmp eq i64 %i.jw, 7                    ; 2 uses
  %i.jy = lshr i32 %.2213, 1
  %i.jz = and i32 %i.jy, 127
  %.3103.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.jx to i64
  %.3103.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.2102209, i64 %.3103.idx.sroa.sel.idx.sroa.sel.idx
  %.3 = select i1 %i.jx, i32 128, i32 %i.jz
  %i.ka = add nuw i64 %.198210, 1                 ; 2 uses
  %exitcond235.not = icmp eq i64 %i.ka, %.val120
  br i1 %exitcond235.not, label %.loopexit184.thread, label %bb.ba, !llvm.loop !726

.loopexit184.thread:                              ; preds = %bb.br, %._crit_edge.thread, %bb.ay, %bb.az
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !352 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  store i64 0, ptr %i.kd, align 8, !tbaa !391
  %i.ke = load i32, ptr %i.af, align 8, !tbaa !414 ; 2 uses
  %.not173.i275 = icmp eq i32 %i.ke, 0
  br i1 %.not173.i275, label %._crit_edge.i163, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %.loopexit184.thread
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.cj, %.lr.ph.i161
  %i.kh = phi i32 [ %i.ke, %.lr.ph.i161 ], [ %i.nc, %bb.cj ]
  %.0132169.i = phi i64 [ 0, %.lr.ph.i161 ], [ %i.nb, %bb.cj ] ; 7 uses
  %i.ki = getelementptr inbounds nuw [32 x i8], ptr %i.kf, i64 %.0132169.i ; 8 uses
  %.val158.i = load i32, ptr %i.ki, align 8, !tbaa !416 ; 2 uses
  %i.kj = and i32 %.val158.i, 12
  %.not167.i = icmp eq i32 %i.kj, 0               ; 3 uses
  %i.kk = add nuw nsw i64 %.0132169.i, 1          ; 3 uses
  %i.kl = select i1 %.not167.i, i64 %.0132169.i, i64 %i.kk ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 20 ; 3 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !419 ; 4 uses
  %i.ko = getelementptr inbounds nuw [32 x i8], ptr %i.kf, i64 %i.kl ; 7 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 20 ; 3 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !419 ; 3 uses
  %i.kr = and i32 %.val158.i, 16
  %.not142.i = icmp eq i32 %i.kr, 0
  br i1 %.not142.i, label %bb.bt, label %bb.cd

bb.bt:                                            ; preds = %bb.bs
  %i.ks = and i32 %i.kn, 65535                    ; 3 uses
  %i.kt = and i32 %i.kq, 65535                    ; 3 uses
  %i.ku = icmp eq i32 %i.ks, 0
  %i.kv = sub nuw nsw i32 65536, %i.ks
  %i.kw = icmp eq i32 %i.kt, 0
  %i.kx = sub nuw nsw i32 65536, %i.kt
  %i.ky = tail call i32 @llvm.umin.i32(i32 %i.kv, i32 %i.kx)
  %i.kz = select i1 %i.ku, i1 true, i1 %i.kw
  %i.la = select i1 %i.kz, i32 0, i32 %i.ky       ; 6 uses
  %i.lb = tail call i32 @llvm.umin.i32(i32 %i.ks, i32 %i.kt) ; 5 uses
  %i.lc = sub nsw i32 0, %i.lb                    ; 3 uses
  %i.ld = add i32 %i.kh, -1
  %i.le = zext i32 %i.ld to i64
  %.not143.i = icmp samesign ult i64 %i.kl, %i.le
  br i1 %.not143.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ko, i64 52
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !419
  %i.lh = add i32 %i.kq, 32768
  %i.li = add i32 %i.lh, %i.la
  %.not144.i = icmp slt i32 %i.lg, %i.li
  br i1 %.not144.i, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.lj = icmp eq i64 %.0132169.i, 0
  br i1 %i.lj, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lk = getelementptr i8, ptr %i.ki, i64 -12
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !419
  %reass.sub146.i = add i32 %i.kn, -32768
  %i.lm = sub i32 %reass.sub146.i, %i.lb
  %.not147.i = icmp sgt i32 %i.ll, %i.lm
  br i1 %.not147.i, label %.thread.i168, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.ln = icmp samesign ult i32 %i.lb, %i.la
  %i.lo = select i1 %i.ln, i32 %i.lc, i32 %i.la
  br label %.thread.i168

bb.by:                                            ; preds = %bb.bu
  %i.lp = icmp eq i64 %.0132169.i, 0
  br i1 %i.lp, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lq = getelementptr i8, ptr %i.ki, i64 -12
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !419
  %reass.sub.i = add i32 %i.kn, -32768
  %i.ls = sub i32 %reass.sub.i, %i.lb
  %.not145.i = icmp sgt i32 %i.lr, %i.ls
  br i1 %.not145.i, label %.thread162.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.not168.i = icmp samesign ult i32 %i.la, %i.lb
  br i1 %.not168.i, label %.thread162.i, label %.thread.i168

.thread162.i:                                     ; preds = %bb.ca, %bb.bz
  %.0131165.i = phi i32 [ %i.lc, %bb.ca ], [ 0, %bb.bz ] ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  %.val155.i = load i32, ptr %i.lt, align 8, !tbaa !416
  %i.lu = and i32 %.val155.i, 16
  %.not149.i = icmp eq i32 %i.lu, 0
  br i1 %.not149.i, label %bb.cb, label %.thread.i168

bb.cb:                                            ; preds = %.thread162.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 %i.kl, ptr %6, align 8, !tbaa !736
  %i.lv = sub nsw i32 %i.la, %.0131165.i
  store i32 %i.lv, ptr %i.kg, align 8, !tbaa !737
  %i.lw = load ptr, ptr %i.kb, align 8, !tbaa !352
  call fastcc void @cf2_arrstack_push(ptr noundef %i.lw, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.thread.i168

.thread.i168:                                     ; preds = %bb.cb, %.thread162.i, %bb.ca, %bb.bx, %bb.bw
  %.0131161.i = phi i32 [ %i.lc, %bb.ca ], [ %.0131165.i, %bb.cb ], [ %.0131165.i, %.thread162.i ], [ %i.la, %bb.bw ], [ %i.lo, %bb.bx ] ; 2 uses
  %i.lx = add i32 %.0131161.i, %i.kn
  store i32 %i.lx, ptr %i.km, align 4, !tbaa !419
  br i1 %.not167.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.thread.i168
  %i.ly = add i32 %.0131161.i, %i.kq
  store i32 %i.ly, ptr %i.kp, align 4, !tbaa !419
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.thread.i168, %bb.bs
  %.not151.i = icmp eq i64 %.0132169.i, 0
  br i1 %.not151.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !417 ; 2 uses
  %i.mb = getelementptr i8, ptr %i.ki, i64 -16
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !417 ; 2 uses
  %.not152.i = icmp eq i32 %i.ma, %i.mc
  br i1 %.not152.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.md = load i32, ptr %i.km, align 4, !tbaa !419
  %i.me = getelementptr i8, ptr %i.ki, i64 -12
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !419
  %i.mg = sub i32 %i.md, %i.mf
  %i.mh = sext i32 %i.mg to i64
  %i.mi = sub i32 %i.ma, %i.mc
  %i.mj = sext i32 %i.mi to i64
  %i.mk = tail call i64 @FT_DivFix(i64 noundef %i.mh, i64 noundef %i.mj) #19
  %i.ml = trunc i64 %i.mk to i32
  %i.mm = getelementptr i8, ptr %i.ki, i64 -8
  store i32 %i.ml, ptr %i.mm, align 8, !tbaa !418
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  br i1 %.not167.i, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !417 ; 2 uses
  %i.mp = getelementptr i8, ptr %i.ko, i64 -16
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !417 ; 2 uses
  %.not154.i = icmp eq i32 %i.mo, %i.mq
  br i1 %.not154.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mr = load i32, ptr %i.kp, align 4, !tbaa !419
  %i.ms = getelementptr i8, ptr %i.ko, i64 -12
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !419
  %i.mu = sub i32 %i.mr, %i.mt
  %i.mv = sext i32 %i.mu to i64
  %i.mw = sub i32 %i.mo, %i.mq
  %i.mx = sext i32 %i.mw to i64
  %i.my = tail call i64 @FT_DivFix(i64 noundef %i.mv, i64 noundef %i.mx) #19
  %i.mz = trunc i64 %i.my to i32
  %i.na = getelementptr i8, ptr %i.ko, i64 -8
  store i32 %i.mz, ptr %i.na, align 8, !tbaa !418
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %.1.i162 = phi i64 [ %.0132169.i, %bb.cg ], [ %i.kk, %bb.ci ], [ %i.kk, %bb.ch ]
  %i.nb = add i64 %.1.i162, 1                     ; 2 uses
  %i.nc = load i32, ptr %i.af, align 8, !tbaa !414 ; 3 uses
  %i.nd = zext i32 %i.nc to i64
  %i.ne = icmp ult i64 %i.nb, %i.nd
  br i1 %i.ne, label %bb.bs, label %._crit_edge.loopexit.i, !llvm.loop !727

._crit_edge.loopexit.i:                           ; preds = %bb.cj
  %.pre.i163 = load ptr, ptr %i.kb, align 8, !tbaa !352
  br label %._crit_edge.i163

._crit_edge.i163:                                 ; preds = %._crit_edge.loopexit.i, %.loopexit184.thread
  %15 = phi i32 [ %i.nc, %._crit_edge.loopexit.i ], [ 0, %.loopexit184.thread ] ; 2 uses
  %16 = phi ptr [ %.pre.i163, %._crit_edge.loopexit.i ], [ %i.kc, %.loopexit184.thread ] ; 3 uses
  %.phi.trans.insert.i165 = getelementptr i8, ptr %16, i64 32
  %.val.pre.i = load i64, ptr %.phi.trans.insert.i165, align 8, !tbaa !391 ; 2 uses
  %.not170.i = icmp eq i64 %.val.pre.i, 0
  br i1 %.not170.i, label %cf2_hintmap_adjustHints.exit, label %cf2_arrstack_getPointer.exit.lr.ph.i

cf2_arrstack_getPointer.exit.lr.ph.i:             ; preds = %._crit_edge.i163
  %i.nf = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !395
  %i.nh = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !336
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %cf2_arrstack_getPointer.exit.i166

cf2_arrstack_getPointer.exit.i166:                ; preds = %bb.cm, %cf2_arrstack_getPointer.exit.lr.ph.i
  %.2171.i = phi i64 [ %.val.pre.i, %cf2_arrstack_getPointer.exit.lr.ph.i ], [ %i.nj, %bb.cm ]
  %i.nj = add i64 %.2171.i, -1                    ; 3 uses
  %i.nk = mul i64 %i.nj, %i.ni
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nk ; 2 uses
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !736
  %i.nn = getelementptr [32 x i8], ptr %17, i64 %i.nm ; 4 uses
  %i.no = getelementptr i8, ptr %i.nn, i64 52
  %i.np = load i32, ptr %i.no, align 4, !tbaa !419
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 20 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !419
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !737 ; 2 uses
  %i.nu = add i32 %i.nt, %i.nr                    ; 2 uses
  %i.nv = add i32 %i.nu, 32768
  %.not139.i = icmp slt i32 %i.np, %i.nv
  br i1 %.not139.i, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %cf2_arrstack_getPointer.exit.i166
  store i32 %i.nu, ptr %i.nq, align 4, !tbaa !419
  %.val157.i = load i32, ptr %i.nn, align 8, !tbaa !416
  %i.nw = and i32 %.val157.i, 12
  %.not166.i = icmp eq i32 %i.nw, 0
  br i1 %.not166.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nx = getelementptr i8, ptr %i.nn, i64 -12    ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !419
  %i.nz = add i32 %i.ny, %i.nt
  store i32 %i.nz, ptr %i.nx, align 4, !tbaa !419
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %cf2_arrstack_getPointer.exit.i166
  %.not.i167 = icmp eq i64 %i.nj, 0
  br i1 %.not.i167, label %cf2_hintmap_adjustHints.exit, label %cf2_arrstack_getPointer.exit.i166, !llvm.loop !728

cf2_hintmap_adjustHints.exit:                     ; preds = %bb.cm, %._crit_edge.i163
  %.not219 = icmp eq i32 %15, 0
  %or.cond291 = or i1 %.not, %.not219
  br i1 %or.cond291, label %.loopexit, label %.lr.ph216

.lr.ph216:                                        ; preds = %cf2_hintmap_adjustHints.exit
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph216, %bb.cs
  %i.oe = phi i32 [ %15, %.lr.ph216 ], [ %i.ou, %bb.cs ]
  %.299215 = phi i64 [ 0, %.lr.ph216 ], [ %i.ov, %bb.cs ] ; 2 uses
  %i.of = getelementptr inbounds nuw [32 x i8], ptr %i.oa, i64 %.299215 ; 4 uses
  %.val126 = load i32, ptr %i.of, align 8, !tbaa !416 ; 4 uses
  %i.og = and i32 %.val126, 32
  %.not112 = icmp eq i32 %i.og, 0
  br i1 %.not112, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !732 ; 2 uses
  %i.oj = load i64, ptr %i.ai, align 8, !tbaa !391
  %.not.i169 = icmp ult i64 %i.oi, %i.oj
  br i1 %.not.i169, label %cf2_arrstack_getPointer.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ok = load ptr, ptr %i.ob, align 8, !tbaa !335 ; 3 uses
  %.not.i.i170 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i170, label %cf2_arrstack_getPointer.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !24
  %.not3.i.i = icmp eq i32 %i.ol, 0
  br i1 %.not3.i.i, label %bb.cr, label %cf2_arrstack_getPointer.exit

bb.cr:                                            ; preds = %bb.cq
  store i32 130, ptr %i.ok, align 4, !tbaa !24
  %.val125.pre = load i32, ptr %i.of, align 8, !tbaa !416
  br label %cf2_arrstack_getPointer.exit

cf2_arrstack_getPointer.exit:                     ; preds = %bb.co, %bb.cp, %bb.cq, %bb.cr
  %.val125 = phi i32 [ %.val126, %bb.co ], [ %.val126, %bb.cp ], [ %.val126, %bb.cq ], [ %.val125.pre, %bb.cr ]
  %.0.i = phi i64 [ %i.oi, %bb.co ], [ 0, %bb.cp ], [ 0, %bb.cq ], [ 0, %bb.cr ]
  %i.om = load ptr, ptr %i.oc, align 8, !tbaa !395
  %i.on = load i64, ptr %i.od, align 8, !tbaa !336
  %i.oo = mul i64 %i.on, %.0.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.oo ; 2 uses
  %i.oq = and i32 %.val125, 10
  %.not182 = icmp eq i32 %i.oq, 0
  %i.or = getelementptr inbounds nuw i8, ptr %i.of, i64 20
  %i.os = load i32, ptr %i.or, align 4, !tbaa !419
  %. = select i1 %.not182, i64 12, i64 16
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 %.
  store i32 %i.os, ptr %i.ot, align 4, !tbaa !24
  store i8 1, ptr %i.op, align 4, !tbaa !399
  %.pre = load i32, ptr %i.af, align 8, !tbaa !414
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cn, %cf2_arrstack_getPointer.exit
  %i.ou = phi i32 [ %i.oe, %bb.cn ], [ %.pre, %cf2_arrstack_getPointer.exit ] ; 2 uses
  %i.ov = add nuw nsw i64 %.299215, 1             ; 2 uses
  %i.ow = zext i32 %i.ou to i64
  %i.ox = icmp samesign ult i64 %i.ov, %i.ow
  br i1 %i.ox, label %bb.cn, label %.loopexit, !llvm.loop !729

.loopexit:                                        ; preds = %bb.cs, %cf2_hintmap_adjustHints.exit
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.oy, align 8, !tbaa !402
  %i.oz = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.oz, align 1, !tbaa !392
  br label %bb.ct

bb.ct:                                            ; preds = %cf2_hintmask_setAll.exit.thread, %bb.i, %bb.j, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cf2_arrstack_push(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !391  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !738
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !395
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = shl i64 %i.c, 1
  %i.h = add i64 %i.g, 16                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !336  ; 2 uses
  %i.k = mul i64 %i.j, %i.h                       ; 2 uses
  %i.l = udiv i64 9223372036854775807, %i.j
  %i.m = icmp ugt i64 %i.h, %i.l
  br i1 %i.m, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !334
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !739
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !395
  %i.s = call ptr @ft_mem_qrealloc(ptr noundef %i.n, i64 noundef 1, i64 noundef %i.p, i64 noundef %i.k, ptr noundef %i.r, ptr noundef nonnull %i.a) #19 ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !395
  %i.t = load i32, ptr %i.a, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store i64 %i.h, ptr %i.d, align 8, !tbaa !738
  store i64 %i.k, ptr %i.o, align 8, !tbaa !739
  %i.u = load i64, ptr %i.b, align 8, !tbaa !391  ; 2 uses
  %i.v = icmp ugt i64 %i.u, %i.h
  br i1 %i.v, label %bb.e, label %cf2_arrstack_setNumElements.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !335  ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %cf2_arrstack_setNumElements.exit.thread13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.x, align 4, !tbaa !24
  %.not3.i.i = icmp eq i32 %i.y, 0
  br i1 %.not3.i.i, label %bb.g, label %cf2_arrstack_setNumElements.exit.thread13

bb.g:                                             ; preds = %bb.f
  store i32 130, ptr %i.x, align 4, !tbaa !24
  br label %cf2_arrstack_setNumElements.exit.thread13

cf2_arrstack_setNumElements.exit.thread13:        ; preds = %bb.e, %bb.f, %bb.g
  store i64 %i.h, ptr %i.b, align 8, !tbaa !391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %cf2_arrstack_setNumElements.exit.thread

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !335 ; 3 uses
  %.not.i23.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i, label %cf2_arrstack_setNumElements.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !24
  %.not3.i24.i = icmp eq i32 %i.ab, 0
  br i1 %.not3.i24.i, label %bb.j, label %cf2_arrstack_setNumElements.exit.thread

bb.j:                                             ; preds = %bb.i
  store i32 64, ptr %i.aa, align 4, !tbaa !24
  br label %cf2_arrstack_setNumElements.exit.thread

cf2_arrstack_setNumElements.exit:                 ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %cf2_arrstack_setNumElements.exit
  %i.ac = phi ptr [ %i.s, %cf2_arrstack_setNumElements.exit ], [ %.pre, %._crit_edge ]
  %i.ad = phi i64 [ %i.u, %cf2_arrstack_setNumElements.exit ], [ %i.c, %._crit_edge ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !336 ; 2 uses
  %i.ag = mul i64 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %1, i64 %i.af, i1 false)
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !391
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !391
  br label %cf2_arrstack_setNumElements.exit.thread

cf2_arrstack_setNumElements.exit.thread:          ; preds = %bb.j, %bb.i, %bb.h, %cf2_arrstack_setNumElements.exit.thread13, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @cf2_glyphpath_computeOffset(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %6) unnamed_addr #5 {
bb.a:
  %i.a = sub i32 %3, %1                           ; 3 uses
  %i.b = sub i32 %4, %2                           ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !347
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  %i.e = load i8, ptr %i.d, align 4, !tbaa !245
  %.not = icmp eq i8 %i.e, 0                      ; 2 uses
  %i.f = sub i32 0, %i.a
  %i.g = sub i32 0, %i.b
  %.076 = select i1 %.not, i32 %i.a, i32 %i.f     ; 8 uses
  %.0 = select i1 %.not, i32 %i.b, i32 %i.g       ; 9 uses
  store i32 0, ptr %6, align 4, !tbaa !24
  store i32 0, ptr %5, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18658
  %i.i = load i8, ptr %i.h, align 2, !tbaa !360
  %.not77 = icmp eq i8 %i.i, 0
  br i1 %.not77, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !348
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !413
  %i.n = ashr i32 %1, 16
  %i.o = ashr i32 %i.b, 16
  %i.p = mul nsw i32 %i.o, %i.n
  %i.q = ashr i32 %2, 16
  %i.r = ashr i32 %i.a, 16
  %i.s = mul nsw i32 %i.r, %i.q
  %i.t = sub nsw i32 %i.p, %i.s
  %i.u = add i32 %i.t, %i.m
  store i32 %i.u, ptr %i.l, align 8, !tbaa !413
  %i.v = icmp sgt i32 %.076, -1
  %i.w = icmp sgt i32 %.0, -1                     ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.x = shl nuw i32 %.0, 1
  %i.y = icmp sgt i32 %.076, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %5, align 4, !tbaa !24
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.z = shl nuw i32 %.076, 1
  %i.aa = icmp sgt i32 %.0, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18704
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !361 ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.ac, ptr %5, align 4, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 18708
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !362
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.af = sext i32 %i.ac to i64
  %i.ag = mul nsw i64 %i.af, 45875                ; 2 uses
  %i.ah = ashr i64 %i.ag, 63
  %i.ai = add nsw i64 %i.ag, 32768
  %i.aj = add nsw i64 %i.ai, %i.ah
  %i.ak = lshr i64 %i.aj, 16
  %i.al = trunc i64 %i.ak to i32
  store i32 %i.al, ptr %5, align 4, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 18708
  %i.an = load i32, ptr %i.am, align 4, !tbaa !362
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ao, 19661                ; 2 uses
  %i.aq = ashr i64 %i.ap, 63
  %i.ar = add nsw i64 %i.ap, 32768
  %i.as = add nsw i64 %i.ar, %i.aq
  %i.at = lshr i64 %i.as, 16
  %i.au = trunc i64 %i.at to i32
  br label %.sink.split

bb.i:                                             ; preds = %bb.c
  %i.av = mul i32 %.0, -2
end_hunk_1
