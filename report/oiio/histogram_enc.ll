inline.NumInlined: 117
inline.NumDeleted: 52
begin_hunk_0_@VP8LBitsEntropy:bb.a

BitsEntropyRefine.exit:                           ; preds = %bb.b, %bb.e, %bb.f, %DivRound.exit22.i
  %.016.i = phi i64 [ %..i, %DivRound.exit22.i ], [ 0, %bb.b ], [ %i.m, %bb.e ], [ %.neg.i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %.016.i
}

declare void @VP8LBitsEntropyUnrefined(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i64 @VP8LHistogramEstimateBits(ptr noundef %0) local_unnamed_addr #0 {
GetPopulationInfo.exit.4:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = shl nuw i32 1, %i.e
  %i.h = add nuw nsw i32 %i.g, 280
  %i.i = select i1 %i.f, i32 %i.h, i32 280
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = tail call fastcc i64 @PopulationCost(ptr noundef %i.j, i32 noundef %i.i, ptr noundef null, ptr noundef null)
  %i.l = tail call fastcc i64 @PopulationCost(ptr noundef nonnull %i.c, i32 noundef 256, ptr noundef null, ptr noundef null)
  %i.m = tail call fastcc i64 @PopulationCost(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef null, ptr noundef null)
  %i.n = tail call fastcc i64 @PopulationCost(ptr noundef nonnull %i.a, i32 noundef 256, ptr noundef null, ptr noundef null)
  %i.o = add i64 %i.l, %i.k
  %i.p = add i64 %i.m, %i.o
  %i.q = add i64 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.s = tail call fastcc i64 @PopulationCost(ptr noundef nonnull %i.r, i32 noundef 40, ptr noundef null, ptr noundef null)
  %i.t = add i64 %i.s, %i.q
  %i.u = load ptr, ptr @VP8LExtraCost, align 8, !tbaa !27
  %i.v = load ptr, ptr %0, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1024
  %i.x = tail call i32 %i.u(ptr noundef nonnull %i.w, i32 noundef 24) #10
  %i.y = load ptr, ptr @VP8LExtraCost, align 8, !tbaa !27
  %i.z = tail call i32 %i.y(ptr noundef nonnull %i.r, i32 noundef 40) #10
  %i.aa = add i32 %i.z, %i.x
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 23
  %i.ad = add i64 %i.ac, %i.t
  ret i64 %i.ad
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @PopulationCost(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.VP8LBitEntropy, align 8     ; 11 uses
  %5 = alloca %struct.VP8LStreaks, align 4        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = load ptr, ptr @VP8LGetEntropyUnrefined, align 8, !tbaa !27
  call void %i.a(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !37
  %i.d = icmp eq i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = trunc i32 %i.f to i16
  %i.h = select i1 %i.d, i16 %i.g, i16 -1
  store i16 %i.h, ptr %2, align 2, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %3, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = icmp ne i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp ne i32 %i.m, 0
  %i.o = select i1 %i.k, i1 true, i1 %i.n
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr %3, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !37   ; 3 uses
  %i.s = icmp slt i32 %i.r, 5
  br i1 %i.s, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.t = icmp slt i32 %i.r, 2
  br i1 %i.t, label %BitsEntropyRefine.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %i.r, label %bb.k [
    i32 2, label %bb.h
    i32 3, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !39
  %i.w = zext i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, 830472192
  %i.y = load i64, ptr %4, align 8, !tbaa !40
  %i.z = add i64 %i.x, %i.y                       ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw nsw i64 %i.z, 50
  %i.ac = udiv i64 %i.ab, 100
  br label %BitsEntropyRefine.exit

bb.j:                                             ; preds = %bb.h
  %.neg8.i.i = sub i64 50, %i.z
  %i.ad = udiv i64 %.neg8.i.i, 100
  %.neg.i.i = sub nsw i64 0, %i.ad
  br label %BitsEntropyRefine.exit

bb.k:                                             ; preds = %bb.g
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g, %bb.e
  %.0.i = phi i64 [ 950, %bb.g ], [ 700, %bb.k ], [ 627, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !39
  %i.ag = shl i32 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !41
  %i.aj = sub i32 %i.ag, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %.0.i, 23
  %i.am = mul i64 %i.al, %i.ak
  %i.an = sub nuw nsw i64 1000, %.0.i
  %i.ao = load i64, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.ap = mul i64 %i.ao, %i.an
  %i.aq = add i64 %i.am, %i.ap                    ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = add nuw nsw i64 %i.aq, 500
  %i.at = udiv i64 %i.as, 1000
  br label %DivRound.exit22.i

bb.n:                                             ; preds = %bb.l
  %.neg8.i20.i = sub i64 500, %i.aq
  %i.au = udiv i64 %.neg8.i20.i, 1000
  %.neg.i21.i = sub nsw i64 0, %i.au
  br label %DivRound.exit22.i

DivRound.exit22.i:                                ; preds = %bb.n, %bb.m
  %i.av = phi i64 [ %i.at, %bb.m ], [ %.neg.i21.i, %bb.n ]
  %..i = call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.av)
  br label %BitsEntropyRefine.exit

BitsEntropyRefine.exit:                           ; preds = %bb.f, %bb.i, %bb.j, %DivRound.exit22.i
  %.016.i = phi i64 [ %..i, %DivRound.exit22.i ], [ 0, %bb.f ], [ %i.ac, %bb.i ], [ %.neg.i.i, %bb.j ]
  %i.aw = load i32, ptr %5, align 4, !tbaa !3
  %i.ax = mul nsw i32 %i.aw, 1600
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = mul nsw i32 %i.ba, 240
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = mul nsw i32 %i.bd, 2640
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = mul nsw i32 %i.bh, 720
  %i.bj = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.bk = mul nsw i32 %i.bj, 1840
  %i.bl = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bm = mul nsw i32 %i.bl, 3360
  %i.bn = add i32 %i.bb, %i.ax
  %i.bo = add i32 %i.bn, %i.be
  %i.bp = add i32 %i.bo, %i.bi
  %i.bq = add i32 %i.bp, %i.bk
  %i.br = add i32 %i.bq, %i.bm
  %i.bs = zext i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 13
  %i.bu = add i64 %.016.i, 401814323
  %i.bv = add i64 %i.bu, %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i64 %i.bv
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @VP8LGetHistoImageSymbols(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef captures(none) %9, ptr noundef %10, i32 noundef %11, ptr noundef %12) local_unnamed_addr #0 {
bb.a:
  %13 = alloca %struct.VP8LStreaks, align 4       ; 9 uses
  %14 = alloca %struct.VP8LBitEntropy, align 8    ; 8 uses
  %15 = alloca %struct.VP8LStreaks, align 4       ; 9 uses
  %16 = alloca %struct.VP8LBitEntropy, align 8    ; 8 uses
  %17 = alloca %struct.VP8LStreaks, align 4       ; 9 uses
  %18 = alloca %struct.VP8LBitEntropy, align 8    ; 8 uses
  %19 = alloca %struct.HistogramPair, align 8     ; 4 uses
  %20 = alloca %struct.HistogramPair, align 8     ; 8 uses
  %21 = alloca %struct.HistogramPair, align 8     ; 4 uses
  %22 = alloca %struct.HistogramPair, align 8     ; 4 uses
  %23 = alloca %struct.HistogramPair, align 8     ; 8 uses
  %24 = alloca %struct.HistogramPair, align 8     ; 4 uses
  %25 = alloca %struct.HistogramPair, align 8     ; 4 uses
  %26 = alloca %struct.HistogramPair, align 8     ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [5 x i64], align 16               ; 7 uses
  %27 = alloca [64 x %struct.anon], align 16      ; 8 uses
  %28 = alloca %struct.VP8LRefsCursor, align 8    ; 9 uses
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i32 1, %5                        ; 2 uses
  %i.d = add i32 %0, -1
  %i.e = add i32 %i.d, %i.c
  %i.f = lshr i32 %i.e, %5
  %i.g = add i32 %1, -1
  %i.h = add i32 %i.g, %i.c
  %i.i = lshr i32 %i.h, %5
  %i.j = mul nsw i32 %i.f, %i.i
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 1, %bb.a ]    ; 9 uses
  %i.l = icmp sgt i32 %6, 0
  %i.m = shl i32 4, %6
  %i.n = add nuw i32 %i.m, 4432
  %i.o = select i1 %i.l, i32 %i.n, i32 4432
  %i.p = zext nneg i32 %i.k to i64                ; 7 uses
  %i.q = sext i32 %i.o to i64                     ; 3 uses
  %i.r = add nsw i64 %i.q, 39
  %i.s = mul nsw i64 %i.r, %i.p
  %i.t = add nsw i64 %i.s, 16
  %i.u = tail call ptr @WebPSafeMalloc(i64 noundef %i.t, i64 noundef 1) #10 ; 8 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 15 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 5 uses
  store i32 %i.k, ptr %i.y, align 4, !tbaa !25
  store i32 %i.k, ptr %i.u, align 8, !tbaa !26
  %.not157 = icmp eq i32 %i.k, 0
  br i1 %.not157, label %.loopexit164, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.z = shl nuw nsw i64 %i.p, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = add nsw i64 %i.p, -1                    ; 2 uses
  %xtraiter = and i64 %i.p, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.p, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %i.ad = phi ptr [ %i.w, %.lr.ph.i.i.new ], [ %i.au, %bb.d ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %.017.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.new ], [ %i.ax, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.ae = ptrtoint ptr %.017.i.i to i64
  %i.af = add i64 %i.ae, 31
  %i.ag = and i64 %i.af, -32
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 3312
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !22  ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !13
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 %i.q
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = add i64 %i.ao, 31
  %i.aq = and i64 %i.ap, -32
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 3312
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !22  ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !13
  %i.ax = getelementptr inbounds i8, ptr %i.ar, i64 %i.q ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.preheader.unr-lcssa, label %bb.d, !llvm.loop !28

.lr.ph.i.preheader.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i.preheader.unr-lcssa, %.lr.ph.i.i
  %.epil.init = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.au, %.lr.ph.i.preheader.unr-lcssa ]
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.preheader.unr-lcssa ] ; 2 uses
  %.017.i.i.epil.init = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.ax, %.lr.ph.i.preheader.unr-lcssa ]
  %lcmp.mod339 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod339)
  %i.ay = ptrtoint ptr %.017.i.i.epil.init to i64
  %i.az = add i64 %i.ay, 31
  %i.ba = and i64 %i.az, -32
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.epil.init, i64 %indvars.iv.i.i.epil.init
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 3312
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i.i.epil.init
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !27
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !13
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.unr-lcssa, %.epil.preheader
  %xtraiter340 = and i64 %i.p, 1
  %i.bh = icmp eq i64 %i.ab, 0
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter343 = and i64 %i.p, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter344 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter344.next.1, %.lr.ph.i ]
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !27 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3240
  store i32 %6, ptr %i.bl, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 3244
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 3304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.bm, i8 -1, i64 10, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bn, i8 1, i64 5, i1 false), !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 3256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, i8 0, i64 48, i1 false)
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3240
  store i32 %6, ptr %i.bt, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 3244
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 3304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.bu, i8 -1, i64 10, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bv, i8 1, i64 5, i1 false), !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 3256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, i8 0, i64 48, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter344.next.1 = add i64 %niter344, 2         ; 2 uses
  %niter344.ncmp.1 = icmp eq i64 %niter344.next.1, %unroll_iter343
  br i1 %niter344.ncmp.1, label %.loopexit164.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !29

bb.e:                                             ; preds = %.thread
  %i.bx = tail call i32 @WebPEncodingSetError(ptr noundef %10, i32 noundef 1) #10 ; 0 uses
  br label %bb.eu

.loopexit164.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod341.not = icmp eq i64 %xtraiter340, 0
  br i1 %lcmp.mod341.not, label %.loopexit164.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit164.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %.loopexit164.loopexit.unr-lcssa ]
  %lcmp.mod342 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod342)
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i.epil.init
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !27 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 3240
  store i32 %6, ptr %i.cb, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 3244
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 3304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.cc, i8 -1, i64 10, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cd, i8 1, i64 5, i1 false), !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 3256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, i8 0, i64 48, i1 false)
  br label %.loopexit164.loopexit

.loopexit164.loopexit:                            ; preds = %.loopexit164.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !22
  br label %.loopexit164

.loopexit164:                                     ; preds = %.loopexit164.loopexit, %bb.c
  %i.cf = phi ptr [ %.pre, %.loopexit164.loopexit ], [ %i.w, %bb.c ]
  %i.cg = icmp ne i32 %4, 0                       ; 4 uses
  %i.ch = select i1 %i.cg, i32 4, i32 64          ; 2 uses
  %i.ci = shl nuw i32 1, %5
  %i.cj = add i32 %0, -1
  %i.ck = add i32 %i.cj, %i.ci
  %i.cl = lshr i32 %i.ck, %5
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #10
  call void @VP8LRefsCursorInit(ptr dead_on_unwind nonnull writable sret(%struct.VP8LRefsCursor) align 8 %28, ptr noundef %2) #10
  %i.cm = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !27
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 3240
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !7  ; 11 uses
  %i.cq = load i32, ptr %i.y, align 4, !tbaa !25  ; 8 uses
  %i.cr = icmp sgt i32 %i.cp, 0
  %i.cs = shl i32 4, %i.cp
  %i.ct = add nuw i32 %i.cs, 4432
  %i.cu = select i1 %i.cr, i32 %i.ct, i32 4432
  %i.cv = sext i32 %i.cq to i64
  %i.cw = sext i32 %i.cu to i64                   ; 3 uses
  %i.cx = add nsw i64 %i.cw, 39
  %i.cy = mul nsw i64 %i.cx, %i.cv
  %i.cz = add nsw i64 %i.cy, 16
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.u, i8 0, i64 %i.cz, i1 false)
  store ptr %i.w, ptr %i.x, align 8, !tbaa !22
  store i32 %i.cq, ptr %i.y, align 4, !tbaa !25
  store i32 %i.cq, ptr %i.u, align 8, !tbaa !26
  %i.da = icmp sgt i32 %i.cq, 0
  br i1 %i.da, label %.lr.ph.i.i.i, label %VP8LHistogramSetClear.exit.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit164
  %i.db = zext nneg i32 %i.cq to i64              ; 5 uses
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.dc ; 2 uses
  %xtraiter346 = and i64 %i.db, 1
  %i.de = icmp eq i32 %i.cq, 1
  br i1 %i.de, label %.epil.preheader345, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter352 = and i64 %i.db, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.new
  %i.df = phi ptr [ %i.w, %.lr.ph.i.i.i.new ], [ %i.dw, %bb.f ]
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.f ] ; 4 uses
  %.017.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.new ], [ %i.dz, %bb.f ]
  %niter353 = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter353.next.1, %bb.f ]
  %i.dg = ptrtoint ptr %.017.i.i.i to i64
  %i.dh = add i64 %i.dg, 31
  %i.di = and i64 %i.dh, -32
  %i.dj = inttoptr i64 %i.di to ptr               ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.i.i.i
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !27
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 3312
  %i.dm = load ptr, ptr %i.x, align 8, !tbaa !22  ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i.i.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !27
  store ptr %i.dl, ptr %i.do, align 8, !tbaa !13
  %i.dp = getelementptr inbounds i8, ptr %i.dj, i64 %i.cw
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = add i64 %i.dq, 31
  %i.ds = and i64 %i.dr, -32
  %i.dt = inttoptr i64 %i.ds to ptr               ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next.i.i.i
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !27
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 3312
  %i.dw = load ptr, ptr %i.x, align 8, !tbaa !22  ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next.i.i.i
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !27
  store ptr %i.dv, ptr %i.dy, align 8, !tbaa !13
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 %i.cw ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter353.next.1 = add i64 %niter353, 2         ; 2 uses
  %niter353.ncmp.1 = icmp eq i64 %niter353.next.1, %unroll_iter352
  br i1 %niter353.ncmp.1, label %.lr.ph.i.i64.preheader.unr-lcssa, label %bb.f, !llvm.loop !28

.lr.ph.i.i64.preheader.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod349.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod349.not, label %.lr.ph.i.i64.preheader, label %.epil.preheader345

.epil.preheader345:                               ; preds = %.lr.ph.i.i64.preheader.unr-lcssa, %.lr.ph.i.i.i
  %.epil.init348 = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.dw, %.lr.ph.i.i64.preheader.unr-lcssa ]
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i64.preheader.unr-lcssa ] ; 2 uses
  %.017.i.i.i.epil.init = phi ptr [ %i.dd, %.lr.ph.i.i.i ], [ %i.dz, %.lr.ph.i.i64.preheader.unr-lcssa ]
  %lcmp.mod351 = trunc i32 %i.cq to i1
  call void @llvm.assume(i1 %lcmp.mod351)
  %i.ea = ptrtoint ptr %.017.i.i.i.epil.init to i64
  %i.eb = add i64 %i.ea, 31
  %i.ec = and i64 %i.eb, -32
  %i.ed = inttoptr i64 %i.ec to ptr               ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.epil.init348, i64 %indvars.iv.i.i.i.epil.init
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !27
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 3312
  %i.eg = load ptr, ptr %i.x, align 8, !tbaa !22  ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv.i.i.i.epil.init
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !27
  store ptr %i.ef, ptr %i.ei, align 8, !tbaa !13
  br label %.lr.ph.i.i64.preheader

.lr.ph.i.i64.preheader:                           ; preds = %.lr.ph.i.i64.preheader.unr-lcssa, %.epil.preheader345
  %.lcssa338 = phi ptr [ %i.dw, %.lr.ph.i.i64.preheader.unr-lcssa ], [ %i.eg, %.epil.preheader345 ] ; 9 uses
  %xtraiter354 = and i64 %i.db, 7                 ; 3 uses
  %i.ej = icmp ult i32 %i.cq, 8
  br i1 %i.ej, label %.lr.ph.i.i64.epil.preheader, label %.lr.ph.i.i64.preheader.new

