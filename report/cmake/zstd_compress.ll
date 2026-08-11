inline.NumInlined: 840
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ZSTD_buildSequencesStatistics:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 31, ptr %i.b, align 4, !tbaa !52
  %i.cc = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %i.b, ptr noundef %i.g, i64 noundef %2, ptr noundef %9, i64 noundef %10) #27
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !52  ; 2 uses
  %i.ce = icmp ult i32 %i.cd, 29
  %i.cf = zext i1 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 3540
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !237
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 3540 ; 2 uses
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !237
  %i.cj = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %i.ci, ptr noundef %8, i32 noundef %i.cd, i64 noundef %i.cc, i64 noundef %2, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %i.cf, i32 noundef %7) #27 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !444
  %i.cl = ptrtoint ptr %i.cb to i64
  %i.cm = sub i64 %i.bt, %i.cl
  %i.cn = load i32, ptr %i.b, align 4, !tbaa !52
  %i.co = call i64 @ZSTD_buildCTable(ptr noundef %i.cb, i64 noundef %i.cm, ptr noundef nonnull %4, i32 noundef 8, i32 noundef %i.cj, ptr noundef %8, i32 noundef %i.cn, ptr noundef %i.g, i64 noundef %2, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef 28, ptr noundef nonnull %3, i64 noundef 772, ptr noundef %9, i64 noundef %10) #27 ; 5 uses
  %i.cp = icmp ult i64 %i.co, -119
  br i1 %i.cp, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cq = icmp eq i32 %i.cj, 2
  br i1 %i.cq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store i64 %i.co, ptr %i.l, align 8, !tbaa !439
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.co, ptr %i.cr, align 8, !tbaa !443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.u

bb.p:                                             ; preds = %bb.m, %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.co ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 52, ptr %i.c, align 4, !tbaa !52
  %i.ct = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %i.c, ptr noundef %i.k, i64 noundef %2, ptr noundef %9, i64 noundef %10) #27
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 3544
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !238
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 3544 ; 2 uses
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !238
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !52
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 772 ; 2 uses
  %i.cz = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %i.cw, ptr noundef %8, i32 noundef %i.cx, i64 noundef %i.ct, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %i.cy, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #27 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !445
  %i.db = ptrtoint ptr %i.cs to i64
  %i.dc = sub i64 %i.bt, %i.db
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !52
  %i.de = call i64 @ZSTD_buildCTable(ptr noundef %i.cs, i64 noundef %i.dc, ptr noundef nonnull %i.e, i32 noundef 9, i32 noundef %i.cz, ptr noundef %8, i32 noundef %i.dd, ptr noundef %i.k, i64 noundef %2, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 52, ptr noundef nonnull %i.cy, i64 noundef 1452, ptr noundef %9, i64 noundef %10) #27 ; 4 uses
  %i.df = icmp ult i64 %i.de, -119
  br i1 %i.df, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dg = icmp eq i32 %i.cz, 2
  br i1 %i.dg, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store i64 %i.de, ptr %i.l, align 8, !tbaa !439
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.de, ptr %i.dh, align 8, !tbaa !443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.u

bb.t:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.di = add nuw nsw i64 %i.co, %i.bx
  %i.dj = add nuw nsw i64 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !443
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
  %.val = load ptr, ptr %i.c, align 8, !tbaa !251 ; 2 uses
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %.val to i64                ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp ult i32 %i.g, -624951295
  br i1 %i.h, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !90
  %i.k = shl nuw i32 1, %i.j
  %i.l = load i32, ptr %i.a, align 4, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !96
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
  %i.ac = sub i32 %i.u, %i.ab                     ; 9 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ad
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !251
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !248
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !249 ; 2 uses
  %i.ak = add i32 %i.ac, 2                        ; 3 uses
  %i.al = icmp ult i32 %i.aj, %i.ak
  %i.am = sub i32 %i.aj, %i.ac
  %storemerge.i = select i1 %i.al, i32 2, i32 %i.am
  store i32 %storemerge.i, ptr %i.ai, align 4, !tbaa !249
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !250 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %i.ak
  %i.aq = sub i32 %i.ao, %i.ac
  %storemerge33.i = select i1 %i.ap, i32 2, i32 %i.aq
  store i32 %storemerge33.i, ptr %i.an, align 8, !tbaa !250
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !446
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !446
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !91
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !426
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %i.bb, i32 noundef %i.az, i32 noundef %i.ac)
  %i.bc = load i32, ptr %i.m, align 4, !tbaa !96  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !82
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !420
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %ZSTD_allocateChainTable.exit.thread21.i

