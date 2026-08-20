inline.NumInlined: 101
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@png_write_tIME:bb.a
  br i1 %or.cond15, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i8, ptr %i.h, align 2, !tbaa !238   ; 2 uses
  %i.j = icmp ugt i8 %i.i, 23
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.l = load i8, ptr %i.k, align 2, !tbaa !239   ; 2 uses
  %i.m = icmp ugt i8 %i.l, 60
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.42) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = load i16, ptr %1, align 2, !tbaa !240    ; 2 uses
  %i.o = lshr i16 %i.n, 8
  %i.p = trunc nuw i16 %i.o to i8
  store i8 %i.p, ptr %i.a, align 1, !tbaa !7
  %i.q = trunc i16 %i.n to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.c, ptr %i.s, align 1, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.t, align 1, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.i, ptr %i.u, align 1, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.w = load i8, ptr %i.v, align 1, !tbaa !241
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.w, ptr %i.x, align 1, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.l, ptr %i.y, align 1, !tbaa !7
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1950960965, ptr noundef nonnull %i.a, i64 noundef 7)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_start_row(ptr noalias noundef initializes((630, 632)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.b = load i8, ptr %i.a, align 4, !tbaa !56
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 625
  %i.e = load i8, ptr %i.d, align 1, !tbaa !55
  %i.f = zext i8 %i.e to i32
  %i.g = mul nuw nsw i32 %i.f, %i.c               ; 4 uses
  %i.h = icmp samesign ugt i32 %i.g, 7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = lshr i32 %i.g, 3
  %i.m = zext nneg i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.k, %i.m
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = zext nneg i32 %i.g to i64
  %i.p = mul nuw nsw i64 %i.k, %i.o
  %i.q = add nuw nsw i64 %i.p, 7
  %i.r = lshr i64 %i.q, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %i.n, %bb.b ], [ %i.r, %bb.c ]
  %i.t = add nuw nsw i64 %i.s, 1                  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.v = load i8, ptr %i.u, align 2, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 631
  store i8 %i.v, ptr %i.w, align 1, !tbaa !242
  %i.x = trunc i32 %i.g to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 630
  store i8 %i.x, ptr %i.y, align 2, !tbaa !243
  %i.z = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.t) #12 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !244
  store i8 0, ptr %i.z, align 1, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 622 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !57  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !51
  %i.af = icmp eq i32 %i.ae, 1
  %i.ag = and i8 %i.ac, 31
  %spec.select = select i1 %i.af, i8 %i.ag, i8 %i.ac ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !50
  %i.aj = icmp eq i32 %i.ai, 1
  %i.ak = and i8 %spec.select, 47
  %.158 = select i1 %i.aj, i8 %i.ak, i8 %spec.select ; 2 uses
  %i.al = icmp eq i8 %.158, 0
  %spec.store.select = select i1 %i.al, i8 8, i8 %.158 ; 5 uses
  store i8 %spec.store.select, ptr %i.ab, align 2, !tbaa !57
  %i.am = zext i8 %spec.store.select to i32       ; 3 uses
  %.not = icmp ult i8 %spec.store.select, 16
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !245
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.t) #12
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !245
  %i.ar = lshr i32 %i.am, 4
  %.lobit = and i32 %i.ar, 1
  %i.as = lshr i32 %i.am, 5
  %i.at = and i32 %i.as, 1
  %i.au = lshr i32 %i.am, 6
  %i.av = and i32 %i.au, 1
  %spec.store.select.lobit = lshr i8 %spec.store.select, 7
  %i.aw = zext nneg i8 %spec.store.select.lobit to i32
  %.1 = add nuw nsw i32 %i.at, %i.aw
  %.2 = add nuw nsw i32 %.1, %.lobit
  %.3 = add nuw nsw i32 %.2, %i.av
  %i.ax = icmp samesign ugt i32 %.3, 1
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.t) #12
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !246
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.not65 = icmp ult i8 %spec.store.select, 32
  br i1 %.not65, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef %i.t) #12
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !247
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !47
  %.not66 = icmp eq i8 %i.bd, 0
  br i1 %.not66, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !248
  %i.bg = and i32 %i.bf, 2
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = load i32, ptr %i.ad, align 8, !tbaa !51 ; 2 uses
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = add i32 %i.bi, 7
  %i.bk = lshr i32 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !249
  %i.bm = load i32, ptr %i.ah, align 4, !tbaa !50
  %i.bn = add i32 %i.bm, 7
  %i.bo = lshr i32 %i.bn, 3
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %i.bi, ptr %i.bp, align 4, !tbaa !249
  %i.bq = load i32, ptr %i.ah, align 4, !tbaa !50
  br label %bb.n