.lr.ph.i.i64.preheader.new:                       ; preds = %.lr.ph.i.i64.preheader
  %unroll_iter357 = and i64 %i.db, 2147483640
  br label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.lr.ph.i.i64, %.lr.ph.i.i64.preheader.new
  %indvars.iv.i.i65 = phi i64 [ 0, %.lr.ph.i.i64.preheader.new ], [ %indvars.iv.next.i.i66.7, %.lr.ph.i.i64 ] ; 9 uses
  %niter358 = phi i64 [ 0, %.lr.ph.i.i64.preheader.new ], [ %niter358.next.7, %.lr.ph.i.i64 ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.lcssa338, i64 %indvars.iv.i.i65
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !27
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 3240
  store i32 %i.cp, ptr %i.em, align 8, !tbaa !7
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.lcssa338, i64 %indvars.iv.i.i65
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !27
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 3240
  store i32 %i.cp, ptr %i.eq, align 8, !tbaa !7
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.lcssa338, i64 %indvars.iv.i.i65
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !27
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 3240
  store i32 %i.cp, ptr %i.eu, align 8, !tbaa !7
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.lcssa338, i64 %indvars.iv.i.i65
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !27
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 3240
  store i32 %i.cp, ptr %i.ey, align 8, !tbaa !7
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.lcssa338, i64 %indvars.iv.i.i65
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !27
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 3240
  store i32 %i.cp, ptr %i.fc, align 8, !tbaa !7
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.lcssa338, i64 %indvars.iv.i.i65
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !27
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 3240
  store i32 %i.cp, ptr %i.fg, align 8, !tbaa !7
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.lcssa338, i64 %indvars.iv.i.i65
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !27
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 3240
  store i32 %i.cp, ptr %i.fk, align 8, !tbaa !7
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.lcssa338, i64 %indvars.iv.i.i65
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !27
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 3240
  store i32 %i.cp, ptr %i.fo, align 8, !tbaa !7
  %indvars.iv.next.i.i66.7 = add nuw nsw i64 %indvars.iv.i.i65, 8 ; 2 uses
  %niter358.next.7 = add i64 %niter358, 8         ; 2 uses
  %niter358.ncmp.7 = icmp eq i64 %niter358.next.7, %unroll_iter357
  br i1 %niter358.ncmp.7, label %VP8LHistogramSetClear.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i64, !llvm.loop !30

VP8LHistogramSetClear.exit.i.loopexit.unr-lcssa:  ; preds = %.lr.ph.i.i64
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  br i1 %lcmp.mod355.not, label %VP8LHistogramSetClear.exit.i, label %.lr.ph.i.i64.epil.preheader

.lr.ph.i.i64.epil.preheader:                      ; preds = %VP8LHistogramSetClear.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i64.preheader
  %indvars.iv.i.i65.epil.init = phi i64 [ 0, %.lr.ph.i.i64.preheader ], [ %indvars.iv.next.i.i66.7, %VP8LHistogramSetClear.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod356 = icmp ne i64 %xtraiter354, 0
  call void @llvm.assume(i1 %lcmp.mod356)
  br label %.lr.ph.i.i64.epil

.lr.ph.i.i64.epil:                                ; preds = %.lr.ph.i.i64.epil, %.lr.ph.i.i64.epil.preheader
  %indvars.iv.i.i65.epil = phi i64 [ %indvars.iv.next.i.i66.epil, %.lr.ph.i.i64.epil ], [ %indvars.iv.i.i65.epil.init, %.lr.ph.i.i64.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i64.epil ], [ 0, %.lr.ph.i.i64.epil.preheader ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.lcssa338, i64 %indvars.iv.i.i65.epil
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !27
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 3240
  store i32 %i.cp, ptr %i.fr, align 8, !tbaa !7
  %indvars.iv.next.i.i66.epil = add nuw nsw i64 %indvars.iv.i.i65.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter354
  br i1 %epil.iter.cmp.not, label %VP8LHistogramSetClear.exit.i, label %.lr.ph.i.i64.epil, !llvm.loop !42

VP8LHistogramSetClear.exit.i:                     ; preds = %VP8LHistogramSetClear.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i64.epil, %.loopexit164
  %.val29.i = load ptr, ptr %28, align 8, !tbaa !16 ; 2 uses
  %.not2430.i = icmp eq ptr %.val29.i, null
  br i1 %.not2430.i, label %HistogramBuild.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %VP8LHistogramSetClear.exit.i
  %i.fs = getelementptr inbounds nuw i8, ptr %28, i64 16
  br label %bb.g

bb.g:                                             ; preds = %VP8LRefsCursorNext.exit.i, %.lr.ph34.i
  %.val33.i = phi ptr [ %.val29.i, %.lr.ph34.i ], [ %.val.i, %VP8LRefsCursorNext.exit.i ] ; 2 uses
  %.032.i = phi i32 [ 0, %.lr.ph34.i ], [ %.1.lcssa.i, %VP8LRefsCursorNext.exit.i ] ; 2 uses
  %.01931.i = phi i32 [ 0, %.lr.ph34.i ], [ %.120.lcssa.i, %VP8LRefsCursorNext.exit.i ] ; 3 uses
  %i.ft = ashr i32 %.01931.i, %5
  %i.fu = mul nsw i32 %i.ft, %i.cl
  %i.fv = ashr i32 %.032.i, %5
  %i.fw = add nsw i32 %i.fu, %i.fv
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !27
  call fastcc void @HistogramAddSinglePixOrCopy(ptr noundef %i.fz, ptr noundef nonnull %.val33.i, ptr noundef null, i32 noundef 0)
  %i.ga = getelementptr i8, ptr %.val33.i, i64 2
  %.val23.i = load i16, ptr %i.ga, align 2, !tbaa !36
  %i.gb = zext i16 %.val23.i to i32
  %i.gc = add i32 %.032.i, %i.gb                  ; 3 uses
  %.not2225.i = icmp slt i32 %i.gc, %0
  br i1 %.not2225.i, label %._crit_edge.i, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %bb.g, %.lr.ph.i63
  %.127.i = phi i32 [ %i.gd, %.lr.ph.i63 ], [ %i.gc, %bb.g ]
  %.12026.i = phi i32 [ %i.ge, %.lr.ph.i63 ], [ %.01931.i, %bb.g ]
  %i.gd = sub nsw i32 %.127.i, %0                 ; 3 uses
  %i.ge = add nsw i32 %.12026.i, 1                ; 2 uses
  %.not22.i = icmp slt i32 %i.gd, %0
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i63, !llvm.loop !43

._crit_edge.i:                                    ; preds = %.lr.ph.i63, %bb.g
  %.120.lcssa.i = phi i32 [ %.01931.i, %bb.g ], [ %i.ge, %.lr.ph.i63 ]
  %.1.lcssa.i = phi i32 [ %i.gc, %bb.g ], [ %i.gd, %.lr.ph.i63 ]
  %i.gf = load ptr, ptr %28, align 8, !tbaa !16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 3 uses
  store ptr %i.gg, ptr %28, align 8, !tbaa !16
  %i.gh = load ptr, ptr %i.fs, align 8, !tbaa !19
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %bb.h, label %VP8LRefsCursorNext.exit.i

bb.h:                                             ; preds = %._crit_edge.i
  call void @VP8LRefsCursorNextBlock(ptr noundef nonnull %28) #10
  %.val.pre.i = load ptr, ptr %28, align 8, !tbaa !16
  br label %VP8LRefsCursorNext.exit.i

VP8LRefsCursorNext.exit.i:                        ; preds = %bb.h, %._crit_edge.i
  %.val.i = phi ptr [ %i.gg, %._crit_edge.i ], [ %.val.pre.i, %bb.h ] ; 2 uses
  %.not24.i = icmp eq ptr %.val.i, null
  br i1 %.not24.i, label %HistogramBuild.exit, label %bb.g, !llvm.loop !44

HistogramBuild.exit:                              ; preds = %VP8LRefsCursorNext.exit.i, %VP8LHistogramSetClear.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #10
  %i.gj = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 15 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !22
  store i32 0, ptr %7, align 8, !tbaa !26
  %i.gm = load i32, ptr %i.y, align 4, !tbaa !25
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph.i69, label %.thread138

.lr.ph.i69:                                       ; preds = %HistogramBuild.exit, %bb.o
  %indvars.iv.i70 = phi i64 [ %indvars.iv.next.i71, %bb.o ], [ 0, %HistogramBuild.exit ] ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv.i70 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !27 ; 24 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2056
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 1032
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 3244
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 3304 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 3264 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 3240
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !7  ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  %i.gz = shl nuw i32 1, %i.gx
  %i.ha = add nuw nsw i32 %i.gz, 280
  %i.hb = select i1 %i.gy, i32 %i.ha, i32 280
  %i.hc = load ptr, ptr %i.gp, align 8, !tbaa !13
  %i.hd = call fastcc i64 @PopulationCost(ptr noundef %i.hc, i32 noundef %i.hb, ptr noundef nonnull %i.gt, ptr noundef nonnull %i.gu)
  store i64 %i.hd, ptr %i.gv, align 8, !tbaa !45
  %i.he = getelementptr inbounds nuw i8, ptr %i.gp, i64 3246
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 3305 ; 2 uses
  %i.hg = call fastcc i64 @PopulationCost(ptr noundef nonnull %i.gs, i32 noundef 256, ptr noundef nonnull %i.he, ptr noundef nonnull %i.hf)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 3272 ; 2 uses
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !45
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gp, i64 3248
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gp, i64 3306 ; 2 uses
  %i.hk = call fastcc i64 @PopulationCost(ptr noundef nonnull %i.gr, i32 noundef 256, ptr noundef nonnull %i.hi, ptr noundef nonnull %i.hj)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gp, i64 3280 ; 2 uses
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !45
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gp, i64 3250
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gp, i64 3307 ; 2 uses
  %i.ho = call fastcc i64 @PopulationCost(ptr noundef nonnull %i.gq, i32 noundef 256, ptr noundef nonnull %i.hm, ptr noundef nonnull %i.hn)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gp, i64 3288 ; 2 uses
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !45
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gp, i64 3080
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gp, i64 3252
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gp, i64 3308 ; 2 uses
  %i.ht = call fastcc i64 @PopulationCost(ptr noundef nonnull %i.hq, i32 noundef 40, ptr noundef nonnull %i.hr, ptr noundef nonnull %i.hs) ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gp, i64 3296
  store i64 %i.ht, ptr %i.hu, align 8, !tbaa !45
  %i.hv = load i64, ptr %i.gv, align 8, !tbaa !45
  %i.hw = load i64, ptr %i.hh, align 8, !tbaa !45
  %i.hx = load i64, ptr %i.hl, align 8, !tbaa !45
  %i.hy = load i64, ptr %i.hp, align 8, !tbaa !45
  %i.hz = add i64 %i.hv, %i.ht
  %i.ia = add i64 %i.hz, %i.hw
  %i.ib = add i64 %i.ia, %i.hx
  %i.ic = add i64 %i.ib, %i.hy
  %i.id = getelementptr inbounds nuw i8, ptr %i.gp, i64 3256
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !46
  %i.ie = load i8, ptr %i.gu, align 8, !tbaa !15
  %.not.i = icmp eq i8 %i.ie, 0
  br i1 %.not.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.lr.ph.i69
  %i.if = load i8, ptr %i.hf, align 1, !tbaa !15
  %.not19.i = icmp eq i8 %i.if, 0
  br i1 %.not19.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ig = load i8, ptr %i.hj, align 2, !tbaa !15
  %.not20.i = icmp eq i8 %i.ig, 0
  br i1 %.not20.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ih = load i8, ptr %i.hn, align 1, !tbaa !15
  %.not21.i = icmp eq i8 %i.ih, 0
  br i1 %.not21.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ii = load i8, ptr %i.hs, align 4, !tbaa !15
  %.not22.i72 = icmp eq i8 %i.ii, 0
  br i1 %.not22.i72, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.go, align 8, !tbaa !27
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %.lr.ph.i69
  %i.ij = load i32, ptr %7, align 8, !tbaa !26
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.ik
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !27 ; 4 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !13 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 3240
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !7  ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 0                   ; 2 uses
  %i.ir = shl nuw i32 1, %i.ip
  %i.is = add nuw nsw i32 %i.ir, 280
  %i.it = select i1 %i.iq, i32 %i.is, i32 280
  %i.iu = shl i32 4, %i.ip
  %i.iv = add nuw i32 %i.iu, 4432
  %i.iw = select i1 %i.iq, i32 %i.iv, i32 4432
  %i.ix = sext i32 %i.iw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.im, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.gp, i64 %i.ix, i1 false)
  store ptr %i.in, ptr %i.im, align 8, !tbaa !13
  %i.iy = load ptr, ptr %i.gp, align 8, !tbaa !13
  %i.iz = sext i32 %i.it to i64
  %i.ja = shl nsw i64 %i.iz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.in, ptr noundef nonnull align 4 dereferenceable(1) %i.iy, i64 %i.ja, i1 false)
  %i.jb = load i32, ptr %7, align 8, !tbaa !26
  %i.jc = add nsw i32 %i.jb, 1
  store i32 %i.jc, ptr %7, align 8, !tbaa !26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %i.jd = load i32, ptr %i.y, align 4, !tbaa !25
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp slt i64 %indvars.iv.next.i71, %i.je
  br i1 %i.jf, label %.lr.ph.i69, label %HistogramCopyAndAnalyze.exit, !llvm.loop !47

HistogramCopyAndAnalyze.exit:                     ; preds = %bb.o
  %.pre196 = load i32, ptr %7, align 8, !tbaa !26 ; 7 uses
  %i.jg = shl nuw nsw i32 %i.ch, 1
  %i.jh = icmp sgt i32 %.pre196, %i.jg
  %i.ji = icmp slt i32 %3, 100
  %i.jj = and i1 %i.ji, %i.jh
  br i1 %i.jj, label %bb.p, label %.thread138

bb.p:                                             ; preds = %HistogramCopyAndAnalyze.exit
  %i.jk = icmp slt i32 %3, 90
  br i1 %i.jk, label %bb.q, label %UpdateDominantCostRange.exit.preheader.i

bb.q:                                             ; preds = %bb.p
  %i.jl = icmp sgt i32 %i.k, 256
  %spec.select.i = select i1 %i.jl, i32 8, i32 16
  %i.jm = icmp sgt i32 %i.k, 512
  %i.jn = zext i1 %i.jm to i32
  %.1.i = lshr exact i32 %spec.select.i, %i.jn
  %i.jo = icmp sgt i32 %i.k, 1024
  %i.jp = zext i1 %i.jo to i32
  %.2.i = lshr exact i32 %.1.i, %i.jp
  %i.jq = icmp slt i32 %3, 51
  %i.jr = zext i1 %i.jq to i32
  %spec.select11.i = lshr exact i32 %.2.i, %i.jr
  %i.js = zext nneg i32 %spec.select11.i to i64
  br label %UpdateDominantCostRange.exit.preheader.i

UpdateDominantCostRange.exit.preheader.i:         ; preds = %bb.q, %bb.p
  %.3.i = phi i64 [ 16, %bb.p ], [ %i.js, %bb.q ]
  %.val61 = load ptr, ptr %i.gk, align 8, !tbaa !22 ; 19 uses
  %wide.trip.count.i74 = zext nneg i32 %.pre196 to i64 ; 6 uses
  br label %UpdateDominantCostRange.exit.i

.lr.ph.i79:                                       ; preds = %UpdateDominantCostRange.exit.i
  %.not.i.i.i = icmp eq i64 %spec.select.i76, %.sroa.6.1.i ; 2 uses
  %i.jt = sub i64 %spec.select.i76, %.sroa.6.1.i
  %i.ju = uitofp i64 %i.jt to double              ; 4 uses
  %.not.i.i = icmp eq i32 %4, 0                   ; 2 uses
  %.not.i12.i.i = icmp eq i64 %.sroa.10.1.i, %.sroa.14.1.i
  %i.jv = sub i64 %.sroa.10.1.i, %.sroa.14.1.i
  %i.jw = uitofp i64 %i.jv to double
  %.not.i15.i.i = icmp eq i64 %.sroa.18.1.i, %.sroa.22.1.i
  %i.jx = sub i64 %.sroa.18.1.i, %.sroa.22.1.i
  %i.jy = uitofp i64 %i.jx to double
  br i1 %.not.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i79, %GetBinIdForEntropy.exit17.i.us.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %GetBinIdForEntropy.exit17.i.us.i ], [ 0, %.lr.ph.i79 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv36.i
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !27 ; 4 uses
  br i1 %.not.i.i.i, label %GetBinIdForEntropy.exit.i.us.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 3264
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !45
  %i.kd = sub i64 %i.kc, %.sroa.6.1.i
  %i.ke = uitofp i64 %i.kd to double
  %i.kf = fmul nnan double %i.ke, f0x400FFFFF79C842FA
  %i.kg = fdiv double %i.kf, %i.ju
  %i.kh = fptosi double %i.kg to i32
  %i.ki = shl i32 %i.kh, 4
  br label %GetBinIdForEntropy.exit.i.us.i

GetBinIdForEntropy.exit.i.us.i:                   ; preds = %bb.r, %.lr.ph.split.us.i
  %.0.i.i.us.i = phi i32 [ %i.ki, %bb.r ], [ 0, %.lr.ph.split.us.i ]
  br i1 %.not.i12.i.i, label %GetBinIdForEntropy.exit14.i.us.i, label %bb.s

bb.s:                                             ; preds = %GetBinIdForEntropy.exit.i.us.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 3272
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !45
  %i.kl = sub i64 %i.kk, %.sroa.14.1.i
  %i.km = uitofp i64 %i.kl to double
  %i.kn = fmul nnan double %i.km, f0x400FFFFF79C842FA
  %i.ko = fdiv double %i.kn, %i.jw
  %i.kp = fptosi double %i.ko to i32
  %i.kq = shl i32 %i.kp, 2
  br label %GetBinIdForEntropy.exit14.i.us.i

GetBinIdForEntropy.exit14.i.us.i:                 ; preds = %bb.s, %GetBinIdForEntropy.exit.i.us.i
  %.0.i13.i.us.i = phi i32 [ %i.kq, %bb.s ], [ 0, %GetBinIdForEntropy.exit.i.us.i ]
  %i.kr = add i32 %.0.i13.i.us.i, %.0.i.i.us.i
  br i1 %.not.i15.i.i, label %GetBinIdForEntropy.exit17.i.us.i, label %bb.t

bb.t:                                             ; preds = %GetBinIdForEntropy.exit14.i.us.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ka, i64 3280
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !45
  %i.ku = sub i64 %i.kt, %.sroa.22.1.i
  %i.kv = uitofp i64 %i.ku to double
  %i.kw = fmul nnan double %i.kv, f0x400FFFFF79C842FA
  %i.kx = fdiv double %i.kw, %i.jy
  %i.ky = fptosi double %i.kx to i32
  br label %GetBinIdForEntropy.exit17.i.us.i

GetBinIdForEntropy.exit17.i.us.i:                 ; preds = %bb.t, %GetBinIdForEntropy.exit14.i.us.i
  %.0.i16.i.us.i = phi i32 [ %i.ky, %bb.t ], [ 0, %GetBinIdForEntropy.exit14.i.us.i ]
  %i.kz = add nsw i32 %i.kr, %.0.i16.i.us.i
  %i.la = trunc i32 %i.kz to i16
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ka, i64 3310
  store i16 %i.la, ptr %i.lb, align 2, !tbaa !48
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count.i74
  br i1 %exitcond40.not.i, label %HistogramAnalyzeEntropyBin.exit, label %.lr.ph.split.us.i, !llvm.loop !49

.lr.ph.split.i:                                   ; preds = %.lr.ph.i79
  br i1 %.not.i.i.i, label %GetBinIdForEntropy.exit.i.us21.i.preheader, label %GetBinIdForEntropy.exit.i.i.preheader

GetBinIdForEntropy.exit.i.i.preheader:            ; preds = %.lr.ph.split.i
  %xtraiter359 = and i64 %wide.trip.count.i74, 1
  %i.lc = icmp eq i32 %.pre196, 1
  br i1 %i.lc, label %GetBinIdForEntropy.exit.i.i.epil.preheader, label %GetBinIdForEntropy.exit.i.i.preheader.new

GetBinIdForEntropy.exit.i.i.preheader.new:        ; preds = %GetBinIdForEntropy.exit.i.i.preheader
  %unroll_iter363 = and i64 %wide.trip.count.i74, 2147483646
  br label %GetBinIdForEntropy.exit.i.i

GetBinIdForEntropy.exit.i.us21.i.preheader:       ; preds = %.lr.ph.split.i
  %xtraiter365 = and i64 %wide.trip.count.i74, 7  ; 3 uses
  %i.ld = add i32 %.pre196, -1
  %i.le = icmp ult i32 %i.ld, 7
  br i1 %i.le, label %GetBinIdForEntropy.exit.i.us21.i.epil.preheader, label %GetBinIdForEntropy.exit.i.us21.i.preheader.new

GetBinIdForEntropy.exit.i.us21.i.preheader.new:   ; preds = %GetBinIdForEntropy.exit.i.us21.i.preheader
  %unroll_iter369 = and i64 %wide.trip.count.i74, 2147483640
  br label %GetBinIdForEntropy.exit.i.us21.i

GetBinIdForEntropy.exit.i.us21.i:                 ; preds = %GetBinIdForEntropy.exit.i.us21.i, %GetBinIdForEntropy.exit.i.us21.i.preheader.new
  %indvars.iv31.i = phi i64 [ 0, %GetBinIdForEntropy.exit.i.us21.i.preheader.new ], [ %indvars.iv.next32.i.7, %GetBinIdForEntropy.exit.i.us21.i ] ; 9 uses
  %niter370 = phi i64 [ 0, %GetBinIdForEntropy.exit.i.us21.i.preheader.new ], [ %niter370.next.7, %GetBinIdForEntropy.exit.i.us21.i ]
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv31.i
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !27
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 3310
  store i16 0, ptr %i.lh, align 2, !tbaa !48
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv31.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !27
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 3310
  store i16 0, ptr %i.ll, align 2, !tbaa !48
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv31.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !27
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 3310
  store i16 0, ptr %i.lp, align 2, !tbaa !48
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv31.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !27
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 3310
  store i16 0, ptr %i.lt, align 2, !tbaa !48
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv31.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !27
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 3310
  store i16 0, ptr %i.lx, align 2, !tbaa !48
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv31.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !27
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 3310
  store i16 0, ptr %i.mb, align 2, !tbaa !48
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv31.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 48
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !27
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 3310
  store i16 0, ptr %i.mf, align 2, !tbaa !48
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv31.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 56
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !27
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 3310
  store i16 0, ptr %i.mj, align 2, !tbaa !48
  %indvars.iv.next32.i.7 = add nuw nsw i64 %indvars.iv31.i, 8 ; 2 uses
  %niter370.next.7 = add i64 %niter370, 8         ; 2 uses
  %niter370.ncmp.7 = icmp eq i64 %niter370.next.7, %unroll_iter369
  br i1 %niter370.ncmp.7, label %HistogramAnalyzeEntropyBin.exit.loopexit334.unr-lcssa, label %GetBinIdForEntropy.exit.i.us21.i, !llvm.loop !49

UpdateDominantCostRange.exit.i:                   ; preds = %UpdateDominantCostRange.exit.i, %UpdateDominantCostRange.exit.preheader.i
  %indvars.iv.i75 = phi i64 [ 0, %UpdateDominantCostRange.exit.preheader.i ], [ %indvars.iv.next.i77, %UpdateDominantCostRange.exit.i ] ; 2 uses
  %.sroa.0.012.i = phi i64 [ 0, %UpdateDominantCostRange.exit.preheader.i ], [ %spec.select.i76, %UpdateDominantCostRange.exit.i ]
  %.sroa.6.011.i = phi i64 [ -1, %UpdateDominantCostRange.exit.preheader.i ], [ %.sroa.6.1.i, %UpdateDominantCostRange.exit.i ]
  %.sroa.10.010.i = phi i64 [ 0, %UpdateDominantCostRange.exit.preheader.i ], [ %.sroa.10.1.i, %UpdateDominantCostRange.exit.i ]
  %.sroa.14.09.i = phi i64 [ -1, %UpdateDominantCostRange.exit.preheader.i ], [ %.sroa.14.1.i, %UpdateDominantCostRange.exit.i ]
  %.sroa.18.08.i = phi i64 [ 0, %UpdateDominantCostRange.exit.preheader.i ], [ %.sroa.18.1.i, %UpdateDominantCostRange.exit.i ]
  %.sroa.22.07.i = phi i64 [ -1, %UpdateDominantCostRange.exit.preheader.i ], [ %.sroa.22.1.i, %UpdateDominantCostRange.exit.i ]
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv.i75
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !27 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 3264
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !45 ; 2 uses
  %spec.select.i76 = call i64 @llvm.umax.i64(i64 %.sroa.0.012.i, i64 %i.mn) ; 3 uses
  %.sroa.6.1.i = call i64 @llvm.umin.i64(i64 %.sroa.6.011.i, i64 %i.mn) ; 7 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 3272
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !45 ; 2 uses
  %.sroa.10.1.i = call i64 @llvm.umax.i64(i64 %.sroa.10.010.i, i64 %i.mp) ; 3 uses
  %.sroa.14.1.i = call i64 @llvm.umin.i64(i64 %.sroa.14.09.i, i64 %i.mp) ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 3280
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !45 ; 2 uses
  %.sroa.18.1.i = call i64 @llvm.umax.i64(i64 %.sroa.18.08.i, i64 %i.mr) ; 3 uses
  %.sroa.22.1.i = call i64 @llvm.umin.i64(i64 %.sroa.22.07.i, i64 %i.mr) ; 4 uses
  %indvars.iv.next.i77 = add nuw nsw i64 %indvars.iv.i75, 1 ; 2 uses
  %exitcond.not.i78 = icmp eq i64 %indvars.iv.next.i77, %wide.trip.count.i74
  br i1 %exitcond.not.i78, label %.lr.ph.i79, label %UpdateDominantCostRange.exit.i, !llvm.loop !50

GetBinIdForEntropy.exit.i.i:                      ; preds = %GetBinIdForEntropy.exit.i.i, %GetBinIdForEntropy.exit.i.i.preheader.new
  %indvars.iv26.i = phi i64 [ 0, %GetBinIdForEntropy.exit.i.i.preheader.new ], [ %indvars.iv.next27.i.1, %GetBinIdForEntropy.exit.i.i ] ; 3 uses
  %niter364 = phi i64 [ 0, %GetBinIdForEntropy.exit.i.i.preheader.new ], [ %niter364.next.1, %GetBinIdForEntropy.exit.i.i ]
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv26.i
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !27 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 3264
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !45
  %i.mw = sub i64 %i.mv, %.sroa.6.1.i
  %i.mx = uitofp i64 %i.mw to double
  %i.my = fmul nnan double %i.mx, f0x400FFFFF79C842FA
  %i.mz = fdiv double %i.my, %i.ju
  %i.na = fptosi double %i.mz to i32
  %i.nb = trunc i32 %i.na to i16
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mt, i64 3310
  store i16 %i.nb, ptr %i.nc, align 2, !tbaa !48
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv26.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !27 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 3264
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !45
  %i.ni = sub i64 %i.nh, %.sroa.6.1.i
  %i.nj = uitofp i64 %i.ni to double
  %i.nk = fmul nnan double %i.nj, f0x400FFFFF79C842FA
  %i.nl = fdiv double %i.nk, %i.ju
  %i.nm = fptosi double %i.nl to i32
  %i.nn = trunc i32 %i.nm to i16
  %i.no = getelementptr inbounds nuw i8, ptr %i.nf, i64 3310
  store i16 %i.nn, ptr %i.no, align 2, !tbaa !48
  %indvars.iv.next27.i.1 = add nuw nsw i64 %indvars.iv26.i, 2 ; 2 uses
  %niter364.next.1 = add i64 %niter364, 2         ; 2 uses
  %niter364.ncmp.1 = icmp eq i64 %niter364.next.1, %unroll_iter363
  br i1 %niter364.ncmp.1, label %HistogramAnalyzeEntropyBin.exit.loopexit335.unr-lcssa, label %GetBinIdForEntropy.exit.i.i, !llvm.loop !49

HistogramAnalyzeEntropyBin.exit.loopexit334.unr-lcssa: ; preds = %GetBinIdForEntropy.exit.i.us21.i
  %lcmp.mod367.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod367.not, label %HistogramAnalyzeEntropyBin.exit, label %GetBinIdForEntropy.exit.i.us21.i.epil.preheader

GetBinIdForEntropy.exit.i.us21.i.epil.preheader:  ; preds = %HistogramAnalyzeEntropyBin.exit.loopexit334.unr-lcssa, %GetBinIdForEntropy.exit.i.us21.i.preheader
  %indvars.iv31.i.epil.init = phi i64 [ 0, %GetBinIdForEntropy.exit.i.us21.i.preheader ], [ %indvars.iv.next32.i.7, %HistogramAnalyzeEntropyBin.exit.loopexit334.unr-lcssa ]
  %lcmp.mod368 = icmp ne i64 %xtraiter365, 0
  call void @llvm.assume(i1 %lcmp.mod368)
  br label %GetBinIdForEntropy.exit.i.us21.i.epil

GetBinIdForEntropy.exit.i.us21.i.epil:            ; preds = %GetBinIdForEntropy.exit.i.us21.i.epil, %GetBinIdForEntropy.exit.i.us21.i.epil.preheader
  %indvars.iv31.i.epil = phi i64 [ %indvars.iv.next32.i.epil, %GetBinIdForEntropy.exit.i.us21.i.epil ], [ %indvars.iv31.i.epil.init, %GetBinIdForEntropy.exit.i.us21.i.epil.preheader ] ; 2 uses
  %epil.iter366 = phi i64 [ %epil.iter366.next, %GetBinIdForEntropy.exit.i.us21.i.epil ], [ 0, %GetBinIdForEntropy.exit.i.us21.i.epil.preheader ]
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv31.i.epil
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !27
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 3310
  store i16 0, ptr %i.nr, align 2, !tbaa !48
  %indvars.iv.next32.i.epil = add nuw nsw i64 %indvars.iv31.i.epil, 1
  %epil.iter366.next = add i64 %epil.iter366, 1   ; 2 uses
  %epil.iter366.cmp.not = icmp eq i64 %epil.iter366.next, %xtraiter365
  br i1 %epil.iter366.cmp.not, label %HistogramAnalyzeEntropyBin.exit, label %GetBinIdForEntropy.exit.i.us21.i.epil, !llvm.loop !51

HistogramAnalyzeEntropyBin.exit.loopexit335.unr-lcssa: ; preds = %GetBinIdForEntropy.exit.i.i
  %lcmp.mod361.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod361.not, label %HistogramAnalyzeEntropyBin.exit, label %GetBinIdForEntropy.exit.i.i.epil.preheader

GetBinIdForEntropy.exit.i.i.epil.preheader:       ; preds = %HistogramAnalyzeEntropyBin.exit.loopexit335.unr-lcssa, %GetBinIdForEntropy.exit.i.i.preheader
  %indvars.iv26.i.epil.init = phi i64 [ 0, %GetBinIdForEntropy.exit.i.i.preheader ], [ %indvars.iv.next27.i.1, %HistogramAnalyzeEntropyBin.exit.loopexit335.unr-lcssa ]
  %lcmp.mod362 = trunc i32 %.pre196 to i1
  call void @llvm.assume(i1 %lcmp.mod362)
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv26.i.epil.init
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !27 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 3264
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !45
  %i.nw = sub i64 %i.nv, %.sroa.6.1.i
  %i.nx = uitofp i64 %i.nw to double
  %i.ny = fmul nnan double %i.nx, f0x400FFFFF79C842FA
  %i.nz = fdiv double %i.ny, %i.ju
  %i.oa = fptosi double %i.nz to i32
  %i.ob = trunc i32 %i.oa to i16
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nt, i64 3310
  store i16 %i.ob, ptr %i.oc, align 2, !tbaa !48
  br label %HistogramAnalyzeEntropyBin.exit

HistogramAnalyzeEntropyBin.exit:                  ; preds = %GetBinIdForEntropy.exit.i.i.epil.preheader, %HistogramAnalyzeEntropyBin.exit.loopexit335.unr-lcssa, %HistogramAnalyzeEntropyBin.exit.loopexit334.unr-lcssa, %GetBinIdForEntropy.exit.i.us21.i.epil, %GetBinIdForEntropy.exit17.i.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #10
  %wide.trip.count.i80 = zext nneg i32 %i.ch to i64 ; 2 uses
  br i1 %i.cg, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %HistogramAnalyzeEntropyBin.exit
  %n.vec = and i64 %wide.trip.count.i80, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %index
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %index
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %i.od, align 16, !tbaa !14
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %i.of, align 16, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.og = icmp eq i64 %index.next, %n.vec
  br i1 %i.og, label %.lr.ph.i86, label %vector.body, !llvm.loop !52

.lr.ph.i86:                                       ; preds = %vector.body, %scalar.ph
  %i.oh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.oi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br i1 %.not.i.i, label %.lr.ph.split.us.i88, label %.lr.ph.split.i87

.lr.ph.split.us.i88:                              ; preds = %.lr.ph.i86, %bb.ak
  %.180.us.i = phi i32 [ %.4.us.i, %bb.ak ], [ 0, %.lr.ph.i86 ] ; 6 uses
  %.07079.us.i = phi ptr [ %.171.us.i, %bb.ak ], [ %8, %.lr.ph.i86 ] ; 12 uses
  %i.oj = sext i32 %.180.us.i to i64              ; 2 uses
  %i.ok = getelementptr inbounds [8 x i8], ptr %.val61, i64 %i.oj ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !27 ; 4 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 3310
  %i.on = load i16, ptr %i.om, align 2, !tbaa !48
  %i.oo = zext i16 %i.on to i64
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %i.oo ; 3 uses
  %i.oq = load i16, ptr %i.op, align 4, !tbaa !55 ; 2 uses
  %i.or = icmp eq i16 %i.oq, -1
  br i1 %i.or, label %bb.aj, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.us.i88
  %i.os = getelementptr inbounds nuw i8, ptr %i.ol, i64 3256
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !46 ; 2 uses
  %i.ou = mul nsw i64 %i.ot, %.3.i                ; 3 uses
  %i.ov = icmp sgt i64 %i.ou, -1
  br i1 %i.ov, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.neg8.i.us.i = sub i64 50, %i.ou
  %i.ow = udiv i64 %.neg8.i.us.i, 100
  %.neg.i.us.i = sub nsw i64 0, %i.ow
  br label %DivRound.exit.us.i

bb.w:                                             ; preds = %bb.u
  %i.ox = add nuw nsw i64 %i.ou, 50
  %i.oy = udiv i64 %i.ox, 100
  br label %DivRound.exit.us.i

DivRound.exit.us.i:                               ; preds = %bb.w, %bb.v
  %i.oz = phi i64 [ %i.oy, %bb.w ], [ %.neg.i.us.i, %bb.v ] ; 3 uses
  %i.pa = sext i16 %i.oq to i64
  %i.pb = getelementptr inbounds [8 x i8], ptr %.val61, i64 %i.pa ; 4 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !27 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 3256
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !46
  %i.pf = add i64 %i.pe, %i.ot                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.pg = icmp slt i64 %i.oz, 1
  %i.ph = add nsw i64 %i.oz, 9223372036854775807
  %.not.i.i.us.i = icmp sgt i64 %i.pf, %i.ph
  %or.cond.i.i.us.i = select i1 %i.pg, i1 %.not.i.i.us.i, i1 false
  %i.pi = sub nsw i64 %i.pf, %i.oz
  %spec.select.i.i.us.i = select i1 %or.cond.i.i.us.i, i64 9223372036854775807, i64 %i.pi
  %i.pj = call fastcc i32 @GetCombinedHistogramEntropy(ptr noundef %i.pc, ptr noundef nonnull %i.ol, i64 noundef %spec.select.i.i.us.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not.i.us.i = icmp eq i32 %i.pj, 0
  br i1 %.not.i.us.i, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %DivRound.exit.us.i
  call fastcc void @HistogramAdd(ptr noundef nonnull %i.pc, ptr noundef nonnull %i.ol, ptr noundef %.07079.us.i)
  %i.pk = load i64, ptr %i.a, align 8, !tbaa !45
  %i.pl = getelementptr inbounds nuw i8, ptr %.07079.us.i, i64 3256
  store i64 %i.pk, ptr %i.pl, align 8, !tbaa !46
  %i.pm = getelementptr inbounds nuw i8, ptr %.07079.us.i, i64 3264
  %i.pn = load <2 x i64>, ptr %i.b, align 16, !tbaa !45
  store <2 x i64> %i.pn, ptr %i.pm, align 8, !tbaa !45
  %i.po = getelementptr inbounds nuw i8, ptr %.07079.us.i, i64 3280
  %i.pp = load <2 x i64>, ptr %i.oh, align 16, !tbaa !45
  store <2 x i64> %i.pp, ptr %i.po, align 8, !tbaa !45
  %i.pq = load i64, ptr %i.oi, align 16, !tbaa !45
  %i.pr = getelementptr inbounds nuw i8, ptr %.07079.us.i, i64 3296
  store i64 %i.pq, ptr %i.pr, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ps = getelementptr inbounds nuw i8, ptr %.07079.us.i, i64 3246
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !14
  %.not65.us.i = icmp eq i16 %i.pt, -1
  br i1 %.not65.us.i, label %.thread.us.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.pu = getelementptr inbounds nuw i8, ptr %.07079.us.i, i64 3248
  %i.pv = load i16, ptr %i.pu, align 4, !tbaa !14
  %.not66.us.i = icmp eq i16 %i.pv, -1
  br i1 %.not66.us.i, label %.thread.us.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.pw = getelementptr inbounds nuw i8, ptr %.07079.us.i, i64 3250
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !14
  %.not76.us.i = icmp eq i16 %i.px, -1
  br i1 %.not76.us.i, label %.thread.us.i, label %..thread74.us_crit_edge.i

..thread74.us_crit_edge.i:                        ; preds = %bb.z
  %.pre.i = load ptr, ptr %i.pb, align 8, !tbaa !27
  br label %.thread74.us.i

.thread.us.i:                                     ; preds = %bb.z, %bb.y, %bb.x
  %i.py = load ptr, ptr %i.ok, align 8, !tbaa !27 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 3246
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !14
  %i.qb = icmp eq i16 %i.qa, -1
  br i1 %i.qb, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.thread.us.i
  %i.qc = getelementptr inbounds nuw i8, ptr %i.py, i64 3248
  %i.qd = load i16, ptr %i.qc, align 4, !tbaa !14
  %i.qe = icmp eq i16 %i.qd, -1
  br i1 %i.qe, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.qf = getelementptr inbounds nuw i8, ptr %i.py, i64 3250
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !14
  %i.qh = icmp eq i16 %i.qg, -1
  %i.qi = zext i1 %i.qh to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.thread.us.i
  %i.qj = phi i32 [ 1, %bb.aa ], [ 1, %.thread.us.i ], [ %i.qi, %bb.ab ]
  %i.qk = load ptr, ptr %i.pb, align 8, !tbaa !27 ; 5 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 3246
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !14
  %i.qn = icmp eq i16 %i.qm, -1
  br i1 %i.qn, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 3248
  %i.qp = load i16, ptr %i.qo, align 4, !tbaa !14
  %i.qq = icmp eq i16 %i.qp, -1
  br i1 %i.qq, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qk, i64 3250
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !14
  %i.qt = icmp eq i16 %i.qs, -1
  %i.qu = zext i1 %i.qt to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.qv = phi i32 [ 1, %bb.ad ], [ 1, %bb.ac ], [ %i.qu, %bb.ae ]
  %i.qw = and i32 %i.qv, %i.qj
  %i.qx = icmp eq i32 %i.qw, 0
  br i1 %i.qx, label %bb.ag, label %.thread74.us.i

bb.ag:                                            ; preds = %bb.af
  %i.qy = getelementptr inbounds nuw i8, ptr %i.op, i64 2 ; 2 uses
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !57 ; 2 uses
  %i.ra = icmp ugt i16 %i.qz, 31
  br i1 %i.ra, label %.thread74.us.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.rb = add nuw nsw i16 %i.qz, 1
  store i16 %i.rb, ptr %i.qy, align 2, !tbaa !57
  %i.rc = add nsw i32 %.180.us.i, 1
  br label %bb.ak

.thread74.us.i:                                   ; preds = %bb.ag, %bb.af, %..thread74.us_crit_edge.i
  %i.rd = phi ptr [ %.pre.i, %..thread74.us_crit_edge.i ], [ %i.qk, %bb.ag ], [ %i.qk, %bb.af ]
  store ptr %.07079.us.i, ptr %i.pb, align 8, !tbaa !27
  %i.re = load ptr, ptr %i.gk, align 8, !tbaa !22 ; 2 uses
  %i.rf = load i32, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr [8 x i8], ptr %i.re, i64 %i.rg
  %i.ri = getelementptr i8, ptr %i.rh, i64 -8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !27
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.re, i64 %i.oj
  store ptr %i.rj, ptr %i.rk, align 8, !tbaa !27
  %i.rl = add nsw i32 %i.rf, -1
  store i32 %i.rl, ptr %7, align 8, !tbaa !26
  br label %bb.ak

bb.ai:                                            ; preds = %DivRound.exit.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.rm = add nsw i32 %.180.us.i, 1
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.split.us.i88
  %i.rn = trunc i32 %.180.us.i to i16
  store i16 %i.rn, ptr %i.op, align 4, !tbaa !55
  %i.ro = add nsw i32 %.180.us.i, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %.thread74.us.i, %bb.ah
  %.171.us.i = phi ptr [ %.07079.us.i, %bb.aj ], [ %.07079.us.i, %bb.ai ], [ %i.rd, %.thread74.us.i ], [ %.07079.us.i, %bb.ah ]
  %.4.us.i = phi i32 [ %i.ro, %bb.aj ], [ %i.rm, %bb.ai ], [ %.180.us.i, %.thread74.us.i ], [ %i.rc, %bb.ah ] ; 2 uses
  %i.rp = load i32, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.rq = icmp slt i32 %.4.us.i, %i.rp
  br i1 %i.rq, label %.lr.ph.split.us.i88, label %._crit_edge.i84, !llvm.loop !58

scalar.ph:                                        ; preds = %HistogramAnalyzeEntropyBin.exit, %scalar.ph
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i82, %scalar.ph ], [ 0, %HistogramAnalyzeEntropyBin.exit ] ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %indvars.iv.i81 ; 2 uses
  store i16 -1, ptr %i.rr, align 4, !tbaa !55
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 2
  store i16 0, ptr %i.rs, align 2, !tbaa !57
  %indvars.iv.next.i82 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %exitcond.not.i83 = icmp eq i64 %indvars.iv.next.i82, %wide.trip.count.i80
  br i1 %exitcond.not.i83, label %.lr.ph.i86, label %scalar.ph, !llvm.loop !59

.lr.ph.split.i87:                                 ; preds = %.lr.ph.i86, %bb.an
  %i.rt = phi i32 [ %i.sq, %bb.an ], [ %.pre196, %.lr.ph.i86 ]
  %.180.i = phi i32 [ %.4.i, %bb.an ], [ 0, %.lr.ph.i86 ] ; 4 uses
  %i.ru = sext i32 %.180.i to i64                 ; 2 uses
  %i.rv = getelementptr inbounds [8 x i8], ptr %.val61, i64 %i.ru
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !27 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 3310
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !48
  %i.rz = zext i16 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %i.rz ; 2 uses
  %i.sb = load i16, ptr %i.sa, align 4, !tbaa !55 ; 2 uses
  %i.sc = icmp eq i16 %i.sb, -1
  br i1 %i.sc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.split.i87
  %i.sd = trunc i32 %.180.i to i16
  store i16 %i.sd, ptr %i.sa, align 4, !tbaa !55
  %i.se = add nsw i32 %.180.i, 1
  br label %bb.an

bb.am:                                            ; preds = %.lr.ph.split.i87
  %i.sf = sext i16 %i.sb to i64
  %i.sg = getelementptr inbounds [8 x i8], ptr %.val61, i64 %i.sf
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !27 ; 2 uses
  call fastcc void @HistogramAdd(ptr noundef nonnull %i.rw, ptr noundef %i.sh, ptr noundef %i.sh)
  %i.si = load ptr, ptr %i.gk, align 8, !tbaa !22 ; 2 uses
  %i.sj = load i32, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr [8 x i8], ptr %i.si, i64 %i.sk
  %i.sm = getelementptr i8, ptr %i.sl, i64 -8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !27
  %i.so = getelementptr inbounds [8 x i8], ptr %i.si, i64 %i.ru
  store ptr %i.sn, ptr %i.so, align 8, !tbaa !27
  %i.sp = add nsw i32 %i.sj, -1                   ; 2 uses
  store i32 %i.sp, ptr %7, align 8, !tbaa !26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.sq = phi i32 [ %i.rt, %bb.al ], [ %i.sp, %bb.am ] ; 3 uses
  %.4.i = phi i32 [ %i.se, %bb.al ], [ %.180.i, %bb.am ] ; 2 uses
  %i.sr = icmp slt i32 %.4.i, %i.sq
  br i1 %i.sr, label %.lr.ph.split.i87, label %._crit_edge.i84, !llvm.loop !58

._crit_edge.i84:                                  ; preds = %bb.an, %bb.ak
  %i.ss = phi i32 [ %i.rp, %bb.ak ], [ %i.sq, %bb.an ] ; 3 uses
  %i.st = icmp sgt i32 %i.ss, 0
  %or.cond.i = and i1 %i.cg, %i.st
  br i1 %or.cond.i, label %.lr.ph82.i, label %.loopexit160

.lr.ph82.i:                                       ; preds = %._crit_edge.i84, %.lr.ph82.i
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %.lr.ph82.i ], [ 0, %._crit_edge.i84 ] ; 2 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %indvars.iv85.i
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !27 ; 22 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 2056
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 1032
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 3244
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sv, i64 3304
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sv, i64 3264 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sv, i64 3240
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !7  ; 2 uses
  %i.te = icmp sgt i32 %i.td, 0
  %i.tf = shl nuw i32 1, %i.td
  %i.tg = add nuw nsw i32 %i.tf, 280
  %i.th = select i1 %i.te, i32 %i.tg, i32 280
  %i.ti = load ptr, ptr %i.sv, align 8, !tbaa !13
  %i.tj = call fastcc i64 @PopulationCost(ptr noundef %i.ti, i32 noundef %i.th, ptr noundef nonnull %i.sz, ptr noundef nonnull %i.ta)
  store i64 %i.tj, ptr %i.tb, align 8, !tbaa !45
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sv, i64 3246
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sv, i64 3305
  %i.tm = call fastcc i64 @PopulationCost(ptr noundef nonnull %i.sy, i32 noundef 256, ptr noundef nonnull %i.tk, ptr noundef nonnull %i.tl)
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sv, i64 3272 ; 2 uses
  store i64 %i.tm, ptr %i.tn, align 8, !tbaa !45
  %i.to = getelementptr inbounds nuw i8, ptr %i.sv, i64 3248
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sv, i64 3306
  %i.tq = call fastcc i64 @PopulationCost(ptr noundef nonnull %i.sx, i32 noundef 256, ptr noundef nonnull %i.to, ptr noundef nonnull %i.tp)
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sv, i64 3280 ; 2 uses
  store i64 %i.tq, ptr %i.tr, align 8, !tbaa !45
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sv, i64 3250
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sv, i64 3307
  %i.tu = call fastcc i64 @PopulationCost(ptr noundef nonnull %i.sw, i32 noundef 256, ptr noundef nonnull %i.ts, ptr noundef nonnull %i.tt)
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sv, i64 3288 ; 2 uses
  store i64 %i.tu, ptr %i.tv, align 8, !tbaa !45
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sv, i64 3080
  %i.tx = getelementptr inbounds nuw i8, ptr %i.sv, i64 3252
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sv, i64 3308
  %i.tz = call fastcc i64 @PopulationCost(ptr noundef nonnull %i.tw, i32 noundef 40, ptr noundef nonnull %i.tx, ptr noundef nonnull %i.ty) ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.sv, i64 3296
  store i64 %i.tz, ptr %i.ua, align 8, !tbaa !45
  %i.ub = load i64, ptr %i.tb, align 8, !tbaa !45
  %i.uc = load i64, ptr %i.tn, align 8, !tbaa !45
  %i.ud = load i64, ptr %i.tr, align 8, !tbaa !45
  %i.ue = load i64, ptr %i.tv, align 8, !tbaa !45
  %i.uf = add i64 %i.ub, %i.tz
  %i.ug = add i64 %i.uf, %i.uc
  %i.uh = add i64 %i.ug, %i.ud
  %i.ui = add i64 %i.uh, %i.ue
  %i.uj = getelementptr inbounds nuw i8, ptr %i.sv, i64 3256
  store i64 %i.ui, ptr %i.uj, align 8, !tbaa !46
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %i.uk = load i32, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.ul = sext i32 %i.uk to i64
  %i.um = icmp slt i64 %indvars.iv.next86.i, %i.ul
  br i1 %i.um, label %.lr.ph82.i, label %.loopexit160.thread, !llvm.loop !60

