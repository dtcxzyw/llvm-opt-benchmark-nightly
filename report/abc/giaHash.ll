Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaHash?download=true
inline.NumInlined: 374
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Gia_ManDecompTwo:bb.a
bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.011.i = phi i32 [ 1, %.lr.ph.i ], [ %i.ad, %bb.b ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  %i.z = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aa = lshr i32 %i.w, %i.z
  %i.ab = and i32 %i.aa, 1
  %i.ac = xor i32 %i.ab, %i.y
  %i.ad = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.011.i, i32 noundef %i.ac) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i44, label %bb.b, !llvm.loop !4

.lr.ph.i44:                                       ; preds = %bb.b
  %i.ae = xor i32 %5, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i44
  %indvars.iv.i46 = phi i64 [ 0, %.lr.ph.i44 ], [ %indvars.iv.next.i48, %bb.c ] ; 3 uses
  %.011.i47 = phi i32 [ 1, %.lr.ph.i44 ], [ %i.al, %bb.c ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i46
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21
  %i.ah = trunc nuw nsw i64 %indvars.iv.i46 to i32
  %i.ai = lshr i32 %i.ae, %i.ah
  %i.aj = and i32 %i.ai, 1
  %i.ak = xor i32 %i.aj, %i.ag
  %i.al = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.011.i47, i32 noundef %i.ak) ; 2 uses
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i46, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %wide.trip.count.i
  br i1 %exitcond.not.i49, label %.lr.ph.i51, label %bb.c, !llvm.loop !4

Gia_ManCube.exit50:                               ; preds = %bb.a
  %i.am = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  br label %Gia_ManFindCond.exit

.lr.ph.i51:                                       ; preds = %bb.c
  %i.an = xor i32 %i.ad, 1
  %i.ao = xor i32 %i.al, 1
  %i.ap = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.an, i32 noundef %i.ao) ; 2 uses
  %i.aq = xor i32 %5, %4
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i51
  %.012.i = phi i32 [ 0, %.lr.ph.i51 ], [ %i.az, %bb.f ] ; 4 uses
  %i.ar = shl nuw i32 1, %.012.i
  %i.as = and i32 %i.ar, %i.aq
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = zext nneg i32 %.012.i to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !21
  %i.aw = lshr i32 %4, %.012.i
  %i.ax = and i32 %i.aw, 1
  %i.ay = xor i32 %i.av, %i.ax
  br label %Gia_ManFindCond.exit

bb.f:                                             ; preds = %bb.d
  %i.az = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %exitcond.not.i52 = icmp eq i32 %i.az, %2
  br i1 %exitcond.not.i52, label %Gia_ManFindCond.exit, label %bb.d, !llvm.loop !5

Gia_ManFindCond.exit:                             ; preds = %bb.f, %Gia_ManCube.exit50, %bb.e
  %i.ba = phi i32 [ %i.ap, %bb.e ], [ %i.am, %Gia_ManCube.exit50 ], [ %i.ap, %bb.f ]
  %.010.i = phi i32 [ %i.ay, %bb.e ], [ -1, %Gia_ManCube.exit50 ], [ -1, %bb.f ]
  %i.bb = xor i32 %i.ba, 1
  %i.bc = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %.010.i, i32 noundef %i.h, i32 noundef %i.d)
  %i.bd = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.u)
  ret i32 %i.bd
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManDecompThree(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #7 {
bb.a:
  %i.a = add nsw i32 %4, %2
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = add nsw i32 %5, %2
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %i.i = add nsw i32 %6, %2
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %i.m = xor i32 %4, 1
  %i.n = add nsw i32 %i.m, %2
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %1, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  store i32 %i.q, ptr %i.c, align 4, !tbaa !21
  %i.r = xor i32 %5, 1
  %i.s = add nsw i32 %i.r, %2
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %1, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !21
  store i32 %i.v, ptr %i.g, align 4, !tbaa !21
  %i.w = xor i32 %6, 1
  %i.x = add nsw i32 %i.w, %2
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21
  store i32 %i.aa, ptr %i.k, align 4, !tbaa !21
  %i.ab = sext i32 %2 to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  %i.ad = tail call i32 @Gia_ManMuxTree_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.ac)
  %i.ae = icmp sgt i32 %2, 0
  br i1 %i.ae, label %.lr.ph.i, label %Gia_ManCube.exit76

.lr.ph.i:                                         ; preds = %bb.a
  %i.af = xor i32 %4, -1
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.011.i = phi i32 [ 1, %.lr.ph.i ], [ %i.am, %bb.b ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.ai = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aj = lshr i32 %i.af, %i.ai
  %i.ak = and i32 %i.aj, 1
  %i.al = xor i32 %i.ak, %i.ah
  %i.am = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.011.i, i32 noundef %i.al) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i62, label %bb.b, !llvm.loop !4

.lr.ph.i62:                                       ; preds = %bb.b
  %i.an = xor i32 %5, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i62
  %indvars.iv.i64 = phi i64 [ 0, %.lr.ph.i62 ], [ %indvars.iv.next.i66, %bb.c ] ; 3 uses
  %.011.i65 = phi i32 [ 1, %.lr.ph.i62 ], [ %i.au, %bb.c ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i64
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !21
  %i.aq = trunc nuw nsw i64 %indvars.iv.i64 to i32
  %i.ar = lshr i32 %i.an, %i.aq
  %i.as = and i32 %i.ar, 1
  %i.at = xor i32 %i.as, %i.ap
  %i.au = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.011.i65, i32 noundef %i.at) ; 2 uses
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %exitcond.not.i67 = icmp eq i64 %indvars.iv.next.i66, %wide.trip.count.i
  br i1 %exitcond.not.i67, label %.lr.ph.i70, label %bb.c, !llvm.loop !4

.lr.ph.i70:                                       ; preds = %bb.c
  %i.av = xor i32 %6, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i70
  %indvars.iv.i72 = phi i64 [ 0, %.lr.ph.i70 ], [ %indvars.iv.next.i74, %bb.d ] ; 3 uses
  %.011.i73 = phi i32 [ 1, %.lr.ph.i70 ], [ %i.bc, %bb.d ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i72
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !21
  %i.ay = trunc nuw nsw i64 %indvars.iv.i72 to i32
  %i.az = lshr i32 %i.av, %i.ay
  %i.ba = and i32 %i.az, 1
  %i.bb = xor i32 %i.ba, %i.ax
  %i.bc = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.011.i73, i32 noundef %i.bb) ; 2 uses
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %indvars.iv.next.i74, %wide.trip.count.i
  br i1 %exitcond.not.i75, label %Gia_ManCube.exit76.loopexit, label %bb.d, !llvm.loop !4

