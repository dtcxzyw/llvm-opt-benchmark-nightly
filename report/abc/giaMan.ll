Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMan?download=true
inline.NumInlined: 920
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Gia_ManCollectMultiBits:bb.a

Vec_BitStart.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi8.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !56
  store i32 %i.g, ptr %i.l, align 4, !tbaa !92
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %Vec_BitStart.exit
  %i.o = icmp eq ptr %0, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = icmp sgt i32 %1, 1
  br i1 %i.p, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.d
  %xtraiter61 = and i32 %1, 1
  %unroll_iter = and i32 %1, 2147483646
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %.03853 = phi i32 [ 0, %.preheader.preheader ], [ %i.ae, %.preheader ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader.preheader ], [ %niter.next.1, %.preheader ]
  %i.q = and i32 %.03853, 30
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = lshr i32 %.03853, 5
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !75
  %i.w = or i32 %i.v, %i.r
  store i32 %i.w, ptr %i.u, align 4, !tbaa !75
  %i.x = and i32 %.03853, 30
  %i.y = shl nuw i32 2, %i.x
  %i.z = lshr i32 %.03853, 5
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !75
  %i.ad = or i32 %i.ac, %i.y
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !75
  %i.ae = add nuw nsw i32 %.03853, 2              ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !293

bb.e:                                             ; preds = %bb.c
  %i.af = tail call ptr @Gia_ManCountSymbsAll(ptr noundef nonnull %0) ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.ag, align 4, !tbaa !47
  %i.ah = getelementptr i8, ptr %i.af, i64 4
  %.val45 = load i32, ptr %i.ah, align 4, !tbaa !40 ; 2 uses
  %i.ai = icmp sgt i32 %.val45, 1
  %i.aj = getelementptr i8, ptr %i.af, i64 8
  %.val48 = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 4 uses
  br i1 %i.ai, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.e
  %i.ak = zext nneg i32 %.val45 to i64            ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %.loopexit50
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %.loopexit50 ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !75 ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %indvars.iv.next
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  %i.aq = phi i32 [ %i.ap, %bb.f ], [ %.val, %.critedge ] ; 2 uses
  %i.ar = sub nsw i32 %i.aq, %i.am
  %i.as = icmp slt i32 %i.ar, 2
  br i1 %i.as, label %.loopexit50, label %.preheader49

.preheader49:                                     ; preds = %bb.g
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %1) ; 4 uses
  %i.at = icmp slt i32 %i.am, %invariant.smin
  br i1 %i.at, label %.lr.ph.preheader, label %.loopexit50