.loopexit160.thread:                              ; preds = %.lr.ph82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #10
  br label %.thread153

.loopexit160:                                     ; preds = %._crit_edge.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #10
  br i1 %i.cg, label %.thread153, label %.thread138

.thread138:                                       ; preds = %HistogramBuild.exit, %HistogramCopyAndAnalyze.exit, %.loopexit160
  %i.un = phi i32 [ %.pre196, %HistogramCopyAndAnalyze.exit ], [ %i.ss, %.loopexit160 ], [ 0, %HistogramBuild.exit ] ; 5 uses
  %i.uo = mul nsw i32 %3, %3
  %i.up = mul nsw i32 %i.uo, %3                   ; 2 uses
  %i.uq = mul nsw i32 %i.up, 99                   ; 2 uses
  %i.ur = icmp sgt i32 %i.up, -1
  br i1 %i.ur, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread138
  %narrow = add nuw i32 %i.uq, 500000
  %i.us = udiv i32 %narrow, 1000000
  br label %DivRound.exit

bb.ap:                                            ; preds = %.thread138
  %.neg8.i = sub i32 500000, %i.uq
  %i.ut = udiv i32 %.neg8.i, 1000000
  %.neg.i = sub nsw i32 0, %i.ut
  br label %DivRound.exit

DivRound.exit:                                    ; preds = %bb.ao, %bb.ap
  %i.uu = phi i32 [ %i.us, %bb.ao ], [ %.neg.i, %bb.ap ] ; 3 uses
  %i.uv = add nsw i32 %i.uu, 1
  %i.uw = sdiv i32 %i.un, 2
  %i.ux = load ptr, ptr %i.gk, align 8, !tbaa !22 ; 7 uses
  %.not158 = icmp sgt i32 %i.un, %i.uu
  br i1 %.not158, label %bb.aq, label %.thread148

