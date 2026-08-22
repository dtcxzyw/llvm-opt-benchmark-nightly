Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@cf2_stack_roll:bb.a
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
  br i1 %exitcond.not, label %cf2_setError.exit, label %bb.j, !llvm.loop !711

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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !287  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !248
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !629
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !218  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1312 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !712
  %.not.i = icmp eq ptr %i.l, null
  %or.cond.i = icmp ugt i32 %1, 255
  %or.cond16.i = or i1 %or.cond.i, %.not.i
  br i1 %or.cond16.i, label %cff_lookup_glyph_by_stdcharcode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !219
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !713
  %i.p = tail call zeroext i16 %i.o(i32 noundef %1) #19, !inline_history !714
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !715  ; 2 uses
  %.not20.i = icmp eq i32 %i.r, 0
  br i1 %.not20.i, label %cff_lookup_glyph_by_stdcharcode.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !712
  %wide.trip.count.i = zext i32 %i.r to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !46
  %i.v = icmp eq i16 %i.u, %i.p
  br i1 %i.v, label %cff_lookup_glyph_by_stdcharcode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %cff_lookup_glyph_by_stdcharcode.exit.thread, label %bb.d, !llvm.loop !716

cff_lookup_glyph_by_stdcharcode.exit:             ; preds = %bb.d
  %i.w = trunc nuw i64 %indvars.iv.i to i32       ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %cff_lookup_glyph_by_stdcharcode.exit.thread, label %cff_lookup_glyph_by_stdcharcode.exit._crit_edge

cff_lookup_glyph_by_stdcharcode.exit._crit_edge:  ; preds = %cff_lookup_glyph_by_stdcharcode.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !287
  br label %bb.f

