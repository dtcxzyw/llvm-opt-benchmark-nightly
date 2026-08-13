inline.NumInlined: 798
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ZSTD_buildSequencesStatistics:bb.a
  %i.af = trunc nuw nsw i32 %i.ae to i8
  %i.ag = sub nuw nsw i8 50, %i.af
  br label %ZSTD_LLcode.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ah = zext nneg i16 %i.w to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !197
  br label %ZSTD_LLcode.exit.i

ZSTD_LLcode.exit.i:                               ; preds = %bb.c, %bb.b
  %i.ak = phi i8 [ %i.ag, %bb.b ], [ %i.aj, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !197
  %i.am = trunc nuw nsw i32 %i.y to i8
  %i.an = xor i8 %i.am, 31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !197
  %i.ap = icmp ugt i16 %i.aa, 127
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ZSTD_LLcode.exit.i
  %i.aq = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.ab, i1 true)
  %i.ar = trunc nuw nsw i32 %i.aq to i8
  %i.as = sub nuw nsw i8 67, %i.ar
  br label %ZSTD_MLcode.exit.i

bb.e:                                             ; preds = %ZSTD_LLcode.exit.i
  %i.at = zext nneg i16 %i.aa to i64
  %i.au = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !197
  br label %ZSTD_MLcode.exit.i

ZSTD_MLcode.exit.i:                               ; preds = %bb.e, %bb.d
  %i.aw = phi i8 [ %i.as, %bb.d ], [ %i.av, %bb.e ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !197
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !198

._crit_edge.i:                                    ; preds = %ZSTD_MLcode.exit.i, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !199 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !200
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bd
  store i8 35, ptr %i.be, align 1, !tbaa !197
  %.pr.i = load i32, ptr %i.ay, align 8, !tbaa !199
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.bf = phi i32 [ %.pr.i, %bb.f ], [ %i.az, %._crit_edge.i ]
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.h, label %ZSTD_seqToCodes.exit

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !200
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bj
  store i8 52, ptr %i.bk, align 1, !tbaa !197
  br label %ZSTD_seqToCodes.exit

ZSTD_seqToCodes.exit:                             ; preds = %bb.g, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.bl, align 8, !tbaa !435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 35, ptr %i.a, align 4, !tbaa !50
  %i.bm = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %i.a, ptr noundef %i.i, i64 noundef %2, ptr noundef %9, i64 noundef %10) #28
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 3548
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !223
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 3548 ; 2 uses
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !223
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 2224 ; 2 uses
  %i.bs = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %i.bp, ptr noundef %8, i32 noundef %i.bq, i64 noundef %i.bm, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %i.br, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #28 ; 3 uses
  store i32 %i.bs, ptr %0, align 8, !tbaa !436
  %i.bt = ptrtoint ptr %6 to i64                  ; 3 uses
  %i.bu = ptrtoint ptr %5 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !50
  %i.bx = call i64 @ZSTD_buildCTable(ptr noundef %5, i64 noundef %i.bv, ptr noundef nonnull %i.d, i32 noundef 9, i32 noundef %i.bs, ptr noundef %8, i32 noundef %i.bw, ptr noundef %i.i, i64 noundef %2, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 35, ptr noundef nonnull %i.br, i64 noundef 1316, ptr noundef %9, i64 noundef %10) #28 ; 5 uses
  %i.by = icmp ult i64 %i.bx, -119
  br i1 %i.by, label %bb.i, label %bb.k

bb.i:                                             ; preds = %ZSTD_seqToCodes.exit
  %i.bz = icmp eq i32 %i.bs, 2
  br i1 %i.bz, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store i64 %i.bx, ptr %i.l, align 8, !tbaa !433
  br label %bb.l

bb.k:                                             ; preds = %ZSTD_seqToCodes.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.ca, align 8, !tbaa !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.u

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 %i.bx ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 31, ptr %i.b, align 4, !tbaa !50
  %i.cc = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %i.b, ptr noundef %i.g, i64 noundef %2, ptr noundef %9, i64 noundef %10) #28
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !50  ; 2 uses
  %i.ce = icmp ult i32 %i.cd, 29
  %i.cf = zext i1 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 3540
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !227
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 3540 ; 2 uses
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !227
  %i.cj = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %i.ci, ptr noundef %8, i32 noundef %i.cd, i64 noundef %i.cc, i64 noundef %2, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %i.cf, i32 noundef %7) #28 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !438
  %i.cl = ptrtoint ptr %i.cb to i64
  %i.cm = sub i64 %i.bt, %i.cl
  %i.cn = load i32, ptr %i.b, align 4, !tbaa !50
  %i.co = call i64 @ZSTD_buildCTable(ptr noundef %i.cb, i64 noundef %i.cm, ptr noundef nonnull %4, i32 noundef 8, i32 noundef %i.cj, ptr noundef %8, i32 noundef %i.cn, ptr noundef %i.g, i64 noundef %2, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef 28, ptr noundef nonnull %3, i64 noundef 772, ptr noundef %9, i64 noundef %10) #28 ; 5 uses
  %i.cp = icmp ult i64 %i.co, -119
  br i1 %i.cp, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cq = icmp eq i32 %i.cj, 2
  br i1 %i.cq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store i64 %i.co, ptr %i.l, align 8, !tbaa !433
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.co, ptr %i.cr, align 8, !tbaa !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.u

bb.p:                                             ; preds = %bb.m, %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.co ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i32 52, ptr %i.c, align 4, !tbaa !50
  %i.ct = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %i.c, ptr noundef %i.k, i64 noundef %2, ptr noundef %9, i64 noundef %10) #28
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 3544
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !228
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 3544 ; 2 uses
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !228
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 772 ; 2 uses
  %i.cz = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %i.cw, ptr noundef %8, i32 noundef %i.cx, i64 noundef %i.ct, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %i.cy, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #28 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !439
  %i.db = ptrtoint ptr %i.cs to i64
  %i.dc = sub i64 %i.bt, %i.db
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !50
  %i.de = call i64 @ZSTD_buildCTable(ptr noundef %i.cs, i64 noundef %i.dc, ptr noundef nonnull %i.e, i32 noundef 9, i32 noundef %i.cz, ptr noundef %8, i32 noundef %i.dd, ptr noundef %i.k, i64 noundef %2, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 52, ptr noundef nonnull %i.cy, i64 noundef 1452, ptr noundef %9, i64 noundef %10) #28 ; 4 uses
  %i.df = icmp ult i64 %i.de, -119
  br i1 %i.df, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dg = icmp eq i32 %i.cz, 2
  br i1 %i.dg, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store i64 %i.de, ptr %i.l, align 8, !tbaa !433
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.de, ptr %i.dh, align 8, !tbaa !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.u

bb.t:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.di = add nuw nsw i64 %i.co, %i.bx
  %i.dj = add nuw nsw i64 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !437
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.o, %bb.k, %bb.t
  ret void
}

declare i64 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

declare i32 @ZSTD_selectEncodingType(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare i64 @ZSTD_buildCTable(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ZSTD_overflowCorrectIfNeeded(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !241 ; 2 uses
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %.val to i64                ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp ult i32 %i.g, -536870911
  br i1 %i.h, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !86
  %i.k = shl nuw i32 1, %i.j
  %i.l = load i32, ptr %i.a, align 4, !tbaa !88
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.m = load i32, ptr %5, align 4, !tbaa !92
  %i.n = icmp ugt i32 %i.m, 5
  %.neg.i = sext i1 %i.n to i32
  %i.o = add i32 %i.l, %.neg.i
  %i.p = shl nuw i32 1, %i.o                      ; 3 uses
  %i.q = add i32 %i.p, -1
  %i.r = ptrtoint ptr %3 to i64
  %i.s = sub i64 %i.r, %i.e
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = and i32 %i.q, %i.t                       ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 2
  %i.w = tail call i32 @llvm.umax.i32(i32 %i.p, i32 2)
  %i.x = select i1 %i.v, i32 %i.w, i32 0
  %i.y = tail call i32 @llvm.umax.i32(i32 %i.k, i32 %i.p)
  %i.z = add nuw i32 %i.y, %i.u
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sub i32 %i.t, %i.aa                     ; 9 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ac
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !241
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !238
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !238
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !239 ; 2 uses
  %i.aj = add i32 %i.ab, 2                        ; 3 uses
  %i.ak = icmp ult i32 %i.ai, %i.aj
  %i.al = sub i32 %i.ai, %i.ab
  %storemerge.i = select i1 %i.ak, i32 2, i32 %i.al
  store i32 %storemerge.i, ptr %i.ah, align 4, !tbaa !239
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !240 ; 2 uses
  %i.ao = icmp ult i32 %i.an, %i.aj
  %i.ap = sub i32 %i.an, %i.ab
  %storemerge33.i = select i1 %i.ao, i32 2, i32 %i.ap
  store i32 %storemerge33.i, ptr %i.am, align 8, !tbaa !240
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !440
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !440
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !87
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !420
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %i.ba, i32 noundef %i.ay, i32 noundef %i.ab)
  %6 = load i32, ptr %5, align 4, !tbaa !92       ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 144
  %8 = load i32, ptr %7, align 8, !tbaa !78
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %10 = load i32, ptr %9, align 4, !tbaa !414
  %.not.i.i = icmp eq i32 %10, 0
  br i1 %.not.i.i, label %bb.c, label %ZSTD_allocateChainTable.exit.thread21.i

bb.c:                                             ; preds = %bb.b
  %.not4.i.i = icmp eq i32 %6, 1
  br i1 %.not4.i.i, label %ZSTD_reduceTable_btlazy2.exit.i, label %ZSTD_allocateChainTable.exit.i

ZSTD_allocateChainTable.exit.i:                   ; preds = %bb.c
  %i.bb = add i32 %6, -3
  %i.bc = icmp ult i32 %i.bb, 3
  %i.bd = icmp eq i32 %8, 1
  %.not8.i.not.i = and i1 %i.bc, %i.bd
  br i1 %.not8.i.not.i, label %ZSTD_reduceTable_btlazy2.exit.i, label %ZSTD_allocateChainTable.exit.thread21.i

ZSTD_allocateChainTable.exit.thread21.i:          ; preds = %ZSTD_allocateChainTable.exit.i, %bb.b
  %i.be = load i32, ptr %i.a, align 8, !tbaa !88
  %i.bf = shl nuw i32 1, %i.be                    ; 3 uses
  %i.bg = icmp eq i32 %6, 6
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !421 ; 2 uses
  br i1 %i.bg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ZSTD_allocateChainTable.exit.thread21.i
  %11 = lshr i32 %i.bf, 4
  %12 = icmp sgt i32 %i.bf, 15
  br i1 %12, label %.preheader.i.i.preheader, label %ZSTD_reduceTable_btlazy2.exit.i

.preheader.i.i.preheader:                         ; preds = %bb.d
  %i.bj = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.bk = shufflevector <4 x i32> %i.bj, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bl = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %i.bm = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next7.i.i, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %.021.i4.i.i = phi i32 [ %33, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i ; 5 uses
  %13 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !50 ; 3 uses
  %14 = icmp eq <4 x i32> %13, splat (i32 1)
  %15 = icmp ult <4 x i32> %13, %i.bk
  %16 = sub <4 x i32> %13, %i.bm
  %17 = select <4 x i1> %15, <4 x i32> zeroinitializer, <4 x i32> %16
  %18 = select <4 x i1> %14, <4 x i32> splat (i32 1), <4 x i32> %17
  store <4 x i32> %18, ptr %i.bn, align 4, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bp = load <4 x i32>, ptr %i.bo, align 4, !tbaa !50 ; 3 uses
  %19 = icmp eq <4 x i32> %i.bp, splat (i32 1)
  %20 = icmp ult <4 x i32> %i.bp, %i.bk
  %21 = sub <4 x i32> %i.bp, %i.bm
  %22 = select <4 x i1> %20, <4 x i32> zeroinitializer, <4 x i32> %21
  %23 = select <4 x i1> %19, <4 x i32> splat (i32 1), <4 x i32> %22
  store <4 x i32> %23, ptr %i.bo, align 4, !tbaa !50
  %24 = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  %25 = load <4 x i32>, ptr %24, align 4, !tbaa !50 ; 3 uses
  %26 = icmp eq <4 x i32> %25, splat (i32 1)
  %i.bq = icmp ult <4 x i32> %25, %i.bk
  %i.br = sub <4 x i32> %25, %i.bm
  %27 = select <4 x i1> %i.bq, <4 x i32> zeroinitializer, <4 x i32> %i.br
  %i.bs = select <4 x i1> %26, <4 x i32> splat (i32 1), <4 x i32> %27
  store <4 x i32> %i.bs, ptr %24, align 4, !tbaa !50
  %28 = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %29 = load <4 x i32>, ptr %28, align 4, !tbaa !50 ; 3 uses
  %30 = icmp eq <4 x i32> %29, splat (i32 1)
  %31 = icmp ult <4 x i32> %29, %i.bk
  %32 = sub <4 x i32> %29, %i.bm
  %i.bt = select <4 x i1> %31, <4 x i32> zeroinitializer, <4 x i32> %32
  %i.bu = select <4 x i1> %30, <4 x i32> splat (i32 1), <4 x i32> %i.bt
  store <4 x i32> %i.bu, ptr %28, align 4, !tbaa !50
  %indvars.iv.next7.i.i = add nuw nsw i64 %indvars.iv.i.i, 16
  %33 = add nuw nsw i32 %.021.i4.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %33, %11
  br i1 %exitcond.not.i.i, label %ZSTD_reduceTable_btlazy2.exit.i, label %.preheader.i.i, !llvm.loop !441

bb.e:                                             ; preds = %ZSTD_allocateChainTable.exit.thread21.i
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %i.bi, i32 noundef %i.bf, i32 noundef %i.ab)
  br label %ZSTD_reduceTable_btlazy2.exit.i

ZSTD_reduceTable_btlazy2.exit.i:                  ; preds = %.preheader.i.i, %bb.e, %bb.d, %ZSTD_allocateChainTable.exit.i, %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !415 ; 2 uses
  %.not19.i = icmp eq i32 %i.bw, 0
  br i1 %.not19.i, label %ZSTD_reduceIndex.exit, label %bb.f

bb.f:                                             ; preds = %ZSTD_reduceTable_btlazy2.exit.i
  %i.bx = shl nuw i32 1, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !422
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %i.bz, i32 noundef %i.bx, i32 noundef %i.ab)
  br label %ZSTD_reduceIndex.exit

ZSTD_reduceIndex.exit:                            ; preds = %ZSTD_reduceTable_btlazy2.exit.i, %bb.f
  %34 = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !54 ; 2 uses
  %i.cc = icmp ult ptr %34, %i.cb
  br i1 %i.cc, label %bb.g, label %ZSTD_cwksp_mark_tables_clean.exit

bb.g:                                             ; preds = %ZSTD_reduceIndex.exit
  store ptr %i.cb, ptr %i.av, align 8, !tbaa !55
  br label %ZSTD_cwksp_mark_tables_clean.exit

ZSTD_cwksp_mark_tables_clean.exit:                ; preds = %ZSTD_reduceIndex.exit, %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !242
  %storemerge = tail call i32 @llvm.usub.sat.i32(i32 %i.ce, i32 %i.ab)
  store i32 %storemerge, ptr %i.cd, align 4, !tbaa !242
  store i32 0, ptr %i.b, align 8, !tbaa !417
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.cf, align 8, !tbaa !419
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
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !249
  %.not53 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not53, label %.thread66, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  br i1 %.not53, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 5616
  %i.j = tail call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i) ; 2 uses
  %i.k = icmp ult i64 %i.j, -119
  br i1 %i.k, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = load <2 x ptr>, ptr %i.g, align 8, !tbaa !49
  %i.m = shufflevector <2 x ptr> %i.l, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.m, ptr %i.g, align 8, !tbaa !49
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !11
  %i.u = tail call fastcc i64 @ZSTD_entropyCompressSeqStore(ptr noundef nonnull %i.f, ptr noundef %i.h, ptr noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef %i.r, i32 noundef %i.t) ; 4 uses
  %.not55 = icmp eq i32 %5, 0
  br i1 %.not55, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.w = load i32, ptr %i.v, align 8, !tbaa !248
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp ult i64 %i.u, 25
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %3, i64 noundef %4)
  %.not56 = icmp eq i32 %i.z, 0
  br i1 %.not56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %3, align 1, !tbaa !197
  store i8 %i.aa, ptr %1, align 1, !tbaa !197
  br label %.thread66

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.ab = add i64 %i.u, -2
  %or.cond4 = icmp ult i64 %i.ab, -121
  br i1 %or.cond4, label %bb.l, label %.thread66