bb.aq:                                            ; preds = %DivRound.exit
  %i.uy = call ptr @WebPSafeMalloc(i64 noundef 10, i64 noundef 64) #10 ; 20 uses
  %.not137.i = icmp eq ptr %i.uy, null
  br i1 %.not137.i, label %bb.br, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aq
  %i.uz = icmp sgt i32 %i.un, 0
  br i1 %i.uz, label %.lr.ph156.i, label %.loopexit

.lr.ph156.i:                                      ; preds = %.preheader.i
  %i.va = getelementptr inbounds nuw i8, ptr %i.uy, i64 8 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.vc = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.ve = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uy, i64 4
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uy, i64 24
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uy, i64 32
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uy, i64 40
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uy, i64 48
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uy, i64 56
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.i, %.lr.ph156.i
  %.082155.i = phi i32 [ 0, %.lr.ph156.i ], [ %i.aay, %.loopexit.i ]
  %.084154.i = phi i32 [ 0, %.lr.ph156.i ], [ %.185.i, %.loopexit.i ]
  %.0125153.i = phi i32 [ 1, %.lr.ph156.i ], [ %.2127181.i, %.loopexit.i ] ; 2 uses
  %.sroa.13.0152.i = phi i32 [ 0, %.lr.ph156.i ], [ %.sroa.13.5.i, %.loopexit.i ] ; 3 uses
  %i.vm = load i32, ptr %7, align 8, !tbaa !26    ; 6 uses
  %.not98.i.not = icmp sgt i32 %i.vm, %i.uu
  br i1 %.not98.i.not, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.vn = add nsw i32 %.084154.i, 1               ; 2 uses
  %i.vo = icmp slt i32 %i.vn, %i.uw
  br i1 %i.vo, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.vp = icmp eq i32 %.sroa.13.0152.i, 0
  br i1 %i.vp, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.vq = load i64, ptr %i.va, align 8, !tbaa !61
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.vr = phi i64 [ %i.vq, %bb.au ], [ 0, %bb.at ]
  %i.vs = add nsw i32 %i.vm, -1
  %i.vt = mul nsw i32 %i.vs, %i.vm
  %i.vu = sdiv i32 %i.vm, 2
  %i.vv = icmp sgt i32 %i.vm, 1
  br i1 %i.vv, label %.lr.ph.i94, label %HistoQueuePush.exit._crit_edge.i

.lr.ph.i94:                                       ; preds = %bb.av, %bb.az
  %i.vw = phi i32 [ %i.xn, %bb.az ], [ %i.vm, %bb.av ]
  %.081143.i = phi i32 [ %i.xm, %bb.az ], [ 0, %bb.av ]
  %.088142.i = phi i64 [ %.290134.i, %bb.az ], [ %i.vr, %bb.av ] ; 5 uses
  %.1126141.i = phi i32 [ %i.wa, %bb.az ], [ %.0125153.i, %bb.av ]
  %.sroa.13.1140.i = phi i32 [ %.sroa.13.6133.i, %bb.az ], [ %.sroa.13.0152.i, %bb.av ] ; 4 uses
  %i.vx = zext nneg i32 %.1126141.i to i64
  %i.vy = mul nuw nsw i64 %i.vx, 48271
  %i.vz = urem i64 %i.vy, 2147483647
  %i.wa = trunc nuw nsw i64 %i.vz to i32          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #10
  %i.wb = icmp eq i32 %.sroa.13.1140.i, 9
  br i1 %i.wb, label %HistoQueuePush.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i94
  %i.wc = urem i32 %i.wa, %i.vt                   ; 2 uses
  %i.wd = add nsw i32 %i.vw, -1                   ; 2 uses
  %i.we = urem i32 %i.wc, %i.wd                   ; 2 uses
  %i.wf = udiv i32 %i.wc, %i.wd                   ; 3 uses
  %.not99.i = icmp samesign uge i32 %i.we, %i.wf
  %i.wg = zext i1 %.not99.i to i32
  %spec.select.i95 = add nuw nsw i32 %i.we, %i.wg ; 2 uses
  %i.wh = call i32 @llvm.umax.i32(i32 %i.wf, i32 %spec.select.i95) ; 2 uses
  %i.wi = call i32 @llvm.umin.i32(i32 %i.wf, i32 %spec.select.i95) ; 2 uses
  store i32 %i.wi, ptr %26, align 8, !tbaa !63
  store i32 %i.wh, ptr %i.vb, align 4, !tbaa !64
  %i.wj = zext nneg i32 %i.wi to i64
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.wj
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !27 ; 2 uses
  %i.wm = zext nneg i32 %i.wh to i64
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.wm
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !27 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wl, i64 3256
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !46
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 3256
  %i.ws = load i64, ptr %i.wr, align 8, !tbaa !46
  %i.wt = add i64 %i.ws, %i.wq                    ; 3 uses
  %i.wu = icmp sgt i64 %.088142.i, -1
  %i.wv = sub nuw nsw i64 9223372036854775807, %.088142.i
  %.not.i.i.i.i = icmp sgt i64 %i.wt, %i.wv
  %or.cond.i.i.i.i = select i1 %i.wu, i1 %.not.i.i.i.i, i1 false
  %i.ww = add nsw i64 %i.wt, %.088142.i
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 9223372036854775807, i64 %i.ww
  %i.wx = call fastcc i32 @GetCombinedHistogramEntropy(ptr noundef %i.wl, ptr noundef %i.wo, i64 noundef %spec.select.i.i.i.i, ptr noundef nonnull %i.vc, ptr noundef nonnull %i.vd)
  %.not.i.i.i96 = icmp eq i32 %i.wx, 0
  br i1 %.not.i.i.i96, label %HistoQueuePush.exit.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.wy = load i64, ptr %i.vc, align 8, !tbaa !65
  %i.wz = sub nsw i64 %i.wy, %i.wt                ; 3 uses
  store i64 %i.wz, ptr %i.ve, align 8, !tbaa !61
  %i.xa = add nsw i32 %.sroa.13.1140.i, 1         ; 3 uses
  %i.xb = sext i32 %.sroa.13.1140.i to i64
  %i.xc = getelementptr inbounds [64 x i8], ptr %i.uy, i64 %i.xb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.xc, ptr noundef nonnull align 8 dereferenceable(64) %26, i64 64, i1 false), !tbaa.struct !66
  %i.xd = sext i32 %i.xa to i64
  %i.xe = getelementptr [64 x i8], ptr %i.uy, i64 %i.xd ; 2 uses
  %i.xf = getelementptr i8, ptr %i.xe, i64 -56
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !61
  %i.xh = load i64, ptr %i.va, align 8, !tbaa !61
  %i.xi = icmp slt i64 %i.xg, %i.xh
  br i1 %i.xi, label %bb.ay, label %HistoQueuePush.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.xj = getelementptr i8, ptr %i.xe, i64 -64    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %25, ptr noundef nonnull align 8 dereferenceable(64) %i.uy, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.uy, ptr noundef nonnull align 8 dereferenceable(64) %i.xj, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.xj, ptr noundef nonnull align 8 dereferenceable(64) %25, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %HistoQueuePush.exit.i