.lr.ph.preheader:                                 ; preds = %.preheader49
  %i.au = sub i32 %invariant.smin, %i.am
  %.neg = add i32 %i.am, 1
  %xtraiter = and i32 %i.au, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.av = and i32 %i.am, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = ashr i32 %i.am, 5
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !75
  %i.bb = or i32 %i.ba, %i.aw
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !75
  %i.bc = add nsw i32 %i.am, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.051.unr = phi i32 [ %i.am, %.lr.ph.preheader ], [ %i.bc, %.lr.ph.prol ]
  %i.bd = icmp eq i32 %invariant.smin, %.neg
  br i1 %i.bd, label %.loopexit50, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.051 = phi i32 [ %i.bt, %.lr.ph ], [ %.051.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.be = and i32 %.051, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = ashr i32 %.051, 5
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !75
  %i.bk = or i32 %i.bj, %i.bf
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !75
  %i.bl = add nsw i32 %.051, 1                    ; 2 uses
  %i.bm = and i32 %i.bl, 31
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = ashr i32 %i.bl, 5
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !75
  %i.bs = or i32 %i.br, %i.bn
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !75
  %i.bt = add nsw i32 %.051, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bt, %invariant.smin
  br i1 %exitcond.not.1, label %.loopexit50, label %.lr.ph, !llvm.loop !294

.loopexit50:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader49, %bb.g
  %i.bu = or disjoint i64 %indvars.iv.next, 1
  %i.bv = icmp samesign ult i64 %i.bu, %i.ak
  br i1 %i.bv, label %.critedge, label %._crit_edge.thread, !llvm.loop !295

._crit_edge:                                      ; preds = %bb.e
  %.not.i = icmp eq ptr %.val48, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.loopexit50, %._crit_edge
  tail call void @free(ptr noundef nonnull %.val48) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.af) #29
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod62.not = icmp eq i32 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod63 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.bw = and i32 %i.ae, 31
  %i.bx = shl nuw i32 1, %i.bw
  %i.by = lshr i32 %i.ae, 5
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !75
  %i.cc = or i32 %i.cb, %i.bx
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !75
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d, %Vec_BitStart.exit, %Vec_IntFree.exit
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Gia_ManDumpIoListMulti(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 3 uses
  %.in.v = select i1 %.not, i64 640, i64 648
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.a = load ptr, ptr %.in, align 8, !tbaa !60   ; 4 uses
  %.not46 = icmp eq ptr %i.a, null
  br i1 %.not46, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val51.pn.in.v = select i1 %.not, i64 64, i64 72
  %.val51.pn.in = getelementptr i8, ptr %0, i64 %.val51.pn.in.v
  %.val51.pn = load ptr, ptr %.val51.pn.in, align 8, !tbaa !54
  %.ph.in = getelementptr i8, ptr %.val51.pn, i64 4
  %.ph = load i32, ptr %.ph.in, align 4, !tbaa !40
  %i.b = icmp sgt i32 %.ph, 1
  br i1 %i.b, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = select i1 %.not, i32 105, i32 111
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.137, i32 noundef %i.c) #29 ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 4
  %.val = load i32, ptr %i.e, align 4, !tbaa !47
  %i.f = tail call ptr @Gia_ManCountSymbsAll(ptr noundef nonnull %i.a) ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val50 = load i32, ptr %i.g, align 4, !tbaa !40 ; 2 uses
  %3 = sdiv i32 %.val50, 2                        ; 2 uses
  %i.h = icmp sgt i32 %.val50, 1
  %4 = getelementptr i8, ptr %i.f, i64 8
  %.val55 = load ptr, ptr %4, align 8, !tbaa !42  ; 4 uses
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.a, i64 8
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %Gia_ManPrintOneName.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Gia_ManPrintOneName.exit ] ; 4 uses
  %.057 = phi i32 [ 1, %.lr.ph ], [ %.1, %Gia_ManPrintOneName.exit ] ; 2 uses
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  %6 = xor i32 %5, -1
  %7 = add nsw i32 %3, %6
  %8 = shl nuw nsw i32 %7, 1
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr [4 x i8], ptr %.val55, i64 %9 ; 2 uses
  %i.j = load i32, ptr %10, align 4, !tbaa !75    ; 2 uses
  %i.k = getelementptr i8, ptr %10, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !75   ; 2 uses
  %.not58 = icmp eq i64 %indvars.iv, 0
  br i1 %.not58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = sub nuw nsw i64 %wide.trip.count, %indvars.iv
  %.idx62 = shl nuw nsw i64 %i.m, 3
  %i.n = getelementptr inbounds nuw i8, ptr %.val55, i64 %.idx62
  %i.o = load i32, ptr %i.n, align 4, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.p = phi i32 [ %i.o, %bb.f ], [ %.val, %bb.e ]
  %i.q = sub nsw i32 %i.p, %i.j
  %i.r = icmp slt i32 %i.q, 2
  br i1 %i.r, label %Gia_ManPrintOneName.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not48 = icmp eq i32 %.057, 0
  br i1 %.not48, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.88, i64 2, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val49 = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.s = sext i32 %i.j to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %.val49, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.v = icmp sgt i32 %i.l, 0
  br i1 %i.v, label %.lr.ph.preheader.i, label %Gia_ManPrintOneName.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !88
  %i.y = sext i8 %i.x to i32
  %fputc.i = tail call i32 @fputc(i32 %i.y, ptr nonnull %1) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManPrintOneName.exit, label %.lr.ph.i, !llvm.loop !4