bb.l:                                             ; preds = %bb.k
  %i.ac = load <2 x ptr>, ptr %i.g, align 8, !tbaa !49
  %i.ad = shufflevector <2 x ptr> %i.ac, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ad, ptr %i.g, align 8, !tbaa !49
  br label %.thread66

.thread66:                                        ; preds = %bb.c, %bb.j, %bb.l, %bb.k
  %.15069 = phi i64 [ %i.u, %bb.k ], [ %i.u, %bb.l ], [ 0, %bb.c ], [ 1, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 5604 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !169
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %bb.m, label %.thread

bb.m:                                             ; preds = %.thread66
  store i32 1, ptr %i.ag, align 4, !tbaa !169
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %.thread66, %bb.m, %bb.e, %bb.f
  %.3 = phi i64 [ %.15069, %.thread66 ], [ 0, %bb.f ], [ %i.j, %bb.e ], [ %.15069, %bb.m ], [ %i.a, %bb.a ], [ -106, %bb.c ]
  ret i64 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_reduceTable(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #13 {
  %4 = lshr i32 %1, 4
  %5 = add i32 %2, 2
  %6 = icmp sgt i32 %1, 15
  br i1 %6, label %.preheader.preheader, label %ZSTD_reduceTable_internal.exit

.preheader.preheader:                             ; preds = %3
  %7 = insertelement <4 x i32> poison, i32 %5, i64 0
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %9 = insertelement <4 x i32> poison, i32 %2, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next7, %.preheader ], [ 0, %.preheader.preheader ] ; 5 uses
  %.021.i4 = phi i32 [ %34, %.preheader ], [ 0, %.preheader.preheader ]
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %12 = load <4 x i32>, ptr %11, align 4, !tbaa !50 ; 2 uses
  %13 = icmp ult <4 x i32> %12, %8
  %14 = sub <4 x i32> %12, %10
  %15 = select <4 x i1> %13, <4 x i32> zeroinitializer, <4 x i32> %14
  store <4 x i32> %15, ptr %11, align 4, !tbaa !50
  %16 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %18 = load <4 x i32>, ptr %17, align 4, !tbaa !50 ; 2 uses
  %19 = icmp ult <4 x i32> %18, %8
  %20 = sub <4 x i32> %18, %10
  %21 = select <4 x i1> %19, <4 x i32> zeroinitializer, <4 x i32> %20
  store <4 x i32> %21, ptr %17, align 4, !tbaa !50
  %22 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %24 = load <4 x i32>, ptr %23, align 4, !tbaa !50 ; 2 uses
  %25 = icmp ult <4 x i32> %24, %8
  %26 = sub <4 x i32> %24, %10
  %27 = select <4 x i1> %25, <4 x i32> zeroinitializer, <4 x i32> %26
  store <4 x i32> %27, ptr %23, align 4, !tbaa !50
  %28 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 2 uses
  %30 = load <4 x i32>, ptr %29, align 4, !tbaa !50 ; 2 uses
  %31 = icmp ult <4 x i32> %30, %8
  %32 = sub <4 x i32> %30, %10
  %33 = select <4 x i1> %31, <4 x i32> zeroinitializer, <4 x i32> %32
  store <4 x i32> %33, ptr %29, align 4, !tbaa !50
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv, 16
  %34 = add nuw nsw i32 %.021.i4, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %34, %4
  br i1 %exitcond.not, label %ZSTD_reduceTable_internal.exit, label %.preheader, !llvm.loop !441

ZSTD_reduceTable_internal.exit:                   ; preds = %.preheader, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 2) i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.rawSeqStore_t, align 8      ; 8 uses
  %4 = alloca %struct.ZSTD_sequencePosition, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.c = icmp ult i64 %2, 7
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !175
  %i.f = icmp ugt i32 %i.e, 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3160 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef nonnull %i.g, i64 noundef %2) #28
  br label %.thread163

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.i = load i32, ptr %i.h, align 4, !tbaa !360
  tail call void @ZSTD_ldm_skipSequences(ptr noundef nonnull %i.g, i64 noundef %2, i32 noundef %i.i) #28
  br label %.thread163

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !201
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !202
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !187
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 960
  store ptr %i.o, ptr %i.p, align 8, !tbaa !191
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store i32 0, ptr %i.q, align 8, !tbaa !199
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !56   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3448
  store ptr %i.r, ptr %i.s, align 8, !tbaa !442
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.u = load i32, ptr %i.t, align 8, !tbaa !443
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3456
  store i32 %i.u, ptr %i.v, align 8, !tbaa !444
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !445
  %i.y = ptrtoint ptr %1 to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32                  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3260 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !242 ; 2 uses
  %i.ae = add i32 %i.ad, 384
  %i.af = icmp ult i32 %i.ae, %i.ab
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %reass.sub = sub i32 %i.ab, %i.ad
  %i.ag = add i32 %reass.sub, -384
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 192)
  %i.ah = sub i32 %i.ab, %spec.select
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !242
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = getelementptr i8, ptr %0, i64 3240
  %.val.i = load i32, ptr %i.ai, align 8, !tbaa !240
  %i.aj = getelementptr i8, ptr %0, i64 3244
  %.val5.i = load i32, ptr %i.aj, align 4, !tbaa !239
  %.not.i = icmp ult i32 %.val5.i, %.val.i
  br i1 %.not.i, label %ZSTD_matchState_dictMode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3464
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !419 ; 2 uses
  %.not3.i = icmp eq ptr %i.al, null
  br i1 %.not3.i, label %ZSTD_matchState_dictMode.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 140
  %i.an = load i32, ptr %i.am, align 4, !tbaa !414
  %.not4.i = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not4.i, i64 2, i64 3
  br label %ZSTD_matchState_dictMode.exit

ZSTD_matchState_dictMode.exit:                    ; preds = %bb.g, %bb.h, %bb.i
  %i.ap = phi i64 [ 1, %bb.g ], [ %i.ao, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 5616
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !57 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 5616 ; 3 uses
  %i.au = load i32, ptr %i.aq, align 4, !tbaa !50
  store i32 %i.au, ptr %i.at, align 4, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 5620
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 5620
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 5624
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 5624
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !50
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !446
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !234
  %i.bg = icmp ult i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.j, label %bb.l

bb.j:                                             ; preds = %ZSTD_matchState_dictMode.exit
  %i.bh = getelementptr i8, ptr %0, i64 424
  %.val146 = load ptr, ptr %i.bh, align 8, !tbaa !129
  %.not167 = icmp eq ptr %.val146, null
  br i1 %.not167, label %bb.k, label %.thread163

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !176
  %i.bk = tail call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.at, i32 noundef %i.bj, ptr noundef %1, i64 noundef %2) #28
  br label %bb.z

bb.l:                                             ; preds = %ZSTD_matchState_dictMode.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !243
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %i.bp = getelementptr i8, ptr %0, i64 424
  %.val145 = load ptr, ptr %i.bp, align 8, !tbaa !129
  %.not = icmp eq ptr %.val145, null
  br i1 %.not, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !403
  store ptr %i.br, ptr %3, align 8, !tbaa !447
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !404
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !448
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.bw = call i64 @ZSTD_ldm_generateSequences(ptr noundef nonnull %i.bv, ptr noundef nonnull %3, ptr noundef nonnull %i.bl, ptr noundef %1, i64 noundef %2) #28 ; 2 uses
  %i.bx = icmp ult i64 %i.bw, -119
  br i1 %i.bx, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.n, %bb.m
  %.1.ph = phi i64 [ -41, %bb.m ], [ %i.bw, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.thread163

bb.o:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !57
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 5616
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !176
  %i.cc = call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.bz, i32 noundef %i.cb, ptr noundef %1, i64 noundef %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.z

bb.p:                                             ; preds = %bb.l
  %i.cd = getelementptr i8, ptr %0, i64 424
  %.val = load ptr, ptr %i.cd, align 8, !tbaa !129 ; 2 uses
  %.not166 = icmp eq ptr %.val, null
  br i1 %.not166, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = load i32, ptr %i.b, align 4, !tbaa !245
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !449
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 5232 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !407
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 5240 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !406
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !450
  %i.co = zext i32 %i.cf to i64
  %i.cp = tail call i64 %.val(ptr noundef %i.ch, ptr noundef %i.cj, i64 noundef %i.cl, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, i32 noundef %i.cn, i64 noundef %i.co) #28 ; 5 uses
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !406 ; 2 uses
  %i.cr = add i64 %i.cp, -1
  %or.cond.not.i = icmp ult i64 %i.cr, %i.cq
  br i1 %or.cond.not.i, label %bb.r, label %ZSTD_postProcessSequenceProducerResult.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !407
  %i.ct = getelementptr [16 x i8], ptr %i.cs, i64 %i.cp ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -16
  %.sroa.0.0.copyload.i = load i32, ptr %i.cu, align 4, !tbaa !50
  %.sroa.45.0..sroa_idx.i = getelementptr i8, ptr %i.ct, i64 -8
  %.sroa.45.0.copyload.i = load i32, ptr %.sroa.45.0..sroa_idx.i, align 4, !tbaa !50
  %i.cv = icmp eq i32 %.sroa.0.0.copyload.i, 0
  %i.cw = icmp eq i32 %.sroa.45.0.copyload.i, 0
  %or.cond4.i = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond4.i, label %ZSTD_postProcessSequenceProducerResult.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = icmp eq i64 %i.cp, %i.cq
  br i1 %i.cx, label %ZSTD_postProcessSequenceProducerResult.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  %i.cy = add i64 %i.cp, 1
  br label %ZSTD_postProcessSequenceProducerResult.exit

ZSTD_postProcessSequenceProducerResult.exit:      ; preds = %bb.r, %bb.t
  %.1.i = phi i64 [ %i.cy, %bb.t ], [ %i.cp, %bb.r ] ; 7 uses
  %i.cz = icmp ult i64 %.1.i, -119
  br i1 %i.cz, label %bb.u, label %ZSTD_postProcessSequenceProducerResult.exit.thread

bb.u:                                             ; preds = %ZSTD_postProcessSequenceProducerResult.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !407 ; 6 uses
  %.not.i147 = icmp eq i64 %.1.i, 0
  br i1 %.not.i147, label %ZSTD_fastSequenceLengthSum.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.u
  %xtraiter = and i64 %.1.i, 3                    ; 3 uses
  %i.db = icmp ult i64 %.1.i, 4
  br i1 %i.db, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.1.i, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.em, %.lr.ph.i ] ; 5 uses
  %.01013.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.eh, %.lr.ph.i ]
  %.01112.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.el, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.014.i ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !216
  %i.df = zext i32 %i.de to i64
  %i.dg = add i64 %.01013.i, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !215
  %i.dj = zext i32 %i.di to i64
  %i.dk = add i64 %.01112.i, %i.dj
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.014.i ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !216
  %i.do = zext i32 %i.dn to i64
  %i.dp = add i64 %i.dg, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !215
  %i.ds = zext i32 %i.dr to i64
  %i.dt = add i64 %i.dk, %i.ds
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.014.i ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !216
  %i.dx = zext i32 %i.dw to i64
  %i.dy = add i64 %i.dp, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !215
  %i.eb = zext i32 %i.ea to i64
  %i.ec = add i64 %i.dt, %i.eb
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.014.i ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 52
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !216
  %i.eg = zext i32 %i.ef to i64
  %i.eh = add i64 %i.dy, %i.eg                    ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !215
  %i.ek = zext i32 %i.ej to i64
  %i.el = add i64 %i.ec, %i.ek                    ; 3 uses
  %i.em = add nuw i64 %.014.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ZSTD_fastSequenceLengthSum.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !451