HistoQueuePush.exit.thread.i:                     ; preds = %bb.aw, %.lr.ph.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #10
  br label %bb.az

HistoQueuePush.exit.i:                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #10
  %i.xk = icmp sgt i64 %i.wz, -1                  ; 2 uses
  %i.xl = icmp ne i32 %i.xa, 9
  %.290.i = select i1 %i.xk, i64 %.088142.i, i64 %i.wz
  %.not139.i = or i1 %i.xl, %i.xk
  br i1 %.not139.i, label %bb.az, label %HistoQueuePush.exit._crit_edge.thread.i

bb.az:                                            ; preds = %HistoQueuePush.exit.i, %HistoQueuePush.exit.thread.i
  %.290134.i = phi i64 [ %.088142.i, %HistoQueuePush.exit.thread.i ], [ %.290.i, %HistoQueuePush.exit.i ]
  %.sroa.13.6133.i = phi i32 [ %.sroa.13.1140.i, %HistoQueuePush.exit.thread.i ], [ %i.xa, %HistoQueuePush.exit.i ] ; 2 uses
  %i.xm = add nuw nsw i32 %.081143.i, 1           ; 2 uses
  %i.xn = load i32, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.xo = icmp sgt i32 %i.xn, 1
  %i.xp = icmp slt i32 %i.xm, %i.vu
  %i.xq = select i1 %i.xo, i1 %i.xp, i1 false
  br i1 %i.xq, label %.lr.ph.i94, label %HistoQueuePush.exit._crit_edge.i, !llvm.loop !67

HistoQueuePush.exit._crit_edge.i:                 ; preds = %bb.az, %bb.av
  %.sroa.13.2.i = phi i32 [ %.sroa.13.0152.i, %bb.av ], [ %.sroa.13.6133.i, %bb.az ] ; 2 uses
  %.2127.i = phi i32 [ %.0125153.i, %bb.av ], [ %i.wa, %bb.az ] ; 2 uses
  %i.xr = icmp eq i32 %.sroa.13.2.i, 0
  br i1 %i.xr, label %.loopexit.i, label %HistoQueuePush.exit._crit_edge.thread.i

HistoQueuePush.exit._crit_edge.thread.i:          ; preds = %HistoQueuePush.exit.i, %HistoQueuePush.exit._crit_edge.i
  %.2127180.i = phi i32 [ %.2127.i, %HistoQueuePush.exit._crit_edge.i ], [ %i.wa, %HistoQueuePush.exit.i ] ; 2 uses
  %.sroa.13.2179.i = phi i32 [ %.sroa.13.2.i, %HistoQueuePush.exit._crit_edge.i ], [ 9, %HistoQueuePush.exit.i ] ; 3 uses
  %i.xs = load i32, ptr %i.uy, align 8, !tbaa !63 ; 7 uses
  %i.xt = load i32, ptr %i.vf, align 4, !tbaa !64 ; 7 uses
  %i.xu = sext i32 %i.xt to i64                   ; 2 uses
  %i.xv = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %i.xu
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !27
  %i.xx = sext i32 %i.xs to i64
  %i.xy = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %i.xx ; 2 uses
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !27 ; 2 uses
  call fastcc void @HistogramAdd(ptr noundef %i.xw, ptr noundef %i.xz, ptr noundef %i.xz)
  %i.ya = load i64, ptr %i.vg, align 8, !tbaa !65
  %i.yb = load ptr, ptr %i.xy, align 8, !tbaa !27 ; 6 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 3256
  store i64 %i.ya, ptr %i.yc, align 8, !tbaa !46
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 3264
  %i.ye = load i64, ptr %i.vh, align 8, !tbaa !45
  store i64 %i.ye, ptr %i.yd, align 8, !tbaa !45
  %i.yf = load i64, ptr %i.vi, align 8, !tbaa !45
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 3272
  store i64 %i.yf, ptr %i.yg, align 8, !tbaa !45
  %i.yh = load i64, ptr %i.vj, align 8, !tbaa !45
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yb, i64 3280
  store i64 %i.yh, ptr %i.yi, align 8, !tbaa !45
  %i.yj = load i64, ptr %i.vk, align 8, !tbaa !45
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yb, i64 3288
  store i64 %i.yj, ptr %i.yk, align 8, !tbaa !45
  %i.yl = load i64, ptr %i.vl, align 8, !tbaa !45
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yb, i64 3296
  store i64 %i.yl, ptr %i.ym, align 8, !tbaa !45
  %i.yn = load ptr, ptr %i.gk, align 8, !tbaa !22 ; 2 uses
  %i.yo = load i32, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr [8 x i8], ptr %i.yn, i64 %i.yp
  %i.yr = getelementptr i8, ptr %i.yq, i64 -8
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !27
  %i.yt = getelementptr inbounds [8 x i8], ptr %i.yn, i64 %i.xu
  store ptr %i.ys, ptr %i.yt, align 8, !tbaa !27
  %i.yu = add nsw i32 %i.yo, -1
  store i32 %i.yu, ptr %7, align 8, !tbaa !26
  %i.yv = icmp sgt i32 %.sroa.13.2179.i, 0
  br i1 %i.yv, label %.lr.ph150.i, label %.loopexit.i

.lr.ph150.i:                                      ; preds = %HistoQueuePush.exit._crit_edge.thread.i, %bb.bq
  %.1148.i = phi i32 [ %.2.i91, %bb.bq ], [ 0, %HistoQueuePush.exit._crit_edge.thread.i ] ; 4 uses
  %.sroa.13.3147.i = phi i32 [ %.sroa.13.4.i, %bb.bq ], [ %.sroa.13.2179.i, %HistoQueuePush.exit._crit_edge.thread.i ] ; 5 uses
  %i.yw = sext i32 %.1148.i to i64
  %i.yx = getelementptr inbounds [64 x i8], ptr %i.uy, i64 %i.yw ; 15 uses
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !63 ; 4 uses
  %i.yz = icmp eq i32 %i.yy, %i.xs
  %i.za = icmp eq i32 %i.yy, %i.xt                ; 2 uses
  %spec.select101.i = or i1 %i.yz, %i.za          ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yx, i64 4 ; 6 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !64 ; 3 uses
  %i.zd = icmp eq i32 %i.zc, %i.xs
  %i.ze = icmp eq i32 %i.zc, %i.xt                ; 2 uses
  %i.zf = or i1 %i.zd, %i.ze                      ; 2 uses
  %or.cond.i90 = and i1 %spec.select101.i, %i.zf
  br i1 %or.cond.i90, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph150.i
  %i.zg = sext i32 %.sroa.13.3147.i to i64
  %i.zh = getelementptr [64 x i8], ptr %i.uy, i64 %i.zg
  %i.zi = getelementptr i8, ptr %i.zh, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.yx, ptr noundef nonnull align 8 dereferenceable(64) %i.zi, i64 64, i1 false), !tbaa.struct !66
  %i.zj = add nsw i32 %.sroa.13.3147.i, -1
  br label %bb.bq, !llvm.loop !68

bb.bb:                                            ; preds = %.lr.ph150.i
  %or.cond3.i = or i1 %spec.select101.i, %i.zf
  br i1 %or.cond3.i, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.za, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.xs, ptr %i.yx, align 8, !tbaa !63
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.zk = phi i32 [ %i.xs, %bb.bd ], [ %i.yy, %bb.bc ] ; 4 uses
  br i1 %i.ze, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 %i.xs, ptr %i.zb, align 4, !tbaa !64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.zl = phi i32 [ %i.xs, %bb.bf ], [ %i.zc, %bb.be ] ; 4 uses
  %i.zm = icmp sgt i32 %i.zk, %i.zl
  br i1 %i.zm, label %bb.bh, label %HistoQueueFixPair.exit.i

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.zl, ptr %i.yx, align 8, !tbaa !63
  store i32 %i.zk, ptr %i.zb, align 4, !tbaa !64
  br label %HistoQueueFixPair.exit.i

HistoQueueFixPair.exit.i:                         ; preds = %bb.bh, %bb.bg
  %i.zn = phi i32 [ %i.zl, %bb.bg ], [ %i.zk, %bb.bh ]
  %i.zo = phi i32 [ %i.zk, %bb.bg ], [ %i.zl, %bb.bh ]
  %i.zp = sext i32 %i.zo to i64
  %i.zq = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %i.zp
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !27 ; 2 uses
  %i.zs = sext i32 %i.zn to i64
  %i.zt = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %i.zs
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !27 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zr, i64 3256
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !46
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 3256
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !46
  %i.zz = add i64 %i.zy, %i.zw                    ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.yx, i64 16 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  %i.aac = call fastcc i32 @GetCombinedHistogramEntropy(ptr noundef %i.zr, ptr noundef %i.zu, i64 noundef %i.zz, ptr noundef nonnull %i.aaa, ptr noundef nonnull %i.aab)
  %.not.i.i92 = icmp eq i32 %i.aac, 0
  br i1 %.not.i.i92, label %bb.bi, label %HistoQueueUpdatePair.exit.i

HistoQueueUpdatePair.exit.i:                      ; preds = %HistoQueueFixPair.exit.i
  %i.aad = load i64, ptr %i.aaa, align 8, !tbaa !65
  %i.aae = sub nsw i64 %i.aad, %i.zz
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  store i64 %i.aae, ptr %i.aaf, align 8, !tbaa !61
  %.pre.i93 = load i32, ptr %i.yx, align 8, !tbaa !63
  br label %bb.bj

bb.bi:                                            ; preds = %HistoQueueFixPair.exit.i
  %i.aag = sext i32 %.sroa.13.3147.i to i64
  %i.aah = getelementptr [64 x i8], ptr %i.uy, i64 %i.aag
  %i.aai = getelementptr i8, ptr %i.aah, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.yx, ptr noundef nonnull align 8 dereferenceable(64) %i.aai, i64 64, i1 false), !tbaa.struct !66
  %i.aaj = add nsw i32 %.sroa.13.3147.i, -1
  br label %bb.bq, !llvm.loop !68

bb.bj:                                            ; preds = %HistoQueueUpdatePair.exit.i, %bb.bb
  %i.aak = phi i32 [ %.pre.i93, %HistoQueueUpdatePair.exit.i ], [ %i.yy, %bb.bb ] ; 2 uses
  %i.aal = load i32, ptr %7, align 8, !tbaa !26   ; 2 uses
  %i.aam = icmp eq i32 %i.aak, %i.aal
  br i1 %i.aam, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 %i.xt, ptr %i.yx, align 8, !tbaa !63
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.aan = phi i32 [ %i.xt, %bb.bk ], [ %i.aak, %bb.bj ] ; 2 uses
  %i.aao = load i32, ptr %i.zb, align 4, !tbaa !64 ; 2 uses
  %i.aap = icmp eq i32 %i.aao, %i.aal
  br i1 %i.aap, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 %i.xt, ptr %i.zb, align 4, !tbaa !64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.aaq = phi i32 [ %i.xt, %bb.bm ], [ %i.aao, %bb.bl ] ; 2 uses
  %i.aar = icmp sgt i32 %i.aan, %i.aaq
  br i1 %i.aar, label %bb.bo, label %HistoQueueFixPair.exit105.i

bb.bo:                                            ; preds = %bb.bn
  store i32 %i.aaq, ptr %i.yx, align 8, !tbaa !63
  store i32 %i.aan, ptr %i.zb, align 4, !tbaa !64
  br label %HistoQueueFixPair.exit105.i

HistoQueueFixPair.exit105.i:                      ; preds = %bb.bo, %bb.bn
  %i.aas = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !61
  %i.aau = load i64, ptr %i.va, align 8, !tbaa !61
  %i.aav = icmp slt i64 %i.aat, %i.aau
  br i1 %i.aav, label %bb.bp, label %HistoQueueUpdateHead.exit.i

bb.bp:                                            ; preds = %HistoQueueFixPair.exit105.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull align 8 dereferenceable(64) %i.uy, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.uy, ptr noundef nonnull align 8 dereferenceable(64) %i.yx, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.yx, ptr noundef nonnull align 8 dereferenceable(64) %24, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %HistoQueueUpdateHead.exit.i

HistoQueueUpdateHead.exit.i:                      ; preds = %bb.bp, %HistoQueueFixPair.exit105.i
  %i.aaw = add nsw i32 %.1148.i, 1
  br label %bb.bq

bb.bq:                                            ; preds = %HistoQueueUpdateHead.exit.i, %bb.bi, %bb.ba
  %.sroa.13.4.i = phi i32 [ %i.zj, %bb.ba ], [ %i.aaj, %bb.bi ], [ %.sroa.13.3147.i, %HistoQueueUpdateHead.exit.i ] ; 3 uses
  %.2.i91 = phi i32 [ %.1148.i, %bb.ba ], [ %.1148.i, %bb.bi ], [ %i.aaw, %HistoQueueUpdateHead.exit.i ] ; 2 uses
  %i.aax = icmp slt i32 %.2.i91, %.sroa.13.4.i
  br i1 %i.aax, label %.lr.ph150.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bq, %HistoQueuePush.exit._crit_edge.thread.i, %HistoQueuePush.exit._crit_edge.i
  %.2127181.i = phi i32 [ %.2127.i, %HistoQueuePush.exit._crit_edge.i ], [ %.2127180.i, %HistoQueuePush.exit._crit_edge.thread.i ], [ %.2127180.i, %bb.bq ]
  %.sroa.13.5.i = phi i32 [ 0, %HistoQueuePush.exit._crit_edge.i ], [ %.sroa.13.2179.i, %HistoQueuePush.exit._crit_edge.thread.i ], [ %.sroa.13.4.i, %bb.bq ]
  %.185.i = phi i32 [ %i.vn, %HistoQueuePush.exit._crit_edge.i ], [ 0, %HistoQueuePush.exit._crit_edge.thread.i ], [ 0, %bb.bq ]
  %i.aay = add nuw nsw i32 %.082155.i, 1          ; 2 uses
  %exitcond.not.i89 = icmp eq i32 %i.aay, %i.un
  br i1 %exitcond.not.i89, label %.loopexit, label %bb.ar, !llvm.loop !69

bb.br:                                            ; preds = %bb.aq
  call void @WebPSafeFree(ptr noundef null) #10
  %i.aaz = call i32 @WebPEncodingSetError(ptr noundef %10, i32 noundef 1) #10 ; 0 uses
  br label %bb.eu

.loopexit:                                        ; preds = %.loopexit.i, %bb.as, %bb.ar, %.preheader.i
  %i.aba = load i32, ptr %7, align 8, !tbaa !26
  %.not159 = icmp sgt i32 %i.aba, %i.uv
  call void @WebPSafeFree(ptr noundef nonnull %i.uy) #10
  %.pre199 = load i32, ptr %7, align 8, !tbaa !26 ; 2 uses
  br i1 %.not159, label %.thread153, label %.thread148thread-pre-split

.thread148thread-pre-split:                       ; preds = %.loopexit
  %.pre197 = load ptr, ptr %i.gk, align 8, !tbaa !22
  br label %.thread148

.thread148:                                       ; preds = %.thread148thread-pre-split, %DivRound.exit
  %i.abb = phi ptr [ %.pre197, %.thread148thread-pre-split ], [ %i.ux, %DivRound.exit ] ; 4 uses
  %i.abc = phi i32 [ %.pre199, %.thread148thread-pre-split ], [ %i.un, %DivRound.exit ] ; 6 uses
  %i.abd = mul nsw i32 %i.abc, %i.abc             ; 5 uses
  %i.abe = add nuw nsw i32 %i.abd, 1
  %i.abf = zext nneg i32 %i.abe to i64
  %i.abg = call ptr @WebPSafeMalloc(i64 noundef %i.abf, i64 noundef 64) #10 ; 23 uses
  %.not115.i = icmp eq ptr %i.abg, null
  br i1 %.not115.i, label %bb.dv, label %.preheader119.i

.preheader119.i:                                  ; preds = %.thread148
  %i.abh = icmp sgt i32 %i.abc, 0
  br i1 %i.abh, label %.lr.ph130.i, label %HistogramCombineGreedy.exit.thread

.lr.ph130.i:                                      ; preds = %.preheader119.i
  %i.abi = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.abj = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.abk = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.abl = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.abm = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.abo = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.abp = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.abq = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.abr = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.abs = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.abt = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abg, i64 8 ; 3 uses
  br label %bb.bs

.loopexit118.i:                                   ; preds = %HistoQueuePush.exit.i109, %bb.bs
  %.sroa.13.1.lcssa.i = phi i32 [ %.sroa.13.0128.i, %bb.bs ], [ %.sroa.13.7.i, %HistoQueuePush.exit.i109 ] ; 3 uses
  %exitcond149.not.i = icmp eq i32 %i.acp, %i.abc
  br i1 %exitcond149.not.i, label %.preheader116.i, label %bb.bs, !llvm.loop !70

.preheader116.i:                                  ; preds = %.loopexit118.i
  %i.abv = icmp sgt i32 %.sroa.13.1.lcssa.i, 0
  br i1 %i.abv, label %.lr.ph145.i, label %HistogramCombineGreedy.exit.thread