bb.c:                                             ; preds = %bb.b
  %.not4.i.i = icmp eq i32 %i.bc, 1
  br i1 %.not4.i.i, label %ZSTD_reduceTable_btlazy2.exit.i, label %ZSTD_allocateChainTable.exit.i

ZSTD_allocateChainTable.exit.i:                   ; preds = %bb.c
  %i.bh = add i32 %i.bc, -3
  %i.bi = icmp ult i32 %i.bh, 3
  %i.bj = icmp eq i32 %i.be, 1
  %.not8.i.not.i = and i1 %i.bi, %i.bj
  br i1 %.not8.i.not.i, label %ZSTD_reduceTable_btlazy2.exit.i, label %ZSTD_allocateChainTable.exit.thread21.i

ZSTD_allocateChainTable.exit.thread21.i:          ; preds = %ZSTD_allocateChainTable.exit.i, %bb.b
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !92
  %i.bl = shl nuw i32 1, %i.bk                    ; 3 uses
  %i.bm = icmp eq i32 %i.bc, 6
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !427 ; 2 uses
  br i1 %i.bm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ZSTD_allocateChainTable.exit.thread21.i
  %i.bp = lshr i32 %i.bl, 4
  %i.bq = icmp sgt i32 %i.bl, 15
  br i1 %i.bq, label %.preheader.i.i.preheader, label %ZSTD_reduceTable_btlazy2.exit.i

.preheader.i.i.preheader:                         ; preds = %bb.d
  %i.br = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.bs = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bt = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %i.bu = shufflevector <4 x i32> %i.bt, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next7.i.i, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %.021.i4.i.i = phi i32 [ %5, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i ; 5 uses
  %i.bw = load <4 x i32>, ptr %i.bv, align 4, !tbaa !52 ; 3 uses
  %i.bx = icmp eq <4 x i32> %i.bw, splat (i32 1)
  %i.by = icmp ult <4 x i32> %i.bw, %i.bs
  %i.bz = sub <4 x i32> %i.bw, %i.bu
  %i.ca = select <4 x i1> %i.by, <4 x i32> zeroinitializer, <4 x i32> %i.bz
  %i.cb = select <4 x i1> %i.bx, <4 x i32> splat (i32 1), <4 x i32> %i.ca
  store <4 x i32> %i.cb, ptr %i.bv, align 4, !tbaa !52
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.cd = load <4 x i32>, ptr %i.cc, align 4, !tbaa !52 ; 3 uses
  %i.ce = icmp eq <4 x i32> %i.cd, splat (i32 1)
  %i.cf = icmp ult <4 x i32> %i.cd, %i.bs
  %i.cg = sub <4 x i32> %i.cd, %i.bu
  %i.ch = select <4 x i1> %i.cf, <4 x i32> zeroinitializer, <4 x i32> %i.cg
  %i.ci = select <4 x i1> %i.ce, <4 x i32> splat (i32 1), <4 x i32> %i.ch
  store <4 x i32> %i.ci, ptr %i.cc, align 4, !tbaa !52
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 32 ; 2 uses
  %i.ck = load <4 x i32>, ptr %i.cj, align 4, !tbaa !52 ; 3 uses
  %i.cl = icmp eq <4 x i32> %i.ck, splat (i32 1)
  %i.cm = icmp ult <4 x i32> %i.ck, %i.bs
  %i.cn = sub <4 x i32> %i.ck, %i.bu
  %i.co = select <4 x i1> %i.cm, <4 x i32> zeroinitializer, <4 x i32> %i.cn
  %i.cp = select <4 x i1> %i.cl, <4 x i32> splat (i32 1), <4 x i32> %i.co
  store <4 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !52
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 2 uses
  %i.cr = load <4 x i32>, ptr %i.cq, align 4, !tbaa !52 ; 3 uses
  %i.cs = icmp eq <4 x i32> %i.cr, splat (i32 1)
  %i.ct = icmp ult <4 x i32> %i.cr, %i.bs
  %i.cu = sub <4 x i32> %i.cr, %i.bu
  %i.cv = select <4 x i1> %i.ct, <4 x i32> zeroinitializer, <4 x i32> %i.cu
  %i.cw = select <4 x i1> %i.cs, <4 x i32> splat (i32 1), <4 x i32> %i.cv
  store <4 x i32> %i.cw, ptr %i.cq, align 4, !tbaa !52
  %indvars.iv.next7.i.i = add nuw nsw i64 %indvars.iv.i.i, 16
  %5 = add nuw nsw i32 %.021.i4.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %5, %i.bp
  br i1 %exitcond.not.i.i, label %ZSTD_reduceTable_btlazy2.exit.i, label %.preheader.i.i, !llvm.loop !447

bb.e:                                             ; preds = %ZSTD_allocateChainTable.exit.thread21.i
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %i.bo, i32 noundef %i.bl, i32 noundef %i.ac)
  br label %ZSTD_reduceTable_btlazy2.exit.i