bb.m:                                             ; preds = %.thread
  %i.br = load i32, ptr %i.ad, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !249
  %i.bt = load i32, ptr %i.ah, align 4, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.sink = phi i32 [ %i.bo, %bb.k ], [ %i.bq, %bb.l ], [ %i.bt, %bb.m ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 %.sink, ptr %i.bu, align 8, !tbaa !54
  ret void
}

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_write_finish_row(ptr noalias noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !250
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !250
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 9 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !249
  %i.f = icmp ult i32 %i.c, %i.e
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.h = load i8, ptr %i.g, align 4, !tbaa !47
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !tbaa !250
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.j = load i32, ptr %i.i, align 4, !tbaa !248
  %i.k = and i32 %i.j, 2
  %.not35 = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 621 ; 2 uses
  %.promoted = load i8, ptr %i.l, align 1, !tbaa !251 ; 4 uses
  br i1 %.not35, label %.critedge.preheader, label %bb.d

.critedge.preheader:                              ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 8 uses
  %1 = zext i8 %.promoted to i64                  ; 8 uses
  %indvars.iv.next40 = add nuw nsw i64 %1, 1      ; 2 uses
  %indvars41 = trunc i64 %indvars.iv.next40 to i8 ; 3 uses
  %i.p = icmp ugt i8 %indvars41, 6
  br i1 %i.p, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.q = add i8 %.promoted, 1
  br label %.loopexit

.critedge:                                        ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %1, 2        ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i8     ; 3 uses
  %2 = icmp ugt i8 %indvars, 6
  br i1 %2, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.critedge
  %3 = load i32, ptr %i.m, align 4, !tbaa !50
  %4 = and i64 %indvars.iv.next, 7                ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !7
  %7 = zext i8 %6 to i32                          ; 3 uses
  %8 = add i32 %3, %7
  %9 = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %4
  %10 = load i8, ptr %9, align 1, !tbaa !7
  %11 = zext i8 %10 to i32
  %12 = xor i32 %11, -1
  %13 = add i32 %8, %12                           ; 2 uses
  %14 = udiv i32 %13, %7
  store i32 %14, ptr %i.n, align 8, !tbaa !54
  %15 = load i32, ptr %i.o, align 8, !tbaa !51
  %16 = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %4
  %17 = load i8, ptr %16, align 1, !tbaa !7
  %18 = zext i8 %17 to i32                        ; 3 uses
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %4
  %21 = load i8, ptr %20, align 1, !tbaa !7
  %22 = zext i8 %21 to i32
  %23 = xor i32 %22, -1
  %24 = add i32 %19, %23                          ; 2 uses
  %25 = udiv i32 %24, %18
  store i32 %25, ptr %i.d, align 4, !tbaa !249
  %26 = icmp ult i32 %13, %7
  %27 = icmp ult i32 %24, %18
  %or.cond.1 = select i1 %26, i1 true, i1 %27
  br i1 %or.cond.1, label %.critedge.a, label %..loopexit.loopexit_crit_edge, !llvm.loop !252

.critedge.a:                                      ; preds = %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %1, 3      ; 2 uses
  %indvars.1 = trunc i64 %indvars.iv.next.1 to i8 ; 3 uses
  %28 = icmp ugt i8 %indvars.1, 6
  br i1 %28, label %.loopexit, label %.lr.ph.1.a

.lr.ph.1.a:                                       ; preds = %.critedge.a
  %i.r = load i32, ptr %i.m, align 4, !tbaa !50
  %29 = and i64 %indvars.iv.next.1, 7             ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %29
  %i.t = load i8, ptr %i.s, align 1, !tbaa !7
  %i.u = zext i8 %i.t to i32                      ; 3 uses
  %i.v = add i32 %i.r, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %29
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %i.y = zext i8 %i.x to i32
  %i.z = xor i32 %i.y, -1
  %i.aa = add i32 %i.v, %i.z                      ; 2 uses
  %i.ab = udiv i32 %i.aa, %i.u
  store i32 %i.ab, ptr %i.n, align 8, !tbaa !54
  %i.ac = load i32, ptr %i.o, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %29
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !7
  %i.af = zext i8 %i.ae to i32                    ; 3 uses
  %i.ag = add i32 %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %29
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !7
  %i.aj = zext i8 %i.ai to i32
  %i.ak = xor i32 %i.aj, -1
  %i.al = add i32 %i.ag, %i.ak                    ; 2 uses
  %i.am = udiv i32 %i.al, %i.af
  store i32 %i.am, ptr %i.d, align 4, !tbaa !249
  %i.an = icmp ult i32 %i.aa, %i.u
  %i.ao = icmp ult i32 %i.al, %i.af
  %or.cond.1.a = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond.1.a, label %.critedge.1, label %..loopexit.loopexit_crit_edge, !llvm.loop !252

.critedge.1:                                      ; preds = %.lr.ph.1.a
  %indvars.iv.next.2 = add nuw nsw i64 %1, 4      ; 2 uses
  %indvars.2 = trunc i64 %indvars.iv.next.2 to i8 ; 3 uses
  %i.ap = icmp ugt i8 %indvars.2, 6
  br i1 %i.ap, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.critedge.1
  %i.aq = load i32, ptr %i.m, align 4, !tbaa !50
  %30 = and i64 %indvars.iv.next.2, 7             ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %30
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !7
  %i.at = zext i8 %i.as to i32                    ; 3 uses
  %i.au = add i32 %i.aq, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %30
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !7
  %i.ax = zext i8 %i.aw to i32
  %i.ay = xor i32 %i.ax, -1
  %i.az = add i32 %i.au, %i.ay                    ; 2 uses
  %i.ba = udiv i32 %i.az, %i.at
  store i32 %i.ba, ptr %i.n, align 8, !tbaa !54
  %i.bb = load i32, ptr %i.o, align 8, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %30
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !7
  %i.be = zext i8 %i.bd to i32                    ; 3 uses
  %i.bf = add i32 %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %30
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bi = zext i8 %i.bh to i32
  %i.bj = xor i32 %i.bi, -1
  %i.bk = add i32 %i.bf, %i.bj                    ; 2 uses
  %i.bl = udiv i32 %i.bk, %i.be
  store i32 %i.bl, ptr %i.d, align 4, !tbaa !249
  %i.bm = icmp ult i32 %i.az, %i.at
  %i.bn = icmp ult i32 %i.bk, %i.be
  %or.cond.2 = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond.2, label %.critedge.2, label %..loopexit.loopexit_crit_edge, !llvm.loop !252

.critedge.2:                                      ; preds = %.lr.ph.2
  %indvars.iv.next.3 = add nuw nsw i64 %1, 5      ; 2 uses
  %indvars.3 = trunc i64 %indvars.iv.next.3 to i8 ; 3 uses
  %i.bo = icmp ugt i8 %indvars.3, 6
  br i1 %i.bo, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.critedge.2
  %i.bp = load i32, ptr %i.m, align 4, !tbaa !50
  %31 = and i64 %indvars.iv.next.3, 7             ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %31
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !7
  %i.bs = zext i8 %i.br to i32                    ; 3 uses
  %i.bt = add i32 %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %31
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !7
  %i.bw = zext i8 %i.bv to i32
  %i.bx = xor i32 %i.bw, -1
  %i.by = add i32 %i.bt, %i.bx                    ; 2 uses
  %i.bz = udiv i32 %i.by, %i.bs
  store i32 %i.bz, ptr %i.n, align 8, !tbaa !54
  %i.ca = load i32, ptr %i.o, align 8, !tbaa !51
  %i.cb = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %31
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !7
  %i.cd = zext i8 %i.cc to i32                    ; 3 uses
  %i.ce = add i32 %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %31
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !7
  %i.ch = zext i8 %i.cg to i32
  %i.ci = xor i32 %i.ch, -1
  %i.cj = add i32 %i.ce, %i.ci                    ; 2 uses
  %i.ck = udiv i32 %i.cj, %i.cd
  store i32 %i.ck, ptr %i.d, align 4, !tbaa !249
  %i.cl = icmp ult i32 %i.by, %i.bs
  %i.cm = icmp ult i32 %i.cj, %i.cd
  %or.cond.3 = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond.3, label %.critedge.3, label %..loopexit.loopexit_crit_edge, !llvm.loop !252

.critedge.3:                                      ; preds = %.lr.ph.3
  %indvars.iv.next.4 = add nuw nsw i64 %1, 6      ; 2 uses
  %indvars.4 = trunc i64 %indvars.iv.next.4 to i8 ; 3 uses
  %i.cn = icmp ugt i8 %indvars.4, 6
  br i1 %i.cn, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.critedge.3
  %i.co = load i32, ptr %i.m, align 4, !tbaa !50
  %32 = and i64 %indvars.iv.next.4, 7             ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %32
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !7
  %i.cr = zext i8 %i.cq to i32                    ; 3 uses
  %i.cs = add i32 %i.co, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %32
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !7
  %i.cv = zext i8 %i.cu to i32
  %i.cw = xor i32 %i.cv, -1
  %i.cx = add i32 %i.cs, %i.cw                    ; 2 uses
  %i.cy = udiv i32 %i.cx, %i.cr
  store i32 %i.cy, ptr %i.n, align 8, !tbaa !54
  %i.cz = load i32, ptr %i.o, align 8, !tbaa !51
  %i.da = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %32
  %i.db = load i8, ptr %i.da, align 1, !tbaa !7
  %i.dc = zext i8 %i.db to i32                    ; 3 uses
  %i.dd = add i32 %i.cz, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %32
  %i.df = load i8, ptr %i.de, align 1, !tbaa !7
  %i.dg = zext i8 %i.df to i32
  %i.dh = xor i32 %i.dg, -1
  %i.di = add i32 %i.dd, %i.dh                    ; 2 uses
  %i.dj = udiv i32 %i.di, %i.dc
  store i32 %i.dj, ptr %i.d, align 4, !tbaa !249
  %i.dk = icmp ult i32 %i.cx, %i.cr
  %i.dl = icmp ult i32 %i.di, %i.dc
  %or.cond.4 = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond.4, label %.critedge.4, label %..loopexit.loopexit_crit_edge, !llvm.loop !252

.critedge.4:                                      ; preds = %.lr.ph.4
  %indvars.iv.next.5 = add nuw nsw i64 %1, 7      ; 2 uses
  %indvars.5 = trunc i64 %indvars.iv.next.5 to i8 ; 3 uses
  %i.dm = icmp ugt i8 %indvars.5, 6
  br i1 %i.dm, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.critedge.4
  %i.dn = load i32, ptr %i.m, align 4, !tbaa !50
  %33 = and i64 %indvars.iv.next.5, 7             ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %33
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !7
  %i.dq = zext i8 %i.dp to i32                    ; 3 uses
  %i.dr = add i32 %i.dn, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %33
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !7
  %i.du = zext i8 %i.dt to i32
  %i.dv = xor i32 %i.du, -1
  %i.dw = add i32 %i.dr, %i.dv                    ; 2 uses
  %i.dx = udiv i32 %i.dw, %i.dq
  store i32 %i.dx, ptr %i.n, align 8, !tbaa !54
  %i.dy = load i32, ptr %i.o, align 8, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %33
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !7
  %i.eb = zext i8 %i.ea to i32                    ; 3 uses
  %i.ec = add i32 %i.dy, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %33
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !7
  %i.ef = zext i8 %i.ee to i32
  %i.eg = xor i32 %i.ef, -1
  %i.eh = add i32 %i.ec, %i.eg                    ; 2 uses
  %i.ei = udiv i32 %i.eh, %i.eb
  store i32 %i.ei, ptr %i.d, align 4, !tbaa !249
  %i.ej = icmp ult i32 %i.dw, %i.dq
  %i.ek = icmp ult i32 %i.eh, %i.eb
  %or.cond.5 = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %or.cond.5, label %.critedge.5, label %..loopexit.loopexit_crit_edge, !llvm.loop !252

.critedge.5:                                      ; preds = %.lr.ph.5
  %i.el = add i8 %.promoted, 8                    ; 3 uses
  %34 = icmp ugt i8 %i.el, 6
  br i1 %34, label %.loopexit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.critedge.5
  %i.em = load i32, ptr %i.m, align 4, !tbaa !50
  %35 = and i64 %1, 7                             ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %35
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !7
  %i.ep = zext i8 %i.eo to i32                    ; 3 uses
  %i.eq = add i32 %i.em, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %35
  %i.es = load i8, ptr %i.er, align 1, !tbaa !7
  %i.et = zext i8 %i.es to i32
  %i.eu = xor i32 %i.et, -1
  %i.ev = add i32 %i.eq, %i.eu                    ; 2 uses
  %i.ew = udiv i32 %i.ev, %i.ep
  store i32 %i.ew, ptr %i.n, align 8, !tbaa !54
  %i.ex = load i32, ptr %i.o, align 8, !tbaa !51
  %i.ey = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %35
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !7
  %i.fa = zext i8 %i.ez to i32                    ; 3 uses
  %i.fb = add i32 %i.ex, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %35
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !7
  %i.fe = zext i8 %i.fd to i32
  %i.ff = xor i32 %i.fe, -1
  %i.fg = add i32 %i.fb, %i.ff                    ; 2 uses
  %i.fh = udiv i32 %i.fg, %i.fa
  store i32 %i.fh, ptr %i.d, align 4, !tbaa !249
  %i.fi = icmp ult i32 %i.ev, %i.ep
  %i.fj = icmp ult i32 %i.fg, %i.fa
  %or.cond.6 = select i1 %i.fi, i1 true, i1 %i.fj
  br i1 %or.cond.6, label %.critedge.6, label %..loopexit.loopexit_crit_edge, !llvm.loop !252

.critedge.6:                                      ; preds = %.lr.ph.6
  %i.fk = add i8 %.promoted, 9
  br label %.loopexit

.lr.ph:                                           ; preds = %.critedge.preheader
  %i.fl = load i32, ptr %i.m, align 4, !tbaa !50
  %36 = and i64 %indvars.iv.next40, 7             ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %36
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !7
  %i.fo = zext i8 %i.fn to i32                    ; 3 uses
  %i.fp = add i32 %i.fl, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %36
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !7
  %i.fs = zext i8 %i.fr to i32
  %i.ft = xor i32 %i.fs, -1
  %i.fu = add i32 %i.fp, %i.ft                    ; 2 uses
  %i.fv = udiv i32 %i.fu, %i.fo
  store i32 %i.fv, ptr %i.n, align 8, !tbaa !54
  %i.fw = load i32, ptr %i.o, align 8, !tbaa !51
  %i.fx = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %36
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !7
  %i.fz = zext i8 %i.fy to i32                    ; 3 uses
  %i.ga = add i32 %i.fw, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %36
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !7
  %i.gd = zext i8 %i.gc to i32
  %i.ge = xor i32 %i.gd, -1
  %i.gf = add i32 %i.ga, %i.ge                    ; 2 uses
  %i.gg = udiv i32 %i.gf, %i.fz
  store i32 %i.gg, ptr %i.d, align 4, !tbaa !249
  %i.gh = icmp ult i32 %i.fu, %i.fo
  %i.gi = icmp ult i32 %i.gf, %i.fz
  %or.cond = select i1 %i.gh, i1 true, i1 %i.gi
  br i1 %or.cond, label %.critedge, label %..loopexit.loopexit_crit_edge, !llvm.loop !252

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1.a, %.lr.ph.1, %.lr.ph
  %indvars43.lcssa = phi i8 [ %indvars41, %.lr.ph ], [ %indvars, %.lr.ph.1 ], [ %indvars.1, %.lr.ph.1.a ], [ %indvars.2, %.lr.ph.2 ], [ %indvars.3, %.lr.ph.3 ], [ %indvars.4, %.lr.ph.4 ], [ %indvars.5, %.lr.ph.5 ], [ %i.el, %.lr.ph.6 ]
  br label %.loopexit, !llvm.loop !252

.loopexit:                                        ; preds = %.critedge, %.critedge.a, %.critedge.1, %.critedge.2, %.critedge.3, %.critedge.4, %.critedge.5, %.critedge.6, %.critedge.preheader, %..loopexit.loopexit_crit_edge, %bb.d
  %indvars.lcssa.sink = phi i8 [ %i.q, %bb.d ], [ %indvars41, %.critedge.preheader ], [ %indvars43.lcssa, %..loopexit.loopexit_crit_edge ], [ %indvars, %.critedge ], [ %indvars.1, %.critedge.a ], [ %indvars.2, %.critedge.1 ], [ %indvars.3, %.critedge.2 ], [ %indvars.4, %.critedge.3 ], [ %indvars.5, %.critedge.4 ], [ %i.el, %.critedge.5 ], [ %i.fk, %.critedge.6 ] ; 2 uses
  store i8 %indvars.lcssa.sink, ptr %i.l, align 1, !tbaa !251
  %i.gj = icmp ult i8 %indvars.lcssa.sink, 7
  br i1 %i.gj, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.loopexit
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !247 ; 2 uses
  %.not37 = icmp eq ptr %i.gl, null
  br i1 %.not37, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.gn = load i8, ptr %i.gm, align 4, !tbaa !56
  %i.go = zext i8 %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 625
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !55
  %i.gr = zext i8 %i.gq to i32
  %i.gs = mul nuw nsw i32 %i.gr, %i.go            ; 3 uses
  %i.gt = icmp samesign ugt i32 %i.gs, 7
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !50
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  br i1 %i.gt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gx = lshr i32 %i.gs, 3
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = mul nuw nsw i64 %i.gw, %i.gy
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ha = zext nneg i32 %i.gs to i64
  %i.hb = mul nuw nsw i64 %i.gw, %i.ha
  %i.hc = add nuw nsw i64 %i.hb, 7
  %i.hd = lshr i64 %i.hc, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.he = phi i64 [ %i.gz, %bb.g ], [ %i.hd, %bb.h ]
  %i.hf = add nuw nsw i64 %i.he, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gl, i8 0, i64 %i.hf, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %.loopexit, %bb.b
  tail call void @png_compress_IDAT(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef 4)
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.i, %bb.a, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @png_do_write_interlace(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %2, 6
  br i1 %i.a, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !253   ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !255    ; 19 uses
  switch i8 %i.c, label %bb.n [
    i8 1, label %bb.c
    i8 2, label %bb.j
    i8 4, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %2 to i64                       ; 11 uses
  %i.f = getelementptr inbounds i8, ptr @png_pass_start, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7
  %i.h = zext i8 %i.g to i32                      ; 11 uses
  %i.i = icmp ugt i32 %i.d, %i.h
  br i1 %i.i, label %.lr.ph140, label %.loopexit

.lr.ph140:                                        ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr @png_pass_inc, i64 %i.e
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7
  %i.l = zext i8 %i.k to i32                      ; 8 uses
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph140
  %.0107138.ph = phi i32 [ %i.dk, %.thread ], [ %i.h, %.lr.ph140 ] ; 3 uses
  %.0112135.ph = phi ptr [ %i.dj, %.thread ], [ %1, %.lr.ph140 ] ; 9 uses
  %i.m = lshr i32 %.0107138.ph, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !7
  %i.q = zext i8 %i.p to i32
  %i.r = and i32 %.0107138.ph, 7
  %i.s = xor i32 %i.r, 7
  %i.t = lshr i32 %i.q, %i.s
  %i.u = shl nuw nsw i32 %i.t, 7
  %i.v = and i32 %i.u, 128                        ; 2 uses
  %i.w = add i32 %.0107138.ph, %i.l               ; 4 uses
  %i.x = icmp ult i32 %i.w, %i.d
  br i1 %i.x, label %bb.d, label %.loopexit.sink.split, !llvm.loop !256

bb.d:                                             ; preds = %.outer
  %i.y = lshr i32 %i.w, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !7
  %i.ac = zext i8 %i.ab to i32
  %i.ad = and i32 %i.w, 7
  %i.ae = xor i32 %i.ad, 7
  %i.af = lshr i32 %i.ac, %i.ae
  %i.ag = shl nuw nsw i32 %i.af, 6
  %i.ah = and i32 %i.ag, 64
  %i.ai = or disjoint i32 %i.ah, %i.v             ; 2 uses
  %i.aj = add i32 %i.w, %i.l                      ; 4 uses
  %i.ak = icmp ult i32 %i.aj, %i.d
  br i1 %i.ak, label %bb.e, label %.loopexit.sink.split, !llvm.loop !256

bb.e:                                             ; preds = %bb.d
  %i.al = lshr i32 %i.aj, 3
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !7
  %i.ap = zext i8 %i.ao to i32
  %i.aq = and i32 %i.aj, 7
  %i.ar = xor i32 %i.aq, 7
  %i.as = lshr i32 %i.ap, %i.ar
  %i.at = shl nuw nsw i32 %i.as, 5
  %i.au = and i32 %i.at, 32
  %i.av = or disjoint i32 %i.au, %i.ai            ; 2 uses
  %i.aw = add i32 %i.aj, %i.l                     ; 4 uses
  %i.ax = icmp ult i32 %i.aw, %i.d
  br i1 %i.ax, label %bb.f, label %.loopexit.sink.split, !llvm.loop !256

bb.f:                                             ; preds = %bb.e
  %i.ay = lshr i32 %i.aw, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !7
  %i.bc = zext i8 %i.bb to i32
  %i.bd = and i32 %i.aw, 7
  %i.be = xor i32 %i.bd, 7
  %i.bf = lshr i32 %i.bc, %i.be
  %i.bg = shl nuw nsw i32 %i.bf, 4
  %i.bh = and i32 %i.bg, 16
  %i.bi = or disjoint i32 %i.bh, %i.av            ; 2 uses
  %i.bj = add i32 %i.aw, %i.l                     ; 4 uses
  %i.bk = icmp ult i32 %i.bj, %i.d
  br i1 %i.bk, label %bb.g, label %.loopexit.sink.split, !llvm.loop !256

bb.g:                                             ; preds = %bb.f
  %i.bl = lshr i32 %i.bj, 3
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !7
  %i.bp = zext i8 %i.bo to i32
  %i.bq = and i32 %i.bj, 7
  %i.br = xor i32 %i.bq, 7
  %i.bs = lshr i32 %i.bp, %i.br
  %i.bt = shl nuw nsw i32 %i.bs, 3
  %i.bu = and i32 %i.bt, 8
  %i.bv = or disjoint i32 %i.bu, %i.bi            ; 2 uses
  %i.bw = add i32 %i.bj, %i.l                     ; 4 uses
  %i.bx = icmp ult i32 %i.bw, %i.d
  br i1 %i.bx, label %bb.h, label %.loopexit.sink.split, !llvm.loop !256

bb.h:                                             ; preds = %bb.g
  %i.by = lshr i32 %i.bw, 3
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !7
  %i.cc = zext i8 %i.cb to i32
  %i.cd = and i32 %i.bw, 7
  %i.ce = xor i32 %i.cd, 7
  %i.cf = lshr i32 %i.cc, %i.ce
  %i.cg = shl nuw nsw i32 %i.cf, 2
  %i.ch = and i32 %i.cg, 4
  %i.ci = or disjoint i32 %i.ch, %i.bv            ; 2 uses
  %i.cj = add i32 %i.bw, %i.l                     ; 4 uses
  %i.ck = icmp ult i32 %i.cj, %i.d
  br i1 %i.ck, label %bb.i, label %.loopexit.sink.split, !llvm.loop !256

bb.i:                                             ; preds = %bb.h
  %i.cl = lshr i32 %i.cj, 3
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !7
  %i.cp = zext i8 %i.co to i32
  %i.cq = and i32 %i.cj, 7
  %i.cr = xor i32 %i.cq, 7
  %i.cs = lshr i32 %i.cp, %i.cr
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = and i32 %i.ct, 2
  %i.cv = or i32 %i.cu, %i.ci                     ; 2 uses
  %i.cw = add i32 %i.cj, %i.l                     ; 4 uses
  %i.cx = icmp ult i32 %i.cw, %i.d
  br i1 %i.cx, label %.thread, label %.loopexit.sink.split, !llvm.loop !256

.thread:                                          ; preds = %bb.i
  %i.cy = lshr i32 %i.cw, 3
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !7
end_hunk_0
