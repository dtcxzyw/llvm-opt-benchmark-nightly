Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@cf2_stack_roll:bb.a

bb.f:                                             ; preds = %bb.b
  %i.m = icmp slt i32 %2, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = sub nsw i32 0, %2
  %i.o = urem i32 %i.n, %1
  %i.p = sub nsw i32 0, %i.o
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = urem i32 %2, %1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.034 = phi i32 [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  %.not45 = icmp eq i32 %.034, 0
  br i1 %.not45, label %cf2_setError.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.r = sub nsw i32 0, %1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %.044 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.l ]
  %.03143 = phi i32 [ -1, %.lr.ph ], [ %.2, %bb.l ] ; 3 uses
  %.03242 = phi i32 [ -1, %.lr.ph ], [ %.133, %bb.l ] ; 2 uses
  %.sroa.0.041 = phi i64 [ 8589934592, %.lr.ph ], [ %i.ac, %bb.l ]
  %i.s = icmp eq i32 %.03242, %.03143
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !370 ; 2 uses
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %.03143, 1                   ; 3 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.u
  %i.w = load i64, ptr %i.v, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.1 = phi i64 [ %i.w, %bb.k ], [ %.sroa.0.041, %bb.j ]
  %.133 = phi i32 [ %i.t, %bb.k ], [ %.03242, %bb.j ]
  %.1 = phi i32 [ %i.t, %bb.k ], [ %.03143, %bb.j ]
  %i.x = add nsw i32 %.1, %.034                   ; 3 uses
  %.not = icmp slt i32 %i.x, %1
  %i.y = icmp slt i32 %i.x, 0
  %i.z = select i1 %i.y, i32 %1, i32 0
  %.2.p = select i1 %.not, i32 %i.z, i32 %i.r
  %.2 = add i32 %.2.p, %i.x                       ; 2 uses
  %i.aa = sext i32 %.2 to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 4
  store i64 %.sroa.0.1, ptr %i.ab, align 4
  %i.ad = add nuw nsw i32 %.044, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ad, %1
  br i1 %exitcond.not, label %cf2_setError.exit, label %bb.j, !llvm.loop !717

cf2_setError.exit:                                ; preds = %bb.l, %bb.e, %bb.d, %bb.c, %bb.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cf2_getSeacComponent(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %2) unnamed_addr #0 {
bb.a:
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
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
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
end_hunk_0