ZSTD_fastSequenceLengthSum.exit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZSTD_fastSequenceLengthSum.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ZSTD_fastSequenceLengthSum.exit.unr-lcssa, %.lr.ph.i.preheader
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.em, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ]
  %.01013.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.eh, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ]
  %.01112.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.el, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.014.i.epil = phi i64 [ %i.ew, %.lr.ph.i.epil ], [ %.014.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.01013.i.epil = phi i64 [ %i.er, %.lr.ph.i.epil ], [ %.01013.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.01112.i.epil = phi i64 [ %i.ev, %.lr.ph.i.epil ], [ %.01112.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.014.i.epil ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !216
  %i.eq = zext i32 %i.ep to i64
  %i.er = add i64 %.01013.i.epil, %i.eq           ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !215
  %i.eu = zext i32 %i.et to i64
  %i.ev = add i64 %.01112.i.epil, %i.eu           ; 2 uses
  %i.ew = add nuw i64 %.014.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ZSTD_fastSequenceLengthSum.exit, label %.lr.ph.i.epil, !llvm.loop !452

ZSTD_fastSequenceLengthSum.exit:                  ; preds = %.lr.ph.i.epil, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa
  %.lcssa180 = phi i64 [ %i.eh, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ], [ %i.er, %.lr.ph.i.epil ]
  %.lcssa = phi i64 [ %i.el, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ], [ %i.ev, %.lr.ph.i.epil ]
  %i.ex = add i64 %.lcssa, %.lcssa180
  %i.ey = icmp ugt i64 %i.ex, %2
  br i1 %i.ey, label %bb.w, label %ZSTD_fastSequenceLengthSum.exit.thread

ZSTD_fastSequenceLengthSum.exit.thread:           ; preds = %bb.u, %ZSTD_fastSequenceLengthSum.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !376
  %i.fb = call i64 @ZSTD_copySequencesToSeqStoreExplicitBlockDelim(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.da, i64 noundef %.1.i, ptr noundef %1, i64 noundef %2, i32 noundef %i.fa) ; 2 uses
  %i.fc = icmp ult i64 %i.fb, -119
  br i1 %i.fc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %ZSTD_fastSequenceLengthSum.exit.thread
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store ptr null, ptr %i.fd, align 8, !tbaa !453
  br label %bb.w

bb.w:                                             ; preds = %ZSTD_fastSequenceLengthSum.exit, %ZSTD_fastSequenceLengthSum.exit.thread, %bb.v
  %.3 = phi i64 [ %i.fb, %ZSTD_fastSequenceLengthSum.exit.thread ], [ 0, %bb.v ], [ -107, %ZSTD_fastSequenceLengthSum.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.thread163

ZSTD_postProcessSequenceProducerResult.exit.thread: ; preds = %bb.q, %bb.s, %ZSTD_postProcessSequenceProducerResult.exit
  %.1.i156 = phi i64 [ %.1.i, %ZSTD_postProcessSequenceProducerResult.exit ], [ -106, %bb.s ], [ -106, %bb.q ]
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !454
  %.not140 = icmp eq i32 %i.ff, 0
  br i1 %.not140, label %.thread163, label %bb.x

bb.x:                                             ; preds = %ZSTD_postProcessSequenceProducerResult.exit.thread
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !175 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !176
  %i.fk = add i32 %i.fh, -6
  %i.fl = icmp ult i32 %i.fk, -3
  %i.fm = icmp ne i32 %i.fj, 1
  %.not8.i = or i1 %i.fl, %i.fm
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %i.ap
  %i.fo = zext nneg i32 %i.fh to i64
  %i.fp = getelementptr [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.fp, i64 -24
  %i.fr = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %i.ap
  %i.fs = sext i32 %i.fh to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fs
  %.0.in.i = select i1 %.not8.i, ptr %i.ft, ptr %i.fq
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !49
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store ptr null, ptr %i.fu, align 8, !tbaa !453
  %i.fv = load ptr, ptr %i.ar, align 8, !tbaa !57
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 5616
  %i.fx = tail call i64 %.0.i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.fw, ptr noundef %1, i64 noundef %2) #28
  br label %bb.z

bb.y:                                             ; preds = %bb.p
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !175 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !176
  %i.gc = add i32 %i.fz, -6
  %i.gd = icmp ult i32 %i.gc, -3
  %i.ge = icmp ne i32 %i.gb, 1
  %.not8.i148 = or i1 %i.gd, %i.ge
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %i.ap
  %i.gg = zext nneg i32 %i.fz to i64
  %i.gh = getelementptr [8 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 -24
  %i.gj = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %i.ap
  %i.gk = sext i32 %i.fz to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gk
  %.0.in.i149 = select i1 %.not8.i148, ptr %i.gl, ptr %i.gi
  %.0.i150 = load ptr, ptr %.0.in.i149, align 8, !tbaa !49
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store ptr null, ptr %i.gm, align 8, !tbaa !453
  %i.gn = tail call i64 %.0.i150(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.at, ptr noundef %1, i64 noundef %2) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.o, %bb.y, %bb.k
  %.2133 = phi i64 [ %i.bk, %bb.k ], [ %i.cc, %bb.o ], [ %i.fx, %bb.x ], [ %i.gn, %bb.y ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.gp = sub i64 0, %.2133
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 %i.gp
  %i.gr = load ptr, ptr %i.n, align 8, !tbaa !202
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gr, ptr nonnull readonly align 1 %i.gq, i64 %.2133, i1 false)
  %i.gs = load ptr, ptr %i.n, align 8, !tbaa !202
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.2133
  store ptr %i.gt, ptr %i.n, align 8, !tbaa !202
  br label %.thread163

.thread163:                                       ; preds = %ZSTD_postProcessSequenceProducerResult.exit.thread, %bb.w, %bb.j, %.thread, %bb.z, %bb.c, %bb.d
  %.7 = phi i64 [ 1, %bb.d ], [ 1, %bb.c ], [ 0, %bb.z ], [ -41, %bb.j ], [ %.1.ph, %.thread ], [ %.1.i156, %ZSTD_postProcessSequenceProducerResult.exit.thread ], [ %.3, %bb.w ]
  ret i64 %.7
}

declare void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @ZSTD_ldm_skipSequences(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

declare i64 @ZSTD_ldm_blockCompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

declare i64 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @ZSTD_isRLE(ptr noundef %0, i64 noundef %1) unnamed_addr #21 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !197
  %i.b = zext i8 %i.a to i64
  %i.c = mul nuw i64 %i.b, 72340172838076673      ; 4 uses
  %i.d = and i64 %1, 31                           ; 5 uses
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -7
  %i.i = icmp samesign ugt i64 %i.d, 8
  br i1 %i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %.val60.i = load i64, ptr %0, align 1, !tbaa !115 ; 2 uses
  %.val.i = load i64, ptr %i.f, align 1, !tbaa !115 ; 2 uses
  %.not.i = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i, label %.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = xor i64 %.val.i, %.val60.i
  %i.k = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.j, i1 true)
  %i.l = lshr i64 %i.k, 3
  br label %ZSTD_count.exit

.preheader.i:                                     ; preds = %bb.d, %bb.f
  %.pn.i = phi ptr [ %.049.i, %bb.f ], [ %0, %bb.d ]
  %.pn67.i = phi ptr [ %.045.i, %bb.f ], [ %i.f, %bb.d ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 5 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 3 uses
  %i.m = icmp ult ptr %.045.i, %i.h
  br i1 %i.m, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %.preheader.i
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !115 ; 2 uses
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !115 ; 2 uses
  %.not59.i = icmp eq i64 %.049.val.i, %.045.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.f
  %i.n = xor i64 %.045.val.i, %.049.val.i
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.n, i1 true)
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %.045.i, i64 %i.p
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.f to i64
  %i.t = sub i64 %i.r, %i.s
  br label %ZSTD_count.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.c
  %.251.i = phi ptr [ %0, %bb.c ], [ %.049.i, %.preheader.i ] ; 4 uses
  %.247.i = phi ptr [ %i.f, %bb.c ], [ %.045.i, %.preheader.i ] ; 5 uses
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.v = icmp ult ptr %.247.i, %i.u
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.loopexit.i
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !50
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !50
  %i.w = icmp eq i32 %.251.val.i, %.247.val.i
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.loopexit.i
  %.352.i = phi ptr [ %i.y, %bb.h ], [ %.251.i, %bb.g ], [ %.251.i, %.loopexit.i ] ; 4 uses
  %.348.i = phi ptr [ %i.x, %bb.h ], [ %.247.i, %bb.g ], [ %.247.i, %.loopexit.i ] ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.aa = icmp ult ptr %.348.i, %i.z
  br i1 %i.aa, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !232
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !232
  %i.ab = icmp eq i16 %.352.val.i, %.348.val.i
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.453.i = phi ptr [ %i.ad, %bb.k ], [ %.352.i, %bb.j ], [ %.352.i, %bb.i ]
  %.4.i = phi ptr [ %i.ac, %bb.k ], [ %.348.i, %bb.j ], [ %.348.i, %bb.i ] ; 4 uses
  %i.ae = icmp ult ptr %.4.i, %i.g
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = load i8, ptr %.453.i, align 1, !tbaa !197
  %i.ag = load i8, ptr %.4.i, align 1, !tbaa !197
  %i.ah = icmp eq i8 %i.af, %i.ag
  %spec.select.idx.i = zext i1 %i.ah to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.4.i, i64 %spec.select.idx.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.5.i = phi ptr [ %.4.i, %bb.l ], [ %spec.select.i, %bb.m ]
  %i.ai = ptrtoint ptr %.5.i to i64
  %i.aj = ptrtoint ptr %i.f to i64
  %i.ak = sub i64 %i.ai, %i.aj
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %bb.e, %.thread63.i, %bb.n
  %.3.i = phi i64 [ %i.t, %.thread63.i ], [ %i.ak, %bb.n ], [ %i.l, %bb.e ]
  %i.al = add nsw i64 %i.d, -1
  %.not27 = icmp eq i64 %.3.i, %i.al
  br i1 %.not27, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %ZSTD_count.exit, %bb.b
  %.not2834 = icmp ult i64 %1, 32
  br i1 %.not2834, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.o, %.critedge
  %.02335 = phi i64 [ %i.aq, %.critedge ], [ %i.d, %bb.o ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.02335 ; 4 uses
  %.val = load i64, ptr %i.am, align 1, !tbaa !115
  %.not29 = icmp eq i64 %.val, %i.c
  br i1 %.not29, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val.1 = load i64, ptr %i.an, align 1, !tbaa !115
  %.not29.1 = icmp eq i64 %.val.1, %i.c
  br i1 %.not29.1, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val.2 = load i64, ptr %i.ao, align 1, !tbaa !115
  %.not29.2 = icmp eq i64 %.val.2, %i.c
  br i1 %.not29.2, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val.3 = load i64, ptr %i.ap, align 1, !tbaa !115
  %.not29.3 = icmp eq i64 %.val.3, %i.c
  br i1 %.not29.3, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.r
  %i.aq = add i64 %.02335, 32                     ; 2 uses
  %.not28 = icmp eq i64 %i.aq, %1
  br i1 %.not28, label %.loopexit, label %.preheader, !llvm.loop !455

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.p, %bb.q, %bb.r, %bb.o, %ZSTD_count.exit, %bb.a
  %.2 = phi i32 [ 0, %ZSTD_count.exit ], [ 1, %bb.a ], [ 1, %bb.o ], [ 1, %.critedge ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %.preheader ]
  ret i32 %.2
}

declare i64 @ZSTD_compressSuperBlock(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #20

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4, i64 noundef %5, ptr nofree noundef readonly %6, i64 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #2 {
bb.a:
  %10 = alloca %struct.repcodes_s, align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !456
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %ZSTD_seqStore_resolveOffCodes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191
  %i.c = load ptr, ptr %1, align 8, !tbaa !187    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !199
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !200
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  %.not44.i = icmp eq i32 %i.h, 0
  br i1 %.not44.i, label %ZSTD_seqStore_resolveOffCodes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = zext i32 %i.n to i64
  %wide.trip.count.i = and i64 %i.g, 4294967295
  br label %bb.e

bb.e:                                             ; preds = %ZSTD_updateRep.exit39.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %ZSTD_updateRep.exit39.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i16, ptr %i.u, align 4, !tbaa !192
  %i.w = icmp eq i16 %i.v, 0
  %i.x = icmp ne i64 %indvars.iv.i, %i.s
  %i.y = select i1 %i.w, i1 %i.x, i1 false        ; 2 uses
  %i.z = zext i1 %i.y to i32                      ; 2 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !195 ; 5 uses
  %i.ab = add i32 %i.aa, -1                       ; 3 uses
  %or.cond.i = icmp ult i32 %i.ab, 3
  br i1 %or.cond.i, label %bb.f, label %thread-pre-split.i

bb.f:                                             ; preds = %bb.e
  %i.ac = add nuw nsw i32 %i.ab, %i.z             ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %2, align 4, !tbaa !50
  %i.af = add i32 %i.ae, -1
  %i.ag = load i32, ptr %3, align 4, !tbaa !50
  %i.ah = add i32 %i.ag, -1
  br label %ZSTD_resolveRepcodeToRawOffset.exit33.i

bb.h:                                             ; preds = %bb.f
  %i.ai = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !50
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ai
  %i.am = load i32, ptr %i.al, align 4, !tbaa !50
  br label %ZSTD_resolveRepcodeToRawOffset.exit33.i

ZSTD_resolveRepcodeToRawOffset.exit33.i:          ; preds = %bb.h, %bb.g
  %.0.i41.i = phi i32 [ %i.af, %bb.g ], [ %i.ak, %bb.h ]
  %.0.i32.i = phi i32 [ %i.ah, %bb.g ], [ %i.am, %bb.h ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i41.i, %.0.i32.i
  br i1 %.not.i, label %thread-pre-split.thread.i, label %bb.i

bb.i:                                             ; preds = %ZSTD_resolveRepcodeToRawOffset.exit33.i
  %i.an = add i32 %.0.i32.i, 3                    ; 2 uses
  store i32 %i.an, ptr %i.t, align 4, !tbaa !195
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.i, %bb.e
  %i.ao = phi i32 [ %i.aa, %bb.e ], [ %i.an, %bb.i ] ; 3 uses
  %i.ap = icmp ugt i32 %i.ao, 3
  br i1 %i.ap, label %bb.j, label %thread-pre-split.thread.i

bb.j:                                             ; preds = %thread-pre-split.i
  %i.aq = load <2 x i32>, ptr %2, align 4, !tbaa !50
  store <2 x i32> %i.aq, ptr %i.o, align 4, !tbaa !50
  %i.ar = add i32 %i.ao, -3
  br label %.sink.split.i.i

thread-pre-split.thread.i:                        ; preds = %thread-pre-split.i, %ZSTD_resolveRepcodeToRawOffset.exit33.i
  %i.as = phi i32 [ %i.ao, %thread-pre-split.i ], [ %i.aa, %ZSTD_resolveRepcodeToRawOffset.exit33.i ]
  %not..i = xor i1 %i.y, true
  %i.at = sext i1 %not..i to i32
  %i.au = add nsw i32 %i.as, %i.at                ; 3 uses
  switch i32 %i.au, label %bb.l [
    i32 0, label %ZSTD_updateRep.exit.i
    i32 3, label %bb.k
  ]

bb.k:                                             ; preds = %thread-pre-split.thread.i
  %i.av = load i32, ptr %2, align 4, !tbaa !50    ; 2 uses
  %i.aw = add i32 %i.av, -1
  br label %bb.m

bb.l:                                             ; preds = %thread-pre-split.thread.i
  %i.ax = zext i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !50
  %.pre.i.i = load i32, ptr %2, align 4, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = phi i32 [ %i.av, %bb.k ], [ %.pre.i.i, %bb.l ]
  %i.bb = phi i32 [ %i.aw, %bb.k ], [ %i.az, %bb.l ]
  %.not22.i.i = icmp eq i32 %i.au, 1
  %.in.i.i = select i1 %.not22.i.i, ptr %i.p, ptr %i.o
  %i.bc = load i32, ptr %.in.i.i, align 4, !tbaa !50
  store i32 %i.bc, ptr %i.p, align 4, !tbaa !50
  store i32 %i.ba, ptr %i.o, align 4, !tbaa !50
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.m, %bb.j
  %.sink.i.i = phi i32 [ %i.bb, %bb.m ], [ %i.ar, %bb.j ]
  store i32 %.sink.i.i, ptr %2, align 4, !tbaa !50
  br label %ZSTD_updateRep.exit.i

ZSTD_updateRep.exit.i:                            ; preds = %.sink.split.i.i, %thread-pre-split.thread.i
  %i.bd = icmp ugt i32 %i.aa, 3
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %ZSTD_updateRep.exit.i
  %i.be = load <2 x i32>, ptr %3, align 4, !tbaa !50
  store <2 x i32> %i.be, ptr %i.q, align 4, !tbaa !50
  %i.bf = add i32 %i.aa, -3
  br label %.sink.split.i36.i

bb.o:                                             ; preds = %ZSTD_updateRep.exit.i
  %i.bg = add nsw i32 %i.ab, %i.z                 ; 3 uses
  switch i32 %i.bg, label %bb.q [
    i32 0, label %ZSTD_updateRep.exit39.i
    i32 3, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.bh = load i32, ptr %3, align 4, !tbaa !50    ; 2 uses
  %i.bi = add i32 %i.bh, -1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !50
  %.pre.i38.i = load i32, ptr %3, align 4, !tbaa !50
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bm = phi i32 [ %i.bh, %bb.p ], [ %.pre.i38.i, %bb.q ]
  %i.bn = phi i32 [ %i.bi, %bb.p ], [ %i.bl, %bb.q ]
  %.not22.i34.i = icmp eq i32 %i.bg, 1
  %.in.i35.i = select i1 %.not22.i34.i, ptr %i.r, ptr %i.q
  %i.bo = load i32, ptr %.in.i35.i, align 4, !tbaa !50
  store i32 %i.bo, ptr %i.r, align 4, !tbaa !50
  store i32 %i.bm, ptr %i.q, align 4, !tbaa !50
  br label %.sink.split.i36.i

.sink.split.i36.i:                                ; preds = %bb.r, %bb.n
  %.sink.i37.i = phi i32 [ %i.bn, %bb.r ], [ %i.bf, %bb.n ]
  store i32 %.sink.i37.i, ptr %3, align 4, !tbaa !50
  br label %ZSTD_updateRep.exit39.i

ZSTD_updateRep.exit39.i:                          ; preds = %.sink.split.i36.i, %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ZSTD_seqStore_resolveOffCodes.exit, label %bb.e, !llvm.loop !457

ZSTD_seqStore_resolveOffCodes.exit:               ; preds = %ZSTD_updateRep.exit39.i, %bb.d, %bb.a
  %i.bp = icmp ult i64 %5, 3
  br i1 %i.bp, label %ZSTD_noCompressBlock.exit.thread, label %bb.s

bb.s:                                             ; preds = %ZSTD_seqStore_resolveOffCodes.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 6 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !56
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 3 uses
  %i.bw = add i64 %5, -3
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !58
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !11
  %i.cb = tail call fastcc i64 @ZSTD_entropyCompressSeqStore(ptr noundef %1, ptr noundef %i.br, ptr noundef %i.bt, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv, i64 noundef %i.bw, i64 noundef %7, ptr noundef %i.by, i32 noundef %i.ca) ; 5 uses
  %i.cc = icmp ult i64 %i.cb, -119
  br i1 %i.cc, label %bb.t, label %ZSTD_noCompressBlock.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !248
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = icmp ult i64 %i.cb, 25
  %or.cond = and i1 %i.cg, %i.cf
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ch = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %6, i64 noundef %7)
  %.not77 = icmp eq i32 %i.ch, 0
  %spec.select = select i1 %.not77, i64 %i.cb, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.070 = phi i64 [ %i.cb, %bb.t ], [ %spec.select, %bb.u ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !249
  %.not78 = icmp eq i32 %i.cj, 0
  br i1 %.not78, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %i.ci, ptr noundef %1, ptr noundef nonnull %10) ; 2 uses
  %i.cl = icmp ult i64 %i.ck, -119
  br i1 %i.cl, label %bb.x, label %ZSTD_noCompressBlock.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.cm = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !49
  %i.cn = shufflevector <2 x ptr> %i.cm, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.cn, ptr %i.bq, align 8, !tbaa !49
  br label %ZSTD_noCompressBlock.exit.thread

bb.y:                                             ; preds = %bb.v
  switch i64 %.070, label %bb.ad [
    i64 0, label %bb.z
    i64 1, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.co = add i64 %7, 3                           ; 4 uses
  %i.cp = icmp ugt i64 %i.co, %5
  br i1 %i.cp, label %ZSTD_noCompressBlock.exit.thread, label %ZSTD_noCompressBlock.exit

ZSTD_noCompressBlock.exit:                        ; preds = %bb.z
  %.tr.i = trunc i64 %7 to i32
  %i.cq = shl i32 %.tr.i, 3                       ; 2 uses
  %i.cr = or disjoint i32 %i.cq, %8
  %i.cs = trunc i32 %i.cr to i16
  store i16 %i.cs, ptr %4, align 1, !tbaa !232
  %i.ct = lshr i32 %i.cq, 16
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !197
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr readonly align 1 %6, i64 %7, i1 false)
  %i.cw = icmp ult i64 %i.co, -119
  br i1 %i.cw, label %bb.aa, label %ZSTD_noCompressBlock.exit.thread

bb.aa:                                            ; preds = %ZSTD_noCompressBlock.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !456
  br label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.cx = icmp eq i64 %5, 3
  br i1 %i.cx, label %ZSTD_noCompressBlock.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = load i8, ptr %6, align 1, !tbaa !197
  %.tr.i84 = trunc i64 %7 to i32
  %i.cz = shl i32 %.tr.i84, 3                     ; 2 uses
  %i.da = or disjoint i32 %i.cz, %8
  %i.db = trunc i32 %i.da to i16
  %i.dc = or disjoint i16 %i.db, 2
  store i16 %i.dc, ptr %4, align 1, !tbaa !232
  %i.dd = lshr i32 %i.cz, 16
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.de, ptr %i.df, align 1, !tbaa !197
  store i8 %i.cy, ptr %i.bv, align 1, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !456
  br label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %i.dg = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !49
  %i.dh = shufflevector <2 x ptr> %i.dg, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.dh, ptr %i.bq, align 8, !tbaa !49
  %.tr.i86 = trunc i64 %.070 to i32
  %i.di = shl i32 %.tr.i86, 3                     ; 2 uses
  %i.dj = or disjoint i32 %i.di, %8
  %i.dk = trunc i32 %i.dj to i16
  %i.dl = or disjoint i16 %i.dk, 4
  store i16 %i.dl, ptr %4, align 1, !tbaa !232
  %i.dm = lshr i32 %i.di, 16
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !197
  %i.dp = add nuw i64 %.070, 3
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa
  %.069 = phi i64 [ %i.co, %bb.aa ], [ 4, %bb.ac ], [ %i.dp, %bb.ad ] ; 2 uses
  %i.dq = load ptr, ptr %i.bq, align 8, !tbaa !56
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 5604 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !169
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.af, label %ZSTD_noCompressBlock.exit.thread

bb.af:                                            ; preds = %bb.ae
  store i32 1, ptr %i.dr, align 4, !tbaa !169
  br label %ZSTD_noCompressBlock.exit.thread

ZSTD_noCompressBlock.exit.thread:                 ; preds = %bb.ab, %bb.z, %bb.ae, %bb.af, %ZSTD_seqStore_resolveOffCodes.exit, %bb.w, %ZSTD_noCompressBlock.exit, %bb.s, %bb.x
  %.4 = phi i64 [ %i.cb, %bb.s ], [ 0, %bb.x ], [ %i.ck, %bb.w ], [ -70, %ZSTD_seqStore_resolveOffCodes.exit ], [ %i.co, %ZSTD_noCompressBlock.exit ], [ -70, %bb.z ], [ %.069, %bb.af ], [ %.069, %bb.ae ], [ -70, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  ret i64 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ZSTD_deriveSeqStoreChunk(ptr nofree noundef captures(none) initializes((0, 80)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #22 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !255
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !187
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %2 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !187    ; 5 uses
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %ZSTD_countSeqStoreLiteralsBytes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !200
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = icmp eq i64 %i.f, 8
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.g, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %.014.i = phi i64 [ 0, %.lr.ph.i.new ], [ %.1.i.1, %bb.g ]
  %.01213.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ab, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01213.i
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.3.0.copyload.i = load i16, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !232
  %i.n = zext i16 %.sroa.3.0.copyload.i to i64
  %i.o = add i64 %.014.i, %i.n                    ; 3 uses
  %i.p = icmp eq i64 %.01213.i, %i.j
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.k, align 8, !tbaa !199
  %i.r = icmp eq i32 %i.q, 1
  %i.s = add i64 %i.o, 65536
  %spec.select.i = select i1 %i.r, i64 %i.s, i64 %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi i64 [ %i.o, %bb.c ], [ %spec.select.i, %bb.d ]
  %i.t = or disjoint i64 %.01213.i, 1             ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.t
  %.sroa.3.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.3.0.copyload.i.1 = load i16, ptr %.sroa.3.0..sroa_idx.i.1, align 4, !tbaa !232
  %i.v = zext i16 %.sroa.3.0.copyload.i.1 to i64
  %i.w = add i64 %.1.i, %i.v                      ; 3 uses
  %i.x = icmp eq i64 %i.t, %i.j
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.k, align 8, !tbaa !199
  %i.z = icmp eq i32 %i.y, 1
  %i.aa = add i64 %i.w, 65536
  %spec.select.i.1 = select i1 %i.z, i64 %i.aa, i64 %i.w
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.1 = phi i64 [ %i.w, %bb.e ], [ %spec.select.i.1, %bb.f ] ; 3 uses
  %i.ab = add nuw i64 %.01213.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ZSTD_countSeqStoreLiteralsBytes.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !257

ZSTD_countSeqStoreLiteralsBytes.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %i.ac = and i64 %i.f, 8
  %lcmp.mod.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not, label %ZSTD_countSeqStoreLiteralsBytes.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ZSTD_countSeqStoreLiteralsBytes.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %.1.i.1, %ZSTD_countSeqStoreLiteralsBytes.exit.loopexit.unr-lcssa ]
  %.01213.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ab, %ZSTD_countSeqStoreLiteralsBytes.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01213.i.epil.init
  %.sroa.3.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.3.0.copyload.i.epil = load i16, ptr %.sroa.3.0..sroa_idx.i.epil, align 4, !tbaa !232
  %i.ae = zext i16 %.sroa.3.0.copyload.i.epil to i64
  %i.af = add i64 %.014.i.epil.init, %i.ae        ; 3 uses
  %i.ag = icmp eq i64 %.01213.i.epil.init, %i.j
  br i1 %i.ag, label %bb.h, label %ZSTD_countSeqStoreLiteralsBytes.exit

bb.h:                                             ; preds = %.epil.preheader
  %i.ah = load i32, ptr %i.k, align 8, !tbaa !199
  %i.ai = icmp eq i32 %i.ah, 1
  %i.aj = add i64 %i.af, 65536
  %spec.select.i.epil = select i1 %i.ai, i64 %i.aj, i64 %i.af
  br label %ZSTD_countSeqStoreLiteralsBytes.exit

ZSTD_countSeqStoreLiteralsBytes.exit:             ; preds = %ZSTD_countSeqStoreLiteralsBytes.exit.loopexit.unr-lcssa, %bb.h, %.epil.preheader, %bb.b
  %.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %.1.i.1, %ZSTD_countSeqStoreLiteralsBytes.exit.loopexit.unr-lcssa ], [ %i.af, %.epil.preheader ], [ %spec.select.i.epil, %bb.h ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.lcssa.i
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !201
  br label %bb.i

bb.i:                                             ; preds = %ZSTD_countSeqStoreLiteralsBytes.exit, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !199
  %.not35 = icmp eq i32 %i.ao, 0
  br i1 %.not35, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !200
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp ugt i64 %2, %i.ar
  %i.at = icmp samesign ult i64 %3, %i.ar
  %or.cond = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.au, align 8, !tbaa !199
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.av = trunc nuw i64 %2 to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !200
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !200
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %i.az = load ptr, ptr %1, align 8, !tbaa !187
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %2 ; 6 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !187
  %i.bb = load ptr, ptr %1, align 8, !tbaa !187   ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %3 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !191
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !191
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = icmp eq i64 %3, %i.bj
  br i1 %i.bk, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i36 = icmp eq ptr %i.bc, %i.ba
  br i1 %.not.i36, label %ZSTD_countSeqStoreLiteralsBytes.exit46, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.n
  %i.bl = ptrtoint ptr %i.bc to i64
  %i.bm = ptrtoint ptr %i.ba to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = ashr exact i64 %i.bn, 3                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !200
end_hunk_0
begin_hunk_1_@ZSTD_deriveSeqStoreChunk:bb.a

.lr.ph.i37.new:                                   ; preds = %.lr.ph.i37
  %unroll_iter60 = and i64 %i.bo, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i37.new
  %.014.i38 = phi i64 [ 0, %.lr.ph.i37.new ], [ %.1.i42.1, %bb.s ]
  %.01213.i39 = phi i64 [ 0, %.lr.ph.i37.new ], [ %i.cj, %bb.s ] ; 4 uses
  %niter61 = phi i64 [ 0, %.lr.ph.i37.new ], [ %niter61.next.1, %bb.s ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.01213.i39
  %.sroa.3.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %.sroa.3.0.copyload.i41 = load i16, ptr %.sroa.3.0..sroa_idx.i40, align 4, !tbaa !232
  %i.bv = zext i16 %.sroa.3.0.copyload.i41 to i64
  %i.bw = add i64 %.014.i38, %i.bv                ; 3 uses
  %i.bx = icmp eq i64 %.01213.i39, %i.br
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = load i32, ptr %i.bs, align 8, !tbaa !199
  %i.bz = icmp eq i32 %i.by, 1
  %i.ca = add i64 %i.bw, 65536
  %spec.select.i45 = select i1 %i.bz, i64 %i.ca, i64 %i.bw
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.i42 = phi i64 [ %i.bw, %bb.o ], [ %spec.select.i45, %bb.p ]
  %i.cb = or disjoint i64 %.01213.i39, 1          ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cb
  %.sroa.3.0..sroa_idx.i40.1 = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.sroa.3.0.copyload.i41.1 = load i16, ptr %.sroa.3.0..sroa_idx.i40.1, align 4, !tbaa !232
  %i.cd = zext i16 %.sroa.3.0.copyload.i41.1 to i64
  %i.ce = add i64 %.1.i42, %i.cd                  ; 3 uses
  %i.cf = icmp eq i64 %i.cb, %i.br
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cg = load i32, ptr %i.bs, align 8, !tbaa !199
  %i.ch = icmp eq i32 %i.cg, 1
  %i.ci = add i64 %i.ce, 65536
  %spec.select.i45.1 = select i1 %i.ch, i64 %i.ci, i64 %i.ce
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.i42.1 = phi i64 [ %i.ce, %bb.q ], [ %spec.select.i45.1, %bb.r ] ; 3 uses
  %i.cj = add nuw i64 %.01213.i39, 2              ; 2 uses
  %niter61.next.1 = add i64 %niter61, 2           ; 2 uses
  %niter61.ncmp.1 = icmp eq i64 %niter61.next.1, %unroll_iter60
  br i1 %niter61.ncmp.1, label %ZSTD_countSeqStoreLiteralsBytes.exit46.loopexit.unr-lcssa, label %bb.o, !llvm.loop !257

ZSTD_countSeqStoreLiteralsBytes.exit46.loopexit.unr-lcssa: ; preds = %bb.s
  %i.ck = and i64 %i.bn, 8
  %lcmp.mod57.not = icmp eq i64 %i.ck, 0
  br i1 %lcmp.mod57.not, label %ZSTD_countSeqStoreLiteralsBytes.exit46, label %.epil.preheader55

.epil.preheader55:                                ; preds = %ZSTD_countSeqStoreLiteralsBytes.exit46.loopexit.unr-lcssa, %.lr.ph.i37
  %.014.i38.epil.init = phi i64 [ 0, %.lr.ph.i37 ], [ %.1.i42.1, %ZSTD_countSeqStoreLiteralsBytes.exit46.loopexit.unr-lcssa ]
  %.01213.i39.epil.init = phi i64 [ 0, %.lr.ph.i37 ], [ %i.cj, %ZSTD_countSeqStoreLiteralsBytes.exit46.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod59 = trunc i64 %i.bo to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.01213.i39.epil.init
  %.sroa.3.0..sroa_idx.i40.epil = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %.sroa.3.0.copyload.i41.epil = load i16, ptr %.sroa.3.0..sroa_idx.i40.epil, align 4, !tbaa !232
  %i.cm = zext i16 %.sroa.3.0.copyload.i41.epil to i64
  %i.cn = add i64 %.014.i38.epil.init, %i.cm      ; 3 uses
  %i.co = icmp eq i64 %.01213.i39.epil.init, %i.br
  br i1 %i.co, label %bb.t, label %ZSTD_countSeqStoreLiteralsBytes.exit46

bb.t:                                             ; preds = %.epil.preheader55
  %i.cp = load i32, ptr %i.bs, align 8, !tbaa !199
  %i.cq = icmp eq i32 %i.cp, 1
  %i.cr = add i64 %i.cn, 65536
  %spec.select.i45.epil = select i1 %i.cq, i64 %i.cr, i64 %i.cn
  br label %ZSTD_countSeqStoreLiteralsBytes.exit46

ZSTD_countSeqStoreLiteralsBytes.exit46:           ; preds = %ZSTD_countSeqStoreLiteralsBytes.exit46.loopexit.unr-lcssa, %bb.t, %.epil.preheader55, %bb.n
  %.0.lcssa.i44 = phi i64 [ 0, %bb.n ], [ %.1.i42.1, %ZSTD_countSeqStoreLiteralsBytes.exit46.loopexit.unr-lcssa ], [ %i.cn, %.epil.preheader55 ], [ %spec.select.i45.epil, %bb.t ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !201
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.0.lcssa.i44
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !202
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %ZSTD_countSeqStoreLiteralsBytes.exit46
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !188
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %2
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !188
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !190
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %2
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !190
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !189
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %2
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !189
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_deriveBlockSplitsHelper(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 3736 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3816 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3896 ; 2 uses
  %i.e = sub i64 %2, %1
  %i.f = icmp ult i64 %i.e, 300
  br i1 %i.f, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i64, ptr %i.a, align 8, !tbaa !254
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %i.g = phi i64 [ %i.v, %tailrecurse ], [ %.pre, %.lr.ph.preheader ]
  %.tr4853 = phi i64 [ %i.h, %tailrecurse ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.in = add i64 %.tr4853, %2
  %i.h = lshr i64 %.in, 1                         ; 6 uses
  %i.i = icmp ugt i64 %i.g, 195
  br i1 %i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %i.b, ptr noundef %4, i64 noundef %.tr4853, i64 noundef %2)
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %i.c, ptr noundef %4, i64 noundef %.tr4853, i64 noundef %i.h)
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %i.d, ptr noundef %4, i64 noundef %i.h, i64 noundef %2)
  %i.j = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %i.b, ptr noundef %3) ; 2 uses
  %i.k = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %i.c, ptr noundef %3) ; 2 uses
  %i.l = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %i.d, ptr noundef %3) ; 2 uses
  %i.m = icmp ult i64 %i.j, -119
  %i.n = icmp ult i64 %i.k, -119
  %or.cond52 = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond52, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i64 %i.l, -119
  %i.p = add i64 %i.l, %i.k
  %i.q = icmp ult i64 %i.p, %i.j
  %or.cond = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond, label %tailrecurse, label %._crit_edge

tailrecurse:                                      ; preds = %bb.c
  tail call fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef %0, i64 noundef %.tr4853, i64 noundef %i.h, ptr noundef nonnull %3, ptr noundef %4)
  %i.r = trunc i64 %i.h to i32
  %i.s = load ptr, ptr %0, align 8, !tbaa !252
  %i.t = load i64, ptr %i.a, align 8, !tbaa !254  ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  store i32 %i.r, ptr %i.u, align 4, !tbaa !50
  %i.v = add i64 %i.t, 1                          ; 2 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !254
  %i.w = sub nsw i64 %2, %i.h
  %i.x = icmp ult i64 %i.w, 300
  br i1 %i.x, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %tailrecurse, %.lr.ph, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4920 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3208 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3520 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = tail call i64 @ZSTD_buildBlockEntropyStats(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef %i.l, i64 noundef 8920) ; 2 uses
  %i.n = icmp ult i64 %i.m, -119
  br i1 %i.n, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !201  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !202
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t                       ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !189  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !188  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !190 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !191 ; 4 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !187   ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 11 uses
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !57  ; 4 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !58  ; 15 uses
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.not = icmp eq i32 %i.ak, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i32 255, ptr %i.d, align 4, !tbaa !50
  %i.al = icmp ugt i64 %i.u, 1023
  %i.am = select i1 %i.al, i64 4, i64 3
  %i.an = icmp ugt i64 %i.u, 16383
  %i.ao = zext i1 %i.an to i64
  %i.ap = add nuw nsw i64 %i.am, %i.ao
  %i.aq = icmp ult i64 %i.u, 256
  switch i32 %i.ak, label %bb.h [
    i32 0, label %ZSTD_estimateBlockSize_literal.exit.i
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %ZSTD_estimateBlockSize_literal.exit.i

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.ar = call i64 @HIST_count_wksp(ptr noundef %i.aj, ptr noundef nonnull %i.d, ptr noundef %i.p, i64 noundef %i.u, ptr noundef %i.aj, i64 noundef 8920) #28
  %i.as = icmp ult i64 %i.ar, -119
  br i1 %i.as, label %bb.e, label %ZSTD_estimateBlockSize_literal.exit.i

bb.e:                                             ; preds = %bb.d
  %i.at = load i32, ptr %i.d, align 4, !tbaa !50
  %i.au = call i64 @HUF_estimateCompressedSize(ptr noundef %i.ai, ptr noundef %i.aj, i32 noundef %i.at) #28 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 5056
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !459
  %i.ax = add i64 %i.aw, %i.au
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi i64 [ %i.ax, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.ay = add i64 %.0.i.i, 6
  %spec.select.i.i = select i1 %i.aq, i64 %.0.i.i, i64 %i.ay
  %i.az = add i64 %i.ap, %spec.select.i.i
  br label %ZSTD_estimateBlockSize_literal.exit.i

bb.h:                                             ; preds = %bb.b
  br label %ZSTD_estimateBlockSize_literal.exit.i

ZSTD_estimateBlockSize_literal.exit.i:            ; preds = %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.126.i.i = phi i64 [ 0, %bb.h ], [ 1, %bb.c ], [ %i.u, %bb.b ], [ %i.az, %bb.g ], [ %i.u, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 2064
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 5064
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 5068
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !460 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i32 31, ptr %i.c, align 4, !tbaa !50
  %i.bf = call i64 @HIST_countFast_wksp(ptr noundef %i.aj, ptr noundef nonnull %i.c, ptr noundef %i.w, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %i.ah, ptr noundef %i.aj, i64 noundef 8920) #28 ; 0 uses
  switch i32 %i.bd, label %bb.j [
    i32 0, label %bb.i
    i32 1, label %.preheader.i.i.i
  ]

bb.i:                                             ; preds = %ZSTD_estimateBlockSize_literal.exit.i
  %i.bg = load i32, ptr %i.c, align 4, !tbaa !50
  %i.bh = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, ptr noundef %i.aj, i32 noundef %i.bg) #28
  br label %bb.l

bb.j:                                             ; preds = %ZSTD_estimateBlockSize_literal.exit.i
  %i.bi = and i32 %i.bd, -2
  %or.cond.i.i.i = icmp eq i32 %i.bi, 2
  br i1 %or.cond.i.i.i, label %bb.k, label %.preheader.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !50
  %i.bk = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %i.ba, ptr noundef %i.aj, i32 noundef %i.bj) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i = phi i64 [ %i.bh, %bb.i ], [ %i.bk, %bb.k ] ; 2 uses
  %i.bl = icmp ult i64 %.0.i.i.i, -119
  br i1 %i.bl, label %.preheader.i.i.i, label %bb.m

.preheader.i.i.i:                                 ; preds = %bb.l, %bb.j, %ZSTD_estimateBlockSize_literal.exit.i
  %.043.i.i.i = phi i64 [ %.0.i.i.i, %bb.l ], [ 0, %bb.j ], [ 0, %ZSTD_estimateBlockSize_literal.exit.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.preheader.i.i.i, %.lr.ph.split.us.i.i.i
  %.139.us.i.i.i = phi i64 [ %.2.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.043.i.i.i, %.preheader.i.i.i ]
  %.03438.us.i.i.i = phi ptr [ %i.bm, %.lr.ph.split.us.i.i.i ], [ %i.w, %.preheader.i.i.i ] ; 2 uses
  %.pn.in.us.i.i.i = load i8, ptr %.03438.us.i.i.i, align 1, !tbaa !197
  %.pn.us.i.i.i = zext i8 %.pn.in.us.i.i.i to i64
  %.2.us.i.i.i = add i64 %.139.us.i.i.i, %.pn.us.i.i.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.03438.us.i.i.i, i64 1 ; 2 uses
  %i.bn = icmp ult ptr %i.bm, %i.be
  br i1 %i.bn, label %.lr.ph.split.us.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !461

bb.m:                                             ; preds = %bb.l
  %i.bo = mul i64 %i.ah, 10
  br label %ZSTD_estimateBlockSize_symbolType.exit.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.split.us.i.i.i, %.preheader.i.i.i
  %.1.lcssa.i.i.i = phi i64 [ %.043.i.i.i, %.preheader.i.i.i ], [ %.2.us.i.i.i, %.lr.ph.split.us.i.i.i ]
  %i.bp = lshr i64 %.1.lcssa.i.i.i, 3
  br label %ZSTD_estimateBlockSize_symbolType.exit.i.i

ZSTD_estimateBlockSize_symbolType.exit.i.i:       ; preds = %._crit_edge.i.i.i, %bb.m
  %.033.i.i.i = phi i64 [ %i.bo, %bb.m ], [ %i.bp, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.bq = load i32, ptr %i.bb, align 8, !tbaa !462 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 4288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 35, ptr %i.b, align 4, !tbaa !50
  %i.bt = call i64 @HIST_countFast_wksp(ptr noundef %i.aj, ptr noundef nonnull %i.b, ptr noundef %i.y, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %i.ah, ptr noundef %i.aj, i64 noundef 8920) #28 ; 0 uses
  switch i32 %i.bq, label %bb.o [
    i32 0, label %bb.n
    i32 1, label %.preheader.i27.i.i
  ]

bb.n:                                             ; preds = %ZSTD_estimateBlockSize_symbolType.exit.i.i
  %i.bu = load i32, ptr %i.b, align 4, !tbaa !50
  %i.bv = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, ptr noundef %i.aj, i32 noundef %i.bu) #28
  br label %bb.q

bb.o:                                             ; preds = %ZSTD_estimateBlockSize_symbolType.exit.i.i
  %i.bw = and i32 %i.bq, -2
  %or.cond.i35.i.i = icmp eq i32 %i.bw, 2
  br i1 %or.cond.i35.i.i, label %bb.p, label %.preheader.i27.i.i

bb.p:                                             ; preds = %bb.o
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !50
  %i.by = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %i.br, ptr noundef %i.aj, i32 noundef %i.bx) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.0.i34.i.i = phi i64 [ %i.bv, %bb.n ], [ %i.by, %bb.p ] ; 2 uses
  %i.bz = icmp ult i64 %.0.i34.i.i, -119
  br i1 %i.bz, label %.preheader.i27.i.i, label %bb.r

.preheader.i27.i.i:                               ; preds = %bb.q, %bb.o, %ZSTD_estimateBlockSize_symbolType.exit.i.i
  %.043.i28.i.i = phi i64 [ %.0.i34.i.i, %bb.q ], [ 0, %bb.o ], [ 0, %ZSTD_estimateBlockSize_symbolType.exit.i.i ] ; 2 uses
  %.not.i29.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i29.i.i, label %._crit_edge.i31.i.i, label %.lr.ph.split.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ca = mul i64 %i.ah, 10
  br label %ZSTD_estimateBlockSize_symbolType.exit36.i.i

.lr.ph.split.i.i.i:                               ; preds = %.preheader.i27.i.i, %.lr.ph.split.i.i.i
  %.139.i.i.i = phi i64 [ %.2.i.i.i, %.lr.ph.split.i.i.i ], [ %.043.i28.i.i, %.preheader.i27.i.i ]
  %.03438.i.i.i = phi ptr [ %i.ce, %.lr.ph.split.i.i.i ], [ %i.y, %.preheader.i27.i.i ] ; 2 uses
  %i.cb = load i8, ptr %.03438.i.i.i, align 1, !tbaa !197
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %i.cc
  %.pn.in.i.i.i = load i8, ptr %i.cd, align 1, !tbaa !197
  %.pn.i.i.i = zext i8 %.pn.in.i.i.i to i64
  %.2.i.i.i = add i64 %.139.i.i.i, %.pn.i.i.i     ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.03438.i.i.i, i64 1 ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %i.bs
  br i1 %i.cf, label %.lr.ph.split.i.i.i, label %._crit_edge.i31.i.i, !llvm.loop !461

._crit_edge.i31.i.i:                              ; preds = %.lr.ph.split.i.i.i, %.preheader.i27.i.i
  %.1.lcssa.i32.i.i = phi i64 [ %.043.i28.i.i, %.preheader.i27.i.i ], [ %.2.i.i.i, %.lr.ph.split.i.i.i ]
  %i.cg = lshr i64 %.1.lcssa.i32.i.i, 3
  br label %ZSTD_estimateBlockSize_symbolType.exit36.i.i

ZSTD_estimateBlockSize_symbolType.exit36.i.i:     ; preds = %._crit_edge.i31.i.i, %bb.r
  %.033.i33.i.i = phi i64 [ %i.ca, %bb.r ], [ %i.cg, %._crit_edge.i31.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 5072
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !229 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2836
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 52, ptr %i.a, align 4, !tbaa !50
  %i.cl = call i64 @HIST_countFast_wksp(ptr noundef %i.aj, ptr noundef nonnull %i.a, ptr noundef %i.aa, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %i.ah, ptr noundef %i.aj, i64 noundef 8920) #28 ; 0 uses
  switch i32 %i.ci, label %bb.t [
    i32 0, label %bb.s
    i32 1, label %.preheader.i37.i.i
  ]

bb.s:                                             ; preds = %ZSTD_estimateBlockSize_symbolType.exit36.i.i
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !50
  %i.cn = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, ptr noundef %i.aj, i32 noundef %i.cm) #28
  br label %bb.v

bb.t:                                             ; preds = %ZSTD_estimateBlockSize_symbolType.exit36.i.i
  %i.co = and i32 %i.ci, -2
  %or.cond.i51.i.i = icmp eq i32 %i.co, 2
  br i1 %or.cond.i51.i.i, label %bb.u, label %.preheader.i37.i.i

bb.u:                                             ; preds = %bb.t
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !50
  %i.cq = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %i.cj, ptr noundef %i.aj, i32 noundef %i.cp) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.0.i50.i.i = phi i64 [ %i.cn, %bb.s ], [ %i.cq, %bb.u ] ; 2 uses
  %i.cr = icmp ult i64 %.0.i50.i.i, -119
  br i1 %i.cr, label %.preheader.i37.i.i, label %bb.w

.preheader.i37.i.i:                               ; preds = %bb.v, %bb.t, %ZSTD_estimateBlockSize_symbolType.exit36.i.i
  %.043.i38.i.i = phi i64 [ %.0.i50.i.i, %bb.v ], [ 0, %bb.t ], [ 0, %ZSTD_estimateBlockSize_symbolType.exit36.i.i ] ; 2 uses
  %.not.i39.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i39.i.i, label %._crit_edge.i47.i.i, label %.lr.ph.split.i41.i.i

bb.w:                                             ; preds = %bb.v
  %i.cs = mul i64 %i.ah, 10
  br label %ZSTD_estimateBlockSize.exit

.lr.ph.split.i41.i.i:                             ; preds = %.preheader.i37.i.i, %.lr.ph.split.i41.i.i
  %.139.i42.i.i = phi i64 [ %.2.i46.i.i, %.lr.ph.split.i41.i.i ], [ %.043.i38.i.i, %.preheader.i37.i.i ]
  %.03438.i43.i.i = phi ptr [ %i.cw, %.lr.ph.split.i41.i.i ], [ %i.aa, %.preheader.i37.i.i ] ; 2 uses
  %i.ct = load i8, ptr %.03438.i43.i.i, align 1, !tbaa !197
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.cu
  %.pn.in.i44.i.i = load i8, ptr %i.cv, align 1, !tbaa !197
  %.pn.i45.i.i = zext i8 %.pn.in.i44.i.i to i64
  %.2.i46.i.i = add i64 %.139.i42.i.i, %.pn.i45.i.i ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.03438.i43.i.i, i64 1 ; 2 uses
  %i.cx = icmp ult ptr %i.cw, %i.ck
  br i1 %i.cx, label %.lr.ph.split.i41.i.i, label %._crit_edge.i47.i.i, !llvm.loop !461

._crit_edge.i47.i.i:                              ; preds = %.lr.ph.split.i41.i.i, %.preheader.i37.i.i
  %.1.lcssa.i48.i.i = phi i64 [ %.043.i38.i.i, %.preheader.i37.i.i ], [ %.2.i46.i.i, %.lr.ph.split.i41.i.i ]
  %i.cy = lshr i64 %.1.lcssa.i48.i.i, 3
  br label %ZSTD_estimateBlockSize.exit

ZSTD_estimateBlockSize.exit:                      ; preds = %bb.w, %._crit_edge.i47.i.i
  %.033.i49.i.i = phi i64 [ %i.cs, %bb.w ], [ %i.cy, %._crit_edge.i47.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 5216
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !463
  %i.db = icmp ugt i64 %i.ah, 32511
  %i.dc = icmp ugt i64 %i.ah, 127
  %i.dd = select i1 %i.dc, i64 3, i64 2
  %i.de = select i1 %i.db, i64 4, i64 3
  %i.df = add nuw nsw i64 %i.de, %i.dd
  %i.dg = add i64 %i.df, %.126.i.i
  %i.dh = add i64 %i.dg, %.033.i.i.i
  %i.di = add i64 %i.dh, %.033.i33.i.i
  %i.dj = add i64 %i.di, %.033.i49.i.i
  %i.dk = add i64 %i.dj, %i.da
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %ZSTD_estimateBlockSize.exit
  %.1 = phi i64 [ %i.dk, %ZSTD_estimateBlockSize.exit ], [ %i.m, %bb.a ]
  ret i64 %.1
}

declare i64 @ZSTD_crossEntropyCost(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare i64 @ZSTD_fseBitCost(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ZSTD_entropyCompressSeqStore(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #23 {
bb.a:
  %9 = alloca %struct.ZSTD_symbolEncodingTypeStats_t, align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !92   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2064 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4288
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2836
  %i.f = load ptr, ptr %0, align 8, !tbaa !187    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !191  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !189
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !188
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !190
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 212 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !201  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = icmp eq ptr %i.h, %i.f                   ; 2 uses
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !202
  %.pre135.i = ptrtoint ptr %.pre.i to i64
  %.pre136.i = sub i64 %.pre135.i, %i.x           ; 2 uses
  br i1 %i.y, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = udiv i64 %.pre136.i, %i.l
  %i.aa = icmp ugt i64 %i.z, 19
  %i.ab = zext i1 %i.aa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.ac = phi i32 [ %i.ab, %bb.b ], [ 1, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !97
  switch i32 %i.ae, label %bb.d [
    i32 1, label %ZSTD_literalsCompressionIsDisabled.exit.i
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %._crit_edge.i
  br label %ZSTD_literalsCompressionIsDisabled.exit.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.af = icmp eq i32 %i.b, 1
  br i1 %i.af, label %bb.e, label %ZSTD_literalsCompressionIsDisabled.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !91
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  br label %ZSTD_literalsCompressionIsDisabled.exit.i

ZSTD_literalsCompressionIsDisabled.exit.i:        ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.0.i.i = phi i32 [ 0, %._crit_edge.i ], [ 1, %bb.c ], [ 0, %bb.d ], [ %i.aj, %bb.e ]
  %i.ak = tail call i64 @ZSTD_compressLiterals(ptr noundef %4, i64 noundef %5, ptr noundef %i.v, i64 noundef %.pre136.i, ptr noundef nonnull %i.t, i64 noundef 8708, ptr noundef %1, ptr noundef %2, i32 noundef %i.b, i32 noundef %.0.i.i, i32 noundef %i.ac, i32 noundef %8) #28 ; 4 uses
  %i.al = icmp ult i64 %i.ak, -119
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak ; 8 uses
  br i1 %i.al, label %bb.f, label %ZSTD_entropyCompressSeqStore_internal.exit.thread

bb.f:                                             ; preds = %ZSTD_literalsCompressionIsDisabled.exit.i
  %i.an = ptrtoint ptr %i.s to i64
  %gepdiff.i = sub nsw i64 %5, %i.ak
  %i.ao = icmp slt i64 %gepdiff.i, 4
  br i1 %i.ao, label %ZSTD_entropyCompressSeqStore_internal.exit.thread.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp ult i64 %i.l, 128
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = trunc nuw nsw i64 %i.l to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.aq, ptr %i.am, align 1, !tbaa !197
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.as = icmp ult i64 %i.l, 32512
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = lshr i64 %i.l, 8
  %i.au = trunc nuw nsw i64 %i.at to i8
  %i.av = or disjoint i8 %i.au, -128
  store i8 %i.av, ptr %i.am, align 1, !tbaa !197
  %i.aw = trunc i64 %i.l to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !197
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i8 -1, ptr %i.am, align 1, !tbaa !197
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ba = trunc i64 %i.l to i16
  %i.bb = add i16 %i.ba, -32512
  store i16 %i.bb, ptr %i.az, align 1, !tbaa !232
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.1114.i = phi ptr [ %i.ar, %bb.h ], [ %i.ay, %bb.j ], [ %i.bc, %bb.k ] ; 3 uses
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 2064
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3552) %i.c, ptr noundef nonnull align 8 dereferenceable(3552) %i.bd, i64 3552, i1 false)
  br label %ZSTD_entropyCompressSeqStore_internal.exit

bb.n:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.1114.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 2064
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull readonly %0, i64 noundef %i.l, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.c, ptr noundef nonnull %i.be, ptr noundef nonnull %i.s, i32 noundef %i.b, ptr noundef nonnull %7, ptr noundef nonnull %i.t, i64 noundef 8708)
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !437 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, -119
  br i1 %i.bi, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.bj = load i32, ptr %9, align 8, !tbaa !436
  %i.bk = shl i32 %i.bj, 6
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !438
  %i.bn = shl i32 %i.bm, 4
  %i.bo = add i32 %i.bn, %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !439
  %i.br = shl i32 %i.bq, 2
  %i.bs = add i32 %i.bo, %i.br
  %i.bt = trunc i32 %i.bs to i8
  store i8 %i.bt, ptr %.1114.i, align 1, !tbaa !197
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !433 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !435
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.an, %i.bz
  %i.cb = tail call i64 @ZSTD_encodeSequences(ptr noundef nonnull %i.bw, i64 noundef %i.ca, ptr noundef nonnull %i.e, ptr noundef %i.r, ptr noundef nonnull %i.c, ptr noundef %i.n, ptr noundef nonnull %i.d, ptr noundef %i.p, ptr noundef %i.f, i64 noundef %i.l, i32 noundef %i.by, i32 noundef %8) #28 ; 4 uses
  %i.cc = icmp ult i64 %i.cb, -119
  br i1 %i.cc, label %bb.p, label %ZSTD_entropyCompressSeqStore_internal.exit.thread

bb.p:                                             ; preds = %bb.o
  %.not129.i = icmp eq i64 %i.bv, 0
  %i.cd = add i64 %i.cb, %i.bv
  %i.ce = icmp ugt i64 %i.cd, 3
  %or.cond.not.i = or i1 %.not129.i, %i.ce
  br i1 %or.cond.not.i, label %bb.q, label %ZSTD_entropyCompressSeqStore_internal.exit.thread30

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb
  br label %ZSTD_entropyCompressSeqStore_internal.exit

.critedge.i:                                      ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %ZSTD_entropyCompressSeqStore_internal.exit.thread

ZSTD_entropyCompressSeqStore_internal.exit:       ; preds = %bb.m, %bb.q
  %.1114.i.sink = phi ptr [ %.1114.i, %bb.m ], [ %i.cf, %bb.q ]
  %i.cg = ptrtoint ptr %.1114.i.sink to i64
  %i.ch = ptrtoint ptr %4 to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %ZSTD_entropyCompressSeqStore_internal.exit.thread30, label %ZSTD_entropyCompressSeqStore_internal.exit.thread

ZSTD_entropyCompressSeqStore_internal.exit.thread: ; preds = %bb.o, %.critedge.i, %ZSTD_literalsCompressionIsDisabled.exit.i, %ZSTD_entropyCompressSeqStore_internal.exit
  %.4.i29 = phi i64 [ %i.ci, %ZSTD_entropyCompressSeqStore_internal.exit ], [ %i.cb, %bb.o ], [ %i.ak, %ZSTD_literalsCompressionIsDisabled.exit.i ], [ %i.bh, %.critedge.i ] ; 5 uses
  %i.ck = icmp eq i64 %.4.i29, -70
  %i.cl = icmp ule i64 %6, %5
  %i.cm = and i1 %i.cl, %i.ck
  br i1 %i.cm, label %ZSTD_entropyCompressSeqStore_internal.exit.thread30, label %bb.r

ZSTD_entropyCompressSeqStore_internal.exit.thread.thread: ; preds = %bb.f
  %.not = icmp ugt i64 %6, %5
  %spec.select44 = select i1 %.not, i64 -70, i64 0
  br label %ZSTD_entropyCompressSeqStore_internal.exit.thread30

bb.r:                                             ; preds = %ZSTD_entropyCompressSeqStore_internal.exit.thread
  %i.cn = icmp ult i64 %.4.i29, -119
  br i1 %i.cn, label %bb.s, label %ZSTD_entropyCompressSeqStore_internal.exit.thread30

bb.s:                                             ; preds = %bb.r
  %i.co = load i32, ptr %i.a, align 4, !tbaa !92
  %i.cp = tail call i32 @llvm.umax.i32(i32 %i.co, i32 7)
  %i.cq = add i32 %i.cp, -1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = lshr i64 %6, %i.cr
  %.neg32 = add i64 %6, -2
  %i.ct = sub i64 %.neg32, %i.cs
  %.not27 = icmp ult i64 %.4.i29, %i.ct
  %spec.select = select i1 %.not27, i64 %.4.i29, i64 0
  br label %ZSTD_entropyCompressSeqStore_internal.exit.thread30

ZSTD_entropyCompressSeqStore_internal.exit.thread30: ; preds = %ZSTD_entropyCompressSeqStore_internal.exit.thread.thread, %bb.p, %bb.s, %ZSTD_entropyCompressSeqStore_internal.exit.thread, %ZSTD_entropyCompressSeqStore_internal.exit, %bb.r
  %.2 = phi i64 [ %.4.i29, %bb.r ], [ 0, %ZSTD_entropyCompressSeqStore_internal.exit ], [ 0, %ZSTD_entropyCompressSeqStore_internal.exit.thread ], [ %spec.select, %bb.s ], [ 0, %bb.p ], [ %spec.select44, %ZSTD_entropyCompressSeqStore_internal.exit.thread.thread ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -70, 1) i64 @ZSTD_copyBlockSequences(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #11 {
bb.a:
  %3 = alloca %struct.repcodes_s, align 4         ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !187    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !202
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !201
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !464  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !465
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.o ; 2 uses
  %i.s = add nsw i64 %i.g, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !466
  %i.v = sub i64 %i.u, %i.o
  %i.w = icmp ugt i64 %i.s, %i.v
  br i1 %i.w, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %.not = icmp eq ptr %i.c, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.promoted = load i32, ptr %3, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.y = load i32, ptr %i.x, align 4, !tbaa !200
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted86 = load i32, ptr %i.ab, align 4
  %.promoted87 = load i32, ptr %i.ac, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %ZSTD_updateRep.exit
  %i.ad = phi i32 [ %.promoted87, %.lr.ph ], [ %i.bs, %ZSTD_updateRep.exit ] ; 2 uses
  %i.ae = phi i32 [ %.promoted86, %.lr.ph ], [ %i.bt, %ZSTD_updateRep.exit ] ; 3 uses
  %.07285 = phi i64 [ 0, %.lr.ph ], [ %i.bw, %ZSTD_updateRep.exit ]
  %.07484 = phi i64 [ 0, %.lr.ph ], [ %i.bx, %ZSTD_updateRep.exit ] ; 4 uses
  %i.af = phi i32 [ %.promoted, %.lr.ph ], [ %i.bu, %ZSTD_updateRep.exit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.07484 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !192 ; 2 uses
  %i.aj = zext i16 %i.ai to i32                   ; 5 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.07484 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !216
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  %i.an = load i16, ptr %i.am, align 2, !tbaa !196
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = add nuw nsw i32 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !215
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  store i32 0, ptr %i.ar, align 4, !tbaa !467
  %i.as = icmp eq i64 %.07484, %i.z
  br i1 %i.as, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !199
  switch i32 %i.at, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.au = or disjoint i32 %i.aj, 65536            ; 2 uses
  store i32 %i.au, ptr %i.al, align 4, !tbaa !216
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.av = add nuw nsw i32 %i.ao, 65539
  store i32 %i.av, ptr %i.aq, align 4, !tbaa !215
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  %i.aw = phi i32 [ %i.aj, %bb.d ], [ %i.au, %bb.e ], [ %i.aj, %bb.f ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ax = load i32, ptr %i.ag, align 4, !tbaa !195 ; 8 uses
  %i.ay = add i32 %i.ax, -1
  %or.cond = icmp ult i32 %i.ay, 3
  br i1 %or.cond, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !467
  %.not80 = icmp eq i32 %i.aw, 0
  br i1 %.not80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr [4 x i8], ptr %3, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !50
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.bd = icmp eq i32 %i.ax, 3
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = add i32 %i.af, -1
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bf = zext nneg i32 %i.ax to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.l, %bb.k
  %.1.ph = phi i32 [ %i.bh, %bb.l ], [ %i.be, %bb.k ], [ %i.bc, %bb.i ]
  store i32 %.1.ph, ptr %i.ak, align 4, !tbaa !213
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.bi = add i32 %i.ax, -3                       ; 2 uses
  store i32 %i.bi, ptr %i.ak, align 4, !tbaa !213
  %i.bj = icmp ugt i32 %i.ax, 3
  br i1 %i.bj, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.in = icmp ne i16 %i.ai, 0
  %i.bk = sext i1 %.in to i32
  %i.bl = add nsw i32 %i.ax, %i.bk                ; 3 uses
  switch i32 %i.bl, label %bb.p [
    i32 0, label %ZSTD_updateRep.exit
    i32 3, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bm = add i32 %i.af, -1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !50
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = phi i32 [ %i.bm, %bb.o ], [ %i.bp, %bb.p ]
  %.not22.i = icmp eq i32 %i.bl, 1
  %i.br = select i1 %.not22.i, i32 %i.ad, i32 %i.ae
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.q
  %storemerge = phi i32 [ %i.br, %bb.q ], [ %i.ae, %bb.m ] ; 2 uses
  %.sink.i = phi i32 [ %i.bq, %bb.q ], [ %i.bi, %bb.m ] ; 2 uses
  store i32 %storemerge, ptr %i.ac, align 4, !tbaa !50
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !50
  store i32 %.sink.i, ptr %3, align 4, !tbaa !50
  br label %ZSTD_updateRep.exit

ZSTD_updateRep.exit:                              ; preds = %bb.n, %.sink.split.i
  %i.bs = phi i32 [ %i.ad, %bb.n ], [ %storemerge, %.sink.split.i ]
  %i.bt = phi i32 [ %i.ae, %bb.n ], [ %i.af, %.sink.split.i ]
  %i.bu = phi i32 [ %i.af, %bb.n ], [ %.sink.i, %.sink.split.i ]
  %i.bv = zext nneg i32 %i.aw to i64
  %i.bw = add i64 %.07285, %i.bv                  ; 2 uses
  %i.bx = add nuw i64 %.07484, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !468

._crit_edge:                                      ; preds = %ZSTD_updateRep.exit, %bb.b
  %.072.lcssa = phi i64 [ 0, %bb.b ], [ %i.bw, %ZSTD_updateRep.exit ]
  %i.by = add i64 %.072.lcssa, %i.m
  %i.bz = sub i64 %i.l, %i.by
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.g ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !216
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 0, ptr %i.cd, align 4, !tbaa !215
  store i32 0, ptr %i.cb, align 4, !tbaa !213
  %i.ce = add i64 %i.s, %i.o
  store i64 %i.ce, ptr %i.n, align 8, !tbaa !464
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i64 [ 0, %._crit_edge ], [ -70, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i64 %.0
}

declare i64 @ZSTD_compressLiterals(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare i64 @ZSTD_encodeSequences(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare extern_weak i64 @ZSTD_trace_compress_begin(ptr noundef) #12

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 4294967296) i64 @ZSTD_compress_insertDictionary(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 0, 2) %9, ptr noundef %10) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %5, null
  %i.b = icmp ult i64 %6, 8
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %7, 2
  %. = select i1 %i.c, i64 -32, i64 0
  br label %ZSTD_loadZstdDictionary.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 0, ptr %i.e, align 8, !tbaa !168
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 0, ptr %i.f, align 4, !tbaa !169
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 0, ptr %i.g, align 8, !tbaa !170
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 0, ptr %i.h, align 4, !tbaa !171
  %i.i = icmp eq i32 %7, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %8, i32 noundef %9)
  br label %ZSTD_loadZstdDictionary.exit

bb.e:                                             ; preds = %bb.c
  %.val = load i32, ptr %5, align 1, !tbaa !50
  %.not = icmp eq i32 %.val, -332356553
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %7, label %bb.h [
    i32 0, label %bb.g
    i32 2, label %ZSTD_loadZstdDictionary.exit
  ]

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %8, i32 noundef %9)
  br label %ZSTD_loadZstdDictionary.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !94
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.val.i = load i32, ptr %i.l, align 1, !tbaa !50
  %i.m = zext i32 %.val.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = phi i64 [ %i.m, %bb.i ], [ 0, %bb.h ]
  %i.o = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %0, ptr noundef %10, ptr noundef nonnull %5, i64 noundef range(i64 8, 0) %6) ; 4 uses
  %i.p = icmp ult i64 %i.o, -119
  br i1 %i.p, label %bb.k, label %ZSTD_loadZstdDictionary.exit

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 %i.o
  %gepdiff.i = sub nsw i64 %6, %i.o
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %i.q, i64 noundef %gepdiff.i, i32 noundef %8, i32 noundef range(i32 0, 2) %9)
  br label %ZSTD_loadZstdDictionary.exit

ZSTD_loadZstdDictionary.exit:                     ; preds = %bb.k, %bb.j, %bb.f, %bb.b, %bb.g, %bb.d
  %.0 = phi i64 [ %., %bb.b ], [ -32, %bb.f ], [ 0, %bb.d ], [ 0, %bb.g ], [ %i.o, %bb.j ], [ %i.n, %bb.k ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_loadDictionaryContent(ptr noundef initializes((40, 48), (136, 140)) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !80
  %i.d = icmp eq i32 %i.c, 1
  %i.e = icmp ne ptr %1, null
  %i.f = and i1 %i.e, %i.d                        ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 28         ; 3 uses
  %.val = load i32, ptr %i.g, align 4, !tbaa !75  ; 3 uses
  %i.h = add i32 %.val, -1
  %narrow.i = icmp ult i32 %i.h, 2
  %i.i = icmp ne i32 %7, 0
  %or.cond = and i1 %i.i, %narrow.i               ; 2 uses
  %spec.select.neg = select i1 %or.cond, i64 -16777214, i64 -3758096382
  %spec.select = select i1 %or.cond, i64 16777214, i64 3758096382 ; 2 uses
  %i.j = icmp ugt i64 %5, %spec.select
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %spec.select.neg
  %.093 = tail call i64 @llvm.umin.i64(i64 %5, i64 %spec.select) ; 4 uses
  %.092 = select i1 %i.j, ptr %i.k, ptr %4        ; 10 uses
  %i.l = icmp eq i64 %5, 0
  br i1 %i.l, label %ZSTD_window_update.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !237    ; 2 uses
  %.not119 = icmp eq ptr %.092, %i.m
  br i1 %.not119, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !238
  %.phi.trans.insert45.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre46.i = load i32, ptr %.phi.trans.insert45.i, align 4, !tbaa !239
  %.phi.trans.insert47.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre48.i = load i32, ptr %.phi.trans.insert47.i, align 8, !tbaa !240
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !241  ; 4 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !240  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !239
  %i.v = trunc i64 %i.r to i32                    ; 6 uses
  store i32 %i.v, ptr %i.s, align 8, !tbaa !240
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.w, align 8, !tbaa !238
  %i.x = sub i64 0, %i.r
  %i.y = getelementptr inbounds i8, ptr %.092, i64 %i.x
  store ptr %i.y, ptr %i.n, align 8, !tbaa !241
  %i.z = sub i32 %i.v, %i.t
  %i.aa = icmp ult i32 %i.z, 8
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.v, ptr %i.u, align 4, !tbaa !239
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i
  %i.ab = phi i32 [ %.pre48.i, %._crit_edge.i ], [ %i.v, %bb.d ], [ %i.v, %bb.c ]
  %i.ac = phi i32 [ %.pre46.i, %._crit_edge.i ], [ %i.v, %bb.d ], [ %i.t, %bb.c ]
  %i.ad = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.o, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.092, i64 %.093 ; 6 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !237
  %i.af = zext i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = icmp ugt ptr %i.ae, %i.ag
  %i.ai = zext i32 %i.ab to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = icmp ult ptr %.092, %i.aj
  %i.al = and i1 %i.ah, %i.ak
  br i1 %i.al, label %bb.f, label %ZSTD_window_update.exit

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.an = ptrtoint ptr %i.ae to i64
  %i.ao = ptrtoint ptr %i.ad to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ai)
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !239
  br label %ZSTD_window_update.exit

ZSTD_window_update.exit:                          ; preds = %bb.e, %bb.f
  br i1 %i.f, label %bb.g, label %bb.n

ZSTD_window_update.exit.thread:                   ; preds = %bb.a
  br i1 %i.f, label %ZSTD_window_update.exit117, label %bb.n

bb.g:                                             ; preds = %ZSTD_window_update.exit
  %i.as = load ptr, ptr %1, align 8, !tbaa !237   ; 2 uses
  %.not120 = icmp eq ptr %.092, %i.as
  br i1 %.not120, label %._crit_edge.i108, label %bb.h

._crit_edge.i108:                                 ; preds = %bb.g
  %.phi.trans.insert.i109 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i110 = load ptr, ptr %.phi.trans.insert.i109, align 8, !tbaa !238
  %.phi.trans.insert45.i111 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.pre46.i112 = load i32, ptr %.phi.trans.insert45.i111, align 4, !tbaa !239
  %.phi.trans.insert47.i113 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre48.i114 = load i32, ptr %.phi.trans.insert47.i113, align 8, !tbaa !240
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !241 ; 4 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !240 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !239
  %i.bb = trunc i64 %i.ax to i32                  ; 6 uses
  store i32 %i.bb, ptr %i.ay, align 8, !tbaa !240
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !238
  %i.bd = sub i64 0, %i.ax
  %i.be = getelementptr inbounds i8, ptr %.092, i64 %i.bd
  store ptr %i.be, ptr %i.at, align 8, !tbaa !241
  %i.bf = sub i32 %i.bb, %i.az
  %i.bg = icmp ult i32 %i.bf, 8
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !239
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i108
  %i.bh = phi i32 [ %.pre48.i114, %._crit_edge.i108 ], [ %i.bb, %bb.i ], [ %i.bb, %bb.h ]
  %i.bi = phi i32 [ %.pre46.i112, %._crit_edge.i108 ], [ %i.bb, %bb.i ], [ %i.az, %bb.h ]
  %i.bj = phi ptr [ %.pre.i110, %._crit_edge.i108 ], [ %i.au, %bb.i ], [ %i.au, %bb.h ] ; 3 uses
  store ptr %i.ae, ptr %1, align 8, !tbaa !237
  %i.bk = zext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.bm = icmp ugt ptr %i.ae, %i.bl
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bn
  %i.bp = icmp ult ptr %.092, %i.bo
  %i.bq = and i1 %i.bm, %i.bp
  br i1 %i.bq, label %bb.k, label %ZSTD_window_update.exit117

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bs = ptrtoint ptr %i.ae to i64
  %i.bt = ptrtoint ptr %i.bj to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = tail call i64 @llvm.smin.i64(i64 %i.bu, i64 %i.bn)
  %i.bw = trunc i64 %i.bv to i32
  store i32 %i.bw, ptr %i.br, align 4, !tbaa !239
  br label %ZSTD_window_update.exit117

ZSTD_window_update.exit117:                       ; preds = %ZSTD_window_update.exit.thread, %bb.j, %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !95
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %ZSTD_window_update.exit117
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !469
  %i.cb = ptrtoint ptr %i.a to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  br label %bb.m

bb.m:                                             ; preds = %ZSTD_window_update.exit117, %bb.l
  %i.cf = phi i32 [ %i.ce, %bb.l ], [ 0, %ZSTD_window_update.exit117 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !470
  tail call void @ZSTD_ldm_fillHashTable(ptr noundef nonnull %1, ptr noundef nonnull %.092, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #28
  %.pre = load i32, ptr %i.g, align 4, !tbaa !92
  br label %bb.n

bb.n:                                             ; preds = %ZSTD_window_update.exit.thread, %bb.m, %ZSTD_window_update.exit
  %i.ch = phi i32 [ %.val, %ZSTD_window_update.exit.thread ], [ %.pre, %bb.m ], [ %.val, %ZSTD_window_update.exit ]
  %i.ci = icmp ult i32 %i.ch, 8
  br i1 %i.ci, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !87
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !88
  %. = tail call i32 @llvm.umax.i32(i32 %i.ck, i32 %i.cm)
  %spec.select118 = tail call i32 @llvm.umin.i32(i32 %., i32 28)
  %i.cn = shl nuw i32 8, %spec.select118
  %i.co = zext i32 %i.cn to i64                   ; 3 uses
  %i.cp = icmp samesign ugt i64 %.093, %i.co
  %i.cq = sub nsw i64 0, %i.co
  %i.cr = getelementptr inbounds i8, ptr %i.a, i64 %i.cq
  %.195 = select i1 %i.cp, ptr %i.cr, ptr %.092
  %.1 = tail call i64 @llvm.umin.i64(i64 %.093, i64 %i.co)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.296 = phi ptr [ %.195, %bb.o ], [ %.092, %bb.n ] ; 2 uses
  %.2 = phi i64 [ %.1, %bb.o ], [ %.093, %bb.n ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !445
  %i.cu = ptrtoint ptr %.296 to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !242
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !95
  %.not105 = icmp eq i32 %i.da, 0
  %i.db = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.dc = sub i64 %i.db, %i.cv
  %i.dd = trunc i64 %i.dc to i32
  %i.de = select i1 %.not105, i32 %i.dd, i32 0
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.de, ptr %i.df, align 8, !tbaa !417
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 148
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !109
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !236
  %i.dj = icmp samesign ult i64 %.2, 9
  br i1 %i.dj, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %.296, ptr noundef nonnull %i.a)
  %i.dk = load i32, ptr %i.g, align 4, !tbaa !92
  switch i32 %i.dk, label %bb.z [
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.t
    i32 5, label %bb.t
    i32 6, label %bb.y
    i32 7, label %bb.y
    i32 8, label %bb.y
    i32 9, label %bb.y
  ]

bb.r:                                             ; preds = %bb.q
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %6, i32 noundef %7) #28
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %6, i32 noundef %7) #28
  br label %bb.z

bb.t:                                             ; preds = %bb.q, %bb.q, %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !414
  %.not106 = icmp eq i32 %i.dm, 0
  br i1 %.not106, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = getelementptr inbounds i8, ptr %i.a, i64 -8
  tail call void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef nonnull %0, ptr noundef nonnull %i.dn) #28
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !78
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !87
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !423
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dw, i8 0, i64 %i.du, i1 false)
  %i.dx = getelementptr inbounds i8, ptr %i.a, i64 -8
  tail call void @ZSTD_row_update(ptr noundef nonnull %0, ptr noundef nonnull %i.dx) #28
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.dz = tail call i32 @ZSTD_insertAndFindFirstIndex(ptr noundef nonnull %0, ptr noundef nonnull %i.dy) #28 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.ea = getelementptr inbounds i8, ptr %i.a, i64 -8
  tail call void @ZSTD_updateTree(ptr noundef nonnull %0, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.a) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.q, %bb.u, %bb.x, %bb.w, %bb.y, %bb.s, %bb.r
  %i.eb = load ptr, ptr %i.cs, align 8, !tbaa !445
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = sub i64 %i.db, %i.ec
  %i.ee = trunc i64 %i.ed to i32
  store i32 %i.ee, ptr %i.cy, align 4, !tbaa !242
  br label %bb.aa

bb.aa:                                            ; preds = %bb.p, %bb.z
  ret void
}

declare void @ZSTD_ldm_fillHashTable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

declare void @ZSTD_fillHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare void @ZSTD_fillDoubleHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef, ptr noundef) local_unnamed_addr #12

declare void @ZSTD_row_update(ptr noundef, ptr noundef) local_unnamed_addr #12

declare i32 @ZSTD_insertAndFindFirstIndex(ptr noundef, ptr noundef) local_unnamed_addr #12

declare void @ZSTD_updateTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind memory(none) }
attributes #28 = { nounwind }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind allocsize(0,1) }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{i64 1827259}
!9 = !{i64 1827357}
!10 = !{i64 1827471}
!11 = !{!12, !5, i64 8}
!12 = !{!"ZSTD_CCtx_s", !5, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !13, i64 232, !13, i64 448, !5, i64 664, !16, i64 672, !20, i64 680, !16, i64 752, !21, i64 760, !21, i64 768, !21, i64 776, !22, i64 784, !18, i64 872, !23, i64 896, !16, i64 904, !24, i64 912, !5, i64 944, !5, i64 948, !25, i64 952, !28, i64 1032, !19, i64 3144, !16, i64 3152, !30, i64 3160, !31, i64 3200, !33, i64 3520, !5, i64 3528, !27, i64 3536, !16, i64 3544, !16, i64 3552, !16, i64 3560, !16, i64 3568, !27, i64 3576, !16, i64 3584, !16, i64 3592, !16, i64 3600, !5, i64 3608, !5, i64 3612, !36, i64 3616, !16, i64 3640, !16, i64 3648, !37, i64 3656, !38, i64 3696, !39, i64 3704, !21, i64 3728, !40, i64 3736, !19, i64 5232, !16, i64 5240}
!13 = !{!"ZSTD_CCtx_params_s", !5, i64 0, !14, i64 4, !15, i64 32, !5, i64 44, !5, i64 48, !16, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !16, i64 80, !5, i64 88, !5, i64 92, !17, i64 96, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !18, i64 152, !5, i64 176, !5, i64 180, !19, i64 184, !19, i64 192, !16, i64 200, !5, i64 208}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!15 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!16 = !{!"long", !6, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!18 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !6, i64 56, !5, i64 60, !5, i64 64, !5, i64 68}
!21 = !{!"long long", !6, i64 0}
!22 = !{!"XXH64_state_s", !16, i64 0, !6, i64 8, !6, i64 40, !5, i64 72, !5, i64 76, !16, i64 80}
!23 = !{!"p1 _ZTS10POOL_ctx_s", !19, i64 0}
!24 = !{!"", !5, i64 0, !19, i64 8, !16, i64 16, !16, i64 24}
!25 = !{!"", !26, i64 0, !26, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !16, i64 56, !16, i64 64, !5, i64 72, !5, i64 76}
!26 = !{!"p1 _ZTS8seqDef_s", !19, i64 0}
!27 = !{!"p1 omnipotent char", !19, i64 0}
!28 = !{!"", !29, i64 0, !19, i64 40, !5, i64 48, !27, i64 56, !6, i64 64, !6, i64 576}
!29 = !{!"", !27, i64 0, !27, i64 8, !27, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!30 = !{!"", !19, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32}
!31 = !{!"", !19, i64 0, !19, i64 8, !32, i64 16}
!32 = !{!"ZSTD_matchState_t", !29, i64 0, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !27, i64 56, !6, i64 64, !16, i64 96, !5, i64 104, !33, i64 112, !33, i64 120, !33, i64 128, !5, i64 136, !5, i64 140, !34, i64 144, !35, i64 248, !14, i64 256, !19, i64 288, !5, i64 296, !5, i64 300}
!33 = !{!"p1 int", !19, i64 0}
!34 = !{!"", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !19, i64 32, !19, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !19, i64 88, !5, i64 96}
!35 = !{!"p1 _ZTS17ZSTD_matchState_t", !19, i64 0}
!36 = !{!"ZSTD_inBuffer_s", !19, i64 0, !16, i64 8, !16, i64 16}
!37 = !{!"", !19, i64 0, !19, i64 8, !16, i64 16, !5, i64 24, !38, i64 32}
!38 = !{!"p1 _ZTS12ZSTD_CDict_s", !19, i64 0}
!39 = !{!"ZSTD_prefixDict_s", !19, i64 0, !16, i64 8, !5, i64 16}
!40 = !{!"", !25, i64 0, !25, i64 80, !25, i64 160, !25, i64 240, !25, i64 320, !6, i64 400, !41, i64 1184}
!41 = !{!"", !42, i64 0, !43, i64 144}
!42 = !{!"", !5, i64 0, !6, i64 4, !16, i64 136}
!43 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !16, i64 152, !16, i64 160}
!44 = !{!13, !5, i64 44}
!45 = !{!13, !5, i64 32}
!46 = !{!18, !19, i64 0}
!47 = !{!18, !19, i64 8}
!48 = distinct !{null}
!49 = !{!19, !19, i64 0}
!50 = !{!5, !5, i64 0}
!51 = !{!12, !16, i64 904}
!52 = !{!20, !6, i64 56}
!53 = !{!20, !19, i64 16}
!54 = !{!20, !19, i64 24}
!55 = !{!20, !19, i64 32}
!56 = !{!12, !19, i64 3200}
!57 = !{!12, !19, i64 3208}
!58 = !{!12, !33, i64 3520}
!59 = !{!20, !19, i64 0}
!60 = !{!20, !19, i64 8}
!61 = distinct !{null, null, null}
!62 = distinct !{null}
!63 = !{!12, !19, i64 680}
!64 = !{!65, !19, i64 32}
!65 = !{!"ZSTD_CDict_s", !19, i64 0, !16, i64 8, !5, i64 16, !33, i64 24, !20, i64 32, !32, i64 104, !66, i64 408, !18, i64 6040, !5, i64 6064, !5, i64 6068, !5, i64 6072}
!66 = !{!"", !67, i64 0, !6, i64 5616}
!67 = !{!"", !68, i64 0, !69, i64 2064}
!68 = !{!"", !6, i64 0, !5, i64 2056}
!69 = !{!"", !6, i64 0, !6, i64 772, !6, i64 2224, !5, i64 3540, !5, i64 3544, !5, i64 3548}
!70 = !{!14, !5, i64 0}
!71 = !{!14, !5, i64 4}
!72 = !{!14, !5, i64 8}
!73 = !{!14, !5, i64 12}
!74 = !{!14, !5, i64 16}
!75 = !{!14, !5, i64 24}
!76 = !{i64 0, i64 4, !50, i64 4, i64 4, !50, i64 8, i64 4, !50, i64 12, i64 4, !50, i64 16, i64 4, !50, i64 20, i64 4, !50, i64 24, i64 4, !50}
!77 = !{i64 0, i64 4, !50, i64 4, i64 4, !50, i64 8, i64 4, !50}
!78 = !{!13, !5, i64 144}
!79 = !{!13, !5, i64 140}
!80 = !{!13, !5, i64 96}
!81 = !{!13, !16, i64 200}
!82 = !{!13, !5, i64 208}
!83 = !{!12, !5, i64 3608}
!84 = !{!12, !5, i64 4}
!85 = !{!13, !5, i64 0}
!86 = !{!13, !5, i64 4}
!87 = !{!13, !5, i64 12}
!88 = !{!13, !5, i64 8}
!89 = !{!13, !5, i64 16}
!90 = !{!13, !5, i64 20}
!91 = !{!13, !5, i64 24}
!92 = !{!13, !5, i64 28}
!93 = !{!13, !5, i64 36}
!94 = !{!13, !5, i64 40}
!95 = !{!13, !5, i64 48}
!96 = !{!13, !5, i64 68}
!97 = !{!13, !5, i64 72}
!98 = !{!13, !5, i64 120}
!99 = !{!13, !5, i64 100}
end_hunk_1
begin_hunk_2_@llvm.umin.v2i32
!241 = !{!29, !27, i64 8}
!242 = !{!32, !5, i64 44}
!243 = !{!12, !5, i64 328}
!244 = !{!12, !16, i64 752}
!245 = !{!12, !5, i64 236}
!246 = !{!12, !5, i64 268}
!247 = !{!35, !35, i64 0}
!248 = !{!12, !5, i64 944}
!249 = !{!12, !5, i64 912}
!250 = !{!12, !26, i64 960}
!251 = !{!12, !26, i64 952}
!252 = !{!253, !33, i64 0}
!253 = !{!"", !33, i64 0, !16, i64 8}
!254 = !{!253, !16, i64 8}
!255 = !{i64 0, i64 8, !256, i64 8, i64 8, !256, i64 16, i64 8, !184, i64 24, i64 8, !184, i64 32, i64 8, !184, i64 40, i64 8, !184, i64 48, i64 8, !184, i64 56, i64 8, !115, i64 64, i64 8, !115, i64 72, i64 4, !50, i64 76, i64 4, !50}
!256 = !{!26, !26, i64 0}
!257 = distinct !{!257, !148}
!258 = distinct !{!258, !148}
!259 = distinct !{!259, !148}
!260 = distinct !{!260, !148}
!261 = distinct !{!261, !148, !262, !263}
!262 = !{!"llvm.loop.unroll.runtime.disable"}
!263 = !{!"llvm.loop.isvectorized", i32 1}
!264 = !{!65, !16, i64 8}
!265 = !{!12, !21, i64 3728}
!266 = !{!65, !5, i64 6068}
!267 = !{!65, !5, i64 244}
!268 = !{!65, !5, i64 6072}
!269 = !{!65, !27, i64 104}
!270 = !{!65, !27, i64 112}
!271 = !{!65, !5, i64 128}
!272 = !{!12, !35, i64 3464}
!273 = !{!12, !5, i64 3240}
!274 = !{!12, !27, i64 3224}
!275 = !{!12, !27, i64 3216}
!276 = !{!12, !5, i64 3256}
!277 = !{!65, !5, i64 6064}
!278 = !{!65, !33, i64 216}
!279 = distinct !{!279, !148, !263, !262}
!280 = distinct !{!280, !148, !263}
!281 = distinct !{!281, !282}
!282 = !{!"llvm.loop.unroll.disable"}
!283 = !{!65, !33, i64 232}
!284 = distinct !{!284, !148, !263, !262}
!285 = distinct !{!285, !282}
!286 = distinct !{!286, !148, !263}
!287 = !{!12, !27, i64 3272}
!288 = !{!65, !27, i64 160}
!289 = !{!65, !16, i64 200}
!290 = !{!12, !16, i64 3312}
!291 = !{!65, !19, i64 0}
!292 = !{!65, !5, i64 16}
!293 = !{!294, !296}
!294 = distinct !{!294, !295, !"ZSTD_getCParams_internal: argument 0"}
!295 = distinct !{!295, !"ZSTD_getCParams_internal"}
!296 = distinct !{!296, !297, !"ZSTD_getParams_internal: argument 0"}
!297 = distinct !{!297, !"ZSTD_getParams_internal"}
!298 = !{!12, !16, i64 3544}
!299 = !{!12, !16, i64 3584}
!300 = !{!12, !5, i64 308}
!301 = !{!302, !5, i64 0}
!302 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !16, i64 16, !16, i64 24, !16, i64 32, !303, i64 40, !304, i64 48, !305, i64 56}
!303 = !{!"p1 _ZTS18ZSTD_CCtx_params_s", !19, i64 0}
!304 = !{!"p1 _ZTS11ZSTD_CCtx_s", !19, i64 0}
!305 = !{!"p1 _ZTS11ZSTD_DCtx_s", !19, i64 0}
!306 = !{!302, !5, i64 4}
!307 = !{!302, !5, i64 8}
!308 = !{!302, !16, i64 16}
!309 = !{!302, !16, i64 24}
!310 = !{!302, !16, i64 32}
!311 = !{!302, !303, i64 40}
!312 = !{!302, !304, i64 48}
!313 = !{!314}
!314 = distinct !{!314, !315, !"ZSTD_getParams_internal: argument 0"}
!315 = distinct !{!315, !"ZSTD_getParams_internal"}
!316 = !{!317}
!317 = distinct !{!317, !318, !"ZSTD_getParams_internal: argument 0"}
!318 = distinct !{!318, !"ZSTD_getParams_internal"}
!319 = distinct !{ptr @ZSTD_clearAllDicts, null}
!320 = distinct !{ptr @ZSTD_clearAllDicts, ptr @ZSTD_freeCDict, null, null}
!321 = distinct !{ptr @ZSTD_clearAllDicts, ptr @ZSTD_freeCDict, null}
!322 = !{i64 0, i64 8, !49, i64 8, i64 8, !49, i64 16, i64 8, !49}
!323 = !{!324}
!324 = distinct !{!324, !325, !"ZSTD_dedicatedDictSearch_getCParams: argument 0"}
!325 = distinct !{!325, !"ZSTD_dedicatedDictSearch_getCParams"}
!326 = distinct !{null, null}
!327 = !{!20, !5, i64 64}
!328 = !{!65, !33, i64 24}
!329 = distinct !{null, null}
!330 = !{!331}
!331 = distinct !{!331, !332, !"ZSTD_getCParams: argument 0"}
!332 = distinct !{!332, !"ZSTD_getCParams"}
!333 = distinct !{ptr @ZSTD_createCCtx_advanced, null}
!334 = distinct !{ptr @ZSTD_freeCCtx, null, null, null}
!335 = distinct !{ptr @ZSTD_freeCCtx, null}
!336 = distinct !{ptr @ZSTD_CCtx_loadDictionary, ptr @ZSTD_CCtx_loadDictionary_advanced, null}
!337 = !{!12, !5, i64 356}
!338 = !{!12, !16, i64 3640}
!339 = !{!12, !16, i64 3568}
!340 = !{!12, !19, i64 3616}
!341 = !{!12, !16, i64 3624}
!342 = !{i64 0, i64 8, !49, i64 8, i64 8, !115, i64 16, i64 8, !115}
!343 = !{!12, !5, i64 16}
!344 = !{!12, !5, i64 360}
!345 = !{!12, !16, i64 3648}
!346 = distinct !{!346, !148}
!347 = !{!12, !16, i64 3592}
!348 = !{!12, !16, i64 3600}
!349 = !{!12, !5, i64 3612}
!350 = !{!12, !27, i64 3576}
!351 = !{!37, !19, i64 8}
!352 = !{!37, !38, i64 32}
!353 = !{!37, !16, i64 16}
!354 = !{!37, !5, i64 24}
!355 = !{!65, !5, i64 384}
!356 = !{!357, !5, i64 0}
!357 = !{!"", !5, i64 0, !5, i64 4, !16, i64 8}
!358 = !{!12, !5, i64 368}
!359 = !{!357, !16, i64 8}
!360 = !{!12, !5, i64 252}
!361 = !{!12, !16, i64 1008}
!362 = distinct !{!362, !148}
!363 = distinct !{!363, !148, !263, !262}
!364 = !{!"branch_weights", i32 4, i32 28}
!365 = distinct !{!365, !148, !263, !262}
!366 = distinct !{!366, !282}
!367 = distinct !{!367, !148, !263}
!368 = distinct !{!368, !148}
!369 = !{!357, !5, i64 4}
!370 = distinct !{!370, !148, !263, !262}
!371 = distinct !{!371, !148, !263, !262}
!372 = distinct !{!372, !282}
!373 = distinct !{!373, !148, !263}
!374 = !{!12, !5, i64 364}
!375 = distinct !{!375, !148}
!376 = !{!12, !5, i64 440}
!377 = !{ptr @ZSTD_copySequencesToSeqStoreExplicitBlockDelim, ptr @ZSTD_copySequencesToSeqStoreNoBlockDelim}
!378 = distinct !{null}
!379 = distinct !{!379, !148}
!380 = !{!31, !19, i64 0}
!381 = !{!31, !19, i64 8}
!382 = !{!383}
!383 = distinct !{!383, !384, !"inBuffer_forEndFlush: argument 0"}
!384 = distinct !{!384, !"inBuffer_forEndFlush"}
!385 = !{!386}
!386 = distinct !{!386, !387, !"inBuffer_forEndFlush: argument 0"}
!387 = distinct !{!387, !"inBuffer_forEndFlush"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"ZSTD_getParams_internal: argument 0"}
!390 = distinct !{!390, !"ZSTD_getParams_internal"}
!391 = !{!392, !5, i64 28}
!392 = !{!"", !14, i64 0, !15, i64 28}
!393 = !{!13, !19, i64 184}
!394 = !{!12, !5, i64 948}
!395 = !{!20, !5, i64 60}
!396 = !{!20, !19, i64 40}
!397 = distinct !{null, null}
!398 = !{!20, !19, i64 48}
!399 = !{!20, !5, i64 68}
!400 = !{!12, !5, i64 3512}
!401 = !{!12, !5, i64 264}
!402 = !{!12, !19, i64 1072}
!403 = !{!12, !19, i64 3144}
!404 = !{!12, !16, i64 3152}
!405 = !{!12, !5, i64 1080}
!406 = !{!12, !16, i64 5240}
!407 = !{!12, !19, i64 5232}
!408 = !{!12, !27, i64 968}
!409 = !{!12, !16, i64 1016}
!410 = !{!12, !27, i64 1088}
!411 = !{!12, !27, i64 984}
!412 = !{!12, !27, i64 992}
!413 = !{!12, !27, i64 1000}
!414 = !{!32, !5, i64 140}
!415 = !{!32, !5, i64 48}
!416 = !{!32, !5, i64 300}
!417 = !{!32, !5, i64 40}
!418 = !{!32, !5, i64 196}
!419 = !{!32, !35, i64 248}
!420 = !{!32, !33, i64 112}
!421 = !{!32, !33, i64 128}
!422 = !{!32, !33, i64 120}
!423 = !{!32, !27, i64 56}
!424 = !{!32, !16, i64 96}
!425 = !{!32, !5, i64 104}
!426 = !{!32, !5, i64 52}
!427 = !{!32, !33, i64 144}
!428 = !{!32, !33, i64 152}
!429 = !{!32, !33, i64 160}
!430 = !{!32, !33, i64 168}
!431 = !{!32, !19, i64 176}
!432 = !{!32, !19, i64 184}
!433 = !{!434, !16, i64 24}
!434 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !16, i64 16, !16, i64 24, !5, i64 32}
!435 = !{!434, !5, i64 32}
!436 = !{!434, !5, i64 0}
!437 = !{!434, !16, i64 16}
!438 = !{!434, !5, i64 4}
!439 = !{!434, !5, i64 8}
!440 = !{!29, !5, i64 32}
!441 = distinct !{!441, !148}
!442 = !{!32, !19, i64 232}
!443 = !{!12, !5, i64 304}
!444 = !{!32, !5, i64 240}
!445 = !{!32, !27, i64 8}
!446 = !{!12, !16, i64 3168}
!447 = !{!30, !19, i64 0}
!448 = !{!30, !16, i64 32}
!449 = !{!12, !19, i64 416}
!450 = !{!12, !5, i64 276}
!451 = distinct !{!451, !148}
!452 = distinct !{!452, !282}
!453 = !{!32, !19, i64 288}
!454 = !{!12, !5, i64 412}
!455 = distinct !{!455, !148}
!456 = !{i64 0, i64 12, !197}
!457 = distinct !{!457, !148}
!458 = !{!41, !5, i64 0}
!459 = !{!42, !16, i64 136}
!460 = !{!43, !5, i64 4}
!461 = distinct !{!461, !148}
!462 = !{!43, !5, i64 0}
!463 = !{!43, !16, i64 152}
!464 = !{!24, !16, i64 16}
!465 = !{!24, !19, i64 8}
!466 = !{!24, !16, i64 24}
!467 = !{!214, !5, i64 12}
!468 = distinct !{!468, !148}
!469 = !{!28, !27, i64 8}
!470 = !{!28, !5, i64 48}
end_hunk_2