.lr.ph145.i:                                      ; preds = %.preheader116.i
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abg, i64 4
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abg, i64 24
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abg, i64 32
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abg, i64 40
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abg, i64 48
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abg, i64 56
  %i.acd = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.ace = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.acf = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.acg = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.ach = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.acj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ack = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.acl = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.acm = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.acn = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.aco = getelementptr inbounds nuw i8, ptr %20, i64 8
  br label %bb.cn

bb.bs:                                            ; preds = %.loopexit118.i, %.lr.ph130.i
  %.048129.i = phi i32 [ 0, %.lr.ph130.i ], [ %i.acp, %.loopexit118.i ] ; 3 uses
  %.sroa.13.0128.i = phi i32 [ 0, %.lr.ph130.i ], [ %.sroa.13.1.lcssa.i, %.loopexit118.i ] ; 2 uses
  %i.acp = add nuw nsw i32 %.048129.i, 1          ; 4 uses
  %i.acq = icmp slt i32 %i.acp, %i.abc
  br i1 %i.acq, label %.lr.ph.i106, label %.loopexit118.i

.lr.ph.i106:                                      ; preds = %bb.bs, %HistoQueuePush.exit.i109
  %.049127.i = phi i32 [ %i.ahd, %HistoQueuePush.exit.i109 ], [ %i.acp, %bb.bs ] ; 3 uses
  %.sroa.13.1126.i = phi i32 [ %.sroa.13.7.i, %HistoQueuePush.exit.i109 ], [ %.sroa.13.0128.i, %bb.bs ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #10
  %i.acr = icmp eq i32 %.sroa.13.1126.i, %i.abd
  br i1 %i.acr, label %HistoQueuePush.exit.i109, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i106
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %.048129.i, i32 %.049127.i) ; 2 uses
  %spec.select26.i.i = call i32 @llvm.smin.i32(i32 %.048129.i, i32 %.049127.i) ; 2 uses
  store i32 %spec.select26.i.i, ptr %23, align 8, !tbaa !63
  store i32 %spec.select.i.i, ptr %i.abi, align 4, !tbaa !64
  %i.acs = zext nneg i32 %spec.select26.i.i to i64
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.acs
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !27 ; 9 uses
  %i.acv = zext nneg i32 %spec.select.i.i to i64
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.acv
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !27 ; 10 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acu, i64 3256
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !46
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acx, i64 3256
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !46
  %i.adc = add i64 %i.adb, %i.acz                 ; 3 uses
  %i.add = icmp slt i64 %i.adc, 1
  br i1 %i.add, label %HistoQueuePush.exit.i109, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acu, i64 3304
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acx, i64 3304
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acu, i64 3244
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acx, i64 3244
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acx, i64 3264
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acu, i64 3264
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acu, i64 3080
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acx, i64 3080
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acu, i64 2056
  %i.adn = getelementptr inbounds nuw i8, ptr %i.acx, i64 2056
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acu, i64 1032
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acx, i64 1032
  %i.adq = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  %i.adr = getelementptr inbounds nuw i8, ptr %i.acx, i64 8
  %i.ads = getelementptr inbounds nuw i8, ptr %i.acx, i64 3240
  br label %bb.bw