Gia_ManPrintOneName.exit:                         ; preds = %.lr.ph.i, %bb.j, %bb.g
  %.1 = phi i32 [ %.057, %bb.g ], [ 0, %bb.j ], [ 0, %.lr.ph.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.e, !llvm.loop !296

._crit_edge:                                      ; preds = %bb.d
  %.not.i = icmp eq ptr %.val55, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %Gia_ManPrintOneName.exit, %._crit_edge
  tail call void @free(ptr noundef nonnull %.val55) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.f) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %Vec_IntFree.exit, %bb.c
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManDumpNandLit(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %fwrite15 = tail call i64 @fwrite(ptr nonnull @.str.149, i64 4, i64 1, ptr %0) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.150, i64 4, i64 1, ptr %0) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.a = ashr i32 %2, 1                           ; 3 uses
  %.not = icmp sgt i32 %i.a, %1
  %i.b = and i32 %2, 1
  %.not13 = icmp eq i32 %i.b, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = select i1 %.not13, i32 32, i32 126
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.151, i32 noundef %i.c, i32 noundef %3, i32 noundef %i.a) #29 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.e = select i1 %.not13, i32 126, i32 32
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.151, i32 noundef %i.e, i32 noundef %3, i32 noundef %i.a) #29 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManDumpVerilogNand(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 16 uses
  %.val186 = load i32, ptr %i.a, align 8, !tbaa !74 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 64         ; 8 uses
  %.val187 = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %.val187, i64 4
  %.val187.val = load i32, ptr %i.c, align 4, !tbaa !40
  %i.d = sub nsw i32 %.val187.val, %.val186       ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val175 = load i32, ptr %i.e, align 8, !tbaa !39 ; 3 uses
  %i.f = icmp ult i32 %.val175, 2
  br i1 %i.f, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = add i32 %.val175, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.013.i = phi i32 [ %i.i, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.0812.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.g, %.lr.ph.preheader.i ] ; 2 uses
  %i.h = udiv i32 %.0812.i, 10
  %i.i = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i, !llvm.loop !3

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i, %bb.a
  %.09.i = phi i32 [ %.val175, %bb.a ], [ %i.i, %.lr.ph.i ] ; 8 uses
  %i.j = icmp ult i32 %i.d, 2
  br i1 %i.j, label %Abc_Base10Log.exit223, label %.lr.ph.preheader.i217

.lr.ph.preheader.i217:                            ; preds = %Abc_Base10Log.exit
  %i.k = add i32 %i.d, -1
  br label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %.lr.ph.i218, %.lr.ph.preheader.i217
  %.013.i219 = phi i32 [ %i.m, %.lr.ph.i218 ], [ 0, %.lr.ph.preheader.i217 ]
  %.0812.i220 = phi i32 [ %i.l, %.lr.ph.i218 ], [ %i.k, %.lr.ph.preheader.i217 ] ; 2 uses
  %i.l = udiv i32 %.0812.i220, 10
  %i.m = add nuw nsw i32 %.013.i219, 1            ; 2 uses
  %.not.i221 = icmp ult i32 %.0812.i220, 10
  br i1 %.not.i221, label %Abc_Base10Log.exit223, label %.lr.ph.i218, !llvm.loop !3

Abc_Base10Log.exit223:                            ; preds = %.lr.ph.i218, %Abc_Base10Log.exit
  %.09.i222 = phi i32 [ %i.d, %Abc_Base10Log.exit ], [ %i.m, %.lr.ph.i218 ] ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 72         ; 9 uses
  %.val207 = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.o = getelementptr i8, ptr %.val207, i64 4
  %.val207.val = load i32, ptr %i.o, align 4, !tbaa !40
  %i.p = sub nsw i32 %.val207.val, %.val186       ; 3 uses
  %i.q = icmp ult i32 %i.p, 2
  br i1 %i.q, label %Abc_Base10Log.exit230, label %.lr.ph.preheader.i224

.lr.ph.preheader.i224:                            ; preds = %Abc_Base10Log.exit223
  %i.r = add i32 %i.p, -1
  br label %.lr.ph.i225

.lr.ph.i225:                                      ; preds = %.lr.ph.i225, %.lr.ph.preheader.i224
  %.013.i226 = phi i32 [ %i.t, %.lr.ph.i225 ], [ 0, %.lr.ph.preheader.i224 ]
  %.0812.i227 = phi i32 [ %i.s, %.lr.ph.i225 ], [ %i.r, %.lr.ph.preheader.i224 ] ; 2 uses
  %i.s = udiv i32 %.0812.i227, 10
  %i.t = add nuw nsw i32 %.013.i226, 1            ; 2 uses
  %.not.i228 = icmp ult i32 %.0812.i227, 10
  br i1 %.not.i228, label %Abc_Base10Log.exit230, label %.lr.ph.i225, !llvm.loop !3

Abc_Base10Log.exit230:                            ; preds = %.lr.ph.i225, %Abc_Base10Log.exit223
  %.09.i229 = phi i32 [ %i.p, %Abc_Base10Log.exit223 ], [ %i.t, %.lr.ph.i225 ] ; 3 uses
  %i.u = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.23) ; 45 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %Abc_Base10Log.exit230
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.112, ptr noundef %1) ; 0 uses
  br label %bb.am