Gia_ManCube.exit76.loopexit:                      ; preds = %bb.d
  %i.bd = xor i32 %i.am, 1
  %i.be = xor i32 %i.bc, 1
  %i.bf = xor i32 %i.au, 1
  br label %Gia_ManCube.exit76

Gia_ManCube.exit76:                               ; preds = %Gia_ManCube.exit76.loopexit, %bb.a
  %.0.lcssa.i6184 = phi i32 [ 0, %bb.a ], [ %i.bf, %Gia_ManCube.exit76.loopexit ]
  %.0.lcssa.i7882 = phi i32 [ 0, %bb.a ], [ %i.bd, %Gia_ManCube.exit76.loopexit ]
  %.0.lcssa.i69 = phi i32 [ 0, %bb.a ], [ %i.be, %Gia_ManCube.exit76.loopexit ] ; 2 uses
  %i.bg = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.0.lcssa.i7882, i32 noundef %.0.lcssa.i69)
  %i.bh = xor i32 %i.bg, 1                        ; 2 uses
  %i.bi = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.0.lcssa.i6184, i32 noundef %.0.lcssa.i69)
  %i.bj = xor i32 %i.bi, 1
  %i.bk = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.bh, i32 noundef %i.d, i32 noundef %i.ad)
  %i.bl = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.bh, i32 noundef %i.l, i32 noundef %i.h)
  %i.bm = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef %i.bk)
  ret i32 %i.bm
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManDecomp(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i32 %2, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = tail call i32 @Gia_ManMuxTree_rec(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %i.b)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64                       ; 3 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %3, i64 %i.d ; 17 uses
  %.not = icmp eq i32 %2, 31
  br i1 %.not, label %Gia_ManLatest.exit131, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.f = shl nuw i32 1, %2
  %wide.trip.count.i = zext nneg i32 %i.f to i64  ; 11 uses
  %i.g = add nsw i64 %wide.trip.count.i, -1       ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.h = icmp ult i32 %2, 2
  br i1 %i.h, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %.016.i = phi i32 [ -1, %.lr.ph.preheader.i.new ], [ %spec.select13.i.3, %.lr.ph.i ]
  %.0915.i = phi i32 [ 1000000000, %.lr.ph.preheader.i.new ], [ %spec.select.i.3, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21   ; 2 uses
  %i.k = icmp sgt i32 %.0915.i, %i.j
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.0915.i, i32 %i.j) ; 2 uses
  %i.l = trunc nuw nsw i64 %indvars.iv.i to i32
  %spec.select13.i = select i1 %i.k, i32 %i.l, i32 %.016.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21   ; 2 uses
  %i.o = icmp sgt i32 %spec.select.i, %i.n
  %spec.select.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.n) ; 2 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %spec.select13.i.1 = select i1 %i.o, i32 %i.p, i32 %spec.select13.i
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.1
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21   ; 2 uses
  %i.s = icmp sgt i32 %spec.select.i.1, %i.r
  %spec.select.i.2 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.1, i32 %i.r) ; 2 uses
  %i.t = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %spec.select13.i.2 = select i1 %i.s, i32 %i.t, i32 %spec.select13.i.1
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.2
  %i.v = load i32, ptr %i.u, align 4, !tbaa !21   ; 2 uses
  %i.w = icmp sgt i32 %spec.select.i.2, %i.v
  %spec.select.i.3 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.2, i32 %i.v) ; 2 uses
  %i.x = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  %spec.select13.i.3 = select i1 %i.w, i32 %i.x, i32 %spec.select13.i.2 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i93.unr-lcssa, label %.lr.ph.i, !llvm.loop !7