ZSTD_reduceTable_btlazy2.exit.i:                  ; preds = %.preheader.i.i, %bb.e, %bb.d, %ZSTD_allocateChainTable.exit.i, %bb.c
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !421 ; 2 uses
  %.not19.i = icmp eq i32 %i.cy, 0
  br i1 %.not19.i, label %ZSTD_reduceIndex.exit, label %bb.f

bb.f:                                             ; preds = %ZSTD_reduceTable_btlazy2.exit.i
  %i.cz = shl nuw i32 1, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !428
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %i.db, i32 noundef %i.cz, i32 noundef %i.ac)
  br label %ZSTD_reduceIndex.exit

ZSTD_reduceIndex.exit:                            ; preds = %ZSTD_reduceTable_btlazy2.exit.i, %bb.f
  %i.dc = load ptr, ptr %i.aw, align 8, !tbaa !57
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !56 ; 2 uses
  %i.df = icmp ult ptr %i.dc, %i.de
  br i1 %i.df, label %bb.g, label %ZSTD_cwksp_mark_tables_clean.exit

bb.g:                                             ; preds = %ZSTD_reduceIndex.exit
  store ptr %i.de, ptr %i.aw, align 8, !tbaa !57
  br label %ZSTD_cwksp_mark_tables_clean.exit

ZSTD_cwksp_mark_tables_clean.exit:                ; preds = %ZSTD_reduceIndex.exit, %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !252
  %storemerge = tail call i32 @llvm.usub.sat.i32(i32 %i.dh, i32 %i.ac)
  store i32 %storemerge, ptr %i.dg, align 4, !tbaa !252
  store i32 0, ptr %i.b, align 8, !tbaa !423
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.di, align 8, !tbaa !425
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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !260
  %.not54 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not54, label %.thread67, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3224 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 2 uses
  br i1 %.not54, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 5616
  %i.j = tail call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i) ; 2 uses
  %i.k = icmp ult i64 %i.j, -119
  br i1 %i.k, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = load <2 x ptr>, ptr %i.g, align 8, !tbaa !51
  %i.m = shufflevector <2 x ptr> %i.l, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.m, ptr %i.g, align 8, !tbaa !51
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.t = load i64, ptr %i.s, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !211  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !212
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
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !96
  %i.al = tail call i32 @llvm.umax.i32(i32 %i.ak, i32 7)
  %i.am = add i32 %i.al, -1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = lshr i64 %4, %i.an
  %.neg30.i.i = add i64 %4, -2
  %i.ap = sub i64 %.neg30.i.i, %i.ao
  %.not29.i.i = icmp ult i64 %i.ad, %i.ap
  %spec.select.i.i = select i1 %.not29.i.i, i64 %i.ad, i64 0
  br label %ZSTD_entropyCompressSeqStore.exit

ZSTD_entropyCompressSeqStore.exit:                ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.2.i.i = phi i64 [ %i.ad, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ %spec.select.i.i, %bb.j ] ; 4 uses
  %.not56 = icmp eq i32 %5, 0
  br i1 %.not56, label %bb.n, label %bb.k

bb.k:                                             ; preds = %ZSTD_entropyCompressSeqStore.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !259
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = icmp ult i64 %.2.i.i, 25
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.au = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %3, i64 noundef %4)
  %.not57 = icmp eq i32 %i.au, 0
  br i1 %.not57, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load i8, ptr %3, align 1, !tbaa !207
  store i8 %i.av, ptr %1, align 1, !tbaa !207
  br label %.thread67

