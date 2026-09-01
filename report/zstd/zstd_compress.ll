Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_compress?download=true
inline.NumInlined: 848
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ZSTD_buildSequencesStatistics:bb.a

ZSTD_MLcode.exit.i:                               ; preds = %bb.e, %bb.d
  %i.aw = phi i8 [ %i.as, %bb.d ], [ %i.av, %bb.e ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !206
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !207

._crit_edge.i:                                    ; preds = %ZSTD_MLcode.exit.i, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !208 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !209
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bd
  store i8 35, ptr %i.be, align 1, !tbaa !206
  %.pr.i = load i32, ptr %i.ay, align 8, !tbaa !208
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.bf = phi i32 [ %.pr.i, %bb.f ], [ %i.az, %._crit_edge.i ]
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.h, label %ZSTD_seqToCodes.exit

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !209
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bj
  store i8 52, ptr %i.bk, align 1, !tbaa !206
  br label %ZSTD_seqToCodes.exit

ZSTD_seqToCodes.exit:                             ; preds = %bb.g, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.bl, align 8, !tbaa !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 35, ptr %i.a, align 4, !tbaa !51
  %i.bm = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %i.a, ptr noundef %i.i, i64 noundef %2, ptr noundef %9, i64 noundef %10) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 3548
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !232
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 3548 ; 2 uses
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !232
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !51
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 2224 ; 2 uses
  %i.bs = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %i.bp, ptr noundef %8, i32 noundef %i.bq, i64 noundef %i.bm, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %i.br, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #26 ; 3 uses
  store i32 %i.bs, ptr %0, align 8, !tbaa !443
  %i.bt = ptrtoint ptr %6 to i64                  ; 3 uses
  %i.bu = ptrtoint ptr %5 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !51
  %i.bx = call i64 @ZSTD_buildCTable(ptr noundef %5, i64 noundef %i.bv, ptr noundef nonnull %i.d, i32 noundef 9, i32 noundef %i.bs, ptr noundef %8, i32 noundef %i.bw, ptr noundef %i.i, i64 noundef %2, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 35, ptr noundef nonnull %i.br, i64 noundef 1316, ptr noundef %9, i64 noundef %10) #26 ; 5 uses
  %i.by = icmp ult i64 %i.bx, -119
  br i1 %i.by, label %bb.i, label %bb.k

bb.i:                                             ; preds = %ZSTD_seqToCodes.exit
  %i.bz = icmp eq i32 %i.bs, 2
  br i1 %i.bz, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store i64 %i.bx, ptr %i.l, align 8, !tbaa !440
  br label %bb.l

bb.k:                                             ; preds = %ZSTD_seqToCodes.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.ca, align 8, !tbaa !444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.u

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 %i.bx ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 31, ptr %i.b, align 4, !tbaa !51
  %i.cc = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %i.b, ptr noundef %i.g, i64 noundef %2, ptr noundef %9, i64 noundef %10) #26
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !51  ; 2 uses
  %i.ce = icmp ult i32 %i.cd, 29
  %i.cf = zext i1 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 3540
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !236
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 3540 ; 2 uses
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !236
  %i.cj = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %i.ci, ptr noundef %8, i32 noundef %i.cd, i64 noundef %i.cc, i64 noundef %2, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %i.cf, i32 noundef %7) #26 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !445
  %i.cl = ptrtoint ptr %i.cb to i64
  %i.cm = sub i64 %i.bt, %i.cl
  %i.cn = load i32, ptr %i.b, align 4, !tbaa !51
  %i.co = call i64 @ZSTD_buildCTable(ptr noundef %i.cb, i64 noundef %i.cm, ptr noundef nonnull %4, i32 noundef 8, i32 noundef %i.cj, ptr noundef %8, i32 noundef %i.cn, ptr noundef %i.g, i64 noundef %2, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef 28, ptr noundef nonnull %3, i64 noundef 772, ptr noundef %9, i64 noundef %10) #26 ; 5 uses
  %i.cp = icmp ult i64 %i.co, -119
  br i1 %i.cp, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cq = icmp eq i32 %i.cj, 2
  br i1 %i.cq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store i64 %i.co, ptr %i.l, align 8, !tbaa !440
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.co, ptr %i.cr, align 8, !tbaa !444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.u