bb.f:                                             ; preds = %cff_lookup_glyph_by_stdcharcode.exit._crit_edge, %bb.a
  %i.y = phi ptr [ %.pre, %cff_lookup_glyph_by_stdcharcode.exit._crit_edge ], [ %i.d, %bb.a ]
  %.0 = phi i32 [ %i.w, %cff_lookup_glyph_by_stdcharcode.exit._crit_edge ], [ %1, %bb.a ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !717
  %i.ab = call i32 %i.aa(ptr noundef %i.y, i32 noundef %.0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19 ; 2 uses
  %.not18 = icmp eq i32 %i.ab, 0
  br i1 %.not18, label %bb.g, label %cff_lookup_glyph_by_stdcharcode.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !28  ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !255
  %.not19 = icmp eq ptr %i.ac, null
  %i.ae = load i64, ptr %i.b, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.ag = select i1 %.not19, ptr null, ptr %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !256
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !253
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !576    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %.not = icmp ne i8 %5, 0                        ; 4 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !577  ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %.val119 = load i8, ptr %i.d, align 8, !tbaa !688
  %.not106 = icmp eq i8 %.val119, 0
  br i1 %.not106, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %3, align 8, !tbaa !563
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  store ptr %i.e, ptr %7, align 8, !tbaa !563
  call fastcc void @cf2_hintmap_build(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, i32 noundef %4, i8 noundef zeroext 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val118 = load i8, ptr %i.g, align 8, !tbaa !609
  %.not107 = icmp eq i8 %.val118, 0
  br i1 %.not107, label %bb.e, label %cf2_hintmask_setAll.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %1, i64 32
  %.val122 = load i64, ptr %i.h, align 8, !tbaa !655
  %i.i = getelementptr i8, ptr %2, i64 32
  %.val121 = load i64, ptr %i.i, align 8, !tbaa !655
  %i.j = add i64 %.val121, %.val122               ; 5 uses
  %i.k = trunc i64 %i.j to i8
  %i.l = sub i8 0, %i.k
  %i.m = and i8 %i.l, 7
  %notmask.i = shl nsw i8 -1, %i.m
  %i.n = icmp ugt i64 %i.j, 96
  br i1 %i.n, label %bb.f, label %cf2_hintmask_setCounts.exit.i

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %3, align 8, !tbaa !563    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19
  %.not3.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not3.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 18, ptr %i.o, align 4, !tbaa !19
  br label %bb.i

cf2_hintmask_setCounts.exit.i:                    ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %i.q, align 8, !tbaa !666
  %i.r = add nuw nsw i64 %i.j, 7
  %i.s = lshr i64 %i.r, 3                         ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.s, ptr %i.t, align 8, !tbaa !667
  store i8 1, ptr %i.g, align 8, !tbaa !609
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 1, ptr %i.u, align 1, !tbaa !656
  %i.v = icmp eq i64 %i.j, 0
  br i1 %i.v, label %cf2_hintmask_setAll.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %cf2_hintmask_setCounts.exit.i
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %cf2_hintmask_setAll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 -1, i64 %i.s, i1 false), !tbaa !40
  br label %cf2_hintmask_setAll.exit

cf2_hintmask_setAll.exit:                         ; preds = %.preheader.i, %.lr.ph.i
  %i.x = getelementptr i8, ptr %3, i64 31
  %i.y = getelementptr i8, ptr %i.x, i64 %i.s     ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !40
  %i.aa = and i8 %i.z, %notmask.i
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !40
  br label %cf2_hintmask_setAll.exit.thread

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !285
  %.not109 = icmp eq i8 %i.ac, 0
  br i1 %.not109, label %bb.ct, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !563
  store i32 0, ptr %i.ad, align 4, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.ae, align 1, !tbaa !575
  br label %bb.ct

cf2_hintmask_setAll.exit.thread:                  ; preds = %cf2_hintmask_setAll.exit, %cf2_hintmask_setCounts.exit.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  store i32 0, ptr %i.af, align 8, !tbaa !718
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.ag, align 4, !tbaa !719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !720
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ai = getelementptr i8, ptr %1, i64 32        ; 4 uses
  %.val120 = load i64, ptr %i.ai, align 8, !tbaa !655 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !666
  %i.al = icmp ugt i64 %.val120, %i.ak
  br i1 %i.al, label %bb.ct, label %bb.k

bb.k:                                             ; preds = %cf2_hintmask_setAll.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 321
  %i.an = load i8, ptr %i.am, align 1, !tbaa !721
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
  %i.bi = load i8, ptr %.0100204, align 1, !tbaa !40
  %i.bj = zext i8 %i.bi to i32
  %i.bk = and i32 %.0208, %i.bj
  %.not114 = icmp eq i32 %i.bk, 0
  br i1 %.not114, label %bb.av, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.bl = load i32, ptr %i.aq, align 4, !tbaa !581 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %i.bm = load i64, ptr %i.ai, align 8, !tbaa !655
  %.not.i.i = icmp ult i64 %.097205, %i.bm        ; 2 uses
  br i1 %.not.i.i, label %cf2_arrstack_getPointer.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr %i.ar, align 8, !tbaa !561 ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i127, label %cf2_arrstack_getPointer.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !19
  %.not3.i.i.i128 = icmp eq i32 %i.bo, 0
  br i1 %.not3.i.i.i128, label %bb.r, label %cf2_arrstack_getPointer.exit.i

bb.r:                                             ; preds = %bb.q
  store i32 130, ptr %i.bn, align 4, !tbaa !19
  br label %cf2_arrstack_getPointer.exit.i

cf2_arrstack_getPointer.exit.i:                   ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i.i = phi i64 [ %.097205, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ]
  %i.bp = load ptr, ptr %i.as, align 8, !tbaa !674 ; 2 uses
  %i.bq = load i64, ptr %i.at, align 8, !tbaa !562 ; 2 uses
  %i.br = mul i64 %i.bq, %.0.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.br ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !681 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !679 ; 2 uses
  %i.bx = sub i32 %i.bu, %i.bw                    ; 2 uses
  switch i32 %i.bx, label %bb.t [
    i32 -1376256, label %bb.u
    i32 -1310720, label %bb.s
  ]

bb.s:                                             ; preds = %cf2_arrstack_getPointer.exit.i
  store i32 0, ptr %9, align 8, !tbaa !722
  store i32 %4, ptr %i.au, align 8, !tbaa !723
  store i32 %i.bl, ptr %i.av, align 8, !tbaa !724
  store i64 %.097205, ptr %i.aw, align 8, !tbaa !725
  br label %bb.w

bb.t:                                             ; preds = %cf2_arrstack_getPointer.exit.i
  %i.by = icmp slt i32 %i.bx, 0
  %.92.i = select i1 %i.by, i32 %i.bu, i32 %i.bw
  br label %bb.u

bb.u:                                             ; preds = %cf2_arrstack_getPointer.exit.i, %bb.t
  %.sink.i = phi i32 [ 4, %bb.t ], [ 1, %cf2_arrstack_getPointer.exit.i ] ; 3 uses
  %i.bz = phi i32 [ %.92.i, %bb.t ], [ %i.bu, %cf2_arrstack_getPointer.exit.i ]
  store i32 %.sink.i, ptr %9, align 8, !tbaa !722
  %i.ca = add i32 %i.bz, %4                       ; 3 uses
  store i32 %i.ca, ptr %i.au, align 8, !tbaa !723
  store i32 %i.bl, ptr %i.av, align 8, !tbaa !724
  store i64 %.097205, ptr %i.aw, align 8, !tbaa !725
  %i.cb = load i8, ptr %i.bs, align 4, !tbaa !682
  %.not58.i = icmp eq i8 %i.cb, 0
  br i1 %.not58.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !19 ; 2 uses
  store i32 %i.cd, ptr %i.ax, align 4, !tbaa !726
  %i.ce = or disjoint i32 %.sink.i, 16            ; 2 uses
  store i32 %i.ce, ptr %9, align 8, !tbaa !722
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
  store i32 %i.cn, ptr %i.ax, align 4, !tbaa !726
  br label %cf2_hint_init.exit

cf2_hint_init.exit:                               ; preds = %bb.v, %bb.w
  %i.co = phi i32 [ %i.cd, %bb.v ], [ %i.cn, %bb.w ] ; 3 uses
  %i.cp = phi i32 [ %i.ca, %bb.v ], [ %i.cf, %bb.w ] ; 5 uses
  %.val124 = phi i32 [ %i.ce, %bb.v ], [ %.val124241, %bb.w ] ; 5 uses
  %i.cq = load i32, ptr %i.aq, align 4, !tbaa !581 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  br i1 %.not.i.i, label %cf2_arrstack_getPointer.exit.i132, label %bb.x

bb.x:                                             ; preds = %cf2_hint_init.exit
  %i.cr = load ptr, ptr %i.ar, align 8, !tbaa !561 ; 3 uses
  %.not.i.i.i130 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i130, label %cf2_arrstack_getPointer.exit.i132, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !19
  %.not3.i.i.i131 = icmp eq i32 %i.cs, 0
  br i1 %.not3.i.i.i131, label %bb.z, label %cf2_arrstack_getPointer.exit.i132

bb.z:                                             ; preds = %bb.y
  store i32 130, ptr %i.cr, align 4, !tbaa !19
  br label %cf2_arrstack_getPointer.exit.i132

cf2_arrstack_getPointer.exit.i132:                ; preds = %bb.z, %bb.y, %bb.x, %cf2_hint_init.exit
  %.0.i.i133 = phi i64 [ %.097205, %cf2_hint_init.exit ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.z ]
  %i.ct = mul i64 %.0.i.i133, %i.bq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ct ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
end_hunk_0
begin_hunk_1_@cf2_glyphpath_pushPrevElem:bb.a
  %sext16.i89 = shl i64 %i.pq, 32
  %i.pr = ashr exact i64 %sext16.i89, 32
  %i.ps = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %i.pr, ptr %i.ps, align 8, !tbaa !158
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.m
  %.sink214 = phi i64 [ 24, %bb.m ], [ 8, %bb.l ]
  %.sink = phi ptr [ %i.ne, %bb.m ], [ %i.hq, %bb.l ]
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !574 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 %.sink214
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !24
  call void %i.pw(ptr noundef %i.pu, ptr noundef nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %.sink, i64 16, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l, %cf2_glyphpath_computeIntersection.exit.thread
  %i.px = icmp ne i8 %5, 0
  %or.cond = or i1 %i.px, %i.ev
  br i1 %or.cond, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not72 = icmp eq i8 %5, 0
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 6200
  %.sink267 = select i1 %.not72, ptr %1, ptr %i.py
  %i.pz = load i64, ptr %2, align 8, !tbaa !157
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !158 ; 2 uses
  %i.qc = trunc i64 %i.qb to i32
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 18624
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !580
  %i.qf = sext i32 %i.qe to i64
  %sext123 = shl i64 %i.pz, 32
  %i.qg = ashr exact i64 %sext123, 32
  %i.qh = mul nsw i64 %i.qg, %i.qf                ; 2 uses
  %i.qi = ashr i64 %i.qh, 63
  %i.qj = add nsw i64 %i.qh, 32768
  %i.qk = add nsw i64 %i.qj, %i.qi
  %i.ql = lshr i64 %i.qk, 16
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 18628
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !695
  %i.qo = sext i32 %i.qn to i64
  %sext124 = shl i64 %i.qb, 32
  %i.qp = ashr exact i64 %sext124, 32
  %i.qq = mul nsw i64 %i.qp, %i.qo                ; 2 uses
  %i.qr = ashr i64 %i.qq, 63
  %i.qs = add nsw i64 %i.qq, 32768
  %i.qt = add nsw i64 %i.qs, %i.qr
  %i.qu = lshr i64 %i.qt, 16
  %i.qv = add nuw nsw i64 %i.qu, %i.ql
  %sext.i93 = shl i64 %i.qv, 32
  %i.qw = ashr exact i64 %sext.i93, 32            ; 2 uses
  %i.qx = call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %.sink267, i32 noundef %i.qc)
  %i.qy = sext i32 %i.qx to i64                   ; 2 uses
  %i.qz = load ptr, ptr %0, align 8, !tbaa !565   ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 68
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !696
  %i.rc = sext i32 %i.rb to i64
  %i.rd = mul nsw i64 %i.qw, %i.rc                ; 2 uses
  %i.re = ashr i64 %i.rd, 63
  %i.rf = add nsw i64 %i.rd, 32768
  %i.rg = add nsw i64 %i.rf, %i.re
  %i.rh = lshr i64 %i.rg, 16
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qz, i64 76
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !697
  %i.rk = sext i32 %i.rj to i64
  %i.rl = mul nsw i64 %i.rk, %i.qy                ; 2 uses
  %i.rm = ashr i64 %i.rl, 63
  %i.rn = add nsw i64 %i.rl, 32768
  %i.ro = add nsw i64 %i.rn, %i.rm
  %i.rp = lshr i64 %i.ro, 16
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 18640
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !698
  %i.rs = add i64 %i.rp, %i.rr
  %i.rt = add i64 %i.rs, %i.rh
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qz, i64 72
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !699
  %i.rw = sext i32 %i.rv to i64
  %i.rx = mul nsw i64 %i.qw, %i.rw                ; 2 uses
  %i.ry = ashr i64 %i.rx, 63
  %i.rz = add nsw i64 %i.rx, 32768
  %i.sa = add nsw i64 %i.rz, %i.ry
  %i.sb = lshr i64 %i.sa, 16
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qz, i64 80
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !700
  %i.se = sext i32 %i.sd to i64
  %i.sf = mul nsw i64 %i.se, %i.qy                ; 2 uses
  %i.sg = ashr i64 %i.sf, 63
  %i.sh = add nsw i64 %i.sf, 32768
  %i.si = add nsw i64 %i.sh, %i.sg
  %i.sj = lshr i64 %i.si, 16
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 18648
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !701
  %i.sm = add i64 %i.sb, %i.sl
  %i.sn = add i64 %i.sm, %i.sj
  %.in139 = shl i64 %i.sn, 32
  %i.so = ashr exact i64 %.in139, 32              ; 2 uses
  %.sink130.in = shl i64 %i.rt, 32
  %.sink130 = ashr exact i64 %.sink130.in, 32     ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %.sink130, ptr %i.sp, align 8, !tbaa !157
  %i.sq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.so, ptr %i.sq, align 8, !tbaa !158
  %i.sr = load i64, ptr %i.ew, align 8, !tbaa !746
  %.not73 = icmp eq i64 %.sink130, %i.sr
  br i1 %.not73, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 18776
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !747
  %.not74 = icmp eq i64 %i.so, %i.st
  br i1 %.not74, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.su = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 2, ptr %i.su, align 8, !tbaa !693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i64 16, i1 false), !tbaa.struct !582
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !574 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !748
  call void %i.sy(ptr noundef %i.sw, ptr noundef nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.sp, i64 16, i1 false), !tbaa.struct !582
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  br i1 %i.ev, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %.sroa.0.0, ptr %2, align 8, !tbaa !44
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !44
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @cf2_hintmap_map(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !718  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !575
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !581
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, %i.f                   ; 2 uses
  %i.k = ashr i64 %i.j, 63
  %i.l = add nsw i64 %i.j, 32768
  %i.m = add nsw i64 %i.l, %i.k
  %i.n = lshr i64 %i.m, 16
  %i.o = trunc i64 %i.n to i32
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !719  ; 3 uses
  %i.r = add i32 %i.b, -1                         ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.q, i32 %i.r) ; 3 uses
  %wide.trip.count = zext i32 %umax to i64
  %exitcond.not54.not = icmp ult i32 %i.q, %i.r
  br i1 %exitcond.not54.not, label %.lr.ph57, label %.critedge

.lr.ph57:                                         ; preds = %bb.d
  %i.s = zext i32 %i.q to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.f, !llvm.loop !749

bb.f:                                             ; preds = %.lr.ph57, %bb.e
  %indvars.iv55 = phi i64 [ %i.s, %.lr.ph57 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv55, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.next
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load i32, ptr %i.u, align 8, !tbaa !723
  %.not38 = icmp slt i32 %1, %i.v
  br i1 %.not38, label %.critedge.split.loop.exit50, label %bb.e, !llvm.loop !749

.critedge.split.loop.exit50:                      ; preds = %bb.f
  %i.w = trunc nuw i64 %indvars.iv55 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %.critedge.split.loop.exit50
  %.0.lcssa = phi i32 [ %i.w, %.critedge.split.loop.exit50 ], [ %umax, %bb.d ], [ %umax, %bb.e ] ; 2 uses
  %.not3942 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not3942, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.g
  %.143 = phi i32 [ %3, %bb.g ], [ %.0.lcssa, %.critedge ] ; 4 uses
  %2 = zext i32 %.143 to i64
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !723
  %i.aa = icmp slt i32 %1, %i.z
  br i1 %i.aa, label %bb.g, label %.critedge2

bb.g:                                             ; preds = %.lr.ph
  %3 = add i32 %.143, -1                          ; 2 uses
  %.not39 = icmp eq i32 %3, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph, !llvm.loop !750

.critedge2:                                       ; preds = %.lr.ph
  store i32 %.143, ptr %i.p, align 4, !tbaa !719
  %4 = zext i32 %.143 to i64
  br label %._crit_edge._crit_edge

._crit_edge:                                      ; preds = %bb.g, %.critedge
  store i32 0, ptr %i.p, align 4, !tbaa !719
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !723 ; 2 uses
  %i.ad = icmp slt i32 %1, %i.ac
  br i1 %i.ad, label %bb.h, label %._crit_edge._crit_edge

bb.h:                                             ; preds = %._crit_edge
  %i.ae = sub i32 %1, %i.ac
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !581
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %i.ai, %i.af                ; 2 uses
  %i.ak = ashr i64 %i.aj, 63
  %i.al = add nsw i64 %i.aj, 32768
  %i.am = add nsw i64 %i.al, %i.ak
  %i.an = lshr i64 %i.am, 16
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !726
  %i.ar = add i32 %i.aq, %i.ao
  br label %bb.i

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %.critedge2
  %.141 = phi i64 [ %4, %.critedge2 ], [ 0, %._crit_edge ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %.141 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !723
  %i.aw = sub i32 %1, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !724
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.ba, %i.ax                ; 2 uses
  %i.bc = ashr i64 %i.bb, 63
  %i.bd = add nsw i64 %i.bb, 32768
  %i.be = add nsw i64 %i.bd, %i.bc
  %i.bf = lshr i64 %i.be, 16
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !726
  %i.bj = add i32 %i.bi, %i.bg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge._crit_edge, %bb.c
  %.135 = phi i32 [ %i.o, %bb.c ], [ %i.ar, %bb.h ], [ %i.bj, %._crit_edge._crit_edge ]
  ret i32 %.135
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @cf2_hintmap_insertHint(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #4 {
bb.a:
  %.val100 = load i32, ptr %1, align 8, !tbaa !722
  %.not107 = icmp eq i32 %.val100, 0
  br i1 %.not107, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val99 = load i32, ptr %2, align 8, !tbaa !722
  %.not = icmp eq i32 %.val99, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !723
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !723
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.v, label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %.not88105 = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.a ] ; 5 uses
  %.084104 = phi ptr [ %1, %bb.b ], [ %1, %bb.c ], [ %2, %bb.a ] ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !718  ; 3 uses
  %.not117 = icmp eq i32 %i.g, 0
  br i1 %.not117, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.h = getelementptr inbounds nuw i8, ptr %.084104, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !723  ; 2 uses
  %wide.trip.count = zext i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !723  ; 3 uses
  %.not89 = icmp slt i32 %i.l, %i.i
  br i1 %.not89, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !751

bb.f:                                             ; preds = %bb.d
  %i.m = trunc nuw i64 %indvars.iv to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = icmp eq i32 %i.l, %i.i
  br i1 %i.p, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not88105, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !723
  %.not90 = icmp sgt i32 %i.l, %i.r
  br i1 %.not90, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h, %bb.g
  %.val101 = load i32, ptr %i.o, align 8, !tbaa !722
  %i.s = and i32 %.val101, 8
  %.not91 = icmp eq i32 %i.s, 0
  br i1 %.not91, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %bb.e, %.thread, %bb.i
  %.081110 = phi i32 [ %i.m, %bb.i ], [ 0, %.thread ], [ %i.g, %bb.e ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !577  ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %.val = load i8, ptr %i.v, align 8, !tbaa !688
  %.not92 = icmp eq i8 %.val, 0
  br i1 %.not92, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %.084.val = load i32, ptr %.084104, align 8, !tbaa !722
  %i.w = and i32 %.084.val, 16
  %.not93 = icmp eq i32 %i.w, 0
  br i1 %.not93, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.084104, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !723  ; 3 uses
  br i1 %.not88105, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !723
  %i.ab = sub i32 %i.aa, %i.y
  %i.ac = sdiv i32 %i.ab, 2
  %i.ad = add i32 %i.ac, %i.y
  %i.ae = tail call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %i.u, i32 noundef %i.ad) ; 2 uses
  %i.af = load i32, ptr %i.z, align 8, !tbaa !723
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !723
  %i.ah = sub i32 %i.af, %i.ag
  %i.ai = sdiv i32 %i.ah, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !581
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.aj, %i.am                ; 2 uses
  %i.ao = ashr i64 %i.an, 63
  %i.ap = add nsw i64 %i.an, 32768
  %i.aq = add nsw i64 %i.ap, %i.ao
  %i.ar = lshr i64 %i.aq, 16
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = sub i32 %i.ae, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.084104, i64 20
  store i32 %i.at, ptr %i.au, align 4, !tbaa !726
  %i.av = add i32 %i.ae, %i.as
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.aw = tail call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %i.u, i32 noundef %i.y)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.l
  %.sink127 = phi ptr [ %2, %bb.l ], [ %.084104, %bb.m ]
  %.sink = phi i32 [ %i.av, %bb.l ], [ %i.aw, %bb.m ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink127, i64 20
  store i32 %.sink, ptr %i.ax, align 4, !tbaa !726
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.j, %.loopexit
  %.not95 = icmp eq i32 %.081110, 0
  br i1 %.not95, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.084104, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !726
  %i.ba = add i32 %.081110, -1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 60
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !726
  %i.bf = icmp slt i32 %i.az, %i.be
  br i1 %i.bf, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bg = load i32, ptr %i.f, align 8, !tbaa !718 ; 8 uses
  %i.bh = icmp ult i32 %.081110, %i.bg
  br i1 %i.bh, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bi = zext i32 %.081110 to i64
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 60
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !726 ; 2 uses
  br i1 %.not88105, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !726
  %i.bo = icmp sgt i32 %i.bn, %i.bl
  br i1 %i.bo, label %bb.v, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.084104, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !726
  %i.br = icmp sgt i32 %i.bq, %i.bl
  br i1 %i.br, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.p
  %i.bs = add i32 %i.bg, 1                        ; 2 uses
  %i.bt = select i1 %.not88105, i32 %i.bg, i32 %i.bs ; 4 uses
  %i.bu = sub i32 %i.bg, %.081110                 ; 4 uses
  %i.bv = icmp ugt i32 %i.bt, 191
  br i1 %i.bv, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.t
  %.not97112 = icmp eq i32 %i.bu, 0
end_hunk_1