.lr.ph.preheader.i93.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i93, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.preheader.i93.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.lr.ph.preheader.i93.unr-lcssa ]
  %.016.i.epil.init = phi i32 [ -1, %.lr.ph.preheader.i ], [ %spec.select13.i.3, %.lr.ph.preheader.i93.unr-lcssa ]
  %.0915.i.epil.init = phi i32 [ 1000000000, %.lr.ph.preheader.i ], [ %spec.select.i.3, %.lr.ph.preheader.i93.unr-lcssa ]
  %lcmp.mod173 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod173)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %.016.i.epil = phi i32 [ %.016.i.epil.init, %.lr.ph.i.epil.preheader ], [ %spec.select13.i.epil, %.lr.ph.i.epil ]
  %.0915.i.epil = phi i32 [ %.0915.i.epil.init, %.lr.ph.i.epil.preheader ], [ %spec.select.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.epil
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21   ; 2 uses
  %i.aa = icmp sgt i32 %.0915.i.epil, %i.z
  %spec.select.i.epil = tail call i32 @llvm.smin.i32(i32 %.0915.i.epil, i32 %i.z)
  %i.ab = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %spec.select13.i.epil = select i1 %i.aa, i32 %i.ab, i32 %.016.i.epil ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i93, label %.lr.ph.i.epil, !llvm.loop !101

.lr.ph.preheader.i93:                             ; preds = %.lr.ph.i.epil, %.lr.ph.preheader.i93.unr-lcssa
  %spec.select13.i.lcssa = phi i32 [ %spec.select13.i.3, %.lr.ph.preheader.i93.unr-lcssa ], [ %spec.select13.i.epil, %.lr.ph.i.epil ]
  %i.ac = add nsw i32 %spec.select13.i.lcssa, %2
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21 ; 2 uses
  %xtraiter174 = and i64 %wide.trip.count.i, 1
  %4 = icmp eq i64 %i.g, 0
  br i1 %4, label %.lr.ph.i95.epil.preheader.a, label %.lr.ph.preheader.i93.new

.lr.ph.preheader.i93.new:                         ; preds = %.lr.ph.preheader.i93
  %unroll_iter179 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95, %.lr.ph.preheader.i93.new
  %indvars.iv.i96 = phi i64 [ 0, %.lr.ph.preheader.i93.new ], [ %indvars.iv.next.i97.1, %.lr.ph.i95 ] ; 5 uses
  %.025.i = phi i32 [ -1, %.lr.ph.preheader.i93.new ], [ %.1.i.1, %.lr.ph.i95 ]
  %.01524.i = phi i32 [ -1, %.lr.ph.preheader.i93.new ], [ %.116.i.1, %.lr.ph.i95 ] ; 2 uses
  %niter180 = phi i64 [ 0, %.lr.ph.preheader.i93.new ], [ %niter180.next.1, %.lr.ph.i95 ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i96
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21 ; 2 uses
  %.not202 = icmp slt i32 %.01524.i, %i.ah
  %.116.i.a = tail call i32 @llvm.smax.i32(i32 %.01524.i, i32 %i.ah) ; 2 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.i96 to i32
  %.1.i.a = select i1 %.not202, i32 %i.ai, i32 %.025.i
  %indvars.iv.next.i97.a = or disjoint i64 %indvars.iv.i96, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i97.a
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21 ; 2 uses
  %5 = icmp sge i32 %.116.i.a, %i.ak
  %.not.i.1 = icmp eq i64 %indvars.iv.i96, 4294967294
  %or.cond.i.1 = or i1 %.not.i.1, %5              ; 2 uses
  %.116.i.1 = select i1 %or.cond.i.1, i32 %.116.i.a, i32 %i.ak ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next.i97.a to i32
  %.1.i.1 = select i1 %or.cond.i.1, i32 %.1.i.a, i32 %i.al ; 3 uses
  %indvars.iv.next.i97.1 = add nuw nsw i64 %indvars.iv.i96, 2 ; 2 uses
  %niter180.next.1 = add i64 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %.lr.ph.preheader.i100.unr-lcssa, label %.lr.ph.i95, !llvm.loop !6

.lr.ph.preheader.i100.unr-lcssa:                  ; preds = %.lr.ph.i95
  %lcmp.mod176.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod176.not, label %.lr.ph.preheader.i100, label %.lr.ph.i95.epil.preheader.a

.lr.ph.i95.epil.preheader.a:                      ; preds = %.lr.ph.preheader.i100.unr-lcssa, %.lr.ph.preheader.i93
  %indvars.iv.i96.epil.init.a = phi i64 [ 0, %.lr.ph.preheader.i93 ], [ %indvars.iv.next.i97.1, %.lr.ph.preheader.i100.unr-lcssa ] ; 2 uses
  %.025.i.epil.init.a = phi i32 [ -1, %.lr.ph.preheader.i93 ], [ %.1.i.1, %.lr.ph.preheader.i100.unr-lcssa ]
  %.01524.i.epil.init.a = phi i32 [ -1, %.lr.ph.preheader.i93 ], [ %.116.i.1, %.lr.ph.preheader.i100.unr-lcssa ]
  %lcmp.mod178 = icmp eq i32 %2, 0
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i96.epil.init.a
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21
  %.not203 = icmp slt i32 %.01524.i.epil.init.a, %i.an
  %i.ao = trunc nuw nsw i64 %indvars.iv.i96.epil.init.a to i32
  %.1.i.epil = select i1 %.not203, i32 %i.ao, i32 %.025.i.epil.init.a
  br label %.lr.ph.preheader.i100

.lr.ph.preheader.i100:                            ; preds = %.lr.ph.preheader.i100.unr-lcssa, %.lr.ph.i95.epil.preheader.a
  %.1.i.lcssa = phi i32 [ %.1.i.1, %.lr.ph.preheader.i100.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i95.epil.preheader.a ] ; 3 uses
  %i.ap = zext i32 %.1.i.lcssa to i64             ; 9 uses
  %xtraiter181 = and i64 %wide.trip.count.i, 1
  %i.aq = icmp eq i64 %i.g, 0
  br i1 %i.aq, label %.lr.ph.i102.epil.preheader, label %.lr.ph.preheader.i100.new

.lr.ph.preheader.i100.new:                        ; preds = %.lr.ph.preheader.i100
  %unroll_iter186 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %.lr.ph.i102, %.lr.ph.preheader.i100.new
  %indvars.iv.i103 = phi i64 [ 0, %.lr.ph.preheader.i100.new ], [ %indvars.iv.next.i112.1, %.lr.ph.i102 ] ; 6 uses
  %.025.i104 = phi i32 [ -1, %.lr.ph.preheader.i100.new ], [ %.1.i111.1, %.lr.ph.i102 ]
  %.01524.i105 = phi i32 [ -1, %.lr.ph.preheader.i100.new ], [ %.116.i110.1, %.lr.ph.i102 ] ; 2 uses
  %niter187 = phi i64 [ 0, %.lr.ph.preheader.i100.new ], [ %niter187.next.1, %.lr.ph.i102 ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i103
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21 ; 2 uses
  %i.at = icmp sge i32 %.01524.i105, %i.as
  %.not.i106 = icmp eq i64 %indvars.iv.i103, %i.ap
  %or.cond.i107 = or i1 %.not.i106, %i.at         ; 2 uses
  %.116.i110 = select i1 %or.cond.i107, i32 %.01524.i105, i32 %i.as ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv.i103 to i32
  %.1.i111 = select i1 %or.cond.i107, i32 %.025.i104, i32 %i.au
  %indvars.iv.next.i112 = or disjoint i64 %indvars.iv.i103, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i112
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !21 ; 2 uses
  %i.ax = icmp sge i32 %.116.i110, %i.aw
  %.not.i106.1 = icmp eq i64 %indvars.iv.next.i112, %i.ap
  %or.cond.i107.1 = or i1 %.not.i106.1, %i.ax
  %.not19.i108.1 = icmp eq i64 %indvars.iv.i103, 4294967294
  %or.cond21.i.1 = or i1 %.not19.i108.1, %or.cond.i107.1 ; 2 uses
  %.116.i110.1 = select i1 %or.cond21.i.1, i32 %.116.i110, i32 %i.aw ; 2 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv.next.i112 to i32
  %.1.i111.1 = select i1 %or.cond21.i.1, i32 %.1.i111, i32 %i.ay ; 3 uses
  %indvars.iv.next.i112.1 = add nuw nsw i64 %indvars.iv.i103, 2 ; 2 uses
  %niter187.next.1 = add i64 %niter187, 2         ; 2 uses
  %niter187.ncmp.1 = icmp eq i64 %niter187.next.1, %unroll_iter186
  br i1 %niter187.ncmp.1, label %.lr.ph.preheader.i116.unr-lcssa, label %.lr.ph.i102, !llvm.loop !6

.lr.ph.preheader.i116.unr-lcssa:                  ; preds = %.lr.ph.i102
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %.lr.ph.preheader.i116, label %.lr.ph.i102.epil.preheader

.lr.ph.i102.epil.preheader:                       ; preds = %.lr.ph.preheader.i116.unr-lcssa, %.lr.ph.preheader.i100
  %indvars.iv.i103.epil.init = phi i64 [ 0, %.lr.ph.preheader.i100 ], [ %indvars.iv.next.i112.1, %.lr.ph.preheader.i116.unr-lcssa ] ; 3 uses
  %.025.i104.epil.init = phi i32 [ -1, %.lr.ph.preheader.i100 ], [ %.1.i111.1, %.lr.ph.preheader.i116.unr-lcssa ]
  %.01524.i105.epil.init = phi i32 [ -1, %.lr.ph.preheader.i100 ], [ %.116.i110.1, %.lr.ph.preheader.i116.unr-lcssa ]
  %lcmp.mod185 = icmp eq i32 %2, 0
  tail call void @llvm.assume(i1 %lcmp.mod185)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i103.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !21
  %i.bb = icmp sge i32 %.01524.i105.epil.init, %i.ba
  %.not.i106.epil = icmp eq i64 %indvars.iv.i103.epil.init, %i.ap
  %or.cond.i107.epil = or i1 %.not.i106.epil, %i.bb
  %i.bc = trunc nuw nsw i64 %indvars.iv.i103.epil.init to i32
  %.1.i111.epil = select i1 %or.cond.i107.epil, i32 %.025.i104.epil.init, i32 %i.bc
  br label %.lr.ph.preheader.i116

.lr.ph.preheader.i116:                            ; preds = %.lr.ph.preheader.i116.unr-lcssa, %.lr.ph.i102.epil.preheader
  %.1.i111.lcssa = phi i32 [ %.1.i111.1, %.lr.ph.preheader.i116.unr-lcssa ], [ %.1.i111.epil, %.lr.ph.i102.epil.preheader ] ; 3 uses
  %i.bd = zext i32 %.1.i111.lcssa to i64          ; 6 uses
  %xtraiter188 = and i64 %wide.trip.count.i, 1
  %i.be = icmp eq i64 %i.g, 0
  br i1 %i.be, label %.lr.ph.i118.epil.preheader, label %.lr.ph.preheader.i116.new

.lr.ph.preheader.i116.new:                        ; preds = %.lr.ph.preheader.i116
  %unroll_iter193 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i118

.lr.ph.i118:                                      ; preds = %.lr.ph.i118, %.lr.ph.preheader.i116.new
  %indvars.iv.i119 = phi i64 [ 0, %.lr.ph.preheader.i116.new ], [ %indvars.iv.next.i129.1, %.lr.ph.i118 ] ; 7 uses
  %.025.i120 = phi i32 [ -1, %.lr.ph.preheader.i116.new ], [ %.1.i128.1, %.lr.ph.i118 ]
  %.01524.i121 = phi i32 [ -1, %.lr.ph.preheader.i116.new ], [ %.116.i127.1, %.lr.ph.i118 ] ; 2 uses
  %niter194 = phi i64 [ 0, %.lr.ph.preheader.i116.new ], [ %niter194.next.1, %.lr.ph.i118 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i119
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !21 ; 2 uses
  %i.bh = icmp sge i32 %.01524.i121, %i.bg
  %.not.i122 = icmp eq i64 %indvars.iv.i119, %i.ap
  %or.cond.i123 = or i1 %.not.i122, %i.bh
  %.not19.i124 = icmp eq i64 %indvars.iv.i119, %i.bd
  %or.cond21.i125 = or i1 %.not19.i124, %or.cond.i123 ; 2 uses
  %.116.i127 = select i1 %or.cond21.i125, i32 %.01524.i121, i32 %i.bg ; 2 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv.i119 to i32
  %.1.i128 = select i1 %or.cond21.i125, i32 %.025.i120, i32 %i.bi
  %indvars.iv.next.i129 = or disjoint i64 %indvars.iv.i119, 1 ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i129
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !21 ; 2 uses
  %i.bl = icmp sge i32 %.116.i127, %i.bk
  %.not.i122.1 = icmp eq i64 %indvars.iv.next.i129, %i.ap
  %or.cond.i123.1 = or i1 %.not.i122.1, %i.bl
  %.not19.i124.1.a = icmp eq i64 %indvars.iv.next.i129, %i.bd
  %or.cond21.i125.1.a = or i1 %.not19.i124.1.a, %or.cond.i123.1
  %.not20.i126.1 = icmp eq i64 %indvars.iv.i119, 4294967294
  %or.cond22.i.1 = or i1 %.not20.i126.1, %or.cond21.i125.1.a ; 2 uses
  %.116.i127.1 = select i1 %or.cond22.i.1, i32 %.116.i127, i32 %i.bk ; 2 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv.next.i129 to i32
  %.1.i128.1 = select i1 %or.cond22.i.1, i32 %.1.i128, i32 %i.bm ; 3 uses
  %indvars.iv.next.i129.1 = add nuw nsw i64 %indvars.iv.i119, 2 ; 2 uses
  %niter194.next.1 = add i64 %niter194, 2         ; 2 uses
  %niter194.ncmp.1 = icmp eq i64 %niter194.next.1, %unroll_iter193
  br i1 %niter194.ncmp.1, label %.lr.ph.preheader.i133.unr-lcssa, label %.lr.ph.i118, !llvm.loop !6

Gia_ManLatest.exit131:                            ; preds = %bb.c
  %i.bn = getelementptr i8, ptr %3, i64 120
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !21
  br label %Gia_ManLatest.exit149

.lr.ph.preheader.i133.unr-lcssa:                  ; preds = %.lr.ph.i118
  %lcmp.mod190.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod190.not, label %.lr.ph.preheader.i133, label %.lr.ph.i118.epil.preheader

.lr.ph.i118.epil.preheader:                       ; preds = %.lr.ph.preheader.i133.unr-lcssa, %.lr.ph.preheader.i116
  %indvars.iv.i119.epil.init = phi i64 [ 0, %.lr.ph.preheader.i116 ], [ %indvars.iv.next.i129.1, %.lr.ph.preheader.i133.unr-lcssa ] ; 4 uses
  %.025.i120.epil.init = phi i32 [ -1, %.lr.ph.preheader.i116 ], [ %.1.i128.1, %.lr.ph.preheader.i133.unr-lcssa ]
  %.01524.i121.epil.init = phi i32 [ -1, %.lr.ph.preheader.i116 ], [ %.116.i127.1, %.lr.ph.preheader.i133.unr-lcssa ]
  %lcmp.mod192 = icmp eq i32 %2, 0
  tail call void @llvm.assume(i1 %lcmp.mod192)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i119.epil.init
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !21
  %i.br = icmp sge i32 %.01524.i121.epil.init, %i.bq
  %.not.i122.epil = icmp eq i64 %indvars.iv.i119.epil.init, %i.ap
  %or.cond.i123.epil = or i1 %.not.i122.epil, %i.br
  %.not19.i124.epil = icmp eq i64 %indvars.iv.i119.epil.init, %i.bd
  %or.cond21.i125.epil = or i1 %.not19.i124.epil, %or.cond.i123.epil
  %i.bs = trunc nuw nsw i64 %indvars.iv.i119.epil.init to i32
  %.1.i128.epil = select i1 %or.cond21.i125.epil, i32 %.025.i120.epil.init, i32 %i.bs
  br label %.lr.ph.preheader.i133

.lr.ph.preheader.i133:                            ; preds = %.lr.ph.preheader.i133.unr-lcssa, %.lr.ph.i118.epil.preheader
  %.1.i128.lcssa = phi i32 [ %.1.i128.1, %.lr.ph.preheader.i133.unr-lcssa ], [ %.1.i128.epil, %.lr.ph.i118.epil.preheader ] ; 3 uses
  %i.bt = zext i32 %.1.i128.lcssa to i64          ; 3 uses
  %xtraiter195 = and i64 %wide.trip.count.i, 1
  %i.bu = icmp eq i64 %i.g, 0
  br i1 %i.bu, label %.lr.ph.i135.epil.preheader, label %.lr.ph.preheader.i133.new

.lr.ph.preheader.i133.new:                        ; preds = %.lr.ph.preheader.i133
  %unroll_iter200 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %.lr.ph.i135, %.lr.ph.preheader.i133.new
  %indvars.iv.i136 = phi i64 [ 0, %.lr.ph.preheader.i133.new ], [ %indvars.iv.next.i147.1, %.lr.ph.i135 ] ; 7 uses
  %.025.i137 = phi i32 [ -1, %.lr.ph.preheader.i133.new ], [ %.1.i146.1, %.lr.ph.i135 ]
  %.01524.i138 = phi i32 [ -1, %.lr.ph.preheader.i133.new ], [ %.116.i145.1, %.lr.ph.i135 ] ; 2 uses
  %niter201 = phi i64 [ 0, %.lr.ph.preheader.i133.new ], [ %niter201.next.1, %.lr.ph.i135 ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i136
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !21 ; 2 uses
  %i.bx = icmp sge i32 %.01524.i138, %i.bw
  %.not.i139 = icmp eq i64 %indvars.iv.i136, %i.ap
  %or.cond.i140 = or i1 %.not.i139, %i.bx
  %.not19.i141 = icmp eq i64 %indvars.iv.i136, %i.bd
  %or.cond21.i142 = or i1 %.not19.i141, %or.cond.i140
  %.not20.i143 = icmp eq i64 %indvars.iv.i136, %i.bt
  %or.cond22.i144 = or i1 %.not20.i143, %or.cond21.i142 ; 2 uses
  %.116.i145 = select i1 %or.cond22.i144, i32 %.01524.i138, i32 %i.bw ; 2 uses
  %i.by = trunc nuw nsw i64 %indvars.iv.i136 to i32
  %.1.i146 = select i1 %or.cond22.i144, i32 %.025.i137, i32 %i.by
  %indvars.iv.next.i147 = or disjoint i64 %indvars.iv.i136, 1 ; 5 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i147
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !21 ; 2 uses
  %i.cb = icmp sge i32 %.116.i145, %i.ca
  %.not.i139.1 = icmp eq i64 %indvars.iv.next.i147, %i.ap
  %or.cond.i140.1 = or i1 %.not.i139.1, %i.cb
  %.not19.i141.1 = icmp eq i64 %indvars.iv.next.i147, %i.bd
  %or.cond21.i142.1 = or i1 %.not19.i141.1, %or.cond.i140.1
  %.not20.i143.1 = icmp eq i64 %indvars.iv.next.i147, %i.bt
  %or.cond22.i144.1 = or i1 %.not20.i143.1, %or.cond21.i142.1 ; 2 uses
  %.116.i145.1 = select i1 %or.cond22.i144.1, i32 %.116.i145, i32 %i.ca ; 2 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv.next.i147 to i32
  %.1.i146.1 = select i1 %or.cond22.i144.1, i32 %.1.i146, i32 %i.cc ; 3 uses
  %indvars.iv.next.i147.1 = add nuw nsw i64 %indvars.iv.i136, 2 ; 2 uses
  %niter201.next.1 = add i64 %niter201, 2         ; 2 uses
  %niter201.ncmp.1 = icmp eq i64 %niter201.next.1, %unroll_iter200
  br i1 %niter201.ncmp.1, label %Gia_ManLatest.exit149.loopexit.unr-lcssa, label %.lr.ph.i135, !llvm.loop !6

Gia_ManLatest.exit149.loopexit.unr-lcssa:         ; preds = %.lr.ph.i135
  %lcmp.mod197.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %Gia_ManLatest.exit149, label %.lr.ph.i135.epil.preheader

.lr.ph.i135.epil.preheader:                       ; preds = %Gia_ManLatest.exit149.loopexit.unr-lcssa, %.lr.ph.preheader.i133
  %indvars.iv.i136.epil.init = phi i64 [ 0, %.lr.ph.preheader.i133 ], [ %indvars.iv.next.i147.1, %Gia_ManLatest.exit149.loopexit.unr-lcssa ] ; 5 uses
  %.025.i137.epil.init = phi i32 [ -1, %.lr.ph.preheader.i133 ], [ %.1.i146.1, %Gia_ManLatest.exit149.loopexit.unr-lcssa ]
  %.01524.i138.epil.init = phi i32 [ -1, %.lr.ph.preheader.i133 ], [ %.116.i145.1, %Gia_ManLatest.exit149.loopexit.unr-lcssa ]
  %lcmp.mod199 = icmp eq i32 %2, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i136.epil.init
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !21
  %i.cf = icmp sge i32 %.01524.i138.epil.init, %i.ce
  %.not.i139.epil = icmp eq i64 %indvars.iv.i136.epil.init, %i.ap
  %or.cond.i140.epil = or i1 %.not.i139.epil, %i.cf
  %.not19.i141.epil = icmp eq i64 %indvars.iv.i136.epil.init, %i.bd
  %or.cond21.i142.epil = or i1 %.not19.i141.epil, %or.cond.i140.epil
  %.not20.i143.epil = icmp eq i64 %indvars.iv.i136.epil.init, %i.bt
  %or.cond22.i144.epil = or i1 %.not20.i143.epil, %or.cond21.i142.epil
  %i.cg = trunc nuw nsw i64 %indvars.iv.i136.epil.init to i32
  %.1.i146.epil = select i1 %or.cond22.i144.epil, i32 %.025.i137.epil.init, i32 %i.cg
  br label %Gia_ManLatest.exit149

Gia_ManLatest.exit149:                            ; preds = %.lr.ph.i135.epil.preheader, %Gia_ManLatest.exit149.loopexit.unr-lcssa, %Gia_ManLatest.exit131
  %.0.lcssa.i115167 = phi i32 [ -1, %Gia_ManLatest.exit131 ], [ %.1.i128.lcssa, %Gia_ManLatest.exit149.loopexit.unr-lcssa ], [ %.1.i128.lcssa, %.lr.ph.i135.epil.preheader ] ; 3 uses
  %.0.lcssa.i92152156165 = phi i32 [ -1, %Gia_ManLatest.exit131 ], [ %.1.i.lcssa, %Gia_ManLatest.exit149.loopexit.unr-lcssa ], [ %.1.i.lcssa, %.lr.ph.i135.epil.preheader ] ; 5 uses
  %i.ch = phi i32 [ %i.bo, %Gia_ManLatest.exit131 ], [ %i.af, %Gia_ManLatest.exit149.loopexit.unr-lcssa ], [ %i.af, %.lr.ph.i135.epil.preheader ] ; 6 uses
  %.0.lcssa.i99158163 = phi i32 [ -1, %Gia_ManLatest.exit131 ], [ %.1.i111.lcssa, %Gia_ManLatest.exit149.loopexit.unr-lcssa ], [ %.1.i111.lcssa, %.lr.ph.i135.epil.preheader ] ; 3 uses
  %.0.lcssa.i132 = phi i32 [ -1, %Gia_ManLatest.exit131 ], [ %.1.i146.1, %Gia_ManLatest.exit149.loopexit.unr-lcssa ], [ %.1.i146.epil, %.lr.ph.i135.epil.preheader ]
  %i.ci = add nsw i32 %.0.lcssa.i92152156165, %2
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !21
  %i.cm = icmp sgt i32 %i.cl, %i.ch
  br i1 %i.cm, label %bb.d, label %bb.m

bb.d:                                             ; preds = %Gia_ManLatest.exit149
  %i.cn = add nsw i32 %.0.lcssa.i99158163, %2
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %3, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !21 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, %i.ch
  br i1 %i.cr, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.cs = add nsw i32 %.0.lcssa.i115167, %2
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !21
  %i.cw = icmp sgt i32 %i.cv, %i.ch
  br i1 %i.cw, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cx = add nsw i32 %.0.lcssa.i132, %2
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !21
  %i.db = icmp eq i32 %i.da, %i.ch
  br i1 %i.db, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dc = tail call i32 @Gia_ManDecompThree(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nonnull poison, i32 noundef %.0.lcssa.i92152156165, i32 noundef %.0.lcssa.i99158163, i32 noundef %.0.lcssa.i115167)
  br label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.dd = add nsw i32 %.0.lcssa.i115167, %2
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %3, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !21
  %i.dh = icmp eq i32 %i.dg, %i.ch
  br i1 %i.dh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.di = tail call i32 @Gia_ManDecompTwo(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nonnull poison, i32 noundef %.0.lcssa.i92152156165, i32 noundef %.0.lcssa.i99158163)
  br label %bb.n

bb.j:                                             ; preds = %bb.d, %bb.h
  %i.dj = icmp eq i32 %i.cq, %i.ch
  br i1 %i.dj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !21
  %i.dm = xor i32 %.0.lcssa.i92152156165, 1
  %i.dn = add nsw i32 %i.dm, %2
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !21
  store i32 %i.dq, ptr %i.dk, align 4, !tbaa !21
  %i.dr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %i.ds = tail call i32 @Gia_ManMuxTree_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.dr)
  %i.dt = icmp sgt i32 %2, 0
  br i1 %i.dt, label %.lr.ph.i.i, label %Gia_ManDecompOne.exit

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.du = xor i32 %.0.lcssa.i92152156165, -1
  %wide.trip.count.i.i = zext nneg i32 %2 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.l ] ; 3 uses
  %.011.i.i = phi i32 [ 1, %.lr.ph.i.i ], [ %i.eb, %bb.l ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !21
  %i.dx = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.dy = lshr i32 %i.du, %i.dx
  %i.dz = and i32 %i.dy, 1
  %i.ea = xor i32 %i.dz, %i.dw
  %i.eb = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.011.i.i, i32 noundef %i.ea) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Gia_ManDecompOne.exit, label %bb.l, !llvm.loop !4

Gia_ManDecompOne.exit:                            ; preds = %bb.l, %bb.k
  %.0.lcssa.i.i = phi i32 [ 1, %bb.k ], [ %i.eb, %bb.l ]
  %i.ec = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %.0.lcssa.i.i, i32 noundef %i.dl, i32 noundef %i.ds)
  br label %bb.n

bb.m:                                             ; preds = %Gia_ManLatest.exit149, %bb.j
  %i.ed = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %i.ee = tail call i32 @Gia_ManMuxTree_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.ed)
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.i, %Gia_ManDecompOne.exit, %bb.m, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %i.dc, %bb.g ], [ %i.di, %bb.i ], [ %i.ec, %Gia_ManDecompOne.exit ], [ %i.ee, %bb.m ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define noundef ptr @Gia_ManMuxTreeTest(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = shl nuw i32 1, %0
  %i.b = add nsw i32 %i.a, %0                     ; 8 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 4) #30 ; 6 uses
  %i.e = icmp sgt i32 %i.b, 0                     ; 3 uses
  br i1 %i.e, label %.lr.ph.preheader.i, label %Gia_ManCollectLiterals.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.g = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.h = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.i = shl <4 x i32> %i.g, splat (i32 1)
  %i.j = add <4 x i32> %i.i, splat (i32 2)
  %i.k = shl <4 x i32> %i.h, splat (i32 1)
  %i.l = add <4 x i32> %i.k, splat (i32 10)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> %i.j, ptr %i.f, align 4, !tbaa !21
  store <4 x i32> %i.l, ptr %i.m, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Gia_ManCollectLiterals.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %indvars.iv.next.tr.i = trunc nuw i64 %indvars.iv.next.i to i32
  %i.p = shl nuw i32 %indvars.iv.next.tr.i, 1
  store i32 %i.p, ptr %i.o, align 4, !tbaa !21
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManCollectLiterals.exit, label %.lr.ph.i, !llvm.loop !103

Gia_ManCollectLiterals.exit:                      ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.q = tail call ptr @Gia_ManStart(i32 noundef 1000) #28 ; 6 uses
  %i.r = tail call noalias dereferenceable_or_null(9) ptr @malloc(i64 noundef 9) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.r, ptr noundef nonnull align 1 dereferenceable(9) @.str.5, i64 9, i1 false) #28
  store ptr %i.r, ptr %i.q, align 8, !tbaa !53
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Gia_ManCollectLiterals.exit, %.lr.ph
  %.039 = phi i32 [ %i.t, %.lr.ph ], [ 0, %Gia_ManCollectLiterals.exit ]
  %i.s = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.q) ; 0 uses
  %i.t = add nuw nsw i32 %.039, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph, %Gia_ManCollectLiterals.exit
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.q)
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 4) #30 ; 8 uses
  %i.v = tail call i64 @time(ptr noundef null) #28
  %i.w = trunc i64 %i.v to i32
  tail call void @srand(i32 noundef %i.w) #28
  br i1 %i.e, label %.lr.ph.preheader.i33, label %.loopexit