bb.p:                                             ; preds = %bb.m, %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.co ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 52, ptr %i.c, align 4, !tbaa !51
  %i.ct = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %i.c, ptr noundef %i.k, i64 noundef %2, ptr noundef %9, i64 noundef %10) #26
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 3544
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !237
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 3544 ; 2 uses
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !237
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !51
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 772 ; 2 uses
  %i.cz = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %i.cw, ptr noundef %8, i32 noundef %i.cx, i64 noundef %i.ct, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %i.cy, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #26 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !446
  %i.db = ptrtoint ptr %i.cs to i64
  %i.dc = sub i64 %i.bt, %i.db
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !51
  %i.de = call i64 @ZSTD_buildCTable(ptr noundef %i.cs, i64 noundef %i.dc, ptr noundef nonnull %i.e, i32 noundef 9, i32 noundef %i.cz, ptr noundef %8, i32 noundef %i.dd, ptr noundef %i.k, i64 noundef %2, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 52, ptr noundef nonnull %i.cy, i64 noundef 1452, ptr noundef %9, i64 noundef %10) #26 ; 4 uses
  %i.df = icmp ult i64 %i.de, -119
  br i1 %i.df, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dg = icmp eq i32 %i.cz, 2
  br i1 %i.dg, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store i64 %i.de, ptr %i.l, align 8, !tbaa !440
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.de, ptr %i.dh, align 8, !tbaa !444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.di = add nuw nsw i64 %i.co, %i.bx
  %i.dj = add nuw nsw i64 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !444
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.o, %bb.k, %bb.t
  ret void
}