bb.n:                                             ; preds = %ZSTD_entropyCompressSeqStore.exit, %bb.k, %bb.l
  %i.aw = add i64 %.2.i.i, -2
  %or.cond4 = icmp ult i64 %i.aw, -121
  br i1 %or.cond4, label %bb.o, label %.thread67

bb.o:                                             ; preds = %bb.n
  %i.ax = load <2 x ptr>, ptr %i.g, align 8, !tbaa !51
  %i.ay = shufflevector <2 x ptr> %i.ax, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ay, ptr %i.g, align 8, !tbaa !51
  br label %.thread67

.thread67:                                        ; preds = %bb.c, %bb.m, %bb.o, %bb.n
  %.15170 = phi i64 [ %.2.i.i, %bb.n ], [ %.2.i.i, %bb.o ], [ 0, %bb.c ], [ 1, %bb.m ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 5604 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !178
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %bb.p, label %.thread

bb.p:                                             ; preds = %.thread67
  store i32 1, ptr %i.bb, align 4, !tbaa !178
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %.thread67, %bb.p, %bb.e, %bb.f
  %.3 = phi i64 [ %.15170, %.thread67 ], [ 0, %bb.f ], [ %i.j, %bb.e ], [ %.15170, %bb.p ], [ %i.a, %bb.a ], [ -106, %bb.c ]
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
  %.021.i4 = phi i32 [ %3, %.preheader ], [ 0, %.preheader.preheader ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.i = load <4 x i32>, ptr %i.h, align 4, !tbaa !52 ; 2 uses
  %i.j = icmp ult <4 x i32> %i.i, %i.e
  %i.k = sub <4 x i32> %i.i, %i.g
  %i.l = select <4 x i1> %i.j, <4 x i32> zeroinitializer, <4 x i32> %i.k
  store <4 x i32> %i.l, ptr %i.h, align 4, !tbaa !52
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load <4 x i32>, ptr %i.n, align 4, !tbaa !52 ; 2 uses
  %i.p = icmp ult <4 x i32> %i.o, %i.e
  %i.q = sub <4 x i32> %i.o, %i.g
  %i.r = select <4 x i1> %i.p, <4 x i32> zeroinitializer, <4 x i32> %i.q
  store <4 x i32> %i.r, ptr %i.n, align 4, !tbaa !52
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.u = load <4 x i32>, ptr %i.t, align 4, !tbaa !52 ; 2 uses
  %i.v = icmp ult <4 x i32> %i.u, %i.e
  %i.w = sub <4 x i32> %i.u, %i.g
  %i.x = select <4 x i1> %i.v, <4 x i32> zeroinitializer, <4 x i32> %i.w
  store <4 x i32> %i.x, ptr %i.t, align 4, !tbaa !52
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %i.aa = load <4 x i32>, ptr %i.z, align 4, !tbaa !52 ; 2 uses
  %i.ab = icmp ult <4 x i32> %i.aa, %i.e
  %i.ac = sub <4 x i32> %i.aa, %i.g
  %i.ad = select <4 x i1> %i.ab, <4 x i32> zeroinitializer, <4 x i32> %i.ac
  store <4 x i32> %i.ad, ptr %i.z, align 4, !tbaa !52
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv, 16
  %3 = add nuw nsw i32 %.021.i4, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %3, %i.a
  br i1 %exitcond.not, label %ZSTD_reduceTable_internal.exit, label %.preheader, !llvm.loop !447

ZSTD_reduceTable_internal.exit:                   ; preds = %.preheader, %bb.a
  ret void
}

declare i64 @ZSTD_splitBlock(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 2) i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.RawSeqStore_t, align 8      ; 8 uses
  %4 = alloca %struct.ZSTD_SequencePosition, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.c = icmp ult i64 %2, 7
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.e = load i32, ptr %i.d, align 4, !tbaa !186
  %i.f = icmp ugt i32 %i.e, 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3184 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef nonnull %i.g, i64 noundef %2) #27
  br label %.thread164

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.i = load i32, ptr %i.h, align 4, !tbaa !448
  tail call void @ZSTD_ldm_skipSequences(ptr noundef nonnull %i.g, i64 noundef %2, i32 noundef %i.i) #27
  br label %.thread164

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !211
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !212
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !197
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %i.o, ptr %i.p, align 8, !tbaa !201
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 0, ptr %i.q, align 8, !tbaa !209
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !58   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3472
  store ptr %i.r, ptr %i.s, align 8, !tbaa !449
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.u = load i32, ptr %i.t, align 8, !tbaa !450
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store i32 %i.u, ptr %i.v, align 8, !tbaa !451
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !452
  %i.y = ptrtoint ptr %1 to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32                  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3284 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !252 ; 2 uses
  %i.ae = add i32 %i.ad, 384
  %i.af = icmp ult i32 %i.ae, %i.ab
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %reass.sub = sub i32 %i.ab, %i.ad
  %i.ag = add i32 %reass.sub, -384
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 192)
  %i.ah = sub i32 %i.ab, %spec.select
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !252
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = getelementptr i8, ptr %0, i64 3264
  %.val.i = load i32, ptr %i.ai, align 8, !tbaa !250
  %i.aj = getelementptr i8, ptr %0, i64 3268
  %.val5.i = load i32, ptr %i.aj, align 4, !tbaa !249
  %.not.i = icmp ult i32 %.val5.i, %.val.i
  br i1 %.not.i, label %ZSTD_matchState_dictMode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !425 ; 2 uses
  %.not3.i = icmp eq ptr %i.al, null
  br i1 %.not3.i, label %ZSTD_matchState_dictMode.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 140
  %i.an = load i32, ptr %i.am, align 4, !tbaa !420
  %.not4.i = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not4.i, i64 2, i64 3
  br label %ZSTD_matchState_dictMode.exit