.lr.ph.preheader.i33:                             ; preds = %._crit_edge
  %wide.trip.count.i34 = zext nneg i32 %i.b to i64 ; 4 uses
  %min.iters.check42 = icmp ult i32 %i.b, 8
  br i1 %min.iters.check42, label %.lr.ph.i35.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i33
  %n.vec44 = and i64 %wide.trip.count.i34, 2147483640 ; 3 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph43
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next49, %vector.body45 ] ; 2 uses
  %vec.ind47 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph43 ], [ %vec.ind.next50, %vector.body45 ] ; 3 uses
  %step.add48 = add <4 x i32> %vec.ind47, splat (i32 4)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index46 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x i32> %vec.ind47, ptr %i.x, align 4, !tbaa !21
  store <4 x i32> %step.add48, ptr %i.y, align 4, !tbaa !21
  %index.next49 = add nuw i64 %index46, 8         ; 2 uses
  %vec.ind.next50 = add <4 x i32> %vec.ind47, splat (i32 8)
  %i.z = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.z, label %middle.block51, label %vector.body45, !llvm.loop !105

middle.block51:                                   ; preds = %vector.body45
  %cmp.n52 = icmp eq i64 %n.vec44, %wide.trip.count.i34
  br i1 %cmp.n52, label %.lr.ph23.i.preheader, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %.lr.ph.preheader.i33, %middle.block51
  %indvars.iv.i36.ph = phi i64 [ 0, %.lr.ph.preheader.i33 ], [ %n.vec44, %middle.block51 ]
  br label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.lr.ph.i35.preheader, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i37, %.lr.ph.i35 ], [ %indvars.iv.i36.ph, %.lr.ph.i35.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i36
  %i.ab = trunc nuw nsw i64 %indvars.iv.i36 to i32
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !21
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, %wide.trip.count.i34
  br i1 %exitcond.not.i38, label %.lr.ph23.i.preheader, label %.lr.ph.i35, !llvm.loop !106

.lr.ph23.i.preheader:                             ; preds = %.lr.ph.i35, %middle.block51
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader, %.lr.ph23.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.lr.ph23.i ], [ 0, %.lr.ph23.i.preheader ] ; 2 uses
  %i.ac = tail call i32 @rand() #28
  %i.ad = srem i32 %i.ac, %i.b
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv25.i ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !21
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !21
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count.i34
  br i1 %exitcond29.not.i, label %.loopexit, label %.lr.ph23.i, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph23.i, %._crit_edge
  %i.aj = sext i32 %0 to i64
  %i.ak = getelementptr [4 x i8], ptr %i.u, i64 %i.aj ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  store i32 100, ptr %i.al, align 4, !tbaa !21
  %i.am = getelementptr i8, ptr %i.ak, i64 20
  store i32 100, ptr %i.am, align 4, !tbaa !21
  %i.an = getelementptr i8, ptr %i.ak, i64 16
  store i32 100, ptr %i.an, align 4, !tbaa !21
  tail call void @Gia_ManUsePerm(ptr noundef %i.d, i32 noundef %0, ptr noundef %i.u)
  %i.ao = tail call i32 @Gia_ManDecomp(ptr noundef nonnull %i.q, ptr noundef %i.d, i32 noundef %0, ptr noundef %i.u)
  %i.ap = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.q, i32 noundef %i.ao) ; 0 uses
  tail call void @free(ptr noundef %i.u) #28
  %.not32 = icmp eq ptr %i.d, null
  br i1 %.not32, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.d) #28
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  ret ptr %i.q
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Gia_ManAppendObj(ptr nofree noundef captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1
  %i.g = tail call noundef i32 @llvm.smin.i32(i32 %i.f, i32 536870912) ; 6 uses
  %i.h = icmp eq i32 %i.b, 536870912
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !107
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #26
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !40
  %i.s = load i32, ptr %i.c, align 4, !tbaa !46   ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #26 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !41
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !46  ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !19
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !19 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !47
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #26
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !47
  %.pre = load i32, ptr %i.al, align 4, !tbaa !19
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !19
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !21
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !43
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !40
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @Gia_ManBuiltInSimPerform(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @Gia_ManQuantSetSuppAnd(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Gia_ManHashAndP(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val6 = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, -2
  %i.d = ptrtoint ptr %.val6 to i64               ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 12
  %i.g = trunc i64 %i.f to i32
  %i.h = trunc i64 %i.b to i32
  %i.i = and i32 %i.h, 1
  %i.j = shl nsw i32 %i.g, 1
  %i.k = or disjoint i32 %i.j, %i.i
  %i.l = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.m = and i64 %i.l, -2
  %i.n = sub i64 %i.m, %i.d
  %i.o = sdiv exact i64 %i.n, 12
  %i.p = trunc i64 %i.o to i32
  %i.q = trunc i64 %i.l to i32
  %i.r = and i32 %i.q, 1
  %i.s = shl nsw i32 %i.p, 1
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.k, i32 noundef %i.t) ; 2 uses
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.v = ashr i32 %i.u, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %.val7, i64 %i.w
  %i.y = and i32 %i.u, 1
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = xor i64 %i.z, %i.aa
  %i.ac = inttoptr i64 %i.ab to ptr
  ret ptr %i.ac
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nofree nounwind }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind allocsize(1) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind allocsize(0,1) }
attributes #31 = { cold noreturn nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !42}
!1 = distinct !{!1, !42}
!2 = distinct !{!2, !42}
!3 = distinct !{!3, !42}
!4 = distinct !{!4, !42}
!5 = distinct !{!5, !42}
!6 = distinct !{!6, !42}
!7 = distinct !{!7, !42}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 int", !16, i64 0}
!18 = !{!"Vec_Int_t_", !13, i64 0, !13, i64 4, !17, i64 8}
!19 = !{!18, !13, i64 4}
!20 = !{!18, !17, i64 8}
!21 = !{!13, !13, i64 0}
!22 = !{!"p1 omnipotent char", !16, i64 0}
!23 = !{!"p1 _ZTS10Gia_Obj_t_", !16, i64 0}
!24 = !{!"p1 _ZTS10Vec_Int_t_", !16, i64 0}
!25 = !{!"p1 _ZTS10Gia_Rpr_t_", !16, i64 0}
!26 = !{!"p1 _ZTS10Vec_Wec_t_", !16, i64 0}
!27 = !{!"p1 _ZTS10Vec_Str_t_", !16, i64 0}
!28 = !{!"p1 _ZTS10Abc_Cex_t_", !16, i64 0}
!29 = !{!"p1 _ZTS10Vec_Ptr_t_", !16, i64 0}
!30 = !{!"p1 _ZTS10Gia_Plc_t_", !16, i64 0}
!31 = !{!"p1 _ZTS10Gia_Man_t_", !16, i64 0}
!32 = !{!"p1 _ZTS10Vec_Flt_t_", !16, i64 0}
!33 = !{!"float", !12, i64 0}
!34 = !{!"p1 _ZTS10Vec_Vec_t_", !16, i64 0}
!35 = !{!"long", !12, i64 0}
!36 = !{!"p1 _ZTS10Vec_Wrd_t_", !16, i64 0}
!37 = !{!"p1 _ZTS10Vec_Bit_t_", !16, i64 0}
!38 = !{!"p1 _ZTS10Gia_Dat_t_", !16, i64 0}
!39 = !{!"Gia_Man_t_", !22, i64 0, !22, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !23, i64 32, !17, i64 40, !13, i64 48, !13, i64 52, !13, i64 56, !24, i64 64, !24, i64 72, !18, i64 80, !18, i64 96, !13, i64 112, !13, i64 116, !13, i64 120, !18, i64 128, !17, i64 144, !17, i64 152, !24, i64 160, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !17, i64 184, !25, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !13, i64 224, !13, i64 228, !17, i64 232, !13, i64 240, !24, i64 248, !24, i64 256, !24, i64 264, !26, i64 272, !26, i64 280, !24, i64 288, !16, i64 296, !24, i64 304, !24, i64 312, !27, i64 320, !22, i64 328, !24, i64 336, !24, i64 344, !24, i64 352, !24, i64 360, !24, i64 368, !28, i64 376, !28, i64 384, !29, i64 392, !18, i64 400, !18, i64 416, !24, i64 432, !24, i64 440, !24, i64 448, !24, i64 456, !24, i64 464, !24, i64 472, !24, i64 480, !24, i64 488, !24, i64 496, !24, i64 504, !24, i64 512, !22, i64 520, !30, i64 528, !31, i64 536, !32, i64 544, !32, i64 552, !24, i64 560, !24, i64 568, !24, i64 576, !24, i64 584, !24, i64 592, !13, i64 600, !33, i64 604, !33, i64 608, !24, i64 616, !17, i64 624, !13, i64 632, !29, i64 640, !29, i64 648, !29, i64 656, !24, i64 664, !24, i64 672, !24, i64 680, !24, i64 688, !24, i64 696, !24, i64 704, !24, i64 712, !24, i64 720, !24, i64 728, !34, i64 736, !32, i64 744, !16, i64 752, !16, i64 760, !16, i64 768, !35, i64 776, !35, i64 784, !16, i64 792, !17, i64 800, !13, i64 808, !13, i64 812, !13, i64 816, !13, i64 820, !13, i64 824, !13, i64 828, !13, i64 832, !13, i64 836, !13, i64 840, !13, i64 844, !13, i64 848, !13, i64 852, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !24, i64 888, !24, i64 896, !24, i64 904, !37, i64 912, !13, i64 920, !13, i64 924, !13, i64 928, !24, i64 936, !13, i64 944, !13, i64 948, !24, i64 952, !24, i64 960, !29, i64 968, !36, i64 976, !24, i64 984, !24, i64 992, !13, i64 1000, !13, i64 1004, !36, i64 1008, !18, i64 1016, !18, i64 1032, !18, i64 1048, !38, i64 1064, !27, i64 1072, !27, i64 1080, !13, i64 1088, !13, i64 1092, !13, i64 1096, !13, i64 1100, !27, i64 1104, !24, i64 1112, !24, i64 1120, !24, i64 1128, !29, i64 1136}
!40 = !{!39, !23, i64 32}
!41 = !{!39, !17, i64 40}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!39, !13, i64 24}
!44 = !{!39, !24, i64 64}
!45 = !{!39, !24, i64 72}
!46 = !{!39, !13, i64 28}
!47 = !{!18, !13, i64 0}
!48 = !{!39, !35, i64 776}
!49 = !{!39, !35, i64 784}
!50 = !{!39, !13, i64 120}
!51 = !{!39, !13, i64 112}
!52 = !{!39, !17, i64 232}
!53 = !{!39, !22, i64 0}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !42}
!58 = distinct !{!58, !42}
!59 = distinct !{!59, !42}
!60 = !{!17, !17, i64 0}
!61 = distinct !{!61, !42}
!62 = distinct !{!62, !42}
!63 = !{!39, !13, i64 48}
!64 = !{!39, !13, i64 52}
!65 = !{!39, !13, i64 116}
!66 = !{!39, !13, i64 832}
!67 = !{!39, !36, i64 1008}
!68 = !{ptr @Gia_ManHashAndP}
!69 = distinct !{!69, !42}
!70 = !{!39, !22, i64 8}
!71 = !{!"Gia_Obj_t_", !13, i64 0, !13, i64 3, !13, i64 3, !13, i64 3, !13, i64 4, !13, i64 7, !13, i64 7, !13, i64 7, !13, i64 8}
!72 = !{!71, !13, i64 8}
!73 = !{!39, !13, i64 16}
!74 = distinct !{!74, !42}
!75 = distinct !{!75, !42}
!76 = distinct !{!76, !42}
!77 = distinct !{!77, !42}
!78 = distinct !{!78, !42, !54, !55}
!79 = distinct !{!79, !42, !55, !54}
!80 = distinct !{!80, !42, !54, !55}
!81 = distinct !{!81, !42, !55, !54}
!82 = distinct !{!82, !42}
!83 = distinct !{!83, !42}
!84 = distinct !{!84, !42}
!85 = distinct !{!85, i1 false, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !42, !54, !55}
!89 = distinct !{!89, !42, !54}
!90 = distinct !{!90, !42}
!91 = distinct !{!91, !42}
!92 = !{!86}
!93 = !{!87}
!94 = distinct !{!94, !42, !54, !55}
!95 = distinct !{!95, !42, !55, !54}
!96 = distinct !{!96, !42}
!97 = distinct !{!97, !42}
!98 = distinct !{!98, !42}
!99 = distinct !{!99, !42}
!100 = distinct !{!100, !56}
!101 = distinct !{!101, !56}
!102 = distinct !{!102, !42, !54, !55}
!103 = distinct !{!103, !42, !55, !54}
!104 = distinct !{!104, !42}
!105 = distinct !{!105, !42, !54, !55}
!106 = distinct !{!106, !42, !55, !54}
!107 = !{!39, !13, i64 820}
end_hunk_0