bb.c:                                             ; preds = %Abc_Base10Log.exit230
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.92, i64 7, i64 1, ptr nonnull %i.u) ; 0 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !72     ; 3 uses
  %i.y = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.x) #30
  %i.z = trunc i64 %i.y to i32
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i231, label %Gia_ManDumpModuleName.exit

.lr.ph.i231:                                      ; preds = %bb.c
  %i.ab = tail call ptr @__ctype_b_loc() #32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i231
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i231 ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !88  ; 2 uses
  %i.af = sext i8 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !90
  %i.ai = and i16 %i.ah, 3072
  %or.cond.i = icmp eq i16 %i.ai, 0
  %i.aj = sext i8 %i.ae to i32
  %.sink.i = select i1 %or.cond.i, i32 95, i32 %i.aj
  %fputc11.i = tail call i32 @fputc(i32 %.sink.i, ptr nonnull %i.u) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.x) #30
  %sext.i = shl i64 %i.ak, 32
  %i.al = ashr exact i64 %sext.i, 32
  %i.am = icmp slt i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %bb.d, label %Gia_ManDumpModuleName.exit, !llvm.loop !1

Gia_ManDumpModuleName.exit:                       ; preds = %bb.d, %bb.c
  %fwrite144 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 8, i64 1, ptr nonnull %i.u) ; 0 uses
  %fwrite145 = tail call i64 @fwrite(ptr nonnull @.str.144, i64 3, i64 1, ptr nonnull %i.u) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !51
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %Gia_ManDumpModuleName.exit
  tail call void @Gia_ManDumpIoList(ptr noundef nonnull %0, ptr noundef nonnull %i.u, i32 noundef 0, i32 noundef 0)
  %fwrite157 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 2, i64 1, ptr nonnull %i.u) ; 0 uses
  tail call void @Gia_ManDumpIoList(ptr noundef nonnull %0, ptr noundef nonnull %i.u, i32 noundef 1, i32 noundef 0)
  %fwrite158 = tail call i64 @fwrite(ptr nonnull @.str.145, i64 5, i64 1, ptr nonnull %i.u) ; 0 uses
  tail call void @Gia_ManDumpIoRanges(ptr noundef nonnull %0, ptr noundef nonnull %i.u, i32 noundef 0)
  tail call void @Gia_ManDumpIoRanges(ptr noundef nonnull %0, ptr noundef nonnull %i.u, i32 noundef 1)
  br label %bb.k

bb.f:                                             ; preds = %Gia_ManDumpModuleName.exit
  %fwrite146 = tail call i64 @fwrite(ptr nonnull @.str.152, i64 3, i64 1, ptr nonnull %i.u) ; 0 uses
  %i.ap = getelementptr i8, ptr %0, i64 32        ; 4 uses
  %.val182247 = load i32, ptr %i.a, align 8, !tbaa !74
  %.val183248 = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.aq = getelementptr i8, ptr %.val183248, i64 4
  %.val183.val249 = load i32, ptr %i.aq, align 4, !tbaa !40
  %i.ar = icmp sgt i32 %.val183.val249, %.val182247
  br i1 %i.ar, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.0250 = phi i32 [ %i.au, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.val193 = load ptr, ptr %i.ap, align 8, !tbaa !38
  %.not147 = icmp eq ptr %.val193, null
  br i1 %.not147, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.as = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Gia_ObjGetDumpName.pBuffer, ptr noundef nonnull dereferenceable(1) @.str.111, i32 noundef 120, i32 noundef %.09.i222, i32 noundef %.0250, i32 noundef 120) #29 ; 0 uses
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.153, ptr noundef nonnull @Gia_ObjGetDumpName.pBuffer) #29 ; 0 uses
  %i.au = add nuw nsw i32 %.0250, 1               ; 2 uses
  %.val182 = load i32, ptr %i.a, align 8, !tbaa !74
  %.val183 = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.av = getelementptr i8, ptr %.val183, i64 4
  %.val183.val = load i32, ptr %i.av, align 4, !tbaa !40
  %i.aw = sub nsw i32 %.val183.val, %.val182
  %i.ax = icmp slt i32 %i.au, %i.aw
  br i1 %i.ax, label %.lr.ph, label %.critedge, !llvm.loop !297

end_hunk_0