ZSTD_matchState_dictMode.exit:                    ; preds = %bb.g, %bb.h, %bb.i
  %i.ap = phi i64 [ 1, %bb.g ], [ %i.ao, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 5616
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !59 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 5616 ; 3 uses
  %i.au = load i32, ptr %i.aq, align 4, !tbaa !52
  store i32 %i.au, ptr %i.at, align 4, !tbaa !52
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 5620
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 5620
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 5624
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !52
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 5624
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !52
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !453
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !244
  %i.bg = icmp ult i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.j, label %bb.l

bb.j:                                             ; preds = %ZSTD_matchState_dictMode.exit
  %i.bh = getelementptr i8, ptr %0, i64 448
  %.val147 = load ptr, ptr %i.bh, align 8, !tbaa !137
  %.not168 = icmp eq ptr %.val147, null
  br i1 %.not168, label %bb.k, label %.thread164

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !183
  %i.bk = tail call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.at, i32 noundef %i.bj, ptr noundef %1, i64 noundef %2) #27
  br label %bb.z

bb.l:                                             ; preds = %ZSTD_matchState_dictMode.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !253
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %i.bp = getelementptr i8, ptr %0, i64 448
  %.val146 = load ptr, ptr %i.bp, align 8, !tbaa !137
  %.not = icmp eq ptr %.val146, null
  br i1 %.not, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !409
  store ptr %i.br, ptr %3, align 8, !tbaa !454
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !410
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !455
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.bw = call i64 @ZSTD_ldm_generateSequences(ptr noundef nonnull %i.bv, ptr noundef nonnull %3, ptr noundef nonnull %i.bl, ptr noundef %1, i64 noundef %2) #27 ; 2 uses
  %i.bx = icmp ult i64 %i.bw, -119
  br i1 %i.bx, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.n, %bb.m
  %.1.ph = phi i64 [ -41, %bb.m ], [ %i.bw, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.thread164

bb.o:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !59
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 5616
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !183
  %i.cc = call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.bz, i32 noundef %i.cb, ptr noundef %1, i64 noundef %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.z

bb.p:                                             ; preds = %bb.l
  %i.cd = getelementptr i8, ptr %0, i64 448
  %.val = load ptr, ptr %i.cd, align 8, !tbaa !137 ; 2 uses
  %.not167 = icmp eq ptr %.val, null
  br i1 %.not167, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = load i32, ptr %i.b, align 4, !tbaa !255
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !456
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 5272 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !413
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 5280 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !412
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !457
  %i.co = zext i32 %i.cf to i64
  %i.cp = tail call i64 %.val(ptr noundef %i.ch, ptr noundef %i.cj, i64 noundef %i.cl, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, i32 noundef %i.cn, i64 noundef %i.co) #27 ; 5 uses
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !412 ; 2 uses
  %i.cr = add i64 %i.cp, -1
  %or.cond.not.i = icmp ult i64 %i.cr, %i.cq
  br i1 %or.cond.not.i, label %bb.r, label %ZSTD_postProcessSequenceProducerResult.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !413
end_hunk_0