declare i64 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare i32 @ZSTD_selectEncodingType(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare i64 @ZSTD_buildCTable(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ZSTD_overflowCorrectIfNeeded(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !250 ; 2 uses
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %.val to i64                ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp ult i32 %i.g, -624951295
  br i1 %i.h, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89
  %i.k = shl nuw i32 1, %i.j
  %i.l = load i32, ptr %i.a, align 4, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !95
  %i.o = icmp ugt i32 %i.n, 5
  %.neg.i = sext i1 %i.o to i32
  %i.p = add i32 %i.l, %.neg.i
  %i.q = shl nuw i32 1, %i.p                      ; 3 uses
  %i.r = add i32 %i.q, -1
  %i.s = ptrtoint ptr %3 to i64
  %i.t = sub i64 %i.s, %i.e
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = and i32 %i.r, %i.u                       ; 2 uses
  %i.w = icmp samesign ult i32 %i.v, 2
  %i.x = tail call i32 @llvm.umax.i32(i32 %i.q, i32 2)
  %i.y = select i1 %i.w, i32 %i.x, i32 0
  %i.z = tail call i32 @llvm.umax.i32(i32 %i.k, i32 %i.q)
  %i.aa = add nuw i32 %i.z, %i.v
  %i.ab = add i32 %i.aa, %i.y
  %5 = sub i32 %i.u, %i.ab                        ; 9 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 %6
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !250
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !247
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 %6
  store ptr %i.ad, ptr %7, align 8, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %9 = load i32, ptr %i.ae, align 4, !tbaa !248   ; 2 uses
  %i.af = add i32 %5, 2                           ; 3 uses
  %i.ag = icmp ult i32 %9, %i.af
  %i.ah = sub i32 %9, %5
  %storemerge.i = select i1 %i.ag, i32 2, i32 %i.ah
  store i32 %storemerge.i, ptr %i.ae, align 4, !tbaa !248
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !249 ; 2 uses
  %i.ak = icmp ult i32 %i.aj, %i.af
  %i.al = sub i32 %i.aj, %5
  %storemerge33.i = select i1 %i.ak, i32 2, i32 %i.al
  store i32 %storemerge33.i, ptr %i.ai, align 8, !tbaa !249
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !447
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !447
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !90
  %i.au = shl nuw i32 1, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !427
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %i.aw, i32 noundef %i.au, i32 noundef %5)
  %i.ax = load i32, ptr %i.m, align 4, !tbaa !95  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !421
  %.not.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i, label %bb.c, label %ZSTD_allocateChainTable.exit.thread21.i

bb.c:                                             ; preds = %bb.b
  %.not4.i.i = icmp eq i32 %i.ax, 1
  br i1 %.not4.i.i, label %ZSTD_reduceTable_btlazy2.exit.i, label %ZSTD_allocateChainTable.exit.i

ZSTD_allocateChainTable.exit.i:                   ; preds = %bb.c
  %i.bc = add i32 %i.ax, -3
  %i.bd = icmp ult i32 %i.bc, 3
  %i.be = icmp eq i32 %i.az, 1
  %.not8.i.not.i = and i1 %i.bd, %i.be
  br i1 %.not8.i.not.i, label %ZSTD_reduceTable_btlazy2.exit.i, label %ZSTD_allocateChainTable.exit.thread21.i

ZSTD_allocateChainTable.exit.thread21.i:          ; preds = %ZSTD_allocateChainTable.exit.i, %bb.b
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !91
  %i.bg = shl nuw i32 1, %i.bf                    ; 3 uses
  %i.bh = icmp eq i32 %i.ax, 6
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !428 ; 2 uses
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ZSTD_allocateChainTable.exit.thread21.i
  %i.bk = lshr i32 %i.bg, 4
  %i.bl = icmp sgt i32 %i.bg, 15
  br i1 %i.bl, label %.preheader.i.i.preheader, label %ZSTD_reduceTable_btlazy2.exit.i

.preheader.i.i.preheader:                         ; preds = %bb.d
  %10 = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.bm = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %11 = insertelement <4 x i32> poison, i32 %5, i64 0
  %i.bn = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next7.i.i, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %.020.i5.i.i = phi i32 [ %i.cq, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i.i ; 5 uses
  %i.bp = load <4 x i32>, ptr %i.bo, align 4, !tbaa !51 ; 3 uses
  %i.bq = icmp eq <4 x i32> %i.bp, splat (i32 1)
  %i.br = icmp ult <4 x i32> %i.bp, %i.bm
  %i.bs = sub <4 x i32> %i.bp, %i.bn
  %i.bt = select <4 x i1> %i.br, <4 x i32> zeroinitializer, <4 x i32> %i.bs
  %i.bu = select <4 x i1> %i.bq, <4 x i32> splat (i32 1), <4 x i32> %i.bt
  store <4 x i32> %i.bu, ptr %i.bo, align 4, !tbaa !51
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bw = load <4 x i32>, ptr %i.bv, align 4, !tbaa !51 ; 3 uses
  %i.bx = icmp eq <4 x i32> %i.bw, splat (i32 1)
  %i.by = icmp ult <4 x i32> %i.bw, %i.bm
  %i.bz = sub <4 x i32> %i.bw, %i.bn
  %i.ca = select <4 x i1> %i.by, <4 x i32> zeroinitializer, <4 x i32> %i.bz
  %i.cb = select <4 x i1> %i.bx, <4 x i32> splat (i32 1), <4 x i32> %i.ca
  store <4 x i32> %i.cb, ptr %i.bv, align 4, !tbaa !51
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.cd = load <4 x i32>, ptr %i.cc, align 4, !tbaa !51 ; 3 uses
  %i.ce = icmp eq <4 x i32> %i.cd, splat (i32 1)
  %i.cf = icmp ult <4 x i32> %i.cd, %i.bm
  %i.cg = sub <4 x i32> %i.cd, %i.bn
  %i.ch = select <4 x i1> %i.cf, <4 x i32> zeroinitializer, <4 x i32> %i.cg
  %i.ci = select <4 x i1> %i.ce, <4 x i32> splat (i32 1), <4 x i32> %i.ch
  store <4 x i32> %i.ci, ptr %i.cc, align 4, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 2 uses
  %i.ck = load <4 x i32>, ptr %i.cj, align 4, !tbaa !51 ; 3 uses
  %i.cl = icmp eq <4 x i32> %i.ck, splat (i32 1)
  %i.cm = icmp ult <4 x i32> %i.ck, %i.bm
  %i.cn = sub <4 x i32> %i.ck, %i.bn
  %i.co = select <4 x i1> %i.cm, <4 x i32> zeroinitializer, <4 x i32> %i.cn
  %i.cp = select <4 x i1> %i.cl, <4 x i32> splat (i32 1), <4 x i32> %i.co
  store <4 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !51
  %indvars.iv.next7.i.i = add nuw nsw i64 %indvars.iv.i.i, 16
  %i.cq = add nuw nsw i32 %.020.i5.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cq, %i.bk
  br i1 %exitcond.not.i.i, label %ZSTD_reduceTable_btlazy2.exit.i, label %.preheader.i.i, !llvm.loop !448

bb.e:                                             ; preds = %ZSTD_allocateChainTable.exit.thread21.i
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %i.bj, i32 noundef %i.bg, i32 noundef %5)
  br label %ZSTD_reduceTable_btlazy2.exit.i

ZSTD_reduceTable_btlazy2.exit.i:                  ; preds = %.preheader.i.i, %bb.e, %bb.d, %ZSTD_allocateChainTable.exit.i, %bb.c
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !422 ; 2 uses
  %.not19.i = icmp eq i32 %i.cs, 0
  br i1 %.not19.i, label %ZSTD_reduceIndex.exit, label %bb.f

bb.f:                                             ; preds = %ZSTD_reduceTable_btlazy2.exit.i
  %i.ct = shl nuw i32 1, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !429
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %i.cv, i32 noundef %i.ct, i32 noundef %5)
  br label %ZSTD_reduceIndex.exit

ZSTD_reduceIndex.exit:                            ; preds = %ZSTD_reduceTable_btlazy2.exit.i, %bb.f
  %i.cw = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !55 ; 2 uses
  %i.cz = icmp ult ptr %i.cw, %i.cy
  br i1 %i.cz, label %bb.g, label %ZSTD_cwksp_mark_tables_clean.exit

bb.g:                                             ; preds = %ZSTD_reduceIndex.exit
  store ptr %i.cy, ptr %i.ar, align 8, !tbaa !56
  br label %ZSTD_cwksp_mark_tables_clean.exit

ZSTD_cwksp_mark_tables_clean.exit:                ; preds = %ZSTD_reduceIndex.exit, %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !251
  %storemerge = tail call i32 @llvm.usub.sat.i32(i32 %i.db, i32 %5)
  store i32 %storemerge, ptr %i.da, align 4, !tbaa !251
  store i32 0, ptr %i.b, align 8, !tbaa !424
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.dc, align 8, !tbaa !426
  br label %bb.h

bb.h:                                             ; preds = %ZSTD_cwksp_mark_tables_clean.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %3, i64 noundef %4) ; 3 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !259
  %.not55 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not55, label %.thread68, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3224 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  br i1 %.not55, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 5616
  %i.j = tail call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i) ; 2 uses
  %i.k = icmp ult i64 %i.j, -119
  br i1 %i.k, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = load <2 x ptr>, ptr %i.g, align 8, !tbaa !50
  %i.m = shufflevector <2 x ptr> %i.l, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.m, ptr %i.g, align 8, !tbaa !50
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.t = load i64, ptr %i.s, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !210  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !211
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.x, i64 noundef %i.ac, ptr noundef nonnull readonly %i.f, ptr noundef %i.h, ptr noundef %i.o, ptr noundef nonnull readonly %i.p, ptr noundef %i.r, i64 noundef %i.t, i32 noundef %i.v) ; 6 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %ZSTD_entropyCompressSeqStore.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq i64 %i.ad, -70
  %i.ag = icmp ule i64 %4, %2
  %i.ah = and i1 %i.ag, %i.af
  br i1 %i.ah, label %ZSTD_entropyCompressSeqStore.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp ult i64 %i.ad, -119
  br i1 %i.ai, label %bb.j, label %ZSTD_entropyCompressSeqStore.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !95
  %i.al = tail call i32 @llvm.umax.i32(i32 %i.ak, i32 7)
  %i.am = add i32 %i.al, -1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = lshr i64 %4, %i.an
  %.neg31.i.i = add i64 %4, -2
  %i.ap = sub i64 %.neg31.i.i, %i.ao
  %.not30.i.i = icmp ult i64 %i.ad, %i.ap
  %spec.select.i.i = select i1 %.not30.i.i, i64 %i.ad, i64 0
  br label %ZSTD_entropyCompressSeqStore.exit