bb.bv:                                            ; preds = %GetCombinedEntropy.exit.i.i
  %indvars.iv.next.i.i111 = add nuw nsw i64 %indvars.iv.i.i107, 1 ; 2 uses
  %exitcond.not.i.i112 = icmp eq i64 %indvars.iv.next.i.i111, 5
  br i1 %exitcond.not.i.i112, label %GetCombinedHistogramEntropy.exit.i, label %bb.bw, !llvm.loop !71

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.adt = phi i64 [ 0, %bb.bu ], [ %i.agr, %bb.bv ]
  %indvars.iv.i.i107 = phi i64 [ 0, %bb.bu ], [ %indvars.iv.next.i.i111, %bb.bv ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ade, i64 %indvars.iv.i.i107
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !15
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adf, i64 %indvars.iv.i.i107
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !15
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %i.adg, i64 %indvars.iv.i.i107
  %i.adz = load i16, ptr %i.ady, align 2, !tbaa !14 ; 2 uses
  %.not.i.i62.i = icmp eq i16 %i.adz, -1
  br i1 %.not.i.i62.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aea = getelementptr inbounds nuw [2 x i8], ptr %i.adh, i64 %indvars.iv.i.i107
  %i.aeb = load i16, ptr %i.aea, align 2, !tbaa !14
  %i.aec = icmp ne i16 %i.adz, %i.aeb
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.aed = phi i1 [ true, %bb.bw ], [ %i.aec, %bb.bx ]
  %i.aee = icmp ne i8 %i.adv, 0                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.aed, i1 %i.aee, i1 false
  %i.aef = icmp ne i8 %i.adx, 0
  %or.cond3.i.i.i = select i1 %or.cond.i.i.i, i1 %i.aef, i1 false
  br i1 %or.cond3.i.i.i, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  br i1 %i.aee, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %indvars.iv.i.i107
  %i.aeh = load i64, ptr %i.aeg, align 8, !tbaa !45
  br label %GetCombinedEntropy.exit.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %indvars.iv.i.i107
  %i.aej = load i64, ptr %i.aei, align 8, !tbaa !45
  br label %GetCombinedEntropy.exit.i.i

bb.cc:                                            ; preds = %bb.by
  %i.aek = trunc nuw nsw i64 %indvars.iv.i.i107 to i32
  switch i32 %i.aek, label %unreachable.i.i.i [
    i32 0, label %GetPopulationInfo.exit.thread.i.i.i
    i32 1, label %GetPopulationInfo.exit28.i.i.i
    i32 2, label %GetPopulationInfo.exit.thread44.i.i.i
    i32 3, label %GetPopulationInfo.exit.thread48.i.i.i
    i32 4, label %GetPopulationInfo.exit.thread52.i.i.i
  ]

GetPopulationInfo.exit.thread.i.i.i:              ; preds = %bb.cc
  %i.ael = load ptr, ptr %i.acu, align 8, !tbaa !13
  %i.aem = load ptr, ptr %i.acx, align 8, !tbaa !13
  %i.aen = load i32, ptr %i.ads, align 8, !tbaa !7 ; 2 uses
  %i.aeo = icmp sgt i32 %i.aen, 0
  %i.aep = shl nuw i32 1, %i.aen
  %i.aeq = add nuw nsw i32 %i.aep, 280
  %i.aer = select i1 %i.aeo, i32 %i.aeq, i32 280
  br label %GetPopulationInfo.exit28.i.i.i

GetPopulationInfo.exit.thread44.i.i.i:            ; preds = %bb.cc
  br label %GetPopulationInfo.exit28.i.i.i

GetPopulationInfo.exit.thread48.i.i.i:            ; preds = %bb.cc
  br label %GetPopulationInfo.exit28.i.i.i

GetPopulationInfo.exit.thread52.i.i.i:            ; preds = %bb.cc
  br label %GetPopulationInfo.exit28.i.i.i

unreachable.i.i.i:                                ; preds = %bb.cc
  unreachable

GetPopulationInfo.exit28.i.i.i:                   ; preds = %GetPopulationInfo.exit.thread52.i.i.i, %GetPopulationInfo.exit.thread48.i.i.i, %GetPopulationInfo.exit.thread44.i.i.i, %GetPopulationInfo.exit.thread.i.i.i, %bb.cc
  %.13439.i.i.i = phi ptr [ %i.adk, %GetPopulationInfo.exit.thread52.i.i.i ], [ %i.ael, %GetPopulationInfo.exit.thread.i.i.i ], [ %i.adm, %GetPopulationInfo.exit.thread48.i.i.i ], [ %i.ado, %GetPopulationInfo.exit.thread44.i.i.i ], [ %i.adq, %bb.cc ]
  %.132.i.i.i = phi ptr [ %i.adl, %GetPopulationInfo.exit.thread52.i.i.i ], [ %i.aem, %GetPopulationInfo.exit.thread.i.i.i ], [ %i.adn, %GetPopulationInfo.exit.thread48.i.i.i ], [ %i.adp, %GetPopulationInfo.exit.thread44.i.i.i ], [ %i.adr, %bb.cc ]
  %.1.i.i.i = phi i32 [ 40, %GetPopulationInfo.exit.thread52.i.i.i ], [ %i.aer, %GetPopulationInfo.exit.thread.i.i.i ], [ 256, %GetPopulationInfo.exit.thread48.i.i.i ], [ 256, %GetPopulationInfo.exit.thread44.i.i.i ], [ 256, %bb.cc ]
  %i.aes = load ptr, ptr @VP8LGetCombinedEntropyUnrefined, align 8, !tbaa !27
  call void %i.aes(ptr noundef %.13439.i.i.i, ptr noundef %.132.i.i.i, i32 noundef %.1.i.i.i, ptr noundef nonnull %18, ptr noundef nonnull %17) #10, !inline_history !72
  %i.aet = load i32, ptr %i.abl, align 4, !tbaa !37 ; 3 uses
  %i.aeu = icmp slt i32 %i.aet, 5
  br i1 %i.aeu, label %bb.cd, label %bb.cj

bb.cd:                                            ; preds = %GetPopulationInfo.exit28.i.i.i
  %i.aev = icmp slt i32 %i.aet, 2
  br i1 %i.aev, label %BitsEntropyRefine.exit.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  switch i32 %i.aet, label %bb.ci [
    i32 2, label %bb.cf
    i32 3, label %bb.cj
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.aew = load i32, ptr %i.abm, align 8, !tbaa !39
  %i.aex = zext i32 %i.aew to i64
  %i.aey = mul nuw nsw i64 %i.aex, 830472192
  %i.aez = load i64, ptr %18, align 8, !tbaa !40
  %i.afa = add i64 %i.aey, %i.aez                 ; 3 uses
  %i.afb = icmp sgt i64 %i.afa, -1
  br i1 %i.afb, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.afc = add nuw nsw i64 %i.afa, 50
  %i.afd = udiv i64 %i.afc, 100
  br label %BitsEntropyRefine.exit.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %.neg8.i.i.i.i.i = sub i64 50, %i.afa
  %i.afe = udiv i64 %.neg8.i.i.i.i.i, 100
  %.neg.i.i.i.i.i = sub nsw i64 0, %i.afe
  br label %BitsEntropyRefine.exit.i.i.i

bb.ci:                                            ; preds = %bb.ce
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ce, %GetPopulationInfo.exit28.i.i.i
  %.0.i.i.i.i = phi i64 [ 950, %bb.ce ], [ 700, %bb.ci ], [ 627, %GetPopulationInfo.exit28.i.i.i ] ; 2 uses
  %i.aff = load i32, ptr %i.abm, align 8, !tbaa !39
  %i.afg = shl i32 %i.aff, 1
  %i.afh = load i32, ptr %i.abn, align 8, !tbaa !41
  %i.afi = sub i32 %i.afg, %i.afh
  %i.afj = zext i32 %i.afi to i64
  %i.afk = shl nuw nsw i64 %.0.i.i.i.i, 23
  %i.afl = mul i64 %i.afk, %i.afj
  %i.afm = sub nuw nsw i64 1000, %.0.i.i.i.i
  %i.afn = load i64, ptr %18, align 8, !tbaa !40  ; 2 uses
  %i.afo = mul i64 %i.afn, %i.afm
  %i.afp = add i64 %i.afl, %i.afo                 ; 3 uses
  %i.afq = icmp sgt i64 %i.afp, -1
  br i1 %i.afq, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.afr = add nuw nsw i64 %i.afp, 500
  %i.afs = udiv i64 %i.afr, 1000
  br label %DivRound.exit22.i.i.i.i

bb.cl:                                            ; preds = %bb.cj
  %.neg8.i20.i.i.i.i = sub i64 500, %i.afp
  %i.aft = udiv i64 %.neg8.i20.i.i.i.i, 1000
  %.neg.i21.i.i.i.i = sub nsw i64 0, %i.aft
  br label %DivRound.exit22.i.i.i.i

DivRound.exit22.i.i.i.i:                          ; preds = %bb.cl, %bb.ck
  %i.afu = phi i64 [ %i.afs, %bb.ck ], [ %.neg.i21.i.i.i.i, %bb.cl ]
  %..i.i.i.i = call i64 @llvm.umax.i64(i64 %i.afn, i64 %i.afu)
  br label %BitsEntropyRefine.exit.i.i.i

BitsEntropyRefine.exit.i.i.i:                     ; preds = %DivRound.exit22.i.i.i.i, %bb.ch, %bb.cg, %bb.cd
  %.016.i.i.i.i = phi i64 [ %..i.i.i.i, %DivRound.exit22.i.i.i.i ], [ 0, %bb.cd ], [ %i.afd, %bb.cg ], [ %.neg.i.i.i.i.i, %bb.ch ]
  %i.afv = load i32, ptr %17, align 4, !tbaa !3
  %i.afw = mul nsw i32 %i.afv, 1600
  %i.afx = load i32, ptr %i.abp, align 4, !tbaa !3
  %i.afy = mul nsw i32 %i.afx, 240
  %i.afz = load i32, ptr %i.abq, align 4, !tbaa !3
  %i.aga = mul nsw i32 %i.afz, 2640
  %i.agb = load i32, ptr %i.abs, align 4, !tbaa !3
  %i.agc = mul nsw i32 %i.agb, 720
  %i.agd = load i32, ptr %i.abo, align 4, !tbaa !3
  %i.age = mul nsw i32 %i.agd, 1840
  %i.agf = load i32, ptr %i.abr, align 4, !tbaa !3
  %i.agg = mul nsw i32 %i.agf, 3360
  %i.agh = add i32 %i.afy, %i.afw
  %i.agi = add i32 %i.agh, %i.aga
  %i.agj = add i32 %i.agi, %i.agc
  %i.agk = add i32 %i.agj, %i.age
  %i.agl = add i32 %i.agk, %i.agg
  %i.agm = zext i32 %i.agl to i64
  %i.agn = shl nuw nsw i64 %i.agm, 13
  %i.ago = add i64 %.016.i.i.i.i, 401814323
  %i.agp = add i64 %i.ago, %i.agn
  br label %GetCombinedEntropy.exit.i.i

GetCombinedEntropy.exit.i.i:                      ; preds = %BitsEntropyRefine.exit.i.i.i, %bb.cb, %bb.ca
  %.0.i.i.i = phi i64 [ %i.agp, %BitsEntropyRefine.exit.i.i.i ], [ %i.aeh, %bb.ca ], [ %i.aej, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %indvars.iv.i.i107
  store i64 %.0.i.i.i, ptr %i.agq, align 8, !tbaa !45
  %i.agr = add i64 %.0.i.i.i, %i.adt              ; 4 uses
  %.not.i.i108 = icmp ult i64 %i.agr, %i.adc
  br i1 %.not.i.i108, label %bb.bv, label %HistoQueuePush.exit.i109

GetCombinedHistogramEntropy.exit.i:               ; preds = %bb.bv
  store i64 %i.agr, ptr %i.abj, align 8
  %i.ags = sub nsw i64 %i.agr, %i.adc
  store i64 %i.ags, ptr %i.abt, align 8, !tbaa !61
  %i.agt = add nsw i32 %.sroa.13.1126.i, 1        ; 3 uses
  %i.agu = sext i32 %.sroa.13.1126.i to i64
  %i.agv = getelementptr inbounds [64 x i8], ptr %i.abg, i64 %i.agu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.agv, ptr noundef nonnull align 8 dereferenceable(64) %23, i64 64, i1 false), !tbaa.struct !66
  %i.agw = sext i32 %i.agt to i64
  %i.agx = getelementptr [64 x i8], ptr %i.abg, i64 %i.agw ; 2 uses
  %i.agy = getelementptr i8, ptr %i.agx, i64 -56
  %i.agz = load i64, ptr %i.agy, align 8, !tbaa !61
  %i.aha = load i64, ptr %i.abu, align 8, !tbaa !61
  %i.ahb = icmp slt i64 %i.agz, %i.aha
  br i1 %i.ahb, label %bb.cm, label %HistoQueuePush.exit.i109

bb.cm:                                            ; preds = %GetCombinedHistogramEntropy.exit.i
  %i.ahc = getelementptr i8, ptr %i.agx, i64 -64  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef nonnull align 8 dereferenceable(64) %i.abg, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.abg, ptr noundef nonnull align 8 dereferenceable(64) %i.ahc, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ahc, ptr noundef nonnull align 8 dereferenceable(64) %22, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %HistoQueuePush.exit.i109

HistoQueuePush.exit.i109:                         ; preds = %GetCombinedEntropy.exit.i.i, %bb.cm, %GetCombinedHistogramEntropy.exit.i, %bb.bt, %.lr.ph.i106
  %.sroa.13.7.i = phi i32 [ %i.abd, %.lr.ph.i106 ], [ %i.agt, %GetCombinedHistogramEntropy.exit.i ], [ %i.agt, %bb.cm ], [ %.sroa.13.1126.i, %bb.bt ], [ %.sroa.13.1126.i, %GetCombinedEntropy.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #10
  %i.ahd = add nuw i32 %.049127.i, 1              ; 2 uses
  %exitcond.not.i110 = icmp eq i32 %i.ahd, %i.abc
  br i1 %exitcond.not.i110, label %.loopexit118.i, label %.lr.ph.i106, !llvm.loop !73

.loopexit.i104:                                   ; preds = %bb.du, %.preheader.i103
  %.sroa.13.5.lcssa.i = phi i32 [ %.sroa.13.4.i101, %.preheader.i103 ], [ %.sroa.13.6.i, %bb.du ] ; 2 uses
  %i.ahe = icmp sgt i32 %.sroa.13.5.lcssa.i, 0
  br i1 %i.ahe, label %bb.cn, label %HistogramCombineGreedy.exit.thread, !llvm.loop !74

bb.cn:                                            ; preds = %.loopexit.i104, %.lr.ph145.i
  %.sroa.13.2144.i = phi i32 [ %.sroa.13.1.lcssa.i, %.lr.ph145.i ], [ %.sroa.13.5.lcssa.i, %.loopexit.i104 ]
  %i.ahf = load i32, ptr %i.abg, align 8, !tbaa !63 ; 6 uses
  %i.ahg = load i32, ptr %i.abw, align 4, !tbaa !64 ; 7 uses
  %i.ahh = sext i32 %i.ahg to i64                 ; 2 uses
  %i.ahi = getelementptr inbounds [8 x i8], ptr %i.abb, i64 %i.ahh
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !27
  %i.ahk = sext i32 %i.ahf to i64
  %i.ahl = getelementptr inbounds [8 x i8], ptr %i.abb, i64 %i.ahk ; 2 uses
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !27 ; 2 uses
  call fastcc void @HistogramAdd(ptr noundef %i.ahj, ptr noundef %i.ahm, ptr noundef %i.ahm)
  %i.ahn = load i64, ptr %i.abx, align 8, !tbaa !65
  %i.aho = load ptr, ptr %i.ahl, align 8, !tbaa !27 ; 6 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 3256
  store i64 %i.ahn, ptr %i.ahp, align 8, !tbaa !46
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.aho, i64 3264
  %i.ahr = load i64, ptr %i.aby, align 8, !tbaa !45
  store i64 %i.ahr, ptr %i.ahq, align 8, !tbaa !45
  %i.ahs = load i64, ptr %i.abz, align 8, !tbaa !45
  %i.aht = getelementptr inbounds nuw i8, ptr %i.aho, i64 3272
  store i64 %i.ahs, ptr %i.aht, align 8, !tbaa !45
  %i.ahu = load i64, ptr %i.aca, align 8, !tbaa !45
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.aho, i64 3280
  store i64 %i.ahu, ptr %i.ahv, align 8, !tbaa !45
  %i.ahw = load i64, ptr %i.acb, align 8, !tbaa !45
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aho, i64 3288
  store i64 %i.ahw, ptr %i.ahx, align 8, !tbaa !45
  %i.ahy = load i64, ptr %i.acc, align 8, !tbaa !45
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.aho, i64 3296
  store i64 %i.ahy, ptr %i.ahz, align 8, !tbaa !45
  %i.aia = load ptr, ptr %i.gk, align 8, !tbaa !22 ; 2 uses
  %i.aib = load i32, ptr %7, align 8, !tbaa !26   ; 2 uses
  %i.aic = sext i32 %i.aib to i64
  %i.aid = getelementptr [8 x i8], ptr %i.aia, i64 %i.aic
  %i.aie = getelementptr i8, ptr %i.aid, i64 -8
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !27
  %i.aig = getelementptr inbounds [8 x i8], ptr %i.aia, i64 %i.ahh
  store ptr %i.aif, ptr %i.aig, align 8, !tbaa !27
  %i.aih = add nsw i32 %i.aib, -1
  store i32 %i.aih, ptr %7, align 8, !tbaa !26
  br label %bb.co

.preheader.i103:                                  ; preds = %bb.cy
  %i.aii = load i32, ptr %7, align 8, !tbaa !26   ; 2 uses
  %i.aij = icmp sgt i32 %i.aii, 0
  br i1 %i.aij, label %.lr.ph142.i, label %.loopexit.i104

bb.co:                                            ; preds = %bb.cy, %bb.cn
  %.1133.i = phi i32 [ 0, %bb.cn ], [ %.2.i102, %bb.cy ] ; 3 uses
  %.sroa.13.3132.i = phi i32 [ %.sroa.13.2144.i, %bb.cn ], [ %.sroa.13.4.i101, %bb.cy ] ; 3 uses
  %i.aik = sext i32 %.1133.i to i64
  %i.ail = getelementptr inbounds [64 x i8], ptr %i.abg, i64 %i.aik ; 8 uses
  %i.aim = load i32, ptr %i.ail, align 8, !tbaa !63 ; 4 uses
  %i.ain = icmp eq i32 %i.aim, %i.ahf
  br i1 %i.ain, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ail, i64 4 ; 3 uses
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !64 ; 4 uses
  %i.aiq = icmp eq i32 %i.aip, %i.ahf
  %i.air = icmp eq i32 %i.aim, %i.ahg
  %or.cond.i98 = or i1 %i.air, %i.aiq
  %i.ais = icmp eq i32 %i.aip, %i.ahg
  %or.cond56.i = or i1 %i.ais, %or.cond.i98
  br i1 %or.cond56.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.ait = sext i32 %.sroa.13.3132.i to i64
  %i.aiu = getelementptr [64 x i8], ptr %i.abg, i64 %i.ait
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ail, ptr noundef nonnull align 8 dereferenceable(64) %i.aiv, i64 64, i1 false), !tbaa.struct !66
  %i.aiw = add nsw i32 %.sroa.13.3132.i, -1
  br label %bb.cy

bb.cr:                                            ; preds = %bb.cp
  %i.aix = load i32, ptr %7, align 8, !tbaa !26   ; 2 uses
  %i.aiy = icmp eq i32 %i.aim, %i.aix
  br i1 %i.aiy, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 %i.ahg, ptr %i.ail, align 8, !tbaa !63
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.aiz = phi i32 [ %i.ahg, %bb.cs ], [ %i.aim, %bb.cr ] ; 2 uses
  %i.aja = icmp eq i32 %i.aip, %i.aix
  br i1 %i.aja, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store i32 %i.ahg, ptr %i.aio, align 4, !tbaa !64
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.ajb = phi i32 [ %i.ahg, %bb.cu ], [ %i.aip, %bb.ct ] ; 2 uses
  %i.ajc = icmp sgt i32 %i.aiz, %i.ajb
  br i1 %i.ajc, label %bb.cw, label %HistoQueueFixPair.exit.i99

bb.cw:                                            ; preds = %bb.cv
  store i32 %i.ajb, ptr %i.ail, align 8, !tbaa !63
  store i32 %i.aiz, ptr %i.aio, align 4, !tbaa !64
  br label %HistoQueueFixPair.exit.i99

HistoQueueFixPair.exit.i99:                       ; preds = %bb.cw, %bb.cv
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ail, i64 8
  %i.aje = load i64, ptr %i.ajd, align 8, !tbaa !61
  %i.ajf = load i64, ptr %i.abu, align 8, !tbaa !61
  %i.ajg = icmp slt i64 %i.aje, %i.ajf
  br i1 %i.ajg, label %bb.cx, label %HistoQueueUpdateHead.exit.i100

bb.cx:                                            ; preds = %HistoQueueFixPair.exit.i99
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %21, ptr noundef nonnull align 8 dereferenceable(64) %i.abg, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.abg, ptr noundef nonnull align 8 dereferenceable(64) %i.ail, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ail, ptr noundef nonnull align 8 dereferenceable(64) %21, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %HistoQueueUpdateHead.exit.i100

HistoQueueUpdateHead.exit.i100:                   ; preds = %bb.cx, %HistoQueueFixPair.exit.i99
  %i.ajh = add nsw i32 %.1133.i, 1
  br label %bb.cy

bb.cy:                                            ; preds = %HistoQueueUpdateHead.exit.i100, %bb.cq
  %.sroa.13.4.i101 = phi i32 [ %i.aiw, %bb.cq ], [ %.sroa.13.3132.i, %HistoQueueUpdateHead.exit.i100 ] ; 4 uses
  %.2.i102 = phi i32 [ %.1133.i, %bb.cq ], [ %i.ajh, %HistoQueueUpdateHead.exit.i100 ] ; 2 uses
  %i.aji = icmp slt i32 %.2.i102, %.sroa.13.4.i101
  br i1 %i.aji, label %bb.co, label %.preheader.i103, !llvm.loop !75

.lr.ph142.i:                                      ; preds = %.preheader.i103, %bb.du
  %i.ajj = phi i32 [ %i.any, %bb.du ], [ %i.aii, %.preheader.i103 ]
  %.3140.i = phi i32 [ %i.anz, %bb.du ], [ 0, %.preheader.i103 ] ; 4 uses
  %.sroa.13.5139.i = phi i32 [ %.sroa.13.6.i, %bb.du ], [ %.sroa.13.4.i101, %.preheader.i103 ] ; 6 uses
  %i.ajk = icmp eq i32 %.3140.i, %i.ahf
  br i1 %i.ajk, label %bb.du, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph142.i
  %i.ajl = load ptr, ptr %i.gk, align 8, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #10
  %i.ajm = icmp eq i32 %.sroa.13.5139.i, %i.abd
  br i1 %i.ajm, label %HistoQueuePush.exit61.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %spec.select.i57.i = call i32 @llvm.smax.i32(i32 %i.ahf, i32 %.3140.i) ; 2 uses
  %spec.select26.i58.i = call i32 @llvm.smin.i32(i32 %i.ahf, i32 %.3140.i) ; 2 uses
  store i32 %spec.select26.i58.i, ptr %20, align 8, !tbaa !63
  store i32 %spec.select.i57.i, ptr %i.acd, align 4, !tbaa !64
  %i.ajn = sext i32 %spec.select26.i58.i to i64
  %i.ajo = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.ajn
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !27 ; 9 uses
  %i.ajq = zext nneg i32 %spec.select.i57.i to i64
  %i.ajr = getelementptr inbounds nuw [8 x i8], ptr %i.ajl, i64 %i.ajq
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !27 ; 10 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajp, i64 3256
  %i.aju = load i64, ptr %i.ajt, align 8, !tbaa !46
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajs, i64 3256
  %i.ajw = load i64, ptr %i.ajv, align 8, !tbaa !46
  %i.ajx = add i64 %i.ajw, %i.aju                 ; 3 uses
  %i.ajy = icmp slt i64 %i.ajx, 1
  br i1 %i.ajy, label %HistoQueuePush.exit61.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajp, i64 3304
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajs, i64 3304
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajp, i64 3244
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajs, i64 3244
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajs, i64 3264
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajp, i64 3264
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajp, i64 3080
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajs, i64 3080
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ajp, i64 2056
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajs, i64 2056
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ajp, i64 1032
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ajs, i64 1032
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ajp, i64 8
  %i.akm = getelementptr inbounds nuw i8, ptr %i.ajs, i64 8
  %i.akn = getelementptr inbounds nuw i8, ptr %i.ajs, i64 3240
  br label %bb.dd

bb.dc:                                            ; preds = %GetCombinedEntropy.exit.i68.i
  %indvars.iv.next.i72.i = add nuw nsw i64 %indvars.iv.i64.i, 1 ; 2 uses
  %exitcond.not.i73.i = icmp eq i64 %indvars.iv.next.i72.i, 5
  br i1 %exitcond.not.i73.i, label %GetCombinedHistogramEntropy.exit92.i, label %bb.dd, !llvm.loop !71

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.ako = phi i64 [ 0, %bb.db ], [ %i.anm, %bb.dc ]
  %indvars.iv.i64.i = phi i64 [ 0, %bb.db ], [ %indvars.iv.next.i72.i, %bb.dc ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %indvars.iv.i64.i
  %i.akq = load i8, ptr %i.akp, align 1, !tbaa !15
  %i.akr = getelementptr inbounds nuw i8, ptr %i.aka, i64 %indvars.iv.i64.i
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !15
  %i.akt = getelementptr inbounds nuw [2 x i8], ptr %i.akb, i64 %indvars.iv.i64.i
  %i.aku = load i16, ptr %i.akt, align 2, !tbaa !14 ; 2 uses
  %.not.i.i65.i = icmp eq i16 %i.aku, -1
  br i1 %.not.i.i65.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.akv = getelementptr inbounds nuw [2 x i8], ptr %i.akc, i64 %indvars.iv.i64.i
  %i.akw = load i16, ptr %i.akv, align 2, !tbaa !14
  %i.akx = icmp ne i16 %i.aku, %i.akw
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.aky = phi i1 [ true, %bb.dd ], [ %i.akx, %bb.de ]
  %i.akz = icmp ne i8 %i.akq, 0                   ; 2 uses
  %or.cond.i.i66.i = select i1 %i.aky, i1 %i.akz, i1 false
  %i.ala = icmp ne i8 %i.aks, 0
  %or.cond3.i.i67.i = select i1 %or.cond.i.i66.i, i1 %i.ala, i1 false
  br i1 %or.cond3.i.i67.i, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  br i1 %i.akz, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.ake, i64 %indvars.iv.i64.i
  %i.alc = load i64, ptr %i.alb, align 8, !tbaa !45
  br label %GetCombinedEntropy.exit.i68.i

bb.di:                                            ; preds = %bb.dg
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.akd, i64 %indvars.iv.i64.i
  %i.ale = load i64, ptr %i.ald, align 8, !tbaa !45
  br label %GetCombinedEntropy.exit.i68.i

bb.dj:                                            ; preds = %bb.df
  %i.alf = trunc nuw nsw i64 %indvars.iv.i64.i to i32
  switch i32 %i.alf, label %unreachable.i.i91.i [
    i32 0, label %GetPopulationInfo.exit.thread.i.i90.i
    i32 1, label %GetPopulationInfo.exit28.i.i75.i
    i32 2, label %GetPopulationInfo.exit.thread44.i.i89.i
    i32 3, label %GetPopulationInfo.exit.thread48.i.i88.i
    i32 4, label %GetPopulationInfo.exit.thread52.i.i74.i
  ]

GetPopulationInfo.exit.thread.i.i90.i:            ; preds = %bb.dj
  %i.alg = load ptr, ptr %i.ajp, align 8, !tbaa !13
  %i.alh = load ptr, ptr %i.ajs, align 8, !tbaa !13
  %i.ali = load i32, ptr %i.akn, align 8, !tbaa !7 ; 2 uses
  %i.alj = icmp sgt i32 %i.ali, 0
  %i.alk = shl nuw i32 1, %i.ali
  %i.all = add nuw nsw i32 %i.alk, 280
  %i.alm = select i1 %i.alj, i32 %i.all, i32 280
  br label %GetPopulationInfo.exit28.i.i75.i

GetPopulationInfo.exit.thread44.i.i89.i:          ; preds = %bb.dj
  br label %GetPopulationInfo.exit28.i.i75.i

GetPopulationInfo.exit.thread48.i.i88.i:          ; preds = %bb.dj
  br label %GetPopulationInfo.exit28.i.i75.i

GetPopulationInfo.exit.thread52.i.i74.i:          ; preds = %bb.dj
  br label %GetPopulationInfo.exit28.i.i75.i

unreachable.i.i91.i:                              ; preds = %bb.dj
  unreachable

GetPopulationInfo.exit28.i.i75.i:                 ; preds = %GetPopulationInfo.exit.thread52.i.i74.i, %GetPopulationInfo.exit.thread48.i.i88.i, %GetPopulationInfo.exit.thread44.i.i89.i, %GetPopulationInfo.exit.thread.i.i90.i, %bb.dj
  %.13439.i.i76.i = phi ptr [ %i.akf, %GetPopulationInfo.exit.thread52.i.i74.i ], [ %i.alg, %GetPopulationInfo.exit.thread.i.i90.i ], [ %i.akh, %GetPopulationInfo.exit.thread48.i.i88.i ], [ %i.akj, %GetPopulationInfo.exit.thread44.i.i89.i ], [ %i.akl, %bb.dj ]
  %.132.i.i77.i = phi ptr [ %i.akg, %GetPopulationInfo.exit.thread52.i.i74.i ], [ %i.alh, %GetPopulationInfo.exit.thread.i.i90.i ], [ %i.aki, %GetPopulationInfo.exit.thread48.i.i88.i ], [ %i.akk, %GetPopulationInfo.exit.thread44.i.i89.i ], [ %i.akm, %bb.dj ]
  %.1.i.i78.i = phi i32 [ 40, %GetPopulationInfo.exit.thread52.i.i74.i ], [ %i.alm, %GetPopulationInfo.exit.thread.i.i90.i ], [ 256, %GetPopulationInfo.exit.thread48.i.i88.i ], [ 256, %GetPopulationInfo.exit.thread44.i.i89.i ], [ 256, %bb.dj ]
  %i.aln = load ptr, ptr @VP8LGetCombinedEntropyUnrefined, align 8, !tbaa !27
  call void %i.aln(ptr noundef %.13439.i.i76.i, ptr noundef %.132.i.i77.i, i32 noundef %.1.i.i78.i, ptr noundef nonnull %16, ptr noundef nonnull %15) #10, !inline_history !72
  %i.alo = load i32, ptr %i.acg, align 4, !tbaa !37 ; 3 uses
  %i.alp = icmp slt i32 %i.alo, 5
  br i1 %i.alp, label %bb.dk, label %bb.dq

bb.dk:                                            ; preds = %GetPopulationInfo.exit28.i.i75.i
  %i.alq = icmp slt i32 %i.alo, 2
  br i1 %i.alq, label %BitsEntropyRefine.exit.i.i84.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  switch i32 %i.alo, label %bb.dp [
    i32 2, label %bb.dm
    i32 3, label %bb.dq
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.alr = load i32, ptr %i.ach, align 8, !tbaa !39
  %i.als = zext i32 %i.alr to i64
  %i.alt = mul nuw nsw i64 %i.als, 830472192
  %i.alu = load i64, ptr %16, align 8, !tbaa !40
  %i.alv = add i64 %i.alt, %i.alu                 ; 3 uses
  %i.alw = icmp sgt i64 %i.alv, -1
  br i1 %i.alw, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.alx = add nuw nsw i64 %i.alv, 50
  %i.aly = udiv i64 %i.alx, 100
  br label %BitsEntropyRefine.exit.i.i84.i

bb.do:                                            ; preds = %bb.dm
  %.neg8.i.i.i.i86.i = sub i64 50, %i.alv
  %i.alz = udiv i64 %.neg8.i.i.i.i86.i, 100
  %.neg.i.i.i.i87.i = sub nsw i64 0, %i.alz
  br label %BitsEntropyRefine.exit.i.i84.i

bb.dp:                                            ; preds = %bb.dl
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dl, %GetPopulationInfo.exit28.i.i75.i
  %.0.i.i.i79.i = phi i64 [ 950, %bb.dl ], [ 700, %bb.dp ], [ 627, %GetPopulationInfo.exit28.i.i75.i ] ; 2 uses
  %i.ama = load i32, ptr %i.ach, align 8, !tbaa !39
  %i.amb = shl i32 %i.ama, 1
  %i.amc = load i32, ptr %i.aci, align 8, !tbaa !41
  %i.amd = sub i32 %i.amb, %i.amc
  %i.ame = zext i32 %i.amd to i64
  %i.amf = shl nuw nsw i64 %.0.i.i.i79.i, 23
  %i.amg = mul i64 %i.amf, %i.ame
  %i.amh = sub nuw nsw i64 1000, %.0.i.i.i79.i
  %i.ami = load i64, ptr %16, align 8, !tbaa !40  ; 2 uses
  %i.amj = mul i64 %i.ami, %i.amh
  %i.amk = add i64 %i.amg, %i.amj                 ; 3 uses
  %i.aml = icmp sgt i64 %i.amk, -1
  br i1 %i.aml, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.amm = add nuw nsw i64 %i.amk, 500
  %i.amn = udiv i64 %i.amm, 1000
  br label %DivRound.exit22.i.i.i82.i

bb.ds:                                            ; preds = %bb.dq
  %.neg8.i20.i.i.i80.i = sub i64 500, %i.amk
  %i.amo = udiv i64 %.neg8.i20.i.i.i80.i, 1000
  %.neg.i21.i.i.i81.i = sub nsw i64 0, %i.amo
  br label %DivRound.exit22.i.i.i82.i

DivRound.exit22.i.i.i82.i:                        ; preds = %bb.ds, %bb.dr
  %i.amp = phi i64 [ %i.amn, %bb.dr ], [ %.neg.i21.i.i.i81.i, %bb.ds ]
  %..i.i.i83.i = call i64 @llvm.umax.i64(i64 %i.ami, i64 %i.amp)
  br label %BitsEntropyRefine.exit.i.i84.i

BitsEntropyRefine.exit.i.i84.i:                   ; preds = %DivRound.exit22.i.i.i82.i, %bb.do, %bb.dn, %bb.dk
  %.016.i.i.i85.i = phi i64 [ %..i.i.i83.i, %DivRound.exit22.i.i.i82.i ], [ 0, %bb.dk ], [ %i.aly, %bb.dn ], [ %.neg.i.i.i.i87.i, %bb.do ]
  %i.amq = load i32, ptr %15, align 4, !tbaa !3
  %i.amr = mul nsw i32 %i.amq, 1600
  %i.ams = load i32, ptr %i.ack, align 4, !tbaa !3
  %i.amt = mul nsw i32 %i.ams, 240
  %i.amu = load i32, ptr %i.acl, align 4, !tbaa !3
  %i.amv = mul nsw i32 %i.amu, 2640
  %i.amw = load i32, ptr %i.acn, align 4, !tbaa !3
  %i.amx = mul nsw i32 %i.amw, 720
  %i.amy = load i32, ptr %i.acj, align 4, !tbaa !3
  %i.amz = mul nsw i32 %i.amy, 1840
  %i.ana = load i32, ptr %i.acm, align 4, !tbaa !3
  %i.anb = mul nsw i32 %i.ana, 3360
  %i.anc = add i32 %i.amt, %i.amr
  %i.and = add i32 %i.anc, %i.amv
  %i.ane = add i32 %i.and, %i.amx
  %i.anf = add i32 %i.ane, %i.amz
  %i.ang = add i32 %i.anf, %i.anb
  %i.anh = zext i32 %i.ang to i64
  %i.ani = shl nuw nsw i64 %i.anh, 13
  %i.anj = add i64 %.016.i.i.i85.i, 401814323
  %i.ank = add i64 %i.anj, %i.ani
  br label %GetCombinedEntropy.exit.i68.i

GetCombinedEntropy.exit.i68.i:                    ; preds = %BitsEntropyRefine.exit.i.i84.i, %bb.di, %bb.dh
  %.0.i.i69.i = phi i64 [ %i.ank, %BitsEntropyRefine.exit.i.i84.i ], [ %i.alc, %bb.dh ], [ %i.ale, %bb.di ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  %i.anl = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %indvars.iv.i64.i
  store i64 %.0.i.i69.i, ptr %i.anl, align 8, !tbaa !45
  %i.anm = add i64 %.0.i.i69.i, %i.ako            ; 4 uses
  %.not.i70.i = icmp ult i64 %i.anm, %i.ajx
  br i1 %.not.i70.i, label %bb.dc, label %HistoQueuePush.exit61.i

GetCombinedHistogramEntropy.exit92.i:             ; preds = %bb.dc
  store i64 %i.anm, ptr %i.ace, align 8
  %i.ann = sub nsw i64 %i.anm, %i.ajx
  store i64 %i.ann, ptr %i.aco, align 8, !tbaa !61
  %i.ano = add nsw i32 %.sroa.13.5139.i, 1        ; 3 uses
  %i.anp = sext i32 %.sroa.13.5139.i to i64
  %i.anq = getelementptr inbounds [64 x i8], ptr %i.abg, i64 %i.anp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.anq, ptr noundef nonnull align 8 dereferenceable(64) %20, i64 64, i1 false), !tbaa.struct !66
  %i.anr = sext i32 %i.ano to i64
  %i.ans = getelementptr [64 x i8], ptr %i.abg, i64 %i.anr ; 2 uses
  %i.ant = getelementptr i8, ptr %i.ans, i64 -56
  %i.anu = load i64, ptr %i.ant, align 8, !tbaa !61
  %i.anv = load i64, ptr %i.abu, align 8, !tbaa !61
  %i.anw = icmp slt i64 %i.anu, %i.anv
  br i1 %i.anw, label %bb.dt, label %HistoQueuePush.exit61.i

bb.dt:                                            ; preds = %GetCombinedHistogramEntropy.exit92.i
  %i.anx = getelementptr i8, ptr %i.ans, i64 -64  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull align 8 dereferenceable(64) %i.abg, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.abg, ptr noundef nonnull align 8 dereferenceable(64) %i.anx, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.anx, ptr noundef nonnull align 8 dereferenceable(64) %19, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %HistoQueuePush.exit61.i

HistoQueuePush.exit61.i:                          ; preds = %GetCombinedEntropy.exit.i68.i, %bb.dt, %GetCombinedHistogramEntropy.exit92.i, %bb.da, %bb.cz
  %.sroa.13.8.i = phi i32 [ %i.abd, %bb.cz ], [ %i.ano, %GetCombinedHistogramEntropy.exit92.i ], [ %i.ano, %bb.dt ], [ %.sroa.13.5139.i, %bb.da ], [ %.sroa.13.5139.i, %GetCombinedEntropy.exit.i68.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #10
  %.pre.i105 = load i32, ptr %7, align 8, !tbaa !26
  br label %bb.du

bb.du:                                            ; preds = %HistoQueuePush.exit61.i, %.lr.ph142.i
  %i.any = phi i32 [ %i.ajj, %.lr.ph142.i ], [ %.pre.i105, %HistoQueuePush.exit61.i ] ; 2 uses
  %.sroa.13.6.i = phi i32 [ %.sroa.13.5139.i, %.lr.ph142.i ], [ %.sroa.13.8.i, %HistoQueuePush.exit61.i ] ; 2 uses
  %i.anz = add nuw nsw i32 %.3140.i, 1            ; 2 uses
  %i.aoa = icmp slt i32 %i.anz, %i.any
  br i1 %i.aoa, label %.lr.ph142.i, label %.loopexit.i104, !llvm.loop !76

HistogramCombineGreedy.exit.thread:               ; preds = %.loopexit.i104, %.preheader116.i, %.preheader119.i
  call void @WebPSafeFree(ptr noundef %i.abg) #10
  %.pre198 = load i32, ptr %7, align 8, !tbaa !26
  br label %.thread153

bb.dv:                                            ; preds = %.thread148
  call void @WebPSafeFree(ptr noundef null) #10
  %i.aob = call i32 @WebPEncodingSetError(ptr noundef %10, i32 noundef 1) #10 ; 0 uses
  br label %bb.eu

.thread153:                                       ; preds = %.loopexit160.thread, %.loopexit, %HistogramCombineGreedy.exit.thread, %.loopexit160
  %i.aoc = phi i32 [ %.pre199, %.loopexit ], [ %.pre198, %HistogramCombineGreedy.exit.thread ], [ %i.ss, %.loopexit160 ], [ %i.uk, %.loopexit160.thread ] ; 3 uses
  %.val62 = load ptr, ptr %i.x, align 8, !tbaa !22 ; 2 uses
  %i.aod = load ptr, ptr %i.gk, align 8, !tbaa !22 ; 5 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !25 ; 6 uses
  %i.aog = icmp sgt i32 %i.aoc, 1
  %i.aoh = icmp sgt i32 %i.aof, 0                 ; 3 uses
  br i1 %i.aog, label %.preheader14.i, label %.preheader15.i

.preheader15.i:                                   ; preds = %.thread153
  br i1 %i.aoh, label %.lr.ph.preheader.i126, label %.loopexit.i113

.lr.ph.preheader.i126:                            ; preds = %.preheader15.i
  %i.aoi = zext nneg i32 %i.aof to i64
  %i.aoj = shl nuw nsw i64 %i.aoi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %9, i8 0, i64 %i.aoj, i1 false), !tbaa !3
  br label %.loopexitthread-pre-split.i

.preheader14.i:                                   ; preds = %.thread153
  br i1 %i.aoh, label %.lr.ph30.split.us.preheader.i, label %.loopexit.i113

.lr.ph30.split.us.preheader.i:                    ; preds = %.preheader14.i
  %i.aok = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.aol = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aon = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aoo = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.aop = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.aoq = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.aor = getelementptr inbounds nuw i8, ptr %13, i64 20
  %wide.trip.count42.i = zext nneg i32 %i.aof to i64
  %wide.trip.count.i127 = zext nneg i32 %i.aoc to i64
  br label %.lr.ph30.split.us.i

.lr.ph30.split.us.i:                              ; preds = %bb.eq, %.lr.ph30.split.us.preheader.i
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph30.split.us.preheader.i ], [ %indvars.iv.next40.i, %bb.eq ] ; 4 uses
  %i.aos = getelementptr inbounds nuw [8 x i8], ptr %.val62, i64 %indvars.iv39.i ; 2 uses
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !27
  %i.aou = icmp eq ptr %i.aot, null
  br i1 %i.aou, label %bb.ep, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.lr.ph30.split.us.i, %.loopexit70.i
  %indvars.iv.i128 = phi i64 [ %indvars.iv.next.i133, %.loopexit70.i ], [ 0, %.lr.ph30.split.us.i ] ; 3 uses
  %.04724.us.i = phi i64 [ %i.asu, %.loopexit70.i ], [ 9223372036854775807, %.lr.ph30.split.us.i ] ; 5 uses
  %.04923.us.i = phi i32 [ %i.ast, %.loopexit70.i ], [ 0, %.lr.ph30.split.us.i ] ; 2 uses
  %i.aov = getelementptr inbounds nuw [8 x i8], ptr %i.aod, i64 %indvars.iv.i128
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !27 ; 9 uses
  %i.aox = load ptr, ptr %i.aos, align 8, !tbaa !27 ; 9 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aow, i64 3256 ; 2 uses
  %i.aoz = load i64, ptr %i.aoy, align 8, !tbaa !46 ; 2 uses
  %i.apa = icmp sgt i64 %.04724.us.i, -1
  %i.apb = sub nuw nsw i64 9223372036854775807, %.04724.us.i
  %.not.i.i.us.i129 = icmp sgt i64 %i.aoz, %i.apb
  %or.cond.i.i.us.i130 = select i1 %i.apa, i1 %.not.i.i.us.i129, i1 false
  %i.apc = add nsw i64 %i.aoz, %.04724.us.i
  %spec.select.i.i.us.i131 = select i1 %or.cond.i.i.us.i130, i64 9223372036854775807, i64 %i.apc ; 2 uses
  %i.apd = icmp slt i64 %spec.select.i.i.us.i131, 1
  br i1 %i.apd, label %.loopexit70.i, label %bb.dw

bb.dw:                                            ; preds = %.preheader.us.i
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aow, i64 3304
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aox, i64 3304
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aow, i64 3244
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aox, i64 3244
  %i.api = getelementptr inbounds nuw i8, ptr %i.aox, i64 3264
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aow, i64 3264
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aow, i64 3080
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aox, i64 3080
  %i.apm = getelementptr inbounds nuw i8, ptr %i.aow, i64 2056
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aox, i64 2056
  %i.apo = getelementptr inbounds nuw i8, ptr %i.aow, i64 1032
  %i.app = getelementptr inbounds nuw i8, ptr %i.aox, i64 1032
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aox, i64 8
  %i.aps = getelementptr inbounds nuw i8, ptr %i.aox, i64 3240
  br label %bb.dx

bb.dx:                                            ; preds = %bb.en, %bb.dw
  %.28.us.i = phi i64 [ 0, %bb.dw ], [ %i.asp, %bb.en ]
  %indvars.iv.i54.us.i = phi i64 [ 0, %bb.dw ], [ %indvars.iv.next.i59.us.i, %bb.en ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  %i.apt = getelementptr inbounds nuw i8, ptr %i.ape, i64 %indvars.iv.i54.us.i
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !15
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apf, i64 %indvars.iv.i54.us.i
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !15
  %i.apx = getelementptr inbounds nuw [2 x i8], ptr %i.apg, i64 %indvars.iv.i54.us.i
  %i.apy = load i16, ptr %i.apx, align 2, !tbaa !14 ; 2 uses
  %.not.i.i55.us.i = icmp eq i16 %i.apy, -1
  br i1 %.not.i.i55.us.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.apz = getelementptr inbounds nuw [2 x i8], ptr %i.aph, i64 %indvars.iv.i54.us.i
  %i.aqa = load i16, ptr %i.apz, align 2, !tbaa !14
  %i.aqb = icmp ne i16 %i.apy, %i.aqa
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.aqc = phi i1 [ true, %bb.dx ], [ %i.aqb, %bb.dy ]
  %i.aqd = icmp ne i8 %i.apu, 0                   ; 2 uses
  %or.cond.i.i56.us.i = select i1 %i.aqc, i1 %i.aqd, i1 false
  %i.aqe = icmp ne i8 %i.apw, 0
  %or.cond3.i.i.us.i = select i1 %or.cond.i.i56.us.i, i1 %i.aqe, i1 false
  br i1 %or.cond3.i.i.us.i, label %bb.ed, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  br i1 %i.aqd, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.api, i64 %indvars.iv.i54.us.i
  %i.aqg = load i64, ptr %i.aqf, align 8, !tbaa !45
  br label %GetCombinedEntropy.exit.i.us.i

bb.ec:                                            ; preds = %bb.ea
  %i.aqh = getelementptr inbounds nuw [8 x i8], ptr %i.apj, i64 %indvars.iv.i54.us.i
  %i.aqi = load i64, ptr %i.aqh, align 8, !tbaa !45
  br label %GetCombinedEntropy.exit.i.us.i

bb.ed:                                            ; preds = %bb.dz
  %i.aqj = trunc nuw nsw i64 %indvars.iv.i54.us.i to i32
  switch i32 %i.aqj, label %unreachable.i.i.i136 [
    i32 0, label %GetPopulationInfo.exit.thread.i.i.us.i
    i32 1, label %GetPopulationInfo.exit28.i.i.us.i
    i32 2, label %GetPopulationInfo.exit.thread44.i.i.us.i
    i32 3, label %GetPopulationInfo.exit.thread48.i.i.us.i
    i32 4, label %GetPopulationInfo.exit.thread52.i.i.us.i
  ]

GetPopulationInfo.exit.thread52.i.i.us.i:         ; preds = %bb.ed
  br label %GetPopulationInfo.exit28.i.i.us.i

GetPopulationInfo.exit.thread48.i.i.us.i:         ; preds = %bb.ed
  br label %GetPopulationInfo.exit28.i.i.us.i

GetPopulationInfo.exit.thread44.i.i.us.i:         ; preds = %bb.ed
  br label %GetPopulationInfo.exit28.i.i.us.i

GetPopulationInfo.exit.thread.i.i.us.i:           ; preds = %bb.ed
  %i.aqk = load ptr, ptr %i.aow, align 8, !tbaa !13
  %i.aql = load ptr, ptr %i.aox, align 8, !tbaa !13
  %i.aqm = load i32, ptr %i.aps, align 8, !tbaa !7 ; 2 uses
  %i.aqn = icmp sgt i32 %i.aqm, 0
  %i.aqo = shl nuw i32 1, %i.aqm
  %i.aqp = add nuw nsw i32 %i.aqo, 280
  %i.aqq = select i1 %i.aqn, i32 %i.aqp, i32 280
  br label %GetPopulationInfo.exit28.i.i.us.i

GetPopulationInfo.exit28.i.i.us.i:                ; preds = %GetPopulationInfo.exit.thread.i.i.us.i, %GetPopulationInfo.exit.thread44.i.i.us.i, %GetPopulationInfo.exit.thread48.i.i.us.i, %GetPopulationInfo.exit.thread52.i.i.us.i, %bb.ed
  %.13439.i.i.us.i = phi ptr [ %i.apk, %GetPopulationInfo.exit.thread52.i.i.us.i ], [ %i.aqk, %GetPopulationInfo.exit.thread.i.i.us.i ], [ %i.apm, %GetPopulationInfo.exit.thread48.i.i.us.i ], [ %i.apo, %GetPopulationInfo.exit.thread44.i.i.us.i ], [ %i.apq, %bb.ed ]
  %.132.i.i.us.i = phi ptr [ %i.apl, %GetPopulationInfo.exit.thread52.i.i.us.i ], [ %i.aql, %GetPopulationInfo.exit.thread.i.i.us.i ], [ %i.apn, %GetPopulationInfo.exit.thread48.i.i.us.i ], [ %i.app, %GetPopulationInfo.exit.thread44.i.i.us.i ], [ %i.apr, %bb.ed ]
  %.1.i.i.us.i = phi i32 [ 40, %GetPopulationInfo.exit.thread52.i.i.us.i ], [ %i.aqq, %GetPopulationInfo.exit.thread.i.i.us.i ], [ 256, %GetPopulationInfo.exit.thread48.i.i.us.i ], [ 256, %GetPopulationInfo.exit.thread44.i.i.us.i ], [ 256, %bb.ed ]
  %i.aqr = load ptr, ptr @VP8LGetCombinedEntropyUnrefined, align 8, !tbaa !27
  call void %i.aqr(ptr noundef %.13439.i.i.us.i, ptr noundef %.132.i.i.us.i, i32 noundef %.1.i.i.us.i, ptr noundef nonnull %14, ptr noundef nonnull %13) #10, !inline_history !77
  %i.aqs = load i32, ptr %i.aok, align 4, !tbaa !37 ; 3 uses
  %i.aqt = icmp slt i32 %i.aqs, 5
  br i1 %i.aqt, label %bb.ee, label %bb.ek

bb.ee:                                            ; preds = %GetPopulationInfo.exit28.i.i.us.i
  %i.aqu = icmp slt i32 %i.aqs, 2
  br i1 %i.aqu, label %BitsEntropyRefine.exit.i.i.us.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  switch i32 %i.aqs, label %bb.ej [
    i32 2, label %bb.eg
    i32 3, label %bb.ek
  ]

bb.eg:                                            ; preds = %bb.ef
  %i.aqv = load i32, ptr %i.aol, align 8, !tbaa !39
  %i.aqw = zext i32 %i.aqv to i64
  %i.aqx = mul nuw nsw i64 %i.aqw, 830472192
  %i.aqy = load i64, ptr %14, align 8, !tbaa !40
  %i.aqz = add i64 %i.aqx, %i.aqy                 ; 3 uses
  %i.ara = icmp sgt i64 %i.aqz, -1
  br i1 %i.ara, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %.neg8.i.i.i.i.us.i = sub i64 50, %i.aqz
  %i.arb = udiv i64 %.neg8.i.i.i.i.us.i, 100
end_hunk_0