ZSTD_entropyCompressSeqStore.exit:                ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.2.i.i = phi i64 [ %i.ad, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ %spec.select.i.i, %bb.j ] ; 4 uses
  %.not57 = icmp eq i32 %5, 0
  br i1 %.not57, label %bb.n, label %bb.k

bb.k:                                             ; preds = %ZSTD_entropyCompressSeqStore.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !258
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = icmp ult i64 %.2.i.i, 25
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.au = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %3, i64 noundef %4)
  %.not58 = icmp eq i32 %i.au, 0
  br i1 %.not58, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load i8, ptr %3, align 1, !tbaa !206
  store i8 %i.av, ptr %1, align 1, !tbaa !206
  br label %.thread68

bb.n:                                             ; preds = %ZSTD_entropyCompressSeqStore.exit, %bb.k, %bb.l
  %i.aw = add i64 %.2.i.i, -2
  %or.cond4 = icmp ult i64 %i.aw, -121
  br i1 %or.cond4, label %bb.o, label %.thread68

bb.o:                                             ; preds = %bb.n
  %i.ax = load <2 x ptr>, ptr %i.g, align 8, !tbaa !50
  %i.ay = shufflevector <2 x ptr> %i.ax, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ay, ptr %i.g, align 8, !tbaa !50
  br label %.thread68

.thread68:                                        ; preds = %bb.c, %bb.m, %bb.o, %bb.n
  %.14871 = phi i64 [ %.2.i.i, %bb.n ], [ %.2.i.i, %bb.o ], [ 0, %bb.c ], [ 1, %bb.m ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 5604 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !177
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %bb.p, label %.thread

bb.p:                                             ; preds = %.thread68
  store i32 1, ptr %i.bb, align 4, !tbaa !177
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %.thread68, %bb.p, %bb.e, %bb.f
  %.3 = phi i64 [ %.14871, %.thread68 ], [ 0, %bb.f ], [ %i.j, %bb.e ], [ %.14871, %bb.p ], [ %i.a, %bb.a ], [ -106, %bb.c ]
  ret i64 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_reduceTable(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
bb.a:
  %i.a = lshr i32 %1, 4
  %i.b = add i32 %2, 2
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %.preheader.preheader, label %ZSTD_reduceTable_internal.exit

.preheader.preheader:                             ; preds = %bb.a
  %i.d = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %i.e = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.f = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.g = shufflevector <4 x i32> %i.f, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next7, %.preheader ], [ 0, %.preheader.preheader ] ; 5 uses
  %.020.i5 = phi i32 [ %i.ae, %.preheader ], [ 0, %.preheader.preheader ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.i = load <4 x i32>, ptr %i.h, align 4, !tbaa !51 ; 2 uses
  %i.j = icmp ult <4 x i32> %i.i, %i.e
  %i.k = sub <4 x i32> %i.i, %i.g
  %i.l = select <4 x i1> %i.j, <4 x i32> zeroinitializer, <4 x i32> %i.k
  store <4 x i32> %i.l, ptr %i.h, align 4, !tbaa !51
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load <4 x i32>, ptr %i.n, align 4, !tbaa !51 ; 2 uses
  %i.p = icmp ult <4 x i32> %i.o, %i.e
  %i.q = sub <4 x i32> %i.o, %i.g
  %i.r = select <4 x i1> %i.p, <4 x i32> zeroinitializer, <4 x i32> %i.q
  store <4 x i32> %i.r, ptr %i.n, align 4, !tbaa !51
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.u = load <4 x i32>, ptr %i.t, align 4, !tbaa !51 ; 2 uses
  %i.v = icmp ult <4 x i32> %i.u, %i.e
  %i.w = sub <4 x i32> %i.u, %i.g
  %i.x = select <4 x i1> %i.v, <4 x i32> zeroinitializer, <4 x i32> %i.w
  store <4 x i32> %i.x, ptr %i.t, align 4, !tbaa !51
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %i.aa = load <4 x i32>, ptr %i.z, align 4, !tbaa !51 ; 2 uses
  %i.ab = icmp ult <4 x i32> %i.aa, %i.e
  %i.ac = sub <4 x i32> %i.aa, %i.g
  %i.ad = select <4 x i1> %i.ab, <4 x i32> zeroinitializer, <4 x i32> %i.ac
  store <4 x i32> %i.ad, ptr %i.z, align 4, !tbaa !51
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv, 16
  %i.ae = add nuw nsw i32 %.020.i5, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %i.a
  br i1 %exitcond.not, label %ZSTD_reduceTable_internal.exit, label %.preheader, !llvm.loop !448

ZSTD_reduceTable_internal.exit:                   ; preds = %.preheader, %bb.a
  ret void
}

declare i64 @ZSTD_splitBlock(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 2) i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
end_hunk_0
